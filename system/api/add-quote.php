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

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET,POST,PUT,DELETE,OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With');


// get all products from products table
// Start Functionality
$postdata = file_get_contents("php://input");

if (isset($postdata) && !empty($postdata)) {
    $Req = json_decode($postdata, TRUE);

    $service_id = $Req['service_id'];
    $title = $Req['title'];
    $content = $Req['content'];
    $lang = $Req['lang'];


    $result = mysql_query("INSERT INTO `quotes` (`service_id`, `title`, `content`) VALUES ('$service_id', '$title', '$content')");

    $id = mysql_insert_id();
    $service_name = get_service_name_from_id($service_id , $lang);

    $to = "emcaninfo@gmail.com";
    $subject = "Emcan App - New Quote";
    $headers = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
    $headers .="From:info@emcan-group.com\r\n" . "Reply-To:Info@emcan-group.com\r\n";


    $message = "Service Name : <br />" . $service_name . "<br /> <br />";
    $message .= "Title: <br />" . $title . "<br /> <br />";
    $message .= "Content : <br />" . $content;

    mail($to, $subject, $message, $headers);

    $response["product"] = array();

    // temp user array
    $product = array();
    $product["id"] = $id;
    $product["service_id"] = $Req["service_id"];
    $product["title"] = $Req["title"];
    $product["content"] = $Req["content"];

    // push single product into final response array
    array_push($response["product"], $product);


    // check if row inserted or not
    if ($result) {
        // successfully inserted into database
        $response["success"] = 1;
        $response["message"] = "تم إضافة الرساله بنجاح.";

        // echoing JSON response
        echo json_encode($response);
    } else {
        // failed to insert row
        $response["success"] = 0;
        $response["message"] = "عفوا لقد حدث خطأ.";

        // echoing JSON response
        echo json_encode($response);
    }

} else {
    // required field is missing
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echoing JSON response
    echo json_encode($response);
}
?>