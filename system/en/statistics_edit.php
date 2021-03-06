<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}if (($_SESSION['cat_and_sub'] != '1')) {
    header("Location: error.php");
    exit();
}
?>

<?php
// error_reporting(0);

if (isset($_POST['service_update'])) {
    $temp = $_POST;

    $statistic_id_update = mysqli_real_escape_string($con, trim($temp['statistic_id_update']));
    $statistic_title_en = mysqli_real_escape_string($con, trim($temp['statistic_title_en']));
    $statistic_title_ar = mysqli_real_escape_string($con, trim($temp['statistic_title_ar']));
    $statistic_number = mysqli_real_escape_string($con, trim($temp['statistic_number']));
    $display = mysqli_real_escape_string($con, trim($temp['display']));




    if (isset($_FILES['image_update']['name']) && !empty($_FILES['image_update']['name'])) {

        $image_ext_old = $_POST['image_ext_old'];
        $mostafa = explode('/', $image_ext_old);
        $image_name = $mostafa[7];
        $full_img_path = "../api/uploads/Statistics/$statistic_id_update" . "/" . $image_name;
        if (file_exists($full_img_path)) {
            @unlink($full_img_path);
        }

        if (!file_exists("../api/uploads/Statistics/" . $statistic_id_update)) {
            mkdir("../api/uploads/Statistics/" . $statistic_id_update, 0777, true);
        }

        $image_name_update = $_FILES['image_update']['name'];
        $image_tmp_update = $_FILES['image_update']['tmp_name'];

        $image_path = "../api/uploads/Statistics/$statistic_id_update" . "/" . $image_name_update;
        $image_database = "{$sit_url}/api/uploads/Statistics/$statistic_id_update" . "/" . $image_name_update;


        if (move_uploaded_file($image_tmp_update, $image_path)) {

            $update = $con->query("UPDATE `statistics` SET `statistic_title_en`='$statistic_title_en' , `statistic_title_ar`='$statistic_title_ar' ,`statistic_number`='$statistic_number' ,`statistic_image`='$image_database',`display`='$display'  WHERE `statistic_id`='$statistic_id_update'");
        }
        if ($update) {
            echo get_success("Updated Successfully ");
        } else {
            echo get_error("there's an error ");
        }
    }else {
        $update = $con->query("UPDATE `statistics` SET `statistic_title_en`='$statistic_title_en' , `statistic_title_ar`='$statistic_title_ar' , `statistic_number`='$statistic_number' ,`display`='$display'  WHERE `statistic_id`='$statistic_id_update'");
    }


    echo get_success("Successfully Updated");
    echo "<meta http-equiv='refresh' content='0'>";
}

?>

