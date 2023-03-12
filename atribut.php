<?php
session_start();
if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit;
}
$title = "Atribut - C4.5";
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
                    <h1 class="m-0">Data Atribut</h1>
                </div>
                <!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active">Atribut</li>
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
                    <a class="btn btn-primary tambah_atribut mb-3" href="atribut/tambah.php"><i
                            class="fas fa-plus-circle"></i> Data Atribut!</a>

                </div>
            </div>
            <div class="card table-responsive card-outline card-secondary p-3">
                <div class="row">
                    <div class="col-12">
                        <a class="btn btn-primary proses_mining mt-2 mb-3" href="algoritma/algoritma.php"><i
                                class="fas fa-plus-circle"></i> Proses Mining</a>
                        <a class="btn btn-danger hapus_proses_mining mt-2 mb-3"
                            href="algoritma/hapus_perhitungan.php"><i class="fas fa-trash"></i> Hapus Data</a>

                        <table class="table table-bordered table-hover" id="trainingTable" style="width:100%"
                            cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Atribut</th>
                                    <th>Nilai Atribut</th>
                                </tr>
                            </thead>
                            <?php
                            $i = 1;
                            $sql = mysqli_query($conn, "SELECT * FROM tb_atribut");
                            while ($row = mysqli_fetch_assoc($sql)) {
                            ?>
                            <tr>
                                <td><?= $i; ?></td>
                                <td><?= $row['atribut']; ?></td>
                                <td><?= $row['nilai_atribut']; ?></td>
                            </tr>

                            <?php $i++; ?>

                            <?php
                            }
                            ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php
require 'layouts/footer.php'; ?>