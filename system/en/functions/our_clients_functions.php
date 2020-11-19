<?php
if (isset($_POST['change_status_on'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_on'];

    $query = $con->query("UPDATE `our_clients` SET `display`=1 WHERE `client_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['change_status_off'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_off'];

    $query = $con->query("UPDATE `our_clients` SET `display`=0 WHERE `client_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['client_id'])) {

    include("../connection.php");

    $client_id = $_POST['client_id'];
    $querya = $con->query("SELECT * FROM `our_clients` WHERE `client_id`='$client_id' limit 1");
    $row_select = mysqli_fetch_array($querya);
    $client_image = $row_select['client_image'];
    $mostafa = explode('/', $client_image);

    $image_name = $mostafa[8];

    $full_img_path = dirname(__FILE__) . "/../../api/uploads/OurClients/{$client_image}/{$image_name}";

    $folder_full_img_path = dirname(_FILE_) . "/../../api/uploads/OurClients/{$client_image}";

    if (file_exists($full_img_path)) {
        @unlink($full_img_path);
    }

    rmdir($folder_full_img_path);


    $query = $con->query("DELETE FROM `our_clients` WHERE `client_id`='$client_id'");

    if ($query) {
        echo get_success("Deleted Successfully  ");
    }
}


?>
