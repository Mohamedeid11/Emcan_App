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
<!DOCTYPE html>
<html>
<?php include("include/heads.php"); ?>
<style>.red {
        /* color: #FFFFFF; */
        background-color: #cb5a5e;
    }</style>
<body class="fixed-left">
<div id="wrapper">
    <!-- Top Bar Start -->
    <?php include("include/topbar.php"); ?>
    <!-- Top Bar End -->

    <!-- Left Sidebar Start -->
    <?php include("include/leftsidebar.php"); ?>
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->

    <?php
    if (isset($_POST['submit'])) {

        $service_id = mysqli_real_escape_string($con, trim($_POST['service_id']));
        $title = mysqli_real_escape_string($con, trim($_POST['title']));
        $content = mysqli_real_escape_string($con, trim($_POST['content']));


        $errors = array();
        if (empty($content)) {
            $errors[] = "Please enter Project title In English!";
        }
        if (empty($title)) {
            $errors[] = "Please enter Project title In Arabic!";
        }

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        } else {
            //washer
            $con->query("INSERT INTO `quotes` (`service_id`, `title`, `content`) VALUES ('$service_id', '$title', '$content')");

            echo get_success("Successfully Added");
        }
    }
    ?>
    <div class="container">
        </br>
        <div class="content-page">
            <!-- Start content -->
            <div class="content">
                <div class="container">
                    <!-- Page-Title -->
                    <div class="row">
                        <div class="col-sm-12">
                            <h4 class="page-title"><?=lang('quotes')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="quotes_view.php"><?=lang('quotes')?></a></li>
                                <li class="active"><?=lang('add_new_quote')?></li>
                            </ol>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card-box">
                                <h4 class="m-t-0 header-title"><b><?=lang('add_new_quote')?></b></h4>
                                <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" data-parsley-validate novalidate>
                                    <div class="form-group col-md-3">
                                        <label class="control-label"><?=lang('service')?></label>
                                        <select class="form-control select2me" name="service_id" id="service_id" required>
                                            <option selected='selected' value="" ><?=lang('choose')?></option>
                                            <?php
                                            $query = $con->query("SELECT * FROM `services` ORDER BY `service_id` ASC");
                                            while ($row = mysqli_fetch_assoc($query)) {
                                                $service_id = $row['service_id'];
                                                $service_name_en = $row['service_name_en'];
                                                $service_name_ar = $row['service_name_ar'];
                                                echo "<option value='{$service_id}'>{$service_name_en} - {$service_name_ar}</option>";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_name"><b><?=lang('quote_title')?></label>
                                        <input type="text" name="title" parsley-trigger="change" required placeholder="<?=lang('quote_title')?>" class="form-control" id="title">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_desc_ar"><?=lang('quote_content')?></label>
                                        <textarea class="form-control" rows="3" name="content"  minlength="3" maxlength="1000" ></textarea>
                                    </div>

                                    <div class="clearfix"></div>
                                    <div class="form-group text-right m-b-0">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit" name="submit"><?=lang('save')?></button>
                                        <button type="reset" class="btn btn-default waves-effect waves-light m-l-5"> <?=lang('cancel')?></button>
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
            $("#item9").addClass("active");
        });
    </script>
</body>
</html>