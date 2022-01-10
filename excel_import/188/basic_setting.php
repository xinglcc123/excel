<?php
class basic{
	protected $excelpath = '188.xls';			//匯入會員時的excel檔
	protected $excelagentpath = '188_agent.xls';	//匯入代理時的excel檔
	protected $isupdate = 0;						//是否為後續更新 1為是 0為否
	protected $isexcel = 1;							//1為excel 0為csv
	protected $prefix = '188';						//站台前綴
	protected $istest = 1;							//1為測試 0為正式執行
	protected $isdebug = 1;							//1為rollback跑完不會存 DB 0為commit直接存進去
	protected $longchange = 0;						//1為過長帳號處理 0為略過過長帳號
	protected $shortchange = 0;						//1為過短帳號處理 0為略過過短帳號
	protected $samechange = 0;						//1為重複帳號處理 0為略過重複帳號
	protected $errorchange = 0;						//1為非法帳號處理 0為略過非法帳號
	protected $agent_default = 'agent';			//匯入代理時的預設總代理
	protected $member_default = 'agent01';			//匯入會員時的預設代理
	protected $a_close_status = '未审核';	//代理關閉狀態
	protected $agent_trans = [	//代理切換
		// 'ht_jc'	=>	'jiechi'
	];
	protected $skip_acc = [ //要跳過的帳號
		// 'kk2017' => '1',
		// 'a1314520' => '1',
		// 'cjqm2033' => '1'
	];
	protected $insert_same_banklevel = 0; //是否要統一新增會員組 0為不要 1為要
	protected $insert_same_banklevel_arr = [ //統一新增會員組
		// 		"banklevel" => '3'
	];
	protected $insert_old_banklevel = 0; //是否要新增舊有的會員組 0為不要 1為要
	protected $insert_old_banklevel_arr = [ //舊有會員組對應
		// 		"舊會員組名稱" => '新後臺對應id'
	];
	protected $agent_csv = [	//csv格式 陣列的順序要跟csv里欄位的順序依樣
		'account',
		'name',
		'mobile',
		'wallet',
		'win_loss',
		'QQ',
		'email',
		'e',
		'reg_time',
		'upper_agent',
		'ori_banklevel',
		'bank',
		'banknum'
	];
	protected $agent_excel = [
		'start_row' => '1',							//從第幾列開始
		'cells' => [								//右邊填入對應的欄位 若沒有就設空值
			'account'	=>	'',
			'status'	=>	'',
			'name'	=>	'B',						//姓名
			'mobile'	=>	'',
			'QQ'	=>	'F',						//QQ
			'email'	=>	'E',						//邮箱
			'wechat'	=>	'L',					//微信号
			'reg_time'	=>	'',
			'lastlogintime'	=>	'',
			'wallet'	=>	'G',					//总存款额
			'gagent'	=>	'',						//上層代理
			'agent'	=>	'',
			'agentsum'	=>	'',
			'playersum'	=>	'',
			'bank'	=>	'K',						//银行卡信息
			'banknum'	=>	''
		]
	];
	protected $member_csv = [	//csv格式 陣列的順序要跟csv里欄位的順序依樣
		'account',
		'name',
		'mobile',
		'wallet',
		'win_loss',
		'QQ',
		'email',
		'e',
		'reg_time',
		'upper_agent',
		'banklevel',
		'bank',
		'banknum'
	];
	protected $member_excel = [
		'start_row' => '2',							//從第幾列開始
		'cells' => [								//右邊填入對應的欄位 若沒有就設空值
			'account'	=>	'A',	//帳號
			'name'	=>	'B',	//姓名
			'depositsmoney'	=>	'G',	//總存款
			'withdrawalmoney'	=>	'H',	//總提款
			'depositscount'	=>	'J',	//總存次數
			'withdrawalcount'	=>	'I',	//總提次數
			'mobile'	=>	'D',	//電話
			'QQ'	=>	'F',	//QQ
			'email'	=>	'E',	//信箱
			'wechat'	=>	'M',	//微信
			'reg_time'	=>	'',	//註冊時間
			'lastlogintime'	=>	'',	//最後登入時間
			'lastipaddress'	=>	'',	//最後登入IP
			'regipaddress'	=>	'',	//註冊IP
			'remark'	=>	'',
			'wallet'	=>	'',
			'win_loss'	=>	'',
			'dob'	=>	'',
			'rpt'	=>	'O',	//輸贏
			'bank'	=>	'K',	//銀行名稱
			'banknum'	=>	'L',	//銀行卡號
			'banklevel' => 'C',	//會員組
			'agent' => '',
			'province' => '',
			'city' => '',
			'status' => '',
			'frozen' => ''
		]
	];

	//資料庫設定
	public function basic_setting(){
        $this->db_setting = [
			'test'	=>	[							//測試機器 本機執行
				"host"    => "localhost",
				"user"    =>  "root",
				"pass"    =>  "",
				"connection" =>[
					"agency"        => $this->prefix,
					"intergration"  => $this->prefix,
					"money_system"  => $this->prefix
				]
			],
			// 'official' => [							//正式機器 丟到28執行
			// 	"host"    => "10.10.2.200",
			// 	"user"    =>  "188_user",
			// 	"pass"    =>  "btcsGVkeiQ51#",
			// 	"connection" =>[
			// 		"agency"        => $this->prefix."_agency",
			// 		"intergration"  => $this->prefix."_intergration",
			// 		"money_system"  => $this->prefix."_money_system"
			// 	]
			// ]
		];
    }
}
?>