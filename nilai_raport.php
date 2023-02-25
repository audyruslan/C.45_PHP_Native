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

$id_siswa = $_GET["id"];
$sql = mysqli_query($conn, "SELECT * FROM tb_training WHERE id = $id_siswa");
$row = mysqli_fetch_assoc($sql);
?>

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Nilai Raport</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active">Nilai Raport</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
            <hr>
        </div><!-- /.container-fluid -->
    </div>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">

                    <h3>
                        <strong><?= $row["nama_siswa"]; ?></strong>
                    </h3>
                    <h5><?= $row["nama_sekolah"]; ?></h5>
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Tabel Nilai Raport</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">

                            <table class="table table-bordered text-nowrap text-center">
                                <thead>
                                    <tr>
                                        <th colspan="24">Nilai Rata-rata Raport</th>
                                    </tr>
                                    <tr>
                                        <th colspan="5">Matematika</th>
                                        <th rowspan="2">Rata-rata</th>
                                        <th rowspan="2">Grade</th>
                                        <th colspan="5">IPA</th>
                                        <th rowspan="2">Rata-rata</th>
                                        <th rowspan="2">Grade</th>
                                        <th colspan="5">IPS</th>
                                        <th rowspan="2">Rata-rata</th>
                                        <th rowspan="2">Grade</th>
                                    </tr>
                                    <tr>
                                        <th>1</th>
                                        <th>2</th>
                                        <th>3</th>
                                        <th>4</th>
                                        <th>5</th>
                                        <th>1</th>
                                        <th>2</th>
                                        <th>3</th>
                                        <th>4</th>
                                        <th>5</th>
                                        <th>1</th>
                                        <th>2</th>
                                        <th>3</th>
                                        <th>4</th>
                                        <th>5</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td><?= $row['mtk_1']; ?></td>
                                    <td><?= $row['mtk_2']; ?></td>
                                    <td><?= $row['mtk_3']; ?></td>
                                    <td><?= $row['mtk_4']; ?></td>
                                    <td><?= $row['mtk_5']; ?></td>
                                    <td><?= $row['mtk_rata']; ?></td>
                                    <td><?= $row['mtk_grade']; ?></td>
                                    <td><?= $row['ipa_1']; ?></td>
                                    <td><?= $row['ipa_2']; ?></td>
                                    <td><?= $row['ipa_3']; ?></td>
                                    <td><?= $row['ipa_4']; ?></td>
                                    <td><?= $row['ipa_5']; ?></td>
                                    <td><?= $row['ipa_rata']; ?></td>
                                    <td><?= $row['ipa_grade']; ?></td>
                                    <td><?= $row['ips_1']; ?></td>
                                    <td><?= $row['ips_2']; ?></td>
                                    <td><?= $row['ips_3']; ?></td>
                                    <td><?= $row['ips_4']; ?></td>
                                    <td><?= $row['ips_5']; ?></td>
                                    <td><?= $row['ips_rata']; ?></td>
                                    <td><?= $row['ips_grade']; ?></td>
                                </tr>
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