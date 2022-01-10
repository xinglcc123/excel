<?php
ini_set('date.timezone','America/New_York');
ini_set("memory_limit","6G");
ini_set("max_execution_time",0);
require_once('basic_setting.php');
function dump(...$arr){
	foreach ($arr as $key => $value) {
		if(is_array($value)){
			print_r($value);
		}else{
			echo $value.PHP_EOL;
		}
	}
}
function color($str,$color){
    $arr=[
        'Black'         =>'0;30',
        'Dark Grey'     =>'1;30',
        'Red'           =>'0;31',
        'Light Red'     =>'1;31',
        'Green'         =>'0;32',
        'Light Green'   =>'1;32',
        'Brown'         =>'0;33',
        'Yellow'        =>'1;33',
        'Blue'          =>'0;34',
        'Light Blue'    =>'1;34',
        'Magenta'       =>'0;35',
        'Light Magenta' =>'1;35',
        'Cyan'          =>'0;36',
        'Light Cyan'    =>'1;36',
        'Light Grey'    =>'0;37',
        'White'         =>'1;37',
    ];
    $col = isset($arr[$color]) ? $arr[$color]:$arr['White'];
    return "\e[$col;m$str\e[0m";
}

class excel_import extends basic{

	private $action = 'CASH-INSERT';
	private $remark = '额度转移';
	private $arrimportexcel = array();
	private $account_update_arr = array();
	private $as_arr = ['name','QQ','email','wechat','remark'];
	//預設會員語法
	private $member_sql=[
		'default_account' => "SELECT * FROM a_account WHERE accountcode = ",
		'default_account_data' => "SELECT ad.* FROM a_account_data ad LEFT JOIN a_account a ON a.`accountid` = ad.`accountid` WHERE a.`accountcode` = ",
		'agent' => "SELECT accountcode,accountid from a_account WHERE levelid < 4 and levelid > 1 and accountcode <> '' order by levelid asc",
		'member' => "SELECT accountcode,accountid from a_account WHERE levelid = 4 and accountcode <> ''",
		'withdrawal' => "SELECT bankaccountno from withdrawal_profile WHERE 1"
	];
	//預設代理語法
	private $agent_sql=[
		'default_account' => "SELECT * FROM a_account WHERE accountcode = ",
		'default_account_data' => "SELECT ad.* FROM a_account_data ad LEFT JOIN a_account a ON a.`accountid` = ad.`accountid` WHERE a.`accountcode` = ",
		'agent' => "SELECT accountcode,accountid from a_account WHERE levelid < 4 and levelid > 1 and accountcode <> '' order by levelid asc"
	];
	private $stat = [
		'add' => 0,
		'exist_ignore' => 0,
		'long' => 0,
		'short' => 0,
		'money_add' => 0,
		'money_sum' => 0,
		'refuse' => 0 ,
		'change_error' => 0,
		'withdrawal_is_empty' => 0,
		'withdrawal_is_not_numeric' => 0,
		'withdrawal_ins' => 0,
		'withdrawal_existed_ignore' => 0
	];
	private $a_stat = [
		'add' => 0,
		'exist_ignore' => 0,
		'refuse' => 0 ,
		'agree_ignore' => 0
	];
	public $PDO_arr=array(
		PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
		PDO::ATTR_TIMEOUT => 10,
		PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
	);

	public function __construct()
	{
		require_once('../PHPExcel/Classes/PHPExcel/IOFactory.php') ;
		ini_set("memory_limit","6G");
		ini_set("max_execution_time",0);
		$this->error_files=[
			"member_repeat"			=> "import_log/".$this->prefix."_member_same.log",			//重複帳號略過
			"member_short"			=> "import_log/".$this->prefix."_member_short.log",			//帳號過短略過
			"member_long"			=> "import_log/".$this->prefix."_member_long.log",			//帳號過長略過
			"member_error"			=> "import_log/".$this->prefix."_member_error.log",			//帳號非法字元略過
			"member_change"			=> "import_log/".$this->prefix."_new_acc.log",				//帳號變更清單
			"member_change_error"	=> "import_log/".$this->prefix."_member_change_error.log",	//帳號變更遞迴超過十次錯誤直接略過
			"member_no_name"		=> "import_log/".$this->prefix."_no_name.log",	//沒有姓名
			"member_error_name"		=> "import_log/".$this->prefix."_error_name.log",	//姓名有非法字元
			"member_error_no_name"		=> "import_log/".$this->prefix."_error_no_name.log",	//姓名有非法字元变更后没有姓名
			"status_close_frozen"		=> "import_log/".$this->prefix."_status_close_frozen.log",	//关闭和冻结会员
			"banknum_repeat"		=> "import_log/".$this->prefix."_banknum_repeat.log",	//銀行卡重複
			"all_bank"					=> "import_log/".$this->prefix."_all_bank.log", //全部导入的银行名称
			"all_banklevel"					=> "import_log/".$this->prefix."_all_banklevel.log" //全部导入的會員組
		];
		if($this->isupdate == 0){
			$this->rm_log($this->error_files);
		}
		$this->mkdir_log('import_log');
		$this->basic_setting();

		dump("本站前綴".$this->prefix);
		dump("預設代理".$this->member_default);
	}

