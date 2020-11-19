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
<style>.custom-label{
        margin-top: 11px!important;

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

    <div class="deleteData"></div>

    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title"><?=lang('washers')?></h4>
                        <ol class="breadcrumb">
                            <li><a href="washer_view.php"><?=lang('washers')?></a></li>
                            <li class="active"><?=lang('washers')?> </li>
                        </ol>
                    </div>
                </div>
                <?php
                if ($_GET['projectId']) {

                $get_project_id = $_GET['projectId'];

                $query_select = $con->query("SELECT * FROM `sub_portfolio` WHERE `project_id` = '{$get_project_id}' LIMIT 1");
                $row_select = mysqli_fetch_array($query_select);

                $sub_portfolio = $row_select['sub_portfolio'];
                $portfolio_id = $row_select['portfolio_id'];
                $project_title_en = $row_select['project_title_en'];
                $project_title_ar = $row_select['project_title_ar'];
                $project_desc_en = $row_select['project_desc_en'];
                $project_desc_ar = $row_select['project_desc_ar'];
                $display = $row_select['display'];
                $date = $row_select['date'];

                $project_image = $row_select['project_image'];
                $get_image_ext = explode('.', $project_image);
                $image_ext = strtolower(end($get_image_ext));

                if ($query_select) {
                ?>
                <div class="panel">
                    <div class="panel-body">
                        <div class="">
                            <div class="table-responsive m-t-20">
                                <table class="table">
                                    <tbody>
                                    <?php
                                    $queryB = $con->query("SELECT * FROM `portfolio` WHERE `id`='$portfolio_id'");

                                    while ($row = mysqli_fetch_assoc($queryB)) {
                                        $id = $row['id'] ;
                                        $portfolio_title_en = $row['portfolio_title_en'] ;
                                    }
                                    ?>
                                    <tr>
                                        <td width="400"><?=lang('portfolio')?></td>
                                        <td>
                                            <a href="washer_view.php"><?=$portfolio_title_en; ?></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400"><?=lang('project_title_en')?></td>
                                        <td>
                                            <?php echo $project_title_en; ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400"><?=lang('project_title_ar')?></td>
                                        <td>
                                            <?php echo $project_title_ar; ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400"><?=lang('project_desc_en')?></td>
                                        <td>
                                            <?php echo $project_desc_en	; ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400"><?=lang('project_desc_ar')?></td>
                                        <td>
                                            <?php echo $project_desc_ar; ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> <?=lang('status')?> </td>
                                        <td>
                                            <?php
                                            if ($display == 0) {
                                                echo "Hidden";
                                            } else {
                                                echo "Shown";
                                            }
                                            ?>
                                        </td>
                                    </tr>


                                    </tbody>
                                </table>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label"><?=lang('project_image')?>   :</label>

                                <div class="col-md-9">
                                    <div class="form-group col-md-4">
                                        <div class="thumb">
                                            <img src="<?= $project_image; ?>" style="height: 200px;width: 200px;margin-left: 10px;">
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<?php
}
}
?>
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