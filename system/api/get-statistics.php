<?php

/*
 * Following code will list all the statistics
 */
// array for JSON response
$response = array();

// include db connect class
include("db_connect.php");

// connecting to db
$db = new DB_CONNECT();

mysql_query("SET NAMES 'utf8'");

mysql_query("SET CHARACTER SET utf8");

mysql_query("SET SESSION collation_connection = 'utf8_unicode_ci'");


// get all statistics from statistics table

if (isset($_GET['lang'])  != '') {

    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `statistics`  ORDER BY `statistic_id` DESC") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // statistics node
        $response["statistic"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $statistic = array();
            $statistic["statistic_id"] = $row["statistic_id"];
            if ($lang == "ar") {
                $statistic["statistic_name"] = $row["statistic_title_ar"];
            } else {
                $statistic["statistic_name"] = $row["statistic_title_en"];
            }
            $statistic["statistic_number"] = $row["statistic_number"];
            $statistic["statistic_image"] = $row["statistic_image"];
            $statistic_id = $row["statistic_id"];



            // push single statistic into final response array
            array_push($response["statistic"], $statistic);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["statistic"] = array();

        // temp user array
        $statistic = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no statistics found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>