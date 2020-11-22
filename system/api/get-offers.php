<?php

/*
 * Following code will list all the offers
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


// get all offers from offers table

if (isset($_GET['lang'])  != '') {

    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `offers`  ORDER BY `offer_id` DESC") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // offers node
        $response["offer"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $offer = array();
            $offer["offer_id"] = $row["offer_id"];
            if ($lang == "ar") {
                $offer["offer_name"] = $row["offer_title_ar"];
                $offer["offer_description"] = $row["offer_desc_ar"];
            } else {
                $offer["offer_name"] = $row["offer_title_en"];
                $offer["offer_description"] = $row["offer_desc_en"];
            }
            $offer["vat"] = $row["vat"];
            $offer["discount"] = $row["discount"];
            $offer["offer_image"] = $row["offer_image"];
            $offer_id = $row["offer_id"];



            // push single offer into final response array
            array_push($response["offer"], $offer);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["offer"] = array();

        // temp user array
        $offer = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no offers found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>