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
            </div><!-- /.row -->
            <hr>
        </div><!-- /.container-fluid -->
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
                        <div class="card-body table-responsive p-0">

                            <table class="table table-bordered text-nowrap text-center">
                                <thead>
                                    <tr>
                                        <th>Nilai Atribut</th>
                                        <th>Jumlah Data</th>
                                        <th>Jumlah IPA</th>
                                        <th>Jumlah IPS</th>
                                        <th>Entropy</th>
                                        <th>Gain</th>
                                    </tr>
                                </thead>
                                <!-- Minat -->
                                <tr>
                                    <td>Minat = "IPA"</td>
                                    <td><?= $minatIPA; ?></td>
                                    <td><?= $hasilIPAMinatIPA; ?></td>
                                    <td><?= $hasilIPSMinatIPA; ?></td>
                                    <td><?= $EntropyMinatIPA; ?></td>
                                    <td rowspan="2">
                                        <?= ($entropyAll) - (($minatIPA / $totalData) * $EntropyMinatIPA) - (($minatIPS / $totalData) * $EntropyMinatIPS); ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Minat = "IPS"</td>
                                    <td><?= $minatIPS; ?></td>
                                    <td><?= $hasilIPAMinatIPS; ?></td>
                                    <td><?= $hasilIPSMinatIPS; ?></td>
                                    <td><?= $EntropyMinatIPS; ?></td>
                                </tr>
                                <!-- End Miinat -->

                                <!-- Nilai Matematika -->
                                <tr>
                                    <td>Nilai Matematika = "Rendah"</td>
                                    <td><?= $NilaiMTKRendah; ?></td>
                                    <td><?= $hasilMTKNilaiRendah; ?></td>
                                    <td><?= $hasilIPSNilaiRendah; ?></td>
                                    <td><?= $EntropyNilaiMTKRendah; ?></td>
                                    <td rowspan="3">
                                        <?= ($entropyAll) - (($NilaiMTKRendah / $totalData) * $EntropyNilaiMTKRendah) - (($NilaiMTKSedang / $totalData) * $EntropyNilaiMTKSedang); ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Nilai Matematika = "Sedang"</td>
                                    <td><?= $NilaiMTKSedang; ?></td>
                                    <td><?= $hasilIPANilaiSedang; ?></td>
                                    <td><?= $hasilIPSNilaiSedang; ?></td>
                                    <td><?= $EntropyNilaiMTKSedang; ?></td>
                                </tr>
                                <tr>
                                    <td>Nilai Matematika = "Tinggi"</td>
                                    <td><?= $NilaiMTKTinggi; ?></td>
                                    <td><?= $hasilIPANilaiTinggi; ?></td>
                                    <td><?= $hasilIPSNilaiTinggi; ?></td>
                                    <td>
                                        <?php
                                        if (is_nan($EntropyNilaiMTKTinggi) || is_infinite($EntropyNilaiMTKTinggi)) {
                                            echo "0";
                                        } else {
                                            $EntropyNilaiMTKTinggi;
                                        }
                                        ?>
                                    </td>
                                </tr>
                                <!-- End Nilai Matematika -->

                                <!-- Nilai IPA -->
                                <tr>
                                    <td>Nilai IPA = "Rendah"</td>
                                    <td><?= $NilaiIPARendah; ?></td>
                                    <td><?= $hasilIPANilaiRendah; ?></td>
                                    <td><?= $hasilIPSNilaiRendah; ?></td>
                                    <td><?= $EntropyNilaiIPARendah; ?></td>
                                    <td rowspan="3">
                                        <?= ($entropyAll) - (($NilaiIPARendah / $totalData) * $EntropyNilaiIPARendah) - (($NilaiIPASedang / $totalData) * $EntropyNilaiIPASedang); ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Nilai IPA = "Sedang"</td>
                                    <td><?= $NilaiIPASedang; ?></td>
                                    <td><?= $hasilIPANilaiSedang; ?></td>
                                    <td><?= $hasilIPSNilaiSedang; ?></td>
                                    <td><?= $EntropyNilaiIPASedang; ?></td>
                                </tr>
                                <tr>
                                    <td>Nilai IPA = "Tinggi"</td>
                                    <td><?= $NilaiIPAinggi; ?></td>
                                    <td><?= $hasilIPANilaiTinggi; ?></td>
                                    <td><?= $hasilIPSNilaiTinggi; ?></td>
                                    <td>
                                        <?php
                                        if (is_nan($EntropyNilaiIPAinggi) || is_infinite($EntropyNilaiIPAinggi)) {
                                            echo "0";
                                        } else {
                                            $EntropyNilaiIPAinggi;
                                        }
                                        ?>
                                    </td>
                                </tr>
                                <!-- End Nilai IPA -->

                                <!-- Nilai IPS -->
                                <tr>
                                    <td>Nilai IPS = "Rendah"</td>
                                    <td><?= $NilaiIPSRendah; ?></td>
                                    <td><?= $hasilIPANilaiRendah; ?></td>
                                    <td><?= $hasilIPSNilaiRendah; ?></td>
                                    <td><?= $EntropyNilaiIPSRendah; ?></td>
                                    <td rowspan="3">
                                        <?= ($entropyAll) - (($NilaiIPSRendah / $totalData) * $EntropyNilaiIPSRendah) - (($NilaiIPSSedang / $totalData) * $EntropyNilaiIPSSedang); ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Nilai IPS = "Sedang"</td>
                                    <td><?= $NilaiIPSSedang; ?></td>
                                    <td><?= $hasilIPANilaiSedang; ?></td>
                                    <td><?= $hasilIPSNilaiSedang; ?></td>
                                    <td><?= $EntropyNilaiIPSSedang; ?></td>
                                </tr>
                                <tr>
                                    <td>Nilai IPS = "Tinggi"</td>
                                    <td><?= $NilaiIPSinggi; ?></td>
                                    <td><?= $hasilIPANilaiTinggi; ?></td>
                                    <td><?= $hasilIPSNilaiTinggi; ?></td>
                                    <td>
                                        <?php
                                        if (is_nan($EntropyNilaiIPSinggi) || is_infinite($EntropyNilaiIPSinggi)) {
                                            echo "0";
                                        } else {
                                            $EntropyNilaiIPSinggi;
                                        }
                                        ?>
                                    </td>
                                </tr>
                                <!-- End Nilai IPS -->

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