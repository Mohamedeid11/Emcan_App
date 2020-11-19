<?php
$response = array();

//header('Content-type: text/html');
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);

// include db connect class
include("db_connect.php");
// connecting to db
$db = new DB_CONNECT();
mysql_query("SET NAMES 'utf8'");
mysql_query("SET CHARACTER SET utf8");
mysql_query("SET SESSION collation_connection = 'utf8_unicode_ci'");
if (isset($_GET['lang']) != '') {

    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `portfolio` WHERE `display`=1 ") or die(mysql_error());
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // products node
        $response["product"] = array();

        while ($row = mysql_fetch_array($result)) {
            $product = array();
            $product["portfolio_id"] = $row["id"];
            $portfolio_id = $row['id'];

            if ($lang == "ar") {
                $product["portfolio_name"] = $row["portfolio_title_ar"];
            } else {
                $product["portfolio_name"] = $row["portfolio_title_en"];
            }
            $product['portfolio_images'] = get_projects($portfolio_id);


            // push single product into final response array
            array_push($response["product"], $product);
        }

        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    }else {

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
}

// echoing JSON response
echo json_encode($response);

?>