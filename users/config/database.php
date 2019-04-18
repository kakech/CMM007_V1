<?php
// database connection
class Database{

	//  database credentials
	private $host = "CSDM-WEBDEV";
	private $db_name = "db1712499_cw_db";
	private $username = "1712499";
	private $password = "1712499";
	public $conn;

	// get the database connection
	public function getConnection(){

		$this->conn = null;

		try{
			$this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
		}catch(PDOException $exception){
			echo "Connection error: " . $exception->getMessage();
		}

		return $this->conn;
	}
}
?>