	public function run(){
		print_r("功能".PHP_EOL) ;
		print_r("------------------------------------------------------".PHP_EOL) ;
		print_r("1 : 轉入代理列表".PHP_EOL) ;
		print_r("2 : 轉入會員列表".PHP_EOL) ;
		print_r("------------------------------------------------------".PHP_EOL) ;
		print_r("請選擇:") ;
		$return_val = '' ;
		$handle = fopen ("php://stdin","r");
		$return_val = trim(fgets($handle));
		print_r(PHP_EOL) ;
		$start=date("Y-m-d H:i:s");
		if($return_val=='1')
		{
			if($this->isexcel == 1){
				$this->loadexcel('1');
			}else{
				$this->loadcsv('1');
			}
			$this->importagent();
		}
		else if($return_val=='2')
		{
			if($this->isexcel == 1){
				$this->loadexcel('2') ;
			}else{
				$this->loadcsv('2');
			}
			if($this->isupdate == 1){
				$this->get_update_account();
			}
			$this->get_tmp_bank();
			$this->importmember();
			$end=date("Y-m-d H:i:s");
			dump(color("開始時間".$start,'Light Green'));
			dump(color("結束時間".$end,'Light Green'));
		}
	}

	private function loadexcel($type)
	{
		print_r("開始執行".PHP_EOL) ;

		$arrtemp = array() ;
		$new_as_arr = array_flip($this->as_arr);

		if($type == 1){
			$file = $this->excelagentpath;
			$excel_setting = $this->agent_excel;
		}else if($type == 2){
			$file = $this->excelpath;
			$excel_setting = $this->member_excel;
		}

		if (!file_exists($file)) {
			dump(color($file."不存在".PHP_EOL,'Light Red'));die;
		}

		print_r("讀取excel...") ;
		$objPHPExcel = PHPExcel_IOFactory::load($file) ;
		print_r("完成".PHP_EOL) ;
		$sheet=$objPHPExcel->getActiveSheet();
		$highestRow = $sheet->getHighestRow();
		for($i=$excel_setting['start_row'] ; $i<=$highestRow ; $i++)
		{
			$row_arr = [];
			foreach($excel_setting['cells'] AS $k => $v){
				if($v == ''){$row_arr[$k] = '';continue;}
				$cell = $sheet->getCell($v.$i);
				if($k == 'account'){
					$row_arr[$k] = strtolower(trim($cell->getValue()));
				}elseif(isset($new_as_arr[$k])){
					$row_arr[$k] = addslashes(trim($cell->getValue()));
				}else{
					$row_arr[$k] = trim($cell->getValue());
				}

				if(PHPExcel_Shared_Date::isDateTime($cell)) {
				     $row_arr[$k] = date("Y-m-d", PHPExcel_Shared_Date::ExcelToPHP($cell->getValue()));
				}
			}
			$arrtemp[] = $row_arr;
		}
		$this->arrimportexcel = $arrtemp ;
	}

	private function loadcsv($type)
	{
		print_r("開始執行".PHP_EOL) ;

		$arrtemp = array() ;
		$new_as_arr = array_flip($this->as_arr);

		if($type == 1){
			$file = $this->excelagentpath;
			$csv_setting = $this->agent_csv;
		}else if($type == 2){
			$file = $this->excelpath;
			$csv_setting = $this->member_csv;
		}

		if (!file_exists($file)) {
			dump(color($file."不存在".PHP_EOL,'Light Red'));die;
		}

		$must_arr = [
			'account','name','depositsmoney','withdrawalmoney','depositscount','withdrawalcount',
			'mobile','QQ','email','wechat','reg_time','lastlogintime','lastipaddress','regipaddress',
			'remark','wallet','win_loss','dob','bank','banknum','banklevel'
		];

		$diff_arr = array_diff($must_arr,$csv_setting);

		print_r("讀取csv...") ;
		$csvData = file_get_contents($file);
		$encode =mb_detect_encoding($csvData,['UTF-8','GBK']);
		//智障搞事特殊編碼
		if($encode == 'CP936'){
			//$csvData = iconv('utf-8', 'latin1//IGNORE', $csvData);
			$csvData=mb_convert_encoding ($csvData, "UTF-8", "CP936");
		}
		// if($encode != 'UTF-8'){
		// 	$csvData = iconv($encode, 'UTF-8', $csvData);
		// }
		$lines = explode(PHP_EOL, $csvData);
		foreach ($lines as $line) {
			if(count(str_getcsv($line)) != count($csv_setting)){
				print_r(str_getcsv($line));die;
			}
			$tmp_arr=array_combine($csv_setting,str_getcsv($line));
			if(count($diff_arr)>0){
				foreach($diff_arr AS $val){
					$tmp_arr[$val] = '';
				}
			}
		    $this->arrimportexcel[] = $tmp_arr;
		}
		print_r("完成".PHP_EOL) ;
	}

	private function get_update_account()
	{
		print_r("讀取帳號變更清單".PHP_EOL) ;
		$str = file_get_contents($this->error_files['member_change']);
		$ori_arr = explode("\n",$str);
		foreach($ori_arr AS $v){
			$arr = explode("\t",$v);
			$this->account_update_arr[$arr[0]] = $arr[1];
		}
	}

