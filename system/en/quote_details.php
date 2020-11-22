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
                        <h4 class="page-title"><?=lang('quotes')?></h4>
                        <ol class="breadcrumb">
                            <li><a href="quotes_view.php"><?=lang('quotes')?></a></li>
                            <li class="active"><?=lang('quotes')?> </li>
                        </ol>
                    </div>
                </div>
                <?php
                if ($_GET['Id']) {

                $get_id = $_GET['Id'];

                $query_select = $con->query("SELECT * FROM `quotes` WHERE `id` = '{$get_id}' LIMIT 1");
                $row_select = mysqli_fetch_array($query_select);

                $id = $row_select['id'];
                $service_id = $row_select['service_id'];
                $title = $row_select['title'];
                $content = $row_select['content'];
                $date = $row_select['date'];


                if ($query_select) {
                ?>
                <div class="panel">
                    <div class="panel-body">
                        <div class="">
                            <div class="table-responsive m-t-20">
                                <table class="table">
                                    <tbody>
                                    <?php
                                    $queryB = $con->query("SELECT * FROM `services` WHERE `service_id`='$service_id'");

                                    while ($row = mysqli_fetch_assoc($queryB)) {
                                        $service_id = $row['service_id'] ;
                                        $service_name_en = $row['service_name_en'] ;
                                    }
                                    ?>
                                    <tr>
                                        <td width="400"><?=lang('services')?></td>
                                        <td>
                                            <?=$service_name_en; ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400"><?=lang('quote_title')?></td>
                                        <td>
                                            <?php echo $title; ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400"><?=lang('quote_content')?></td>
                                        <td>
                                            <?php echo $content; ?>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
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
        $("#item9").addClass("active");
    });
</script>

</body>
</html>