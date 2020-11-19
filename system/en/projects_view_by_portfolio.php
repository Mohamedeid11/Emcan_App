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
    <div class="container">
        </br>
        <div class="content-page">
            <!-- Start content -->
            <div class="content">
                <div class="container">
                    <?php
                    $get_portfolio_id = $_GET['portfolioID'];
                    $query = $con->query( " SELECT * FROM `sub_portfolio` where `portfolio_id`='$get_portfolio_id'  ");
                    $data_num =mysqli_num_rows($query);

                    ?>

                    <!-- Page-Title -->
                    <div class="row">
                        <div class="col-sm-12">
                            <h4 class="page-title"><?=lang('projects')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="sub_portfolio_view.php"><?=lang('projects')?> </a></li>
                                <li class="active"><?=lang('projects')?> </li>
                            </ol>
                        </div>
                    </div>
                    <h4>
                        <?= lang('count_all')?>    : <?php echo $data_num; ?>
                    </h4>
                    <div class="panel">
                        <div class="panel-body">
                            <table class="table table-striped" id="datatable-editable">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th><?=lang('portfolio')?></th>
                                    <th><?=lang('project_title_en')?></th>
                                    <th><?=lang('project_title_ar')?></th>
                                    <th><?= lang('project_image')?></th>
                                    <th><?= lang('date_add')?></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                global $con;
                                if($_GET['portfolioID']){
                                    $query = $con->query("SELECT * FROM `sub_portfolio` WHERE `portfolio_id` = '{$get_portfolio_id}'");
                                    $x = 1;
                                    while ($row = mysqli_fetch_assoc($query)) {
                                        $project_id = $row['project_id'];
                                        $portfolio_id = $row['portfolio_id'];
                                        $project_title_en = $row['project_title_en'];
                                        $project_title_ar = $row['project_title_ar'];
                                        $project_desc_en = $row['project_desc_en'];
                                        $project_desc_ar = $row['project_desc_ar'];
                                        $project_image = $row['project_image'];
                                        $display = $row['display'];
                                        $date = $row['date'];
                                        ?>
                                        <tr class="gradeX<?= $project_id ?>">
                                            <td><?php echo $x; ?></td>
                                            <?php
                                            $queryB = $con->query("SELECT * FROM `portfolio` WHERE `id`='$portfolio_id'");

                                            while ($row = mysqli_fetch_assoc($queryB)) {
                                                $id = $row['id'] ;
                                                $portfolio_title_en = $row['portfolio_title_en'] ;
                                            }
                                            ?>
                                            <td><?=$portfolio_title_en; ?></td>
                                            <td>
                                                <?= $project_title_en ?>
                                            </td>
                                            <td>
                                                <?= $project_title_ar ?>
                                            </td>
                                            <td>
                                                <a href="<?= $project_image; ?>" class="image-popup" title="<?= $project_title_en; ?>">
                                                    <img src="<?= $project_image; ?>" class="thumb-img" alt="<?= $project_title_en; ?>" height="100" style="width:100px;">
                                                </a>
                                            </td>
                                            <td>
                                                <?= $date ?>
                                            </td>
                                        </tr>
                                        <?php
                                        $x++;
                                    }
                                }
                                ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <?php include("include/footer_text.php"); ?>

    </div>

    <!-- MODAL -->
    <div id="dialog" class="modal-block mfp-hide">
        <section class="panel panel-info panel-color">
            <header class="panel-heading">
                <h2 class="panel-title">Are you sure ?</h2>
            </header>
            <div class="panel-body">
                <div class="modal-wrapper">
                    <div class="modal-text">
                        <p>Do You Want to deltel ? </p>
                    </div>
                </div>
                <div class="row m-t-20">
                    <div class="col-md-12 text-right">
                        <button id="dialogConfirm" class="btn btn-primary waves-effect waves-light">Confirm </button>
                        <button id="dialogCancel" class="btn btn-default waves-effect">Cancell </button>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- end Modal -->

    <!-- End Right content here -->

    <!-- Right Sidebar -->
    <div class="side-bar right-bar nicescroll">
        <?php include("include/rightbar.php"); ?>
    </div>
    <!-- /Right-bar -->
</div>
<!-- END wrapper -->
<?php include("include/footer.php"); ?>

<script type="text/javascript">
    $(document).ready(function () {
        $('body').on('click', '.on-default', function () {
            var washer_id = $(this).attr('href');
            // alert(category);
            $("#dialogConfirm").click(function () {
                var dataString = 'washer_id=' + washer_id;
                $.ajax({
                    type: "POST",
                    url: "functions/washer_function.php",
                    data: dataString,
                    dataType: 'text',
                    cache: false,
                    success: function (data) {
                        $(".deleteData").html(data);
                        //alert(category);
                    }
                });
            });
        });
    });
</script>

<script>
    $(document).ready(function () {
        $("#cssmenu ul>li").removeClass("active");
        $("#item4").addClass("active");
    });
    $('body').on('change', '.change_status_off', function () {
        var change_status_off = $(this).attr('data-id');
        var dataString = 'change_status_off=' + change_status_off;
        swal({
            title: "Confirm hide?",
            text: "",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "yes",
            cancelButtonText: "cancell",
            closeOnConfirm: false,
            closeOnCancel: true
        }, function (isConfirm) {
            if (isConfirm) {
                swal("changed ", "", "success");
                var dataString = 'change_status_off=' + change_status_off;
                $.ajax({
                    type: "POST",
                    url: "functions/washer_function.php",
                    data: dataString,
                    dataType: 'text',
                    cache: false,
                    success: function (data) {
                        $(".deleteData").html(data);
                    }
                });
            } else {
                swal("Changed ", "Changed  :)", "error");
            }
        });
    });
    $('body').on('change', '.change_status_on', function () {
        var change_status_on = $(this).attr('data-id');
        var dataString = 'change_status_on=' + change_status_on;
        swal({
            title: "Confirm hide?",
            text: "",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "yes",
            cancelButtonText: "cancell",
            closeOnConfirm: false,
            closeOnCancel: true
        }, function (isConfirm) {
            if (isConfirm) {
                swal("changed ", "", "success");
                var dataString = 'change_status_on=' + change_status_on;
                $.ajax({
                    type: "POST",
                    url: "functions/washer_function.php",
                    data: dataString,
                    dataType: 'text',
                    cache: false,
                    success: function (data) {
                        $(".deleteData").html(data);
                    }
                });
            } else {
                swal("Changed ", "Changed  :)", "error");
            }
        });
    });

</script>
</body>
</html>