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

        $imageCount = count($_FILES['client_image']['name']);
        $client_id = $_POST['washer_id'];

        for($i=0 ;$i<$imageCount ;$i++) {
            $client_title_en = mysqli_real_escape_string($con, trim($_POST['client_title_en']));

            $client_title_ar = mysqli_real_escape_string($con, trim($_POST['client_title_ar']));

            $display = mysqli_real_escape_string($con, trim($_POST['display']));

            $image_name = $_FILES['client_image']['name'][$i];
            $image_tmp = $_FILES['client_image']['tmp_name'][$i];
            $con->query("INSERT INTO `our_clients` (`client_title_en`, `client_title_ar`, `display`) VALUES ('$client_title_en', '$client_title_ar', '$display')");

            $client_id = mysqli_insert_id($con);
            if (!file_exists("../api/uploads/OurClients/" . $client_id)) {
                mkdir("../api/uploads/OurClients/" . $client_id, 0777, true);
            }
            $image_path = "../api/uploads/OurClients/" . $client_id . "/" . $image_name;
            $image_database = "{$sit_url}/api/uploads/OurClients/" . $client_id . "/" . $image_name;

            if (move_uploaded_file($image_tmp, $image_path)) {
                $update = $con->query("UPDATE `our_clients` SET  `client_image`='$image_database' WHERE `client_id`='$client_id'");
            }
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
                        <h4 class="page-title"><?=lang('our_clients')?> </h4>
                        <ol class="breadcrumb">
                            <li><a href="our_clients_view.php"><?=lang('our_clients')?> </a></li>
                            <li class="active"> <?=lang('add_new_client')?>  </li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="card-box">
                            <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                <div class="form-group  m-b-0 col-md-6">
                                    <label for="service_name"><?=lang('client_title_en')?> </label>
                                    <input type="text" name="client_title_en"  id="client_title_en" parsley-trigger="change"  placeholder="<?=lang('client_title_en')?> " class="form-control">
                                </div>

                                <div class="form-group  m-b-0 col-md-6">
                                    <label for="service_name"><?=lang('client_title_ar')?> </label>
                                    <input type="text" name="client_title_ar"  id="client_title_ar" parsley-trigger="change"  placeholder="<?=lang('client_title_ar')?> " class="form-control">
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
                                    <label class="control-label"><?=lang('image')?></label>
                                    <input type="file" name="client_image[]" id="client_image" class="filestyle"  multiple=" " data-buttonname="btn-primary">
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
        $("#item6").addClass("active");
    });
</script>
</body>
</html>