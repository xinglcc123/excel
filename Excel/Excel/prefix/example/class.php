<?php
ini_set("memory_limit", "2048M");
ini_set("max_execution_time", 0);
ini_set('date.timezone', 'America/New_York');
require_once('basic_setting.php');
function dump(...$arr)
{
    foreach ($arr as $key => $value) {
        if (is_array($value)) {
            print_r($value);
        } else {
            echo $value . PHP_EOL;
        }
    }
}

function color($str, $color)
{
    $arr = [
        'Black' => '0;30',
        'Dark Grey' => '1;30',
        'Red' => '0;31',
        'Light Red' => '1;31',
        'Green' => '0;32',
        'Light Green' => '1;32',
        'Brown' => '0;33',
        'Yellow' => '1;33',
        'Blue' => '0;34',
        'Light Blue' => '1;34',
        'Magenta' => '0;35',
        'Light Magenta' => '1;35',
        'Cyan' => '0;36',
        'Light Cyan' => '1;36',
        'Light Grey' => '0;37',
        'White' => '1;37',
    ];
    $col = isset($arr[$color]) ? $arr[$color] : $arr['White'];
    return "\e[" . $col . ";m" . $str . "\e[0m";
}

class excel_import extends basic
{

    private $action = 'CASH-INSERT';
    private $remark = '额度转移';
    private $arrimportexcel = array();
    private $as_arr = ['name', 'QQ', 'email', 'wechat', 'remark'];
    //預設會員語法
    private $member_sql = [
        'default_account' => "SELECT * FROM a_account WHERE accountcode = ",
        'default_account_data' => "SELECT ad.* FROM a_account_data ad LEFT JOIN a_account a ON a.`accountid` = ad.`accountid` WHERE a.`accountcode` = ",
        'agent' => "SELECT accountcode,accountid,sma_accountid,ma_accountid from a_account WHERE levelid = 3 and accountcode <> '' order by levelid asc",
        'member' => "SELECT accountcode,accountid from a_account WHERE levelid = 4 and accountcode <> ''",
        'bank_level' => "SElECT id,`name`,flags FROM bank_level",
        'withdrawal_profile' => 'SELECT bankindex,bankaccountno,bankprovince,bankcity,bankaddress,accountindex FROM withdrawal_profile',
        'withdrawal_profile_audittrail' => 'SELECT audit_bankindex,audit_accountindex,audit_bankaccountno FROM withdrawal_profile_audittrail'
    ];
    //預設代理語法
    private $agent_sql = [
        'default_account' => "SELECT * FROM a_account WHERE accountcode = ",
        'default_account_data' => "SELECT ad.* FROM a_account_data ad LEFT JOIN a_account a ON a.`accountid` = ad.`accountid` WHERE a.`accountcode` = ",
        'agent' => "SELECT accountcode,accountid,sma_accountid,ma_accountid from a_account WHERE levelid < 4 and levelid > 1 and accountcode <> '' order by levelid asc"
    ];
    private $stat = [
        'add' => 0,
        'exist_ignore' => 0,
        'long' => 0,
        'short' => 0,
        'money_add' => 0,
        'money_sum' => 0,
        'refuse' => 0,
        'change_error' => 0,
        'withdrawal_is_empty' => 0,
        'withdrawal_is_not_numeric' => 0,
        'withdrawal_ins' => 0,
        'withdrawal_existed_ignore' => 0,
        'name_error' => 0,
        'repeat_ins' => 0
    ];
    private $a_stat = [
        'add' => 0,
        'exist_ignore' => 0,
        'refuse' => 0,
        'agree_ignore' => 0
    ];
    public $PDO_arr = array(
        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
        PDO::ATTR_TIMEOUT => 10,
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    );

    public function __construct()
    {
        require_once('../../PHPExcel/Classes/PHPExcel/IOFactory.php');
        ini_set("memory_limit", "4G");
        ini_set("max_execution_time", 0);
        $this->error_files = [
            "member_repeat" => "import_log/" . $this->prefix . "_member_same.log",            //重複帳號略過
            "member_short" => "import_log/" . $this->prefix . "_member_short.log",            //帳號過短略過
            "member_long" => "import_log/" . $this->prefix . "_member_long.log",            //帳號過長略過
            "member_error" => "import_log/" . $this->prefix . "_member_error.log",            //帳號非法字元略過
            "member_change" => "import_log/" . $this->prefix . "_new_acc.log",                //帳號變更清單
            "member_change_error" => "import_log/" . $this->prefix . "_member_change_error.log",    //帳號變更遞迴超過十次錯誤直接略過
            "member_no_name" => "import_log/" . $this->prefix . "_no_name.log",    //沒有姓名
            "member_name_error" => "import_log/" . $this->prefix . "_name_error.log",    //姓名异常
            "member_add" => "import_log/" . $this->prefix . "_add.log",
            "member_email_error" => "import_log/" . $this->prefix . "_member_email_error.log", //信箱格式錯誤
            "banknum_repeat" => "import_log/" . $this->prefix . "_banknum_repeat.log",    //銀行卡重複
            "member_creditlimit" => "import_log/" . $this->prefix . "_creditlimit.log" // 各账号余额
        ];
        $this->rm_log($this->error_files);
        $this->mkdir_log('import_log');
        $this->basic_setting();

        // $this->v99_account_error_member = [
        // ];


        dump("本站前綴" . $this->prefix);
        dump("預設代理" . $this->member_default);
    }

