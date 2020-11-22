<?php
if (isset($_POST['change_status_on'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_on'];

    $query = $con->query("UPDATE `statistics` SET `display`=1 WHERE `statistic_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['change_status_off'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_off'];

    $query = $con->query("UPDATE `statistics` SET `display`=0 WHERE `statistic_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['statistic_id'])) {

    include("../connection.php");

    $statistic_id = $_POST['statistic_id'];
    $querya = $con->query("SELECT * FROM `statistics` WHERE `statistic_id`='$statistic_id' limit 1");
    $row_select = mysqli_fetch_array($querya);
    $statistic_image = $row_select['statistic_image'];
    $mostafa = explode('/', $statistic_image);

    $image_name = $mostafa[8];

    $full_img_path = dirname(__FILE__) . "/../../api/uploads/Statistics/{$statistic_image}/{$image_name}";

    $folder_full_img_path = dirname(_FILE_) . "/../../api/uploads/Statistics/{$statistic_image}";

    if (file_exists($full_img_path)) {
        @unlink($full_img_path);
    }

    rmdir($folder_full_img_path);


    $query = $con->query("DELETE FROM `statistics` WHERE `statistic_id`='$statistic_id'");

    if ($query) {
        echo get_success("Deleted Successfully  ");
    }
}


?>
