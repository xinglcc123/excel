<?php
// excel匯入的程式 使用pdo連線 要說明各資料表的用途
// a_account 儲存會員帳號 密碼 
require_once('../PHPExcel/Classes/PHPExcel/IOFactory.php');




class excelPdo
{
	public function run()
	{
		$this->dbh = new PDO('mysql:host=localhost;dbname=' . $this->dbname, $this->user, $this->pass);	// 使用連接
		print_r("轉入代理 = 1" . PHP_EOL);
		print_r("轉入會員 = 2" . PHP_EOL);
		print_r("請輸入 1 或 2 ：");
		$userInput = fopen("php://stdin", "r");	// 标准输入（standard input），只读，用于从控制台输入内容，会在碰到换行符停止
		$userText = trim(fgets($userInput));	// 从文件指针中读取一行 清除字串前後空白
		print_r($userText . PHP_EOL);
		$this->excelGetArray();	// 取出excel資料
		$this->dbh = null;	// 關閉連接
	}
	private $user = 'root';	// 資料庫帳號
	private $pass = '';	// 資料庫密碼
	private $dbname = 't68';	// 資料庫儲存庫
	private $file = 't6802.xlsx';	// 導入資料表名稱
	private $array = ['name', 'QQ', 'email', 'wechat', 'remark'];	// 需要儲存特殊字元的欄位
	private $arrimportexcel = [];	// 暫存導入資料

	public function excelGetArray()
	{
		$agent_excel = [
			'start_row' => '2',							//從第幾列開始
			'cells' => [								//右邊填入對應的欄位 若沒有就設空值
				'account'	=>	'A',	//帳號
				'name'	=>	'B',	//姓名
				'depositsmoney'	=>	'D',	//總存款
				'withdrawalmoney'	=>	'E',	//總提款
				'depositscount'	=>	'C',	//總存次數
				'withdrawalcount'	=>	'',	//總提次數
				'mobile'	=>	'H',	//電話
				'QQ'	=>	'',	//QQ
				'email'	=>	'',	//信箱
				'wechat'	=>	'',	//微信
				'reg_time'	=>	'',	//註冊時間
				'lastlogintime'	=>	'',	//最後登入時間
				'lastipaddress'	=>	'',	//最後登入IP
				'regipaddress'	=>	'',	//註冊IP
				'remark'	=>	'',
				'wallet'	=>	'',
				'win_loss'	=>	'',
				'dob'	=>	'',
				'rpt'	=>	'F',	//輸贏
				'bank'	=>	'',	//銀行名稱
				'banknum'	=>	'',	//銀行卡號
				'banklevel' => 'G',	//會員組
				'agent' => '',
				'province' => '',
				'city' => '',
				'status' => '',
				'frozen' => ''
			]
		];

		try {


			// foreach($dbh->query('SELECT * from users') as $row) {
			//     echo $row['name'] . "\t";
			//     echo $row['account'] . "\t";
			//     echo $row['email'] . "\n";
			// }
			// // 通过绑定的 PHP 变量执行一条预处理语句
			// $stmt = $dbh->prepare("INSERT INTO users (name, account, email, password) VALUES (:name, :account, :email, :password)");
			// $stmt->bindParam(':name', $name, PDO::PARAM_STR);	// 绑定一个参数到指定的变量名
			// $stmt->bindParam(':account', $account, PDO::PARAM_STR);	// 绑定一个参数到指定的变量名
			// $stmt->bindParam(':email', $email, PDO::PARAM_STR);	// 绑定一个参数到指定的变量名
			// $stmt->bindParam(':password', $password, PDO::PARAM_STR);	// 绑定一个参数到指定的变量名

			// $name = 'one2';
			// $account = 'account2';
			// $email = 'email2';
			// $password = 'password2';
			// // 插入一行
			// $rr = $stmt->execute();	// 执行一条预处理语句

			print_r("讀取excel中" . PHP_EOL);
			$objPHPExcel = PHPExcel_IOFactory::load($this->file);
			print_r("讀取完成" . PHP_EOL);
			$sheet = $objPHPExcel->getActiveSheet();	// 獲得excel表
			$highestRow = $sheet->getHighestRow();	// 共有幾行
			$arrtemp = [];
			$arrayFlip = array_flip($this->array);	// 鍵/值互換
			for ($i = $agent_excel['start_row']; $i <= $highestRow; $i++) {
				$row_arr = [];
				// 資料放入自訂陣列
				foreach ($agent_excel['cells'] as $k => $excelKey) {
					// 未關聯excel欄位則給予空值
					if ($excelKey == '') {
						$row_arr[$k] = '';
						continue;
					}
					$cell = $sheet->getCell($excelKey . $i);	// 指定此儲存格
					if ($k == 'account') {	// 帳號
						$row_arr[$k] = strtolower(trim($cell->getValue()));	// 清除字串前後空白 轉換為小寫
					} elseif (isset($arrayFlip[$k])) {	// 'name', 'QQ', 'email', 'wechat', 'remark'
						$row_arr[$k] = addslashes(trim($cell->getValue()));	// 清除字串前後空白 特殊字元前加反斜線\
					} else {
						$row_arr[$k] = trim($cell->getValue());	// 清除字串前後空白 
					}
					// 判斷有無日期
					if (PHPExcel_Shared_Date::isDateTime($cell)) {
						$row_arr[$k] = date("Y-m-d", PHPExcel_Shared_Date::ExcelToPHP($cell->getValue()));	// 若有格式化儲存格為日期。轉換格式
					}
				}

				$arrtemp[] = $row_arr;
			}
			$this->arrimportexcel = $arrtemp;
			print_r($this->arrimportexcel);


			// $accountcode = 'ag888';
			// $status = '1';


			// $sth = $dbh->prepare('SELECT * FROM a_account WHERE accountcode = :accountcode AND status = :status');	//准备要执行的语句，并返回语句对象
			// $sth->execute(array(':accountcode' => $accountcode, ':status' => $status));	// 执行一条预处理语句
			// $sss = $sth->fetchAll();	// 返回一个包含结果集中所有行的数组
			// print_r($sss[0]['accountcode']);

		} catch (PDOException $e) {
			print "Error!: " . $e->getMessage() . "<br/>";
			die();
		}
	}
}

$excelPdo = new excelPdo();
$excelPdo->run();
?>