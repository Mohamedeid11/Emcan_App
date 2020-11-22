<?php
if (isset($_POST['change_status_on'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_on'];

    $query = $con->query("UPDATE `offers` SET `display`=1 WHERE `offer_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['change_status_off'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_off'];

    $query = $con->query("UPDATE `offers` SET `display`=0 WHERE `offer_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['offer_id'])) {

    include("../connection.php");

    $offer_id = $_POST['offer_id'];
    $querya = $con->query("SELECT * FROM `offers` WHERE `offer_id`='$offer_id' limit 1");
    $row_select = mysqli_fetch_array($querya);
    $offer_image = $row_select['offer_image'];
    $mostafa = explode('/', $offer_image);

    $image_name = $mostafa[8];

    $full_img_path = dirname(__FILE__) . "/../../api/uploads/Offers/{$offer_image}/{$image_name}";

    $folder_full_img_path = dirname(_FILE_) . "/../../api/uploads/Offers/{$offer_image}";

    if (file_exists($full_img_path)) {
        @unlink($full_img_path);
    }

    rmdir($folder_full_img_path);


    $query = $con->query("DELETE FROM `offers` WHERE `offer_id`='$offer_id'");

    if ($query) {
        echo get_success("Deleted Successfully  ");
    }
}


?>
