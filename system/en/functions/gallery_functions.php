<?php
if (isset($_POST['change_status_on'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_on'];

    $query = $con->query("UPDATE `gallery` SET `display`=1 WHERE `gallery_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['change_status_off'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_off'];

    $query = $con->query("UPDATE `gallery` SET `display`=0 WHERE `gallery_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['gallery_id'])) {

    include("../connection.php");

    $gallery_id = $_POST['gallery_id'];
    $querya = $con->query("SELECT * FROM `gallery` WHERE `gallery_id`='$gallery_id' limit 1");
    $row_select = mysqli_fetch_array($querya);
    $gallery_image = $row_select['gallery_image'];
    $mostafa = explode('/', $gallery_image);

    $image_name = $mostafa[8];

    $full_img_path = dirname(__FILE__) . "/../../api/uploads/Gallery/{$gallery_image}/{$image_name}";

    $folder_full_img_path = dirname(_FILE_) . "/../../api/uploads/Gallery/{$gallery_image}";

    if (file_exists($full_img_path)) {
        @unlink($full_img_path);
    }

    rmdir($folder_full_img_path);


    $query = $con->query("DELETE FROM `gallery` WHERE `gallery_id`='$gallery_id'");

    if ($query) {
        echo get_success("Deleted Successfully  ");
    }
}


?>
