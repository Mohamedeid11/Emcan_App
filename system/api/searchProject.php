<?php

/*
 * Following code will list all the projects
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


// get all projects from projects table

if (isset($_GET['lang']) && $_GET['key_word'] != '') {
    $lang = $_GET['lang'];
    $key_word = $_GET['key_word'];
    if ($lang == "ar") {
        $result = mysql_query("SELECT * FROM `projects` WHERE `project_name_ar` LIKE '%" . $key_word . "%' ORDER BY `project_id`  DESC") or die(mysql_error());
    }else{
        $result = mysql_query("SELECT * FROM `projects` WHERE `project_name_en` LIKE '%" . $key_word . "%' ORDER BY `project_id`  DESC") or die(mysql_error());
    }

// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // projects node
        $response["project"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $project = array();
            $project["project_id"] = $row["project_id"];
            if ($lang == "ar") {
                $project["project_name_ar"] = $row["project_name_ar"];
                $project["project_desc_ar"] = $row["project_desc_ar"];
            } else {
                $project["project_name_en"] = $row["project_name_en"];
                $project["project_desc_en"] = $row["project_desc_en"];
            }
            $project["project_image"] = $row["project_image"];
            $project_id = $row["project_id"];



            // push single project into final response array
            array_push($response["project"], $project);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["project"] = array();

        // temp user array
        $project = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no projects found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>