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

if (isset($_POST['project_update'])) {
    $temp = $_POST;

    $project_id_update = $temp['project_id_update'];
    $portfolio_id_update = $temp['portfolio_id_update'];
    $project_title_en = $temp['project_title_en'];
    $project_title_ar = $temp['project_title_ar'];
    $project_desc_en = $temp['project_desc_en'];
    $project_desc_ar = $temp['project_desc_ar'];
    $display = $temp['display'];




    if (isset($_FILES['image_update']['name']) && !empty($_FILES['image_update']['name'])) {

        $image_ext_old = $_POST['image_ext_old'];
        $mostafa = explode('/', $image_ext_old);
        $image_name = $mostafa[7];
        $full_img_path = "../api/uploads/Projects/$project_id_update" . "/" . $image_name;
        if (file_exists($full_img_path)) {
            @unlink($full_img_path);
        }

        if (!file_exists("../api/uploads/Projects/" . $project_id_update)) {
            mkdir("../api/uploads/Projects/" . $project_id_update, 0777, true);
        }

        $image_name_update = $_FILES['image_update']['name'];
        $image_tmp_update = $_FILES['image_update']['tmp_name'];

        $image_path = "../api/uploads/Projects/$project_id_update" . "/" . $image_name_update;
        $image_database = "{$sit_url}/api/uploads/Projects/$project_id_update" . "/" . $image_name_update;


        if (move_uploaded_file($image_tmp_update, $image_path)) {

            $update = $con->query("UPDATE `sub_portfolio` SET `project_title_en`='$project_title_en' , `project_title_ar`='$project_title_ar' , `project_desc_en`='$project_desc_en' , `project_desc_ar`='$project_desc_ar',`portfolio_id`='$portfolio_id_update' ,`project_image`='$image_database'  ,`display`='$display'  WHERE `project_id`='$project_id_update'");
        }
        if ($update) {
            echo get_success("Updated Successfully ");
        } else {
            echo get_error("there's an error ");
        }
    }else {
        $update = $con->query("UPDATE `sub_portfolio` SET `project_title_en`='$project_title_en' , `project_title_ar`='$project_title_ar' , `project_desc_en`='$project_desc_en' , `project_desc_ar`='$project_desc_ar',`portfolio_id`='$portfolio_id_update' ,`display`='$display'   WHERE `project_id`='$project_id_update'");
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
                            <h4 class="page-title"><?=lang('projects')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="sub_portfolio_view.php"><?=lang('projects')?></a></li>
                                <li class="active"><?=lang('edit_project')?></li>
                            </ol>
                        </div>
                    </div>

                    <div class="updateData"></div>
                    <?php
                    if ($_GET['projectID']) {

                    $get_project_id = $_GET['projectID'];

                    $query_select = $con->query("SELECT * FROM `sub_portfolio` WHERE `project_id` = '{$get_project_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);
                    $project_id = $row_select['project_id'];
                    $portfolio_id = $row_select['portfolio_id'];
                    $project_title_en = $row_select['project_title_en'];
                    $project_title_ar = $row_select['project_title_ar'];
                    $project_desc_en = $row_select['project_desc_en'];
                    $project_desc_ar = $row_select['project_desc_ar'];
                    $display = $row_select['display'];


                    $project_image = $row_select['project_image'];
                    $get_image_ext = explode('.', $project_image);
                    $image_ext = strtolower(end($get_image_ext));

                    if ($query_select) {
                    ?>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card-box">
                                <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                    <input type="hidden" name="project_id_update" id="project_id_update" parsley-trigger="change"  value="<?= $project_id; ?>" class="form-control">

                                    <div class="form-group col-md-3">
                                        <label for="parent_category_id_update"><?=lang('portfolio')?></label>
                                        <select class="form-control select2me" name="portfolio_id_update" id="portfolio_id_update" required parsley-trigger="change">
                                            <option value="" ><?=lang('choose')?></option>
                                            <?php
                                            $query = $con->query("SELECT * FROM `portfolio`   ORDER BY `id` ASC");
                                            while ($row = mysqli_fetch_assoc($query)) {
                                                $id = $row['id'];
                                                $portfolio_title_en = $row['portfolio_title_en'];
                                                $portfolio_title_ar = $row['portfolio_title_ar'];
                                                if ($portfolio_id == $id) {
                                                    echo "<option value='{$id}' selected='selected'>{$portfolio_title_en}-{$portfolio_title_ar}</option>";
                                                } else {
                                                    echo "<option value='{$id}'>{$portfolio_title_en}-{$portfolio_title_ar}</option>";
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_name"><?=lang('project_title_en')?></label>
                                        <input type="text" name="project_title_en" id="project_title_en" parsley-trigger="change"  value="<?=$project_title_en; ?>" class="form-control">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_name_ar"> <?=lang('project_title_ar')?></label>
                                        <input type="text" name="project_title_ar" id="project_title_ar" parsley-trigger="change"  value="<?= $project_title_ar ?>" class="form-control">
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_desc"><?=lang('project_desc_en')?></label>
                                        <textarea class="form-control" rows="3" name="project_desc_en"  minlength="3" maxlength="1000" ><?= $project_desc_en ?></textarea>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_category_desc_ar"><?=lang('project_desc_ar')?></label>
                                        <textarea class="form-control" rows="3" name="project_desc_ar"  minlength="3" maxlength="1000" ><?php echo $project_desc_ar; ?></textarea>
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

                                    <input type="hidden" name="image_ext_old" value="<?php echo project_image; ?>" />
                                    <div class="form-group m-b-0">
                                        <label for="userName"><?= lang('image')?>  <a class="showImg"><?= lang('edit')?>?</a> </label>

                                        <div class="gal-detail thumb getImage">
                                            <a href="<?php echo $project_image; ?>" class="image-popup" title="<?= $project_title_en ?>">
                                                <img src="<?php echo $project_image; ?>" class="thumb-img" alt="<?= $project_title_en; ?>">
                                            </a>
                                        </div>

                                        <div class="form-group m-b-0">
                                            <label class="control-label"><?= lang('image')?> </label>
                                            <input type="file" name="image_update" id="image_update" class="filestyle" data-buttonname="btn-primary">
                                        </div>
                                        
                                    </div>
                                    <br />


                                    <div class="form-group text-right m-b-0">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit" name="project_update" id="project_update"><?= lang('save')?></button>
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
                            gallery: {
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
        $("#item4").addClass("active");
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