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

        $offer_title_en = mysqli_real_escape_string($con, trim($_POST['offer_title_en']));

        $offer_title_ar = mysqli_real_escape_string($con, trim($_POST['offer_title_ar']));

        $offer_desc_en = mysqli_real_escape_string($con, trim($_POST['offer_desc_en']));

        $offer_desc_ar = mysqli_real_escape_string($con, trim($_POST['offer_desc_ar']));

        $vat = mysqli_real_escape_string($con, trim($_POST['vat']));

        $discount = mysqli_real_escape_string($con, trim($_POST['discount']));

        $display = mysqli_real_escape_string($con, trim($_POST['display']));

        $image_name = $_FILES['offer_image']['name'];
        $image_tmp = $_FILES['offer_image']['tmp_name'];
        $con->query("INSERT INTO `offers` (`offer_title_en`, `offer_title_ar` , `offer_desc_en` , `offer_desc_ar` , `vat` , `discount` , `display`) VALUES ('$offer_title_en' , '$offer_title_ar' , '$offer_desc_en' , '$offer_desc_ar', '$vat' , '$discount' , '$display')");

        $offer_id = mysqli_insert_id($con);
        if (!file_exists("../api/uploads/Offers/" . $offer_id)) {
            mkdir("../api/uploads/Offers/" . $offer_id, 0777, true);
        }
        $image_path = "../api/uploads/Offers/" . $offer_id . "/" . $image_name;
        $image_database = "{$sit_url}/api/uploads/Offers/" . $offer_id . "/" . $image_name;

        if (move_uploaded_file($image_tmp, $image_path)) {
            $update = $con->query("UPDATE `offers` SET  `offer_image`='$image_database' WHERE `offer_id`='$offer_id'");
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
                        <h4 class="page-title"><?=lang('offers')?> </h4>
                        <ol class="breadcrumb">
                            <li><a href="offers_view.php"><?=lang('offers')?> </a></li>
                            <li class="active"> <?=lang('add_new_offer')?>  </li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-box">
                            <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate >
                                <div class="form-group  m-b-0 col-md-6">
                                    <label for="service_name"><?=lang('offer_title_en')?> </label>
                                    <input type="text" name="offer_title_en"  id="offer_title_en" parsley-trigger="change"  placeholder="<?=lang('offer_title_en')?> " class="form-control">
                                </div>

                                <div class="form-group  m-b-0 col-md-6">
                                    <label for="service_name"><?=lang('offer_title_ar')?> </label>
                                    <input type="text" name="offer_title_ar"  id="offer_title_ar" parsley-trigger="change"  placeholder="<?=lang('offer_title_ar')?> " class="form-control">
                                </div>

                                <div class="form-group  m-b-0 col-md-6">
                                    <label for="service_name"><?=lang('offer_description_en')?> </label>
                                    <input type="text" name="offer_desc_en"  id="offer_desc_en" parsley-trigger="change"  placeholder="<?=lang('offer_description_en')?> " class="form-control">
                                </div>

                                <div class="form-group  m-b-0 col-md-6">
                                    <label for="service_name"><?=lang('offer_description_ar')?> </label>
                                    <input type="text" name="offer_desc_ar"  id="offer_desc_ar" parsley-trigger="change"  placeholder="<?=lang('offer_description_ar')?> " class="form-control">
                                </div>

                                <div class="form-group  m-b-0 col-md-6">
                                    <label for="service_name"><?=lang('offer_vat')?> </label>
                                    <input type="text" name="vat"  id="vat" parsley-trigger="change"  placeholder="<?=lang('offer_vat')?> " class="form-control">
                                </div>

                                <div class="form-group  m-b-0 col-md-6">
                                    <label for="service_name"><?=lang('offer_discount')?> </label>
                                    <input type="number" name="discount"  id="discount" parsley-trigger="change"  placeholder="<?=lang('offer_discount')?> " class="form-control">
                                </div>

                                <div class="form-group col-md-4 m-b-0 ">
                                    <label class="control-label col-md-3"> <?= lang('status')?> </label>
                                    <select class="form-control" name="display" required parsley-trigger="change">
                                        <option selected='selected' value="" ><?=lang('choose')?></option>
                                        <option value="1" ><?= lang('show')?></option>
                                        <option value="0"><?= lang('hidden')?></option>
                                    </select>
                                </div>

                                <br>

                                <div class="form-group col-md-8 ">
                                    <label class="control-label"><?=lang('image')?></label>
                                    <input type="file" name="offer_image" id="offer_image" class="filestyle"  data-buttonname="btn-primary">
                                </div>

                                <div class="clearfix"></div>

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
        $("#item8").addClass("active");
    });
</script>
</body>
</html>