	private function get_tmp_bank()
	{
		print_r("讀取銀行對應id清單".PHP_EOL) ;
		$str = file_get_contents('tmp_bank_arr.log');
		$ori_arr = explode("\n",$str);
		foreach($ori_arr AS $v){
			$arr = explode("\t",$v);
			$this->all_bank[$arr[0]] = $arr[1];
		}
	}

	private function importmember()
	{
		print_r("開始執行".PHP_EOL);
		$db_con 				= $this->db_con();
		print_r("取得".$this->prefix."代理样本資料表...".PHP_EOL) ;
		$db_data = $this->default_member_data($db_con);

		//如果為更新則抓資料庫裡全部銀行卡
		$db_all_bankno = [];
		if($this->isupdate == 1){
			foreach($db_data['all_bankno'] AS $val){
				$db_all_bankno[$val['bankaccountno']] = $val['bankaccountno'];
			}

		}
		unset($db_data['all_bankno']);

		//除存全部银行的阵列
		$all_bank_arr = array();

		//除存全部會員組的阵列
		$all_banklevel_arr = array();

		$this->arrmembersearch = array() ;
		$arragentsearch = array() ;
		$insert_data = $this->arrimportexcel;

		$upline = $db_data['default_account'];
		$upline_data = $db_data['default_account_data'];

		foreach($db_data['all_agent'] AS $row){
			$arragentsearch[$row['accountcode']] = $row['accountid'] ;
		}
		foreach($db_data['all_member'] AS $row){
			$this->arrmembersearch[$row['accountcode']] = $row['accountid'] ;
		}

		$this->all_member=[];
		$this->all_member = $this->arrmembersearch;

		print_r("完成".PHP_EOL) ;
		print_r("取得要匯入的會員資料表...") ;
		print_r("完成".PHP_EOL) ;
		print_r("開始建立會員...".PHP_EOL) ;

		foreach ($db_con as $con_begin) {
			$con_begin->beginTransaction();
		}

		if(count($insert_data) > 0){
			foreach($insert_data as $row)
			{
				//轉小寫
				$row['account'] = strtolower(trim($row['account']));

				//需要跳過的帳號
				if(isset($this->skip_acc[$row['account']]))continue;

				//冻结关闭的跳过
				// if($row['frozen'] == '1' || $row['status'] == '0'){
				// 	file_put_contents($this->error_files['status_close_frozen'],$row['account'].PHP_EOL,FILE_APPEND);
				// 	continue;
				// }

				//如果是更新早就匯入的會員就只要更新餘額
				if($this->isupdate == 1 AND isset($this->account_update_arr[$row['account']])){
					if($row['wallet'] <= 0 || $row['wallet'] == '')continue;
					$accountid = $this->all_member[$this->prefix.$this->account_update_arr[$row['account']]];
					$cl_data = [];
					$cl_data['creditlimit']	= $row['wallet'];
					$this->db_update($db_con['agency'],'a_creditlimit',$cl_data,'gametypeid = "0" AND accountid = '.$accountid,$db_con);
					continue;
				}

				//中文姓名非法字元處理
				if(preg_match("/[(||#|@|~|$|!|%|^|*|&|(|)|-|_|+|=|0-9)]+/u",$row['name'])){
					$new_name = preg_replace("/[(||#|@|~|$|!|%|^|*|&|(|)|-|_|+|=|0-9)]+/u", "", $row['name']);
					if($new_name == ''){
						file_put_contents($this->error_files['member_error_no_name'],$row['account']."\t".$row['name'].PHP_EOL,FILE_APPEND);
						continue;
					}else{
						file_put_contents($this->error_files['member_error_name'],$row['account']."\t".$row['name']."\t".$new_name.PHP_EOL,FILE_APPEND);
						$row['name'] = $new_name;
					}
				}

				//沒有中文姓名
				if($row['name'] == ''){
					file_put_contents($this->error_files['member_no_name'],$row['account'].PHP_EOL,FILE_APPEND);
					continue;
				}

				$row['account'] = $this->check_accountcode($row['account'],$row['account'],1,$row['name']);
				if($row['account'] == 'skip_change'){continue;}

				//整理新增會員的欄位(a_account)
				$kr = $upline;
				$row['agent'] = strtolower(trim($row['agent']));
				if(isset($arragentsearch[$row['agent']])){
					$kr['ma_accountid'] = '807';
				}
				$kr['ag_accountid'] = isset($arragentsearch[$row['agent']]) ? $arragentsearch[$row['agent']] : $db_data['default_account']['accountid'] ;
				// $kr['ag_accountid'] = $db_data['default_account']['accountid'] ;
				$kr['accountcode'] 	 = $this->prefix . $row['account'];
				$kr['password'] 	 = 'x';	//外站轉入可改為 x
				$kr['levelid'] 		 = 4;
				$kr['currencyid'] 	 = 1;
				$kr['status'] = ($row['status']=='0') ? 0 : 1;
				if($row['reg_time'] != ''){
					$kr['datecreated']  = date('Y-m-d H:i:s',strtotime($row['reg_time']));
					// $kr['datecreated']  = $row['reg_time'].' 00:00:00';
				}else{
					$kr['datecreated']  = date('Y-m-d H:i:s');
				}
				if($row['lastlogintime'] != ''){
					$kr['lastlogin'] = date('Y-m-d H:i:s',strtotime($row['lastlogintime']));
				}else{
					$kr['lastlogin'] = date('Y-m-d H:i:s');
				}
				$kr['lastipaddress']	= $row['lastipaddress'];
				$kr['regipaddress']	= $row['regipaddress'];
				$kr['client_id'] 	 = 11; //站外轉站則填11
				$kr['reghost'] 		 = '';
				unset($kr['accountid']);
				unset($kr['lastupdated']);
				unset($kr['lastupdateduser']);
				unset($kr['nickname']);
				unset($kr['referrals']);

				$this->db_insert($db_con['agency'],'a_account',$kr,$db_con);

				$accountid = $db_con['agency']->lastInsertId();
				$this->arrmembersearch[$this->prefix.$row['account']] = $accountid ;

				//rb8资料乱填 填空值
				if (!(is_numeric($row['mobile']))){
			    	$row['mobile'] = '';
				}
				if (!(is_numeric($row['QQ']))){
			    	$row['QQ'] = '';
				}
				if (!(is_numeric($row['wechat']))){
			    	$row['wechat'] = '';
				}
				if(preg_match("/^[(@|a=z|A-Z)]+/u",$row['email'])){
					$row['email'] = '';
				}

				$kr = $upline_data;
				$kr['accountid'] 		= $accountid;
				$kr['firstname'] 		= $row['name'];
				$kr['mobileno'] 		= str_replace('\'','',$row['mobile']);
				$kr['qq'] 				= str_replace('\'','',$row['QQ']);
				$kr['country'] 			= 1;
				$kr['confirm_flag'] = 0;
				$kr['remark'] 			= str_replace('\'','',$row['remark']);
				$kr['lastupdated'] = date('Y-m-d H:i:s');
				if($row['email'] != ''){
					$kr['email'] 			= str_replace('\'','',$row['email']);
				}else{
					unset($kr['email']);
				}
				if($row['dob'] != ''){
					$kr['dob'] 			= $row['dob'];
				}else{
					unset($kr['dob']);
				}

				$this->db_insert($db_con['agency'],'a_account_data',$kr,$db_con);
				$this->stat['add']++ ;

				//匯入WECHAT
				if($row['wechat'] != ''){
					$kr = [
						"accountid" => $accountid,
						"fieldname" => 'wechat',
						"fieldvalue" => $row['wechat'],
						"cdate" => date('Y-m-d H:i:s')
					];

					$this->db_insert($db_con['agency'],'a_account_data_extra',$kr,$db_con);

					$kr = [
						"accountid" => $accountid,
						"fieldname" => 'wechat',
						"fieldvalue" => $row['wechat'],
						"cdate" => date('Y-m-d H:i:s'),
						"updateby" => '0',
						"action" => 'insert'
					];

					$this->db_insert($db_con['agency'],'a_account_data_extra_audit',$kr,$db_con);
				}

				//冻结
				if($row['frozen'] != '' AND $row['frozen'] == '1'){
					$kr = [
						"accountid" => $accountid,
						"fieldname" => 'frozen',
						"fieldvalue" => '1',
						"cdate" => date('Y-m-d H:i:s')
					];

					$this->db_insert($db_con['agency'],'a_account_data_extra',$kr,$db_con);
				}

				//测试的话儲存全部會員組以便统计
				if($this->istest == 1 AND $row['banklevel']!=''){
					if(!isset($all_banklevel_arr[$row['banklevel']])){
						$all_banklevel_arr[$row['banklevel']] = $row['banklevel'];
					}
				}

				if($this->insert_same_banklevel == 1 AND $this->insert_old_banklevel == 1){
					print_r('新增会员组参数insert_same_banklevel和insert_old_banklevel不可以都打开');
					die;
				}

				//統一新增會員組
				if($this->insert_same_banklevel == 1){
					$insert_same_banklevel_arr = $this->insert_same_banklevel_arr;
					$insert_same_banklevel_arr['accountid'] = $accountid;
					$insert_same_banklevel_arr['lastupdated'] = date('Y-m-d H:i:s');
					$insert_same_banklevel_arr['lastupdateduser'] = 'BOS';
					$this->db_insert($db_con['money_system'],'bank_level_assignment',$insert_same_banklevel_arr,$db_con);
					$assignid = $db_con['money_system']->lastInsertId();
					$insert_same_banklevel_arr['assignid'] = $assignid;
					$insert_same_banklevel_arr['updateaction'] = 'Insert';
					$this->db_insert($db_con['money_system'],'bank_level_assignment_audittrail',$insert_same_banklevel_arr,$db_con);
				}

				//新增对应會員組
				if($this->insert_old_banklevel == 1 AND isset($this->insert_old_banklevel_arr[$row['banklevel']])){
					$insert_same_banklevel_arr = [];
					$insert_same_banklevel_arr['banklevel'] = $this->insert_old_banklevel_arr[$row['banklevel']];
					$insert_same_banklevel_arr['accountid'] = $accountid;
					$insert_same_banklevel_arr['lastupdated'] = date('Y-m-d H:i:s');
					$insert_same_banklevel_arr['lastupdateduser'] = 'BOS';
					$this->db_insert($db_con['money_system'],'bank_level_assignment',$insert_same_banklevel_arr,$db_con);
					$assignid = $db_con['money_system']->lastInsertId();
					$insert_same_banklevel_arr['assignid'] = $assignid;
					$insert_same_banklevel_arr['updateaction'] = 'Insert';
					$this->db_insert($db_con['money_system'],'bank_level_assignment_audittrail',$insert_same_banklevel_arr,$db_con);
				}



				//匯入錢包
				$cl_data = [];
				$cl_data['accountid'] 		= $accountid;
				$cl_data['creditlimit'] 		= '0';
				$cl_data['fixed_cl'] 		= '0';
				$cl_data['lastupdated'] 		= date('Y-m-d H:i:s');
				$cl_data['lastupdateduser'] 		= $accountid;
				$cl_data['gametypeid'] 		= '1';
				$cl_data['view_status'] 		= '1';
				$cl_data['companyindex'] 		= '1';

				//會員錢包 gametypeid=1 (creditlimit)
				$this->db_insert($db_con['agency'],'a_creditlimit',$cl_data,$db_con);

				//會員錢包 gametypeid=0 (creditlimit)
				$cl_data['gametypeid'] 		= '0';
				if($row['wallet'] > 0 AND $row['wallet'] != ''){
					$cl_data['creditlimit']	= $row['wallet'];
				}
				$this->db_insert($db_con['agency'],'a_creditlimit',$cl_data,$db_con);


				//總存提款處理
				$kr = [
					"accountid" => $accountid,
					"d_count" => $row['depositscount'],
					"w_count" => $row['withdrawalcount'],
					"d_amt" => $row['depositsmoney'],
					"w_amt" => $row['withdrawalmoney'],
					"winlose" => $row['win_loss']
				];
				$this->db_insert($db_con['agency'],'a_account_sum',$kr,$db_con);

				#銀行卡判斷 (會員沒有銀行卡)
				if(isset($this->all_bank[$row['bank']])){
					$bank_id = $this->all_bank[$row['bank']];
				}else{
					$bank_id = '59';
				}
				$row['banknum'] = str_replace("'",'',$row['banknum']);
				if ($row['banknum'] != ''){

					if (!(is_numeric($row['banknum']))){
				    	echo '用户名:'.$row['account'].'銀行卡號必須為數字('.$row['banknum'].')'.PHP_EOL;
				    	$withdrawal_is_not_numeric[] = $row['account'];
				    	$this->stat['withdrawal_is_not_numeric'] += 1;
					}else{

						$tmp_key1 = $bank_id.'__'.$accountid;         #會員id+銀行
						$tmp_key2 = preg_replace('/\s(?=)/', '', $row['banknum']);  #銀行卡號
						if ((!isset($ws_key1_arr[$tmp_key1]) && !isset($ws_key2_arr[$tmp_key2])) && !isset($db_all_bankno[$tmp_key2])){

							//测试的话除存全部银行名称以便统计
							if($this->istest == 1 AND $row['bank']!=''){
								if(!isset($all_bank_arr[$row['bank']])){
									$all_bank_arr[$row['bank']] = $row['bank'];
								}
							}

							#增加銀行卡
							$ws_key1_arr[$tmp_key1] = $tmp_key1;  #會員id+銀行
							$ws_key2_arr[$tmp_key2] = $tmp_key2;  #銀行卡號
							#建立銀行卡
							$kr = [
								"bankindex" => $bank_id,
								"accountindex" => $accountid,
								"bankaccountno" => preg_replace('/\s(?=)/', '', $row['banknum']),
								"bankprovince" => '0',
								"bankcity" => '0',
								"bankaddress" => $row['province'].$row['city'],
								"status" => '1',
								"otherbankname" => '',
								"companyindex" => '1'
							];
							$this->db_insert($db_con['money_system'],'withdrawal_profile',$kr,$db_con);
							$profileindex = $db_con['money_system']->lastInsertId();

							#銀行追蹤表
							$kr = [
								"audit_profileindex" => $profileindex,
								"audit_bankindex" => $bank_id,
								"audit_accountindex" => $accountid,
								"audit_bankaccountno" => preg_replace('/\s(?=)/', '', $row['banknum']),
								"audit_bankprovince" => '0',
								"audit_bankcity" => '0',
								"audit_bankaddress" => '',
								"audit_status" => '1',
								"audit_otherbankname" => '',
								"audit_action" => 'INSERT',
								"audit_lastupdateduser" => '0',
								"audit_lastupdated" => date("Y-m-d H:i:s"),
								"audit_companyindex" => '1'
							];
							$this->db_insert($db_con['money_system'],'withdrawal_profile_audittrail',$kr,$db_con);
							$this->stat['withdrawal_ins'] += 1;
						}else{
							echo '用户名: ' . $row['account'] . ' 銀行卡重複!'.PHP_EOL;
							$bank_repeat_err[] = $row['account'];
							$this->stat['withdrawal_existed_ignore'] += 1;
							file_put_contents($this->error_files['banknum_repeat'],$row['account']."\t".$row['banknum'].PHP_EOL,FILE_APPEND);
						}
					}
				}else{
					$this->stat['withdrawal_is_empty'] += 1;
				}

				//輸贏
				if($row['win_loss'] != ''){
					$kr = [
						"accountid" => $accountid,
						"matchdate" => '0000-00-00',
						"categoryid" => '0',
						"wager_count" => '0',
						"bet" => '0',
						"activebet" => '0',
						"payout" => $row['win_loss']
					];
					$this->db_insert($db_con['intergration'],'p_new_rpt',$kr,$db_con);
				}

				if($row['wallet'] <= 0 || $row['wallet'] == ''){ continue;}

				$this->stat['money_sum'] += $row['wallet'] ;
				$ledgerdatetime=date("Y-m-d H:i:s");

				$kr = [
					"ledgerdatetime" => $ledgerdatetime,
					"accountindex" => $accountid,
					"transactionindex" => '1',
					"fundindex" => '4',
					"currencyindex" => '1',
					"status" => '1',
					"amount" => $row['wallet'],
					"amountlocal" => $row['wallet'],
					"bankindex" => '0',
					"bankaccountindex" => '0',
					"ip" => '211.23.3.66',
					"reference_ledgerindex" => '0',
					"total_ccl" => $row['wallet'],
					"companyindex" => '1',
				];
				$this->db_insert($db_con['money_system'],'cash_ledger',$kr,$db_con);

				$ledgerindex = $db_con['money_system']->lastInsertId();

				$kr = [
					"audit_ledgerindex" => $ledgerindex,
					"audit_ledgerdatetime" => $ledgerdatetime,
					"audit_accountindex" => $accountid,
					"audit_transactionindex" => '1',
					"audit_fundindex" => '4',
					"audit_status" => '1',
					"audit_doublecheckstatus" => '0',
					"audit_currencyindex" => '1',
					"audit_amount" => $row['wallet'],
					"audit_amountlocal" => $row['wallet'],
					"audit_ip" => '211.23.3.66',
					"audit_action" => $this->action,
					"audit_bankindex" => '0',
					"audit_companyindex" => '1',
					"audit_lastupdateduser" => '72',
					"audit_reference_ledgerindex" => '0',
					"audit_lastupdated" => date("Y-m-d H:i:s")
				];
				$this->db_insert($db_con['money_system'],'cash_ledger_audittrail',$kr,$db_con);

				$kr = [
					"ledgerindex" => $ledgerindex,
					"remark" => $this->remark,
					"lastupdateduser" => '72'
				];
				$this->db_insert($db_con['money_system'],'cash_ledger_remark_cash',$kr,$db_con);

				$kr = [
					"ledgerindex" => $ledgerindex,
					"remark" => $this->remark,
					"lastupdateduser" => '72',
					"updateaction" => 'INSERT'
				];
				$this->db_insert($db_con['money_system'],'cash_ledger_remark_cash_audittrail',$kr,$db_con);

				$kr = [
					"ledgerindex" => $ledgerindex,
					"currentcl" => '0',
					"groupindex" => '0'
				];
				$this->db_insert($db_con['money_system'],'cash_ledger_reference',$kr,$db_con);

				$this->stat['money_add']++ ;
			}
		}

		//将所有银行存成挡案
		if($this->istest == 1){
			foreach($all_bank_arr AS $v){
				file_put_contents($this->error_files['all_bank'],$v.PHP_EOL,FILE_APPEND);
			}
		}

		//将所有會員組存成挡案
		if($this->istest == 1){
			foreach($all_banklevel_arr AS $v){
				file_put_contents($this->error_files['all_banklevel'],$v.PHP_EOL,FILE_APPEND);
			}
		}

		echo(color("完成".PHP_EOL,'Light Green'));
		$this->db_end($db_con);
		echo(color(json_encode($this->stat).PHP_EOL,'Light Green'));
	}