    public function run()
    {
        print_r("功能" . PHP_EOL);
        print_r("------------------------------------------------------" . PHP_EOL);
        print_r("1 : 轉入代理列表" . PHP_EOL);
        print_r("2 : 轉入會員列表" . PHP_EOL);
        print_r("------------------------------------------------------" . PHP_EOL);
        print_r("請選擇:");
        $return_val = '';
        $handle = fopen("php://stdin", "r");
        $return_val = trim(fgets($handle));
        print_r(PHP_EOL);

        if ($return_val == '1') {
            $this->loadexcel('1');
            $this->importagent();
        } else if ($return_val == '2') {
            $this->loadexcel('2');
            $this->importmember();
        }
    }

    private function loadexcel($type)
    {
        print_r("開始執行" . PHP_EOL);

        $arrtemp = array();
        $new_as_arr = array_flip($this->as_arr);

        if ($type == 1) {
            $files = $this->excelagentpath;
            $excel_setting = $this->agent_excel;
        } else if ($type == 2) {
            $files = $this->excelpath;
            $excel_setting = $this->member_excel;
        }
        $result = [];
        if ($type == 2) {
            $result = $this->scanFile($files);
        } else {
            $result[] = $files;
        }
        print_r('檔案數量:' . count($result) . PHP_EOL);
        foreach ($result as $file) {
            if (!file_exists($files)) {
                dump(color($files . "不存在" . PHP_EOL, 'Light Red'));
                die;
            }
            if ($type == 2)
                $file = $files . '/' . $file;

            print_r("讀取excel...");
            $objPHPExcel = PHPExcel_IOFactory::load($file);
            print_r("完成" . PHP_EOL);
            $sheet = $objPHPExcel->getActiveSheet();
            $highestRow = $sheet->getHighestRow();
            for ($i = $excel_setting['start_row']; $i <= $highestRow; $i++) {
                $row_arr = [];
                foreach ($excel_setting['cells'] as $k => $v) {
                    if ($v == '') {
                        $row_arr[$k] = '';
                        continue;
                    }
                    $cell = $sheet->getCell($v . $i);
                    if ($k == 'account') {
                        $row_arr[$k] = strtolower(trim($cell->getValue()));
                    } elseif (isset($new_as_arr[$k])) {
                        $row_arr[$k] = addslashes(trim($cell->getValue()));
                    } else {
                        $row_arr[$k] = trim($cell->getValue());
                    }

                    if (PHPExcel_Shared_Date::isDateTime($cell) and $cell->getValue() != '#N/A') {
                        $row_arr[$k] = date("Y-m-d", PHPExcel_Shared_Date::ExcelToPHP($cell->getValue()));
                    }
                }
                $arrtemp[] = $row_arr;
            }
            print_r(count($arrtemp) . '筆資料' . PHP_EOL);
            $this->arrimportexcel = $arrtemp;
            $objPHPExcel->disconnectWorksheets();
        }
    }

    private function scanFile($path)
    {
        global $result;
        dump($path);
        $files = scandir($path);
        foreach ($files as $file) {
            if ($file != '.' && $file != '..') {
                if (is_dir($path . '/' . $file)) {
                    $this->scanFile($path . '/' . $file);
                } else {
                    $result[] = basename($file);
                }
            }
        }
        return $result;
    }

