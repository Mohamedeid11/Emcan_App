<?php
if (isset($_POST['change_status_on'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_on'];

    $query = $con->query("UPDATE `services` SET `display`=1 WHERE `service_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['change_status_off'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_off'];

    $query = $con->query("UPDATE `services` SET `display`=0 WHERE `service_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['service_id'])) {

    include("../connection.php");

    $service_id = $_POST['service_id'];
    $querya = $con->query("SELECT * FROM `services` WHERE `service_id`='$service_id' limit 1");
    $row_select = mysqli_fetch_array($querya);
    $service_image = $row_select['service_image'];
    $mostafa = explode('/', $service_image);

    $image_name = $mostafa[8];

    $full_img_path = dirname(__FILE__) . "/../../api/uploads/Services/{$service_image}/{$image_name}";

    $folder_full_img_path = dirname(_FILE_) . "/../../api/uploads/Services/{$service_image}";

    if (file_exists($full_img_path)) {
        @unlink($full_img_path);
    }

    rmdir($folder_full_img_path);


    $query = $con->query("DELETE FROM `services` WHERE `service_id`='$service_id'");

    if ($query) {
        echo get_success("Deleted Successfully  ");
    }
}


?>