	private function importagent(){

		print_r("開始執行".PHP_EOL);
		$db_con	= $this->db_con();
		print_r("取得".$this->prefix."代理样本資料表...".PHP_EOL) ;
		$db_data = $this->default_agent_data($db_con);

		$this->arragentsearch = array() ;
		$insert_data = $this->arrimportexcel;

		$upline = $db_data['default_account'];
		$upline_data = $db_data['default_account_data'];

		foreach($db_data['all_agent'] AS $row){
			$this->arragentsearch[$row['accountcode']] = $row['accountid'] ;
		}

		print_r("完成".PHP_EOL) ;
		print_r("取得要匯入的代理資料表...") ;
		print_r("完成".PHP_EOL) ;
		print_r("開始建立代理...".PHP_EOL) ;

		foreach ($db_con as $con_begin) {
			$con_begin->beginTransaction();
		}

		if(count($insert_data) > 0)
		{
			foreach($insert_data as $row)
			{
				//轉小寫
				$row['account'] = strtolower(trim($row['account']));

				$strnew = '' ;
				$strold = '' ;
				if(!preg_match("/^[a-zA-Z0-9]{1,}$/",$row['account']))
				{
					$strold =$row['account'] ;
					$strnew = str_replace("_","",$row['account']) ;
					echo '用户名: '.$row['account'].' 帐号格式错误，略过 '.PHP_EOL;
					$file = fopen($this->prefix."_agent.log","a+");
					fwrite($file,"帐号格式错误 : \t".$row['account']."\n");
					fclose($file);
					$this->a_stat['refuse']++ ;
					continue;
				}

				if($row['status'] == $this->a_close_status)
				{
					echo '用户名: '.$row['account'].' 未审核，略过 '.PHP_EOL;
					$this->a_stat['agree_ignore'] += 1;
					$file = fopen($this->prefix."_agent.log","a+");
					fwrite($file,"未审核\t".$row['account']."\n");
					fclose($file);
					continue;
				}

				if(isset($this->arragentsearch[$row['account']]))
				{
					echo '用户名: '.$row['account'].' 已存在，略过 '.PHP_EOL;
					$this->a_stat['exist_ignore'] += 1;
					$file = fopen($this->prefix."_agent.log","a+");
					fwrite($file,"已存在\t".$row['account']."\n");
					fclose($file);
					continue;
				}
				if(!empty($strold))$arrtrans[$strold] = $strnew ;

				$kr = $upline ;
				//$kr['ma_accountid'] = isset($this->agent_trans[$row['gagent']]) ? $this->arragentsearch[$this->agent_trans[$row['gagent']]] : $this->arragentsearch[$row['gagent']] ;
				$kr['ma_accountid'] = '807';
				$kr['accountcode'] = $row['account'] ;
				$kr['password'] 	 = 'b4fe96f3bd97e9907d9cf492b5382ec1';
				$kr['levelid'] = 3;
				$kr['client_id'] = 11 ; //站外轉站則填11
				if($row['reg_time'] != ''){
					$kr['datecreated']  = date('Y-m-d H:i:s',strtotime($row['reg_time']));
				}else{
					$kr['datecreated']  = date('Y-m-d H:i:s');
				}
				if($row['lastlogintime'] != ''){
					$kr['lastlogin'] = date('Y-m-d H:i:s',strtotime($row['lastlogintime']));
				}else{
					$kr['lastlogin'] = date('Y-m-d H:i:s');
				}
				$kr['status'] = ($row['status']=='1') ? 1 : 0 ;
				$kr['regipaddress'] = '' ;
				unset($kr['nickname']);
				unset($kr['accountid']);
				unset($kr['ag_accountid']);
				unset($kr['lastupdated']);
				unset($kr['lastupdateduser']);

				$this->db_insert($db_con['agency'],'a_account',$kr,$db_con);

				$accountid = $db_con['agency']->lastInsertId();
				$this->arragentsearch[$row['account']] = $accountid ;

				$kr = $upline_data;
				$kr['accountid'] 		= $accountid;
				$kr['firstname'] 		= $row['name'];
				$kr['mobileno'] 		= $row['mobile'];
				$kr['email'] 			= $row['email'];
				$kr['qq'] 					= $row['QQ'];
				$kr['confirm_flag'] = 0;
				$str = '' ;
				if(!empty($row['wechat']))
					$str .=	'微信: '.$row['wechat'].' ' ;
				if($row['wallet'] > 0)
					$str .=	'账户余额: '.$row['wallet'] ;
				$kr['remark'] 			= $str ;

				$this->db_insert($db_con['agency'],'a_account_data',$kr,$db_con);

				$this->a_stat['add'] += 1;
			}
		}
		echo(color("完成".PHP_EOL,'Light Green'));
		$this->db_end($db_con);
		echo(color(json_encode($this->a_stat).PHP_EOL,'Light Green'));
	}