    /**
     *    會員匯入
     *
     */
    private function importmember()
    {
        print_r("開始執行" . PHP_EOL);
        $db_con = $this->db_con();
        print_r("取得" . $this->prefix . "代理样本資料表..." . PHP_EOL);
        $db_data = $this->default_member_data($db_con);
        $upline = $db_data['default_account'];
        $upline_data = $db_data['default_account_data'];

//        $banklevel_data = array();
//        foreach ($db_data['bank_level'] as $bl) {
//            $banklevel_data[$bl['name']] = ['id' => $bl['id'], 'flags' => $bl['flags']];
//        }

        $all_agent = $db_data['all_agent'];
        $this->arrmembersearch = array();
        $this->withdrawal_profile_arr = array();

        // $insert_data: 【外站】 欲匯入之excel資料
        $insert_data = $this->arrimportexcel;

        // 【v99客制】 汇重复会员
        // $this->v99_repeat_member = array_flip($this->v99_repeat_member);


        // 【本站】 全部銀行卡資料
        $this_bank_data = array_column($db_data['withdrawal_profile'], 'bankaccountno', 'bankaccountno');


        // 【本站】 全部銀行卡追蹤資料
        $this_bank_audit_data = array_column($db_data['withdrawal_profile_audittrail'], 'audit_bankaccountno', 'audit_bankaccountno');

        // print_r($this_bank_data);exit;

        // foreach($db_data['withdrawal_profile'] AS $row){
        // 	$this->withdrawal_profile_arr[$row['bankaccountno']] = $row['bankaccountno'] ;
        // }

        // 【本站】 账号 all_member

        foreach ($db_data['all_member'] as $row) {
            $this->arrmembersearch[$row['accountcode']] = $row['accountid'];
        }
        print_r("完成" . PHP_EOL);
        print_r("取得要匯入的會員資料表...");
        print_r("完成" . PHP_EOL);
        print_r("開始建立會員..." . PHP_EOL);

        foreach ($db_con as $con_begin) {
            $con_begin->beginTransaction();
        }

        print_r("欲匯入資料" . count($insert_data) . PHP_EOL);

        // 2020-07-01 【外站】 取得欲汇入账号阵列(比对重复用)
//        if (count($insert_data) > 0) {
//            foreach ($insert_data as $row) {
//                $this->insert_account[$row['account']] = $row['account'];
//            }
//        }

        // print_r($insert_data).PHP_EOL; exit;
        if (count($insert_data) > 0) {
            $test = 0;

            $banklevel_array = [];
            foreach ($insert_data as $row) {
                if ($row['account'] == '')
                    continue;

                $test++;
                echo $test . PHP_EOL;

                if ($this->namechange == 1) {
                    if (trim($row['name']) == '') {
                        echo $row['account'] . "姓名为空 略過" . $row['name'] . PHP_EOL;
                        file_put_contents($this->error_files['member_no_name'], $row['account'] . PHP_EOL, FILE_APPEND);
                        continue;

                    } else if (preg_match("/[(||#|@|?|~|$|!|%|^|*|&|(|)|-|_|+|=|0-9)]+/", trim($row['name']))) {
                        // 姓名不符合格式
                        $this->stat['name_error']++;
                        file_put_contents($this->error_files['member_name_error'], $row['account'] . ',' . $row['name'] . PHP_EOL, FILE_APPEND);
                        echo $row['account'] . "姓名不符合格式，略過" . $row['name'] . PHP_EOL;
                        continue;
                    }
                } else {
                    if (trim($row['name'] == '') || preg_match("/[(||#|@|?|~|$|!|%|^|*|&|(|)|-|_|+|=|0-9)]+/", trim($row['name']))) {
                        // 姓名不符合格式
                        $this->stat['name_error']++;
                        file_put_contents($this->error_files['member_name_error'], $row['account'] . ',' . $row['name'] . PHP_EOL, FILE_APPEND);
                        echo $row['account'] . "姓名不符合格式，不处理略過 " . $row['name'] . PHP_EOL;
                        continue;
                    }
                }
                //轉小寫
                $row['account'] = strtolower(trim($row['account']));
                // $row['account'] = substr($row['account'], 3);   //去除前面文字
                echo $row['account'] . PHP_EOL;

                $row['account'] = $this->check_accountcode($row['account'], $row['account'], 1, $row['id'] . "," . $row['name']);
                if ($row['account'] == 'skip_change') {
                    continue;
                }

                //整理新增會員的欄位(a_account)
                $kr = $upline;
                //預設代理
                $kr['ag_accountid'] = $upline['accountid'];

                //GPK 繼承代理
                if ($this->agentextend == 1) {
                    if ($row['agent']) {
                        $row['agent'] = strtolower(trim($row['agent']));
                        //GPK 特殊代理處理
//                        if ($row['agent'] == 'gpk_d')
//                            $row['agent'] = 'js9900';
                        foreach ($all_agent as $dat)
                            if ($row['agent'] == $dat['accountcode']) {
                                $kr['ag_accountid'] = $dat['accountid'];
                                $kr['ma_accountid'] = $dat['ma_accountid'];
                                $kr['sma_accountid'] = $dat['sma_accountid'];
                            }
                    }
                }
                $accountcode = $this->prefix . $row['account'];
                $kr['accountcode'] = $accountcode;
                $kr['password'] = 'x';    //外站轉入可改為 x
                $kr['levelid'] = 4;
                $kr['currencyid'] = 1;
                $kr['status'] = trim($row['status'])!=''?:1;
                //GPK 客制状态
//                if ($row['status'] != '')
//                    $kr['status'] = (strpos(trim($row['status']), '停用') !== false) ? 0 : 1;


                if ($row['reg_time'] != '') {
                    $kr['datecreated'] = date('Y-m-d H:i:s', strtotime($row['reg_time']));
                } else {
                    $kr['datecreated'] = date('Y-m-d H:i:s');
                }

                if ($row['lastlogintime'] != '') {
                    $kr['lastlogin'] = date('Y-m-d H:i:s', strtotime($row['lastlogintime']));
                } else {
                    $kr['lastlogin'] = date('Y-m-d H:i:s');
                }

                $kr['lastipaddress'] = $row['lastipaddress'] != '' ? strpos($row['lastipaddress'], '--' == false) ? $row['lastipaddress'] : '' : '';
                $kr['regipaddress'] = $row['regipaddress'] != '' ? strpos($row['regipaddress'], '--' == false) ? $row['regipaddress'] : '' : '';
                $kr['client_id'] = 11; //站外轉站則填11
                $kr['reghost'] = '';
                unset($kr['accountid']);
                unset($kr['lastupdated']);
                unset($kr['lastupdateduser']);
                unset($kr['nickname']);
                unset($kr['referrals']);

                $this->db_insert($db_con['agency'], 'a_account', $kr, $db_con);

                $accountid = $db_con['agency']->lastInsertId();
                $this->arrmembersearch[$this->prefix . $row['account']] = $accountid;

                $kr = $upline_data;
                $kr['accountid'] = $accountid;
                $kr['firstname'] = $row['name'];
                $kr['mobileno'] = trim($row['mobile']) != '0' ? trim($row['mobile']) : '';
                // 2020-07-01 QQ wechat号分割分类
                $row['QQ'] = trim($row['QQ']) != '0' ? trim($row['QQ']) : '';
                $kr['qq'] = '';

                if ($row['QQ'] != '' && preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/", $row['QQ'])) {
                    $kr['email'] = $row['QQ'];
                } else if ($row['QQ'] != '') {
                    $exp_qq_wechat = explode('|', $row['QQ']);
                    if (isset($exp_qq_wechat[0])) {
                        //QQ号
                        $row['QQ'] = trim($exp_qq_wechat[0]);
                    }
                    if (isset($exp_qq_wechat[1])) {
                        //wechat
                        $row['wechat'] = trim($exp_qq_wechat[1]);
                    }
                    $kr['qq'] = $row['QQ'];
                }

                $kr['country'] = 1;
                $kr['confirm_flag'] = 0;
                $kr['remark'] = $row['remark'];
                $kr['lastupdated'] = date('Y-m-d H:i:s');
                if (trim($row['email']) != '' && preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/", $row['email'])) {
                    $kr['email'] = $row['email'];
                } else if (trim($row['email']) != '' && !preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/", $row['email'])) {
                    // 2020-07-01 若匯入email欄位有資料，但是不符合格式，則放入備註 member_email_error
                    $kr['remark'] = $row['email'];
                } else {
                    unset($kr['email']);
                }
                if ($row['dob'] != '') {
                    $kr['dob'] = date('Y-m-d H:i:s', strtotime($row['dob']));
                } else {
                    unset($kr['dob']);
                }

                $this->db_insert($db_con['agency'], 'a_account_data', $kr, $db_con);
                $this->stat['add']++;

                //匯入WECHAT
                if ($row['wechat'] != '' and $row['wechat'] != '0') {
                    $kr = [
                        "accountid" => $accountid,
                        "fieldname" => 'wechat',
                        "fieldvalue" => $row['wechat'],
                        "cdate" => date('Y-m-d H:i:s')
                    ];

                    $this->db_insert($db_con['agency'], 'a_account_data_extra', $kr, $db_con);

                    $kr = [
                        "accountid" => $accountid,
                        "fieldname" => 'wechat',
                        "fieldvalue" => $row['wechat'],
                        "cdate" => date('Y-m-d H:i:s'),
                        "updateby" => '0',
                        "action" => 'insert'
                    ];

                    $this->db_insert($db_con['agency'], 'a_account_data_extra_audit', $kr, $db_con);
                }

                //GPK客製 凍結
                // if ($row['frozen'] != '' && $row['frozen']==1/*((strpos($row['frozen'], '冻结') !== false))*/) {
                //     $kr = [
                //         "accountid" => $accountid,
                //         "fieldname" => 'frozen',
                //         "fieldvalue" => 1,
                //         "cdate" => date('Y-m-d H:i:s'),
                //     ];
                //     $this->db_insert($db_con['agency'], 'a_account_data_extra', $kr, $db_con);

                //     $kr = [
                //         "accountid" => $accountid,
                //         "fieldname" => 'frozen',
                //         "fieldvalue" => 1,
                //         "cdate" => date('Y-m-d H:i:s'),
                //         "updateby" => '0',
                //         "action" => 'insert'
                //     ];
                //     $this->db_insert($db_con['agency'], 'a_account_data_extra_audit', $kr, $db_con);
                // }
                
                if ($row['banklevel'] != '') {
                    $bklvl = trim($row['banklevel']);
                    if (!array_key_exists($bklvl, $banklevel_array))
                        $banklevel_array[$bklvl] = [];

                    array_push($banklevel_array[$bklvl], $accountcode);
                }

//                $kr = [
//                    "accountindex" => $accountid,
//                    "banklevel_id" => '3',
//                    "before_level" => '0',
//                    "lastupdated" => date('Y-m-d H:i:s'),
//                    "flags" => '0',
//                ];
//                $this->db_insert($db_con['money_system'], 'account_banklevel_audittrail', $kr, $db_con);

                //匯入錢包
                $cl_data = [];
                $cl_data['accountid'] = $accountid;
                $cl_data['creditlimit'] = '0';
                $cl_data['fixed_cl'] = '0';
                $cl_data['lastupdated'] = date('Y-m-d H:i:s');
                $cl_data['lastupdateduser'] = $accountid;
                $cl_data['gametypeid'] = '1';
                $cl_data['view_status'] = '1';
                $cl_data['companyindex'] = '1';

                //會員錢包 gametypeid=1 (creditlimit)
                $this->db_insert($db_con['agency'], 'a_creditlimit', $cl_data, $db_con);

                //會員錢包 gametypeid=0 (creditlimit)
                $cl_data['gametypeid'] = '0';
                if ($row['wallet'] > 0 and $row['wallet'] != '') {
                    file_put_contents($this->error_files['member_creditlimit'], $row['account'] . "," . trim($row['wallet']) . PHP_EOL, FILE_APPEND);
                    $cl_data['creditlimit'] = trim($row['wallet']);
                }
                $this->db_insert($db_con['agency'], 'a_creditlimit', $cl_data, $db_con);


                //總存提款處理
                $kr = [
                    "accountid" => $accountid,
                    "d_count" => $row['depositscount'],
                    "w_count" => $row['withdrawalcount'],
                    "d_amt" => $row['depositsmoney'],
                    "w_amt" => $row['withdrawalmoney'],
                    "winlose" => trim($row['rpt']), // 补输赢
                    "activebet" => trim($row['activebet'])
                ];
                $this->db_insert($db_con['agency'], 'a_account_sum', $kr, $db_con);


                // 2020-07-01 输赢处理
                $kr = [
                    "matchdate" => "0000-00-00",
                    "categoryid" => "0",
                    "accountid" => $accountid,
                    "wager_count" => "0",
                    "bet" => "0.0000",
                    "activebet" => "0.0000",
                    "payout" => trim($row['rpt'])
                ];
                // if($row['rpt'] != ''){ echo "TEST: ".$row['account'].",".$row['rpt'].PHP_EOL;}
                $this->db_insert($db_con['intergration'], 'p_new_rpt', $kr, $db_con);

                // 2020-07-01 a_account_sum


                // 2020-07-01 銀行卡判斷 (會員沒有銀行卡)
//                if (isset($this->member_excel['bank_correspond'][$row['bank']])) {
//                    $bank_id = $this->member_excel['bank_correspond'][$row['bank']];
//                } else {
//                    $bank_id = '59';
//                }

                $bank_id = '59';

                if ($row['bank'] != '') {
                    $indexArr = explode("|", $row['bank']);   //分割多張卡
                }
                
                foreach ($indexArr as $value) {
                    $bankArr = explode(" ", $value);   //分割名稱與卡號
                    $row['bank'] = $bankArr[0]; //放入名稱
                    $row['banknum'] = $bankArr[1];  //放入卡號
                    
                    foreach ($this->member_excel['bank_correspond2'] as $key => $index) {
                        if (strpos($row['bank'], $key) !== false) {
                            $bank_id = $index;
                        }
                    }


                    // echo "银行卡号码: ".$row['banknum'].PHP_EOL;
                    if ($row['banknum'] != '') {
                        $row['banknum'] = str_replace("'", '', trim($row['banknum']));
                        // 判斷是否全為數字
                        if (!(is_numeric($row['banknum']))) {
                            echo '用户名:' . $row['account'] . '銀行卡號必須為數字(' . $row['banknum'] . ')' . PHP_EOL;
                            $withdrawal_is_not_numeric[] = $row['account'];
                            $this->stat['withdrawal_is_not_numeric'] += 1;
                            continue;
                        }
                        // echo "銀行卡資料: ";
                        // echo($row['banknum']).PHP_EOL; continue;
                        // 欲匯入銀行卡號$row['banknum'] 不存在於本站台資料庫$this_bank_data[] 內則匯入
                        $row['banknum'] = preg_replace('/\s(?=)/', '', $row['banknum']);
                        if (!isset($this_bank_data[$row['banknum']])) {

                            //開始匯入
                            $kr = [
                                "bankindex" => $bank_id,
                                "accountindex" => $accountid,
                                "bankaccountno" => $row['banknum'],
                                "bankprovince" => '0',
                                "bankcity" => '0',
                                "bankaddress" => '',
                                "status" => '1',
                                "otherbankname" => '',
                                "companyindex" => '1'
                            ];
                            $this->db_insert($db_con['money_system'], 'withdrawal_profile', $kr, $db_con);
                            $profileindex = $db_con['money_system']->lastInsertId();

                            #銀行追蹤表
                            $kr = [
                                "audit_profileindex" => $profileindex,
                                "audit_bankindex" => $bank_id,
                                "audit_accountindex" => $accountid,
                                "audit_bankaccountno" => $row['banknum'],
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
                            $this->db_insert($db_con['money_system'], 'withdrawal_profile_audittrail', $kr, $db_con);


                            // 匯入後寫回$this_bank_data陣列，供下一筆判斷
                            $this_bank_data[$row['banknum']] = $row['banknum'];

                            // 銀行卡新增計數
                            $this->stat['withdrawal_ins'] += 1;
                        } else {
                            // echo '用户名: ' . $row['account'] . ' 銀行卡重複! 卡號: '.$row['banknum'].PHP_EOL;
                            $bank_repeat_err[] = $row['account'];

                            // 銀行卡重複計數
                            $this->stat['withdrawal_existed_ignore'] += 1;

                            //放入log
                            file_put_contents($this->error_files['banknum_repeat'], $row['account'] . "\t" . $row['banknum'] . PHP_EOL, FILE_APPEND);
                        }
                    } else {
                        // 沒有銀行卡
                        $this->stat['withdrawal_is_empty'] += 1;
                    }
                }


                if ($row['wallet'] <= 0 || $row['wallet'] == '') {
                    continue;
                }

                $this->stat['money_sum'] += $row['wallet'];
                $ledgerdatetime = date("Y-m-d H:i:s");

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
                $this->db_insert($db_con['money_system'], 'cash_ledger', $kr, $db_con);

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
                $this->db_insert($db_con['money_system'], 'cash_ledger_audittrail', $kr, $db_con);

                $kr = [
                    "ledgerindex" => $ledgerindex,
                    "remark" => $this->remark,
                    "lastupdateduser" => '72'
                ];
                $this->db_insert($db_con['money_system'], 'cash_ledger_remark_cash', $kr, $db_con);

                $kr = [
                    "ledgerindex" => $ledgerindex,
                    "remark" => $this->remark,
                    "lastupdateduser" => '72',
                    "updateaction" => 'INSERT'
                ];
                $this->db_insert($db_con['money_system'], 'cash_ledger_remark_cash_audittrail', $kr, $db_con);

                $kr = [
                    "ledgerindex" => $ledgerindex,
                    "currentcl" => '0',
                    "groupindex" => '0'
                ];
                $this->db_insert($db_con['money_system'], 'cash_ledger_reference', $kr, $db_con);

                $this->stat['money_add']++;
            }
            if (count($banklevel_array) > 0)
                foreach ($banklevel_array as $key => $data) {
                    $data_str = implode(',', $data);
                    file_put_contents('import_log/' . $key . '.txt', $data_str);
                }
        }
        echo(color("完成" . PHP_EOL, 'Light Green'));
        $this->db_end($db_con);
        echo(color(json_encode($this->stat) . PHP_EOL, 'Light Green'));
    }

    private
    function importagent()
    {

        print_r("開始執行" . PHP_EOL);
        $db_con = $this->db_con();
        print_r("取得" . $this->prefix . "代理样本資料表..." . PHP_EOL);
        $db_data = $this->default_agent_data($db_con);

        $this->arragentsearch = array();
        $insert_data = $this->arrimportexcel;

        $upline = $db_data['default_account'];
        $upline_data = $db_data['default_account_data'];

        foreach ($db_data['all_agent'] as $row) {
            $this->arragentsearch[$row['accountcode']] = $row['accountid'];
        }

        print_r("完成" . PHP_EOL);
        print_r("取得要匯入的代理資料表...");
        print_r("完成" . PHP_EOL);
        print_r("開始建立代理..." . PHP_EOL);
        if (count($insert_data) > 0) {
            foreach ($insert_data as $row) {
//                    GPK代理客製
                if ($row['level'] != '' && $row['level'] != '代理') continue;
                //轉小寫
                $row['account'] = strtolower(trim($row['account']));

                $strnew = '';
                $strold = '';
                if (!preg_match("/^[a-zA-Z0-9]{1,}$/", $row['account'])) {
//                    GPK代理客製
                    if ($row['account'] == 'gpk_d')
                        $row['account'] = 'js9900';
                    else {
                        //GPK代理客制
//                            $strold = $row['account'];
//                            $strnew = str_replace("_", "", $row['account']);
                        echo '用户名: ' . $row['account'] . ' 帐号格式错误，略过 ' . PHP_EOL;
                        $file = fopen($this->prefix . "_agent.log", "a+");
                        fwrite($file, "帐号格式错误 : \t" . $row['account'] . "\n");
                        fclose($file);
                        $this->a_stat['refuse']++;
                        continue;
                    }
                }

                if ($row['status'] == $this->a_close_status) {
                    echo '用户名: ' . $row['account'] . ' 未审核，略过 ' . PHP_EOL;
                    $this->a_stat['agree_ignore'] += 1;
                    $file = fopen($this->prefix . "_agent.log", "a+");
                    fwrite($file, "未审核\t" . $row['account'] . "\n");
                    fclose($file);
                    continue;
                }

                if (isset($this->arragentsearch[$row['account']])) {
                    echo '用户名: ' . $row['account'] . ' 已存在，略过 ' . PHP_EOL;
                    $this->a_stat['exist_ignore'] += 1;
                    $file = fopen($this->prefix . "_agent.log", "a+");
                    fwrite($file, "已存在\t" . $row['account'] . "\n");
                    fclose($file);
                    continue;
                }
                if (!empty($strold)) $arrtrans[$strold] = $strnew;
                $kr = $upline;
//                    $kr['ma_accountid'] = $this->arragentsearch[$row['gagent']];
                $kr['ma_accountid'] = $upline['accountid'];
                $kr['accountcode'] = $row['account'];
                $kr['levelid'] = 3;
                $kr['client_id'] = 11; //站外轉站則填11
                if ($row['reg_time'] != '') {
                    $kr['datecreated'] = date('Y-m-d H:i:s', strtotime($row['reg_time']));
                } else {
                    $kr['datecreated'] = date('Y-m-d H:i:s');
                }
                if ($row['lastlogintime'] != '') {
                    $kr['lastlogin'] = date('Y-m-d H:i:s', strtotime($row['lastlogintime']));
                } else {
                    $kr['lastlogin'] = date('Y-m-d H:i:s');
                }

                $kr['status'] = $row['status'] == '启用' ? 1 : 0;
                $kr['regipaddress'] = '';
//                    $kr['passwordexpiry'] = date('Y-m-d H:i:s', $kr['lastlogintime']);
                unset($kr['nickname']);
                unset($kr['accountid']);
                unset($kr['ag_accountid']);
                unset($kr['lastupdated']);
                unset($kr['lastupdateduser']);
                unset($kr['lastipaddress']);
//                    unset($kr['passwordexpiry']);
                $this->db_insert($db_con['agency'], 'a_account', $kr, $db_con);
//                    $accountid = $this->db_agency->insert_id();
                $accountid = $db_con['agency']->lastInsertId();
                $this->arragentsearch[$row['account']] = $accountid;
//                    $accountid = $this->
                $kr = $upline_data;
                $kr['accountid'] = $accountid;
                $kr['firstname'] = $row['name'];
                $kr['mobileno'] = $row['mobile'];
                $kr['email'] = $row['email'];
                $kr['qq'] = $row['QQ'];
                $kr['confirm_flag'] = 0;
                //$kr['withdrawal_code']	= $row['withdrawal_code'];
                $str = '';
                if (!empty($row['wechat']))
                    $str .= '微信: ' . $row['wechat'] . ' ';
                if ($row['wallet'] > 0)
                    $str .= '账户余额: ' . $row['wallet'];
                $kr['remark'] = $str;

                $this->db_insert($db_con['agency'], 'a_account_data', $kr, $db_con);

                $this->a_stat['add'] += 1;

            }
        }
        echo(color("完成" . PHP_EOL, 'Light Green'));
        $this->db_end($db_con);
        echo(color(json_encode($this->a_stat) . PHP_EOL, 'Light Green'));
    }

    public
    function check_accountcode($str, $old, $times = 1, $other_str = "")
    {
//        特殊帳號處理
//        if ($old == "df8123456789") {
//            $str = "gpk123456789";
//            file_put_contents($this->error_files['member_change'], $old . "," . $str . PHP_EOL, FILE_APPEND);
//            file_put_contents($this->error_files['member_add'], $old . "," . $str . PHP_EOL, FILE_APPEND);
//            return $str;
//        }

        if ($times > 10) { //遞迴了十次直接掉過

            file_put_contents($this->error_files['member_change_error'], $other_str . ',' . $old . "," . $str . PHP_EOL, FILE_APPEND);
            $this->stat['change_error']++;
            return 'skip_change';

        } else if (isset($this->arrmembersearch[$this->prefix . $str])) { //重複帳號
            // 2020-07-01 多判断加字后跟原本 【外站】 帳號是否有重複
            if ($this->samechange == 1) {
                // 若已经到达15位，则先扣除一码
//                if ($old == "qwertyuiopa" || $old == "qwertyuiopzx" || $old == "asdfghjklzx" || $old == "aa12345678" || $old == "123456789zxc") {
//                    $new_str = $str;
//                    if (strlen($str) == (15 - strlen($this->prefix))) {
//                        // 先扣一码
//                        $new_str = substr($str, 0, -2);
//                        // 若要扣除的字元原本就是'x', 再减一码
//                    }
//                    $new_str = $new_str . 'xx';
//                } else {
                $new_str = $str;
                if (strlen($str) == (15 - strlen($this->prefix))) {
                    // 先扣一码
                    $new_str = substr($str, 0, -1);
                    // 若要扣除的字元原本就是'x', 再减一码
                    // if (substr($str, -1) == 'x') {
                    //     $new_str = substr($new_str, 0, -1);
                    // }
                }
                $new_str = 'a' . $new_str;
//                }
                $times++;
                $str = $this->check_accountcode($new_str, $old, $times);
                echo(color('用户名: ' . $str . ' 帳號重複，字首+a ' . PHP_EOL, 'Light Red'));
                file_put_contents($this->error_files['member_repeat'], $old . "," . $str . PHP_EOL, FILE_APPEND);
            } else {
                if ($times > 1) {
                    $save_str = $old . "\t" . $str;
                } else {
                    $save_str = $str;
                }
                echo(color('用户名: ' . $str . ' 帳號重複，略過 ' . PHP_EOL, 'Light Red'));
                file_put_contents($this->error_files['member_repeat'], $save_str . "," . $str . PHP_EOL, FILE_APPEND);
                $this->stat['exist_ignore']++;
                return 'skip_change';
            }

        } else if (strlen($str) > (15 - strlen($this->prefix))) { //過長帳號

            if ($this->longchange == 1) {
                //取12位
                $new_str = substr($str, 0, 12);
                $times++;
                $str = $this->check_accountcode($new_str, $old, $times);
                echo(color('用户名: ' . $old . ' 帳號過長，降為12位 ' . PHP_EOL, 'Light Red'));
                file_put_contents($this->error_files['member_long'], $old . ',' . $str . PHP_EOL, FILE_APPEND);
            } else {
                if ($times > 1) {
                    $save_str = $old . "\t" . $str;
                } else {
                    $save_str = $str;
                }
                echo(color('用户名: ' . $str . ' 帳號過長，略過 ' . PHP_EOL, 'Light Red'));
                file_put_contents($this->error_files['member_long'], $other_str . ',' . $save_str . PHP_EOL, FILE_APPEND);
                $this->stat['long']++;
                return 'skip_change';
            }

        } else if (strlen($str) < 6) { //過短帳號

            if ($this->shortchange == 1) {
                $new_str = 'new' . $str;
                $times++;
                $str = $this->check_accountcode($new_str, $old, $times);
                echo(color('用户名: ' . $old . ' 帳號過短，前綴加上new ' . PHP_EOL, 'Light Red'));
                file_put_contents($this->error_files['member_short'], $old . ',' . $str . PHP_EOL, FILE_APPEND);
            } else {
                if ($times > 1) {
                    $save_str = $old . "\t" . $str;
                } else {
                    $save_str = $str;
                }
                echo(color('用户名: ' . $str . ' 帳號過短，略過 ' . PHP_EOL, 'Light Red'));
                file_put_contents($this->error_files['member_short'], $save_str . PHP_EOL, FILE_APPEND);
                $this->stat['short']++;
                return 'skip_change';
            }

        } else if (!preg_match("/^[a-zA-Z0-9]{1,}$/", $str)) { //非法帳號

            if ($this->errorchange == 1) {
                $new_str = str_replace("_", "", $str);
                $times++;
                $str = $this->check_accountcode($new_str, $old, $times);
                echo(color('用户名: ' . $str . ' 帳號格式錯誤，去除非法字元 ' . PHP_EOL, 'Light Red'));
                file_put_contents($this->error_files['member_error'], $other_str . "," . $old . ',' . $str . PHP_EOL, FILE_APPEND);
            } else {
                if ($times > 1) {
                    $save_str = $old . "\t" . $str;
                } else {
                    $save_str = $str;
                }
                echo(color('用户名: ' . $str . ' 帳號格式錯誤，略過 ' . PHP_EOL, 'Light Red'));
                file_put_contents($this->error_files['member_error'], $other_str . "," . $save_str . PHP_EOL, FILE_APPEND);
                $this->stat['refuse']++;
                return 'skip_change';
            }

        } else {
            if ($times > 1) {
                file_put_contents($this->error_files['member_change'], $old . "," . $str . PHP_EOL, FILE_APPEND);
                file_put_contents($this->error_files['member_add'], $old . "," . $this->prefix . $str . PHP_EOL, FILE_APPEND);
            } else {
                file_put_contents($this->error_files['member_add'], $old . "," . $this->prefix . $str . PHP_EOL, FILE_APPEND);
            }
        }
        return $str;
    }

    public
    function db_con($assign = null)
    {
        $db_con = [];
        if ($this->istest == 1) {
            $db = $this->db_setting['test'];
        } else {
            $db = $this->db_setting['official'];
        }

        foreach ($db['connection'] as $k => $v) {
            if (is_null($assign) || (isset($assign) && $assign == $k)) {
                $mysql = 'mysql:host=' . $db['host'] . ';';
                $dbname = 'dbname=' . $v . ';charset=utf8;';
                $user = $db['user'];
                $pass = $db['pass'];
                $db_con[$k] = new PDO($mysql . $dbname, $user, $pass, $this->PDO_arr);

                $db_con[$k]->query('set wait_timeout=28800;');
                $db_con[$k]->query('set interactive_timeout=28800;');
                $db_con[$k]->query('set sql_mode="";');

            }
        }
        return $db_con;
    }

    public
    function db_end($db)
    {
        if ($this->isdebug == 1) {
            foreach ($db as $con_begin) {
                $con_begin->rollback();
            }
        } else {
            foreach ($db as $con_begin) {
                $con_begin->commit();
            }
        }
    }

    public
    function db_data($con, $sql)
    {
        return $con->query($sql)->fetchAll(PDO::FETCH_ASSOC);
    }

    public
    function db_first($con, $sql)
    {
        return $con->query($sql)->fetch(PDO::FETCH_ASSOC);
    }

    public
    function db_insert($con, $table, $data, $conall)
    {
        try {
            $fields = [];
            foreach ($data as $k => $v) {
                $fields[] = "$k = :$k";
            }
            $sql = "INSERT INTO {$table} SET " . implode(",", $fields);
            $sth = $con->prepare($sql);
            foreach ($data as $key => &$val) {
                $sth->bindValue(":{$key}", $val);
            }
            $sth->execute();
        } catch (Exception $e) {
            dump(color("\n 資料表:$table", 'Light Red'));
            dump(color('遇到錯誤停止並還原', 'Light Red'));
            print_r($e);
            foreach ($conall as $con_begin) {
                $con_begin->rollBack();
            }
            dump($e);
            dd($data);
        }
    }

    public
    function mkdir_log($dir)
    {
        if (!is_dir($dir)) {
            mkdir($dir);
        }
    }

    public
    function rm_log($log)
    {
        foreach ($log as $key => $value) {
            if (is_file($value)) {
                unlink($value);
            }
        }
    }

    public
    function default_member_data($db)
    {
        $all_data = [];

        dump(color('取得預設會員資料...', 'Light Blue'));

        dump(color('取得預設會員a_account...', 'Light Green'));
        $all_data['default_account'] = $this->db_first($db['agency'], $this->member_sql['default_account'] . "'" . $this->member_default . "'");

        dump(color('取得預設會員a_account_data...', 'Light Green'));
        $all_data['default_account_data'] = $this->db_first($db['agency'], $this->member_sql['default_account_data'] . "'" . $this->member_default . "'");

        dump(color('取得全部代理資料...', 'Light Green'));
        $all_data['all_agent'] = $this->db_data($db['agency'], $this->member_sql['agent']);

        dump(color('取得全部會員資料...', 'Light Green'));
        $all_data['all_member'] = $this->db_data($db['agency'], $this->member_sql['member']);

        dump(color('取得全部會員組列表...', 'Light Green'));
        $all_data['bank_level'] = $this->db_data($db['money_system'], $this->member_sql['bank_level']);

        dump(color('取得全部銀行卡資料...', 'Light Green'));
        $all_data['withdrawal_profile'] = $this->db_data($db['money_system'], $this->member_sql['withdrawal_profile']);

        dump(color('取得全部銀行卡追蹤...', 'Light Green'));
        $all_data['withdrawal_profile_audittrail'] = $this->db_data($db['money_system'], $this->member_sql['withdrawal_profile_audittrail']);

        return $all_data;
    }

    public
    function default_agent_data($db)
    {
        $all_data = [];

        dump(color('取得預設代理資料...', 'Light Blue'));

        dump(color('取得預設代理a_account...', 'Light Green'));
        $all_data['default_account'] = $this->db_first($db['agency'], $this->agent_sql['default_account'] . "'" . $this->agent_default . "'");

        dump(color('取得預設代理a_account_data...', 'Light Green'));
        $all_data['default_account_data'] = $this->db_first($db['agency'], $this->agent_sql['default_account_data'] . "'" . $this->agent_default . "'");

        dump(color('取得全部總代資料...', 'Light Green'));
        $all_data['all_agent'] = $this->db_data($db['agency'], $this->agent_sql['agent']);

        return $all_data;
    }
}

$start = date("Y-m-d H:i:s");
$excel_import = new excel_import();
$excel_import->run();
$end = date("Y-m-d H:i:s");
dump(color("開始時間" . $start, 'Light Green'));
dump(color("結束時間" . $end, 'Light Green'));
?>