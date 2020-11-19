<?php

/*
 * Following code will list all the gallerys
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


// get all gallerys from gallerys table

if (isset($_GET['lang'])  != '') {

    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `gallery`  ORDER BY `gallery_id` DESC") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // gallerys node
        $response["gallery"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $gallery = array();
            $gallery["gallery_id"] = $row["gallery_id"];
            if ($lang == "ar") {
                $gallery["gallery_name"] = $row["gallery_title_ar"];
            } else {
                $gallery["gallery_name"] = $row["gallery_title_en"];
            }
            $gallery["gallery_image"] = $row["gallery_image"];
            $gallery_id = $row["gallery_id"];



            // push single gallery into final response array
            array_push($response["gallery"], $gallery);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["gallery"] = array();

        // temp user array
        $gallery = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no gallerys found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>