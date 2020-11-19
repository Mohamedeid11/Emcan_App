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

        $portfolio_id = mysqli_real_escape_string($con, trim($_POST['portfolio_id']));
        $project_title_en = mysqli_real_escape_string($con, trim($_POST['project_title_en']));
        $project_title_ar = mysqli_real_escape_string($con, trim($_POST['project_title_ar']));
        $project_desc_en = mysqli_real_escape_string($con, trim($_POST['project_desc_en']));
        $project_desc_ar = mysqli_real_escape_string($con, trim($_POST['project_desc_ar']));
        $display = $_POST['display'];


        $project_image = $_FILES['project_image']['name'];
        $washer_tmp = $_FILES['project_image']['tmp_name'];


        $errors = array();
        if (empty($project_title_en)) {
            $errors[] = "Please enter Project title In English!";
        }
        if (empty($project_title_ar)) {
            $errors[] = "Please enter Project title In Arabic!";
        }
        if (empty($project_desc_en)) {
            $errors[] = "Please enter Project Description In English!";
        }
        if (empty($project_desc_ar)) {
            $errors[] = "Please enter Project Description In Arabic!";
        }
        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        } else {
            //washer
            $con->query("INSERT INTO `sub_portfolio` (`portfolio_id`, `project_title_en`, `project_title_ar`, `project_desc_en`, `project_desc_ar`,  `display`) VALUES ('$portfolio_id', '$project_title_en', '$project_title_ar', '$project_desc_en', '$project_desc_ar', '$display')");

            $project_id = mysqli_insert_id($con);

            if (!file_exists("../api/uploads/Projects/" . $project_id)) {
                mkdir("../api/uploads/Projects/" . $project_id, 0777, true);
            }
            $image_path = "../api/uploads/Projects/" . $project_id . "/" . $project_image;
            $image_database = "{$sit_url}/api/uploads/Projects/" . $project_id . "/" . $project_image;

            if (move_uploaded_file($washer_tmp, $image_path)) {
                $update = $con->query("UPDATE `sub_portfolio` SET  `project_image`='$image_database' WHERE `project_id`='$project_id'");
            }

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
                            <h4 class="page-title"><?=lang('projects')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="sub_portfolio_view.php"><?=lang('projects')?></a></li>
                                <li class="active"><?=lang('add_new_project')?></li>
                            </ol>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card-box">
                                <h4 class="m-t-0 header-title"><b><?=lang('add_new_project')?></b></h4>
                                <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" data-parsley-validate novalidate>
                                    <div class="form-group col-md-3">
                                        <label class="control-label"><?=lang('portfolio')?></label>
                                        <select class="form-control select2me" name="portfolio_id" id="portfolio_id" required>
                                            <option selected='selected' value="" ><?=lang('choose')?></option>
                                            <?php
                                            $query = $con->query("SELECT * FROM `portfolio` ORDER BY `id` ASC");
                                            while ($row = mysqli_fetch_assoc($query)) {
                                                $id = $row['id'];
                                                $portfolio_title_en = $row['portfolio_title_en'];
                                                $portfolio_title_ar = $row['portfolio_title_ar'];
                                                echo "<option value='{$id}'>{$portfolio_title_en} - {$portfolio_title_ar}</option>";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_name"><b><?=lang('project_title_en')?></label>
                                        <input type="text" name="project_title_en" parsley-trigger="change" required placeholder="<?=lang('project_title_en')?>" class="form-control" id="project_title_en">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_name_ar"><?=lang('project_title_ar')?></label>
                                        <input type="text" name="project_title_ar" parsley-trigger="change"  placeholder="<?=lang('project_title_ar')?>" class="form-control" id="project_title_ar">
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_desc"><?=lang('project_desc_en')?></label>
                                        <textarea class="form-control" rows="3" name="project_desc_en"  minlength="3" maxlength="1000" ></textarea>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_cat_desc_ar"><?=lang('project_desc_ar')?></label>
                                        <textarea class="form-control" rows="3" name="project_desc_ar"  minlength="3" maxlength="1000" ></textarea>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group col-md-3">
                                        <label class="control-label">  <?=lang('status')?></label>
                                        <select class="form-control" name="display" required parsley-trigger="change">
                                            <option value="1" ><?= lang('show')?></option>
                                            <option value="0"><?= lang('hidden')?></option>
                                        </select>
                                    </div>
                                    <div class="form-group m-b-0">
                                        <label class="control-label"><?=lang('project_image')?></label>
                                        <input type="file" name="project_image" id="project_image" class="filestyle" multiple data-buttonname="btn-primary">
                                    </div>
                                    <br />
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
            $("#item4").addClass("active");
        });
    </script>
</body>
</html>