<!DOCTYPE html>
<html>
<?php include("include/heads.php"); ?>
<body class="fixed-left">
<div id="wrapper">
    <!-- Top Bar Start -->
    <?php include("include/topbar.php"); ?>
    <!-- Top Bar End -->

    <!-- Left Sidebar Start -->
    <?php include("include/leftsidebar.php"); ?>
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->
    <div class="container">
        </br>
        <div class="content-page">
            <div class="content">
                <div class="container">

                    <div class="row">
                        <div class="col-sm-12">
                            <h4 class="page-title"><?=lang('statistics')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="statistics_view.php"><?=lang('statistics')?></a></li>
                                <li class="active"><?=lang('update_statistics')?></li>
                            </ol>
                        </div>
                    </div>

                    <div class="updateData"></div>
                    <?php
                    if ($_GET['statisticID']) {

                    $get_statistic_id = $_GET['statisticID'];

                    $query_select = $con->query("SELECT * FROM `statistics` WHERE `statistic_id` = '{$get_statistic_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $statistic_id = $row_select['statistic_id'];
                    $statistic_title_en = $row_select['statistic_title_en'];
                    $statistic_title_ar = $row_select['statistic_title_ar'];
                    $statistic_number = $row_select['statistic_number'];
                    $display = $row_select['display'];


                    $statistic_image = $row_select['statistic_image'];
                    $get_image_ext = explode('.', $statistic_image);
                    $image_ext = strtolower(end($get_image_ext));

                    if ($query_select) {
                    ?>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card-box">
                                <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                    <input type="hidden" name="statistic_id_update" id="statistic_id_update" parsley-trigger="change"  value="<?= $statistic_id; ?>" class="form-control">

                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_name"><?=lang('statistic_name_english')?></label>
                                        <input type="text" name="statistic_title_en" id="statistic_title_en" parsley-trigger="change"  value="<?=$statistic_title_en; ?>" class="form-control">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_name_ar"> <?=lang('statistic_name_arabic')?></label>
                                        <input type="text" name="statistic_title_ar" id="statistic_title_ar" parsley-trigger="change"  value="<?= $statistic_title_ar ?>" class="form-control">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_name_ar"> <?=lang('statistic_number')?></label>
                                        <input type="text" name="statistic_number" id="statistic_number" parsley-trigger="change"  value="<?= $statistic_number ?>" class="form-control">
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group col-md-3">
                                        <label class="control-label">  <?=lang('status')?></label>
                                        <select class="form-control" name="display" required parsley-trigger="change">
                                            <option value="1" <?php
                                            if ($display == '1') {
                                                echo 'selected';
                                            }
                                            ?>><?= lang('show')?></option>
                                            <option value="0"  <?php
                                            if ($display == '0') {
                                                echo 'selected';
                                            }
                                            ?>><?= lang('hidden')?></option>
                                        </select>
                                    </div>


                                    <div class="clearfix"></div>

                                    <input type="hidden" name="image_ext_old" value="<?php echo $statistic_image; ?>" />
                                    <div class="form-group m-b-0">
                                        <label for="userName"><?= lang('image')?>  <a class="showImg"><?= lang('edit')?>?</a> </label>

                                        <div class="gal-detail thumb getImage">
                                            <a href="<?php echo $statistic_image; ?>" class="image-popup" title="<?= $statistic_title_en ?>">
                                                <img src="<?php echo $statistic_image; ?>" class="thumb-img" alt="<?= $statistic_title_en; ?>">
                                            </a>
                                        </div>

                                        <div class="form-group m-b-0">
                                            <label class="control-label"><?= lang('image')?> </label>
                                            <input type="file" name="image_update" id="image_update" class="filestyle" data-buttonname="btn-primary">
                                        </div>
                                    </div>
                                    <br />

                                    <div class="form-group text-right m-b-0">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit" name="service_update" id="service_update"><?= lang('save')?></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $('.image-popup').magnificPopup({
                            type: 'image',
                            closeOnContentClick: true,
                            mainClass: 'mfp-fade',
                            statistic: {
                                enabled: true,
                                navigateByImgClick: true,
                                preload: [0, 1] // Will preload 0 - before current, and 1 after the current image
                            }
                        });
                    });
                </script>
                <?php
                }
                }
                ?>

            </div>
        </div>
        <?php include("include/footer_text.php"); ?>

    </div>

    <!-- End Right content here -->

    <!-- Right Sidebar -->
    <div class="side-bar right-bar nicescroll">
        <?php include("include/rightbar.php"); ?>
    </div>
    <!-- /Right-bar -->
</div>
<!-- END wrapper -->


<?php include("include/footer.php"); ?>

<script>
    $("#branch_id").change(function () {
        var branch_id= $(this).val();
        var dataString = 'parent_categories_by_branch_id=' + branch_id;
        $.ajax({
            type: "POST",
            url: "functions/washer_function.php",
            data: dataString,
            dataType: 'text',
            cache: false,
            success: function (html) {
                $("#parent_category_id").html(html);
            }
        });

    });
</script>
<script>
    $(document).ready(function () {
        $("#cssmenu ul>li").removeClass("active");
        $("#item7").addClass("active");
    });
</script>
<script type="text/javascript">
    $('.select2me').select2({
        placeholder: "Select",
        width: 'auto',
        allowClear: true
    });
</script>
</body>
</html>