<?php
session_start();
if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit;
}
$title = "Rule - C4.5";
require 'layouts/header.php';
require 'layouts/navbar.php';
require 'functions.php';

$user = $_SESSION["username"];
$query = mysqli_query($conn, "SELECT * FROM admin WHERE username = '$user'");
$admin = mysqli_fetch_assoc($query);
require 'layouts/sidebar.php';
?>

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Data Rule</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active">Rule</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
            <hr>
        </div><!-- /.container-fluid -->
    </div>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <h5>Jumlah Rule : 22</h5>
                    <table class="table table-bordered table-hover" id="trainingTable" style="width:100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID Rule</th>
                                <th>Rule</th>
                                <th>Keputusan</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <?php
                        $i = 1;
                        $sql = mysqli_query($conn, "SELECT * FROM tb_rule");
                        while ($row = mysqli_fetch_assoc($sql)) {
                        ?>
                            <tr>
                                <td><?= $i; ?></td>
                                <td><?= $row['rule']; ?></td>
                                <td><?= $row['keputusan']; ?></td>
                                <td><?= $row['hasil']; ?></td>
                            </tr>
                            <?php $i++; ?>
                        <?php
                        }
                        ?>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>

<?php
require 'layouts/footer.php'; ?>