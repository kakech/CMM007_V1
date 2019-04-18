<?php
// show error reporting
error_reporting(E_ALL);

// start php session
session_start();

//  default time-zone
date_default_timezone_set('Europe/London');

// home page url
//$home_url="http://localhost:8080/CMM007/users/";

// page given in URL parameter, default page is one
$page = isset($_GET['page']) ? $_GET['page'] : 1;

// number of records per page
$records_per_page = 5;

// calculate for the query LIMIT clause
$from_record_num = ($records_per_page * $page) - $records_per_page;
?>