	public function check_accountcode($str,$old,$times=1,$name){

		if($times > 10){ //遞迴了十次直接掉過

			file_put_contents($this->error_files['member_change_error'],$name."\t".$old.PHP_EOL,FILE_APPEND);
			$this->stat['change_error']++ ;
			return 'skip_change';

		}else if(isset($this->arrmembersearch[$this->prefix.$str])){ //重複帳號

			if($this->samechange == 1){
				$new_str = $str.'x';
				$times++;
				$str = $this->check_accountcode($new_str,$old,$times,$name);
			}else{
				if($times > 1){$save_str = $old."\t".$str;}else{$save_str = $str;}
				echo(color('用户名: '.$str.' 帳號重複，略過 '.PHP_EOL,'Light Red'));
				file_put_contents($this->error_files['member_repeat'],$name."\t".$save_str.PHP_EOL,FILE_APPEND);
				$this->stat['exist_ignore']++ ;
				return 'skip_change';
			}

		}else if(strlen($str) > (15 - strlen($this->prefix))){ //過長帳號

			if($this->longchange == 1){
				$new_str = substr($str,0,-1);
				$times++;
				$str = $this->check_accountcode($new_str,$old,$times,$name);
			}else{
				if($times > 1){$save_str = $old."\t".$str;}else{$save_str = $str;}
				echo(color('用户名: '.$str.' 帳號過長，略過 '.PHP_EOL,'Light Red'));
				file_put_contents($this->error_files['member_long'],$name."\t".$save_str.PHP_EOL,FILE_APPEND);
				$this->stat['long']++ ;
				return 'skip_change';
			}

		}else if(strlen($str) < 6){ //過短帳號

			if($this->shortchange == 1){
				$new_str = $this->prefix.$str;
				$times++;
				$str = $this->check_accountcode($new_str,$old,$times,$name);
			}else{
				if($times > 1){$save_str = $old."\t".$str;}else{$save_str = $str;}
				echo(color('用户名: '.$str.' 帳號過短，略過 '.PHP_EOL,'Light Red'));
				file_put_contents($this->error_files['member_short'],$name."\t".$save_str.PHP_EOL,FILE_APPEND);
				$this->stat['short']++ ;
				return 'skip_change';
			}

		}else if(!preg_match("/^[a-zA-Z0-9]{1,}$/",$str)){ //非法帳號

			if($this->errorchange == 1){
				$new_str = preg_replace("/[^A-Za-z0-9]+/u", "", $str);
				$times++;
				$str = $this->check_accountcode($new_str,$old,$times,$name);
			}else{
				if($times > 1){$save_str = $old."\t".$str;}else{$save_str = $str;}
				echo(color('用户名: '.$str.' 帳號格式錯誤，略過 '.PHP_EOL,'Light Red'));
				file_put_contents($this->error_files['member_error'],$name."\t".$save_str.PHP_EOL,FILE_APPEND);
				$this->stat['refuse']++ ;
				return 'skip_change';
			}

		}else{
			file_put_contents($this->error_files['member_change'],$old."\t".$str.PHP_EOL,FILE_APPEND);
		}
		return $str;
	}

