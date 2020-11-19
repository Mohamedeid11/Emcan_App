<?php

/*
 * Following code will list all the services
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


// get all services from services table

if (isset($_GET['lang'])  != '') {

    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `services` ORDER BY `service_id`  DESC") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // services node
        $response["service"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $service = array();
            $service["service_id"] = $row["service_id"];
            if ($lang == "ar") {
                $service["service_name"] = $row["service_name_ar"];
            } else {
                $service["service_name"] = $row["service_name_en"];
            }
            $service["service_image"] = $row["service_image"];
            $service_id = $row["service_id"];



            // push single service into final response array
            array_push($response["service"], $service);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["service"] = array();

        // temp user array
        $service = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no services found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>