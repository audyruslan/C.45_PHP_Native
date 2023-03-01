<?php
session_start();
if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit;
}
$title = "Hasil Prediksii - C4.5";
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
                    <h1 class="m-0">Hasil Prediksi</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active">Hasil Prediksi</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
            <hr>
        </div><!-- /.container-fluid -->
    </div>

    <section class="content">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">Hasil Prediksi</div>
                </div>

                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>ID Pendaftaran</th>
                                <th>Nama Siswa</th>
                                <th>Asal Sekolah</th>
                                <th>Nilai Matematika</th>
                                <th>Nilai IPA</th>
                                <th>Nilai IPS</th>
                                <th>Nilai Test</th>
                                <th>Minat</th>
                                <th>Rules</th>
                            </tr>
                        </thead>
                        <?php
                        $no = 1;
                        $sql = mysqli_query($conn, "SELECT * FROM tb_hasil");
                        while ($row = mysqli_fetch_assoc($sql)) {
                        ?>
                            <tr>
                                <td><?= $no; ?></td>
                                <td><?= $row["no_pendaftaran"]; ?></td>
                                <td><?= $row["nama_siswa"]; ?></td>
                                <td><?= $row["nama_sekolah"]; ?></td>
                                <td><?= $row["nilai_mtk"]; ?></td>
                                <td><?= $row["nilai_ipa"]; ?></td>
                                <td><?= $row["nilai_ips"]; ?></td>
                                <td><?= $row["nilai_test"]; ?></td>
                                <td><?= $row["minat"]; ?></td>
                                <td><?= $row["rules"]; ?></td>
                            </tr>
                        <?php
                            $no++;
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