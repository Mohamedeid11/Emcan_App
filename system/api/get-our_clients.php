<?php

/*
 * Following code will list all the clients
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


// get all clients from clients table

if (isset($_GET['lang'])  != '') {

    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `our_clients`  ORDER BY `client_id` DESC") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // clients node
        $response["client"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $client = array();
            $client["client_id"] = $row["client_id"];
            if ($lang == "ar") {
                $client["client_name"] = $row["client_title_ar"];
            } else {
                $client["client_name"] = $row["client_title_en"];
            }
            $client["client_image"] = $row["client_image"];
            $client_id = $row["client_id"];



            // push single client into final response array
            array_push($response["client"], $client);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["client"] = array();

        // temp user array
        $client = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no clients found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>