	public function db_con($assign=null){
		$db_con=[];
		if($this->istest == 1){
			$db = $this->db_setting['test'];
		}else{
			$db = $this->db_setting['official'];
		}

		foreach ($db['connection'] as $k => $v) {
			if(is_null($assign) || (isset($assign) && $assign == $k) ){
				$mysql   = 'mysql:host='.$db['host'].';';
				$dbname  = 'dbname='.$v.';charset=utf8;';
				$user  = $db['user'];
				$pass  = $db['pass'];
				$db_con[$k]=new PDO($mysql.$dbname,$user,$pass,$this->PDO_arr);

				$db_con[$k]->query('set wait_timeout=28800;');
				$db_con[$k]->query('set interactive_timeout=28800;');
			}
		}
		return $db_con;
	}

	public function db_end($db){
		if($this->isdebug == 1){
			foreach ($db as $con_begin) {
				$con_begin->rollback();
			}
		}else{
			foreach ($db as $con_begin) {
				$con_begin->commit();
			}
		}
	}

	public function db_data($con,$sql){
		return $con->query($sql)->fetchAll(PDO::FETCH_ASSOC);
	}

	public function db_first($con,$sql){
		return $con->query($sql)->fetch(PDO::FETCH_ASSOC);
	}

	public function db_insert($con,$table,$data,$conall){
		try {
			$fields = [];
			foreach($data as $k=>$v){
				$fields[] = "$k = :$k";
			}
			$sql = "INSERT INTO {$table} SET ".implode(",",$fields);
			$sth = $con->prepare($sql);
			foreach ($data as $key => &$val) {
				$sth->bindValue(":{$key}", $val);
			}
			$sth->execute();
		} catch (Exception $e) {
			dump(color("\n 資料表:$table",'Light Red'));
			dump(color('遇到錯誤停止並還原','Light Red'));
			foreach ($conall as $con_begin) {
				$con_begin->rollBack();
			}
			dump($e);
			dd($data);
		}
	}

