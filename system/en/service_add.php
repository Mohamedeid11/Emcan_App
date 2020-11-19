<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
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

    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->

    <?php
    if (isset($_POST['submit'])) {

        $service_name_en = mysqli_real_escape_string($con, trim($_POST['service_name_en']));

        $service_name_ar = mysqli_real_escape_string($con, trim($_POST['service_name_ar']));

        $display = mysqli_real_escape_string($con, trim($_POST['display']));

        $image_name = $_FILES['service_image']['name'];
        $image_tmp = $_FILES['service_image']['tmp_name'];
        $con->query("INSERT INTO `services` (`service_name_en`, `service_name_ar`, `display`) VALUES ('$service_name_en', '$service_name_ar', '$display')");

        $service_id = mysqli_insert_id($con);
        if (!file_exists("../api/uploads/Services/" . $service_id)) {
            mkdir("../api/uploads/Services/" . $service_id, 0777, true);
        }
        $image_path = "../api/uploads/Services/" . $service_id . "/" . $image_name;
        $image_database = "{$sit_url}/api/uploads/Services/" . $service_id . "/" . $image_name;

        if (move_uploaded_file($image_tmp, $image_path)) {
            $update = $con->query("UPDATE `services` SET  `service_image`='$image_database' WHERE `service_id`='$service_id'");
        }
        echo get_success(" Added Successfully ");
    }
    ?>
    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title"><?=lang('services')?> </h4>
                        <ol class="breadcrumb">
                            <li><a href="service_view.php"><?=lang('services')?> </a></li>
                            <li class="active"> <?=lang('add_new_service')?>  </li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="card-box">
                            <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                <div class="form-group  m-b-0 col-md-6">
                                    <label for="service_name"><?=lang('service_name_en')?> </label>
                                    <input type="text" name="service_name_en"  id="service_name_en" parsley-trigger="change"  placeholder="<?=lang('service_name_en')?> " class="form-control">
                                </div>

                                <div class="form-group  m-b-0 col-md-6">
                                    <label for="service_name"><?=lang('service_name_ar')?> </label>
                                    <input type="text" name="service_name_ar"  id="service_name_ar" parsley-trigger="change"  placeholder="<?=lang('service_name_ar')?> " class="form-control">
                                </div>

                                <div class="form-group col-md-3 m-b-0 ">
                                    <label class="control-label col-md-3"> <?= lang('status')?> </label>
                                    <select class="form-control" name="display" required parsley-trigger="change">
                                        <option selected='selected' value="" ><?=lang('choose')?></option>
                                        <option value="1" ><?= lang('show')?></option>
                                        <option value="0"><?= lang('hidden')?></option>
                                    </select>
                                </div>

                                <br>

                                <div class="form-group m-b-0">
                                    <label class="control-label"><?=lang('service_image')?></label>
                                    <input type="file" name="service_image" id="service_image" class="filestyle" data-buttonname="btn-primary">
                                </div>



                                <br>

                                <div class="form-group text-right m-b-0">
                                    <button class="btn btn-primary waves-effect waves-light" type="submit" name="submit">
                                        <?= lang('save')?>
                                    </button>
                                    <button type="reset" class="btn btn-default waves-effect waves-light m-l-5">
                                        <?= lang('cancel')?>
                                    </button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
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
    $(document).ready(function () {
        $("#cssmenu ul>li").removeClass("active");
        $("#item2").addClass("active");
    });
</script>
</body>
</html>