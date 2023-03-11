<?php
session_start();
if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit;
}
$title = "Admin - C4.5";
require 'layouts/header.php';
require 'layouts/navbar.php';
require 'functions.php';

$user = $_SESSION["username"];
$query = mysqli_query($conn, "SELECT * FROM admin WHERE username = '$user'");
$admin = mysqli_fetch_assoc($query);

require 'layouts/sidebar.php';
include 'algoritma.php';
?>

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Perhitungan C4.5</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active">Perhitungan C4.5</li>
                    </ol>
                </div><!-- /.col -->
            </div>
            <!-- /.row -->
            <hr>
        </div>
        <!-- /.container-fluid -->
    </div>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <h6>Jumlah Data = <?= $totalData; ?></h6>
                    <h6>Jumlah IPA = <?= $totalIPA; ?></h6>
                    <h6>Jumlah IPS = <?= $totalIPS; ?></h6>
                    <h6>All Entropy =
                        <?= $entropyAll; ?>
                    </h6>
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Tabel Keputusan</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-3">

                            <table class="table table-bordered text-nowrap text-center">
                                <thead>
                                    <tr>
                                        <th>Atribut</th>
                                        <th>Nilai Atribut</th>
                                        <th>Jumlah Data</th>
                                        <th>Jumlah IPA</th>
                                        <th>Jumlah IPS</th>
                                        <th>Entropy</th>
                                        <th>Gain</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $sql = mysqli_query($conn, "SELECT * FROM mining_c45");
                                    while ($row = mysqli_fetch_array($sql)) {
                                    ?>
                                        <tr>
                                            <td><?= $row["atribut"]; ?></td>
                                            <td><?= $row["nilai_atribut"]; ?></td>
                                            <td><?= $row["jml_kasus_total"]; ?></td>
                                            <td><?= $row["jml_ipa"]; ?></td>
                                            <td><?= $row["jml_ips"]; ?></td>
                                            <td><?= $row["entropy"]; ?></td>
                                            <td><?= $row["gain_ratio"]; ?></td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>



                </div>
            </div>
        </div>
    </section>
</div>

<?php
require 'layouts/footer.php'; ?>