	public function db_update($con,$table,$data,$condition,$conall){
		try {
			$fields = [];
			foreach($data as $k=>$v){
				$fields[] = "$k = :$k";
			}
			$sql = "UPDATE {$table} SET ".implode(",",$fields)." WHERE ".$condition;
			$sth = $con->prepare($sql);
			foreach ($data as $key => &$val) {
				$sth->bindValue(":{$key}", $val);
			}
			$sth->execute();
		} catch (Exception $e) {
			dump(color("\n 資料表:$table",'Light Red'));
			dump(color('遇到錯誤停止並還原','Light Red'));
			foreach ($conall as $con_begin) {
				$con_begin->rollBack();
			}
			dump($e);
			dd($data);
		}
	}

	public function mkdir_log($dir){
		if(!is_dir($dir)){
			mkdir($dir);
		}
	}

	public function rm_log($log){
		foreach ($log as $key => $value) {
			if(is_file($value)){
				unlink($value);
			}
		}
	}

	public function default_member_data($db){
		$all_data = [];

		dump(color('取得預設會員資料...','Light Blue'));

		dump(color('取得預設會員a_account...','Light Green'));
		$all_data['default_account'] = $this->db_first($db['agency'],$this->member_sql['default_account']."'".$this->member_default."'");

		dump(color('取得預設會員a_account_data...','Light Green'));
		$all_data['default_account_data'] = $this->db_first($db['agency'],$this->member_sql['default_account_data']."'".$this->member_default."'");

		dump(color('取得全部代理資料...','Light Green'));
		$all_data['all_agent'] = $this->db_data($db['agency'],$this->member_sql['agent']);

		dump(color('取得全部會員資料...','Light Green'));
		$all_data['all_member'] = $this->db_data($db['agency'],$this->member_sql['member']);

		dump(color('取得全部銀行卡...','Light Green'));
		$all_data['all_bankno'] = $this->db_data($db['money_system'],$this->member_sql['withdrawal']);

		return $all_data;
	}

	public function default_agent_data($db){
		$all_data = [];

		dump(color('取得預設代理資料...','Light Blue'));

		dump(color('取得預設代理a_account...','Light Green'));
		$all_data['default_account'] = $this->db_first($db['agency'],$this->agent_sql['default_account']."'".$this->agent_default."'");

		dump(color('取得預設代理a_account_data...','Light Green'));
		$all_data['default_account_data'] = $this->db_first($db['agency'],$this->agent_sql['default_account_data']."'".$this->agent_default."'");

		dump(color('取得全部總代資料...','Light Green'));
		$all_data['all_agent'] = $this->db_data($db['agency'],$this->agent_sql['agent']);

		return $all_data;
	}
}

$excel_import = new excel_import();
$excel_import->run();
?>