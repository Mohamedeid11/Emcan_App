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
                    $query = $con->query( " SELECT * FROM `offers`");
                    $data_num =mysqli_num_rows($query);
                    ?>

                    <!-- Page-Title -->
                    <div class="row">
                        <div class="col-sm-12">
                            <h4 class="page-title"><?=lang('offers')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="offers_view.php"><?=lang('offers')?> </a></li>
                                <li class="active"><?=lang('offers')?> </li>
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
                                    <th><?=lang('offer_title_en')?></th>
                                    <th><?=lang('offer_title_ar')?></th>
                                    <th><?=lang('offer_vat')?></th>
                                    <th><?=lang('offer_discount')?></th>
                                    <th><?=lang('image')?></th>
                                    <th><?= lang('status')?></th>
                                    <th><?= lang('date_add')?></th>
                                    <th><?= lang('action')?></th>

                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                global $con;

                                $query = $con->query("SELECT * FROM `offers` ORDER BY `offer_id` ASC");
                                $x = 1;
                                while ($row = mysqli_fetch_assoc($query)) {
                                    $offer_id = $row['offer_id'];
                                    $offer_title_en = $row['offer_title_en'];
                                    $offer_title_ar = $row['offer_title_ar'];
                                    $vat = $row['vat'];
                                    $discount = $row['discount'];
                                    $offer_image = $row['offer_image'];
                                    $display = $row['display'];
                                    $date = $row['date'];
                                    ?>
                                    <tr class="gradeX<?= $offer_id ?>">
                                        <td>
                                            <?= $x ?>
                                        </td>
                                        <td>
                                            <?= $offer_title_en ?>
                                        </td>
                                        <td>
                                            <?= $offer_title_ar ?>
                                        </td>

                                        <td>
                                            <?= $vat ?>
                                        </td>

                                        <td>
                                            <?= $discount ?>
                                        </td>

                                        <td>
                                            <a href="<?= $offer_image; ?>" class="image-popup" title="<?= $offer_title_en; ?>">
                                                <img src="<?= $offer_image; ?>" class="thumb-img" alt="<?= $offer_title_en; ?>" height="100" style="width:100px;">
                                            </a>
                                        </td>
                                        <td>
                                            <?php if ($display == 1) { ?>
                                                <input class="change_status_off" data-id="<?=$offer_id; ?>" type="checkbox"
                                                       checked
                                                       data-plugin="switchery" data-color="#81c868"/>
                                                <?php
                                            }else if ($display == 0) {
                                                ?>
                                                <input class="change_status_on" data-id="<?=$offer_id; ?>" type="checkbox"
                                                       data-plugin="switchery" data-color="#81c868"/>
                                                <?php
                                            }
                                            ?>
                                        </td>
                                        <td><?= $date; ?></td>
                                        <td class="actions">
                                            <a href="offer_edit.php?offerID=<?= $offer_id; ?>" class="on-default"><i class="fa fa-pencil"></i></a>
                                        </td>
                                        <td class="actions">
                                            <a href="<?= $offer_id; ?>" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                                        </td>
                                    </tr>
                                    <?php
                                    $x++;
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
            var offer_id = $(this).attr('href');
            // alert(category);
            $("#dialogConfirm").click(function () {
                var dataString = 'offer_id=' + offer_id;
                $.ajax({
                    type: "POST",
                    url: "functions/offers_functions.php",
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
        $("#item8").addClass("active");
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
                    url: "functions/offers_functions.php",
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
                    url: "functions/offers_functions.php",
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