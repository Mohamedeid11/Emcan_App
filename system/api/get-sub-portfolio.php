<?php

/*
 * Following code will list all the products
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


// get all products from products table

if (isset($_GET['portfolio_id']) && $_GET['lang'] != '') {

    $portfolio_id = $_GET['portfolio_id'];
    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `sub_portfolio` WHERE `portfolio_id`='$portfolio_id' and `display`=1 order by project_id desc") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // products node
        $response["product"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $product = array();
            $product["project_id"] = $row["project_id"];
            if ($lang == "ar") {
                $product["project_title"] = $row["project_title_ar"];
                $product["project_desc"] = $row["project_desc_ar"];
            } else {
                $product["project_title"] = $row["project_title_en"];
                $product["project_desc"] = $row["project_desc_en"];
            }
            $product["project_image"] = $row["project_image"];
            $product["portfolio_id"] = $row["portfolio_id"];

            
            // push single product into final response array
            array_push($response["product"], $product);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["product"] = array();

        // temp user array
        $product = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no products found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>