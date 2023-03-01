<?php
session_start();
if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit;
}
$title = "Prediksi/Dataset - C4.5";
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
                    <h1 class="m-0">Prediksi/Dataset</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active">Prediksi/Dataset</li>
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
                    <div class="card-title">Data Prediksi</div>
                </div>

                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="no_pendaftara">No. Pendaftaran</label>
                                <input type="text" class="form-control" name="no_pendaftara" id="no_pendaftara" placeholder="No. Pendaftaran">
                            </div>
                            <div class="form-group">
                                <label for="nama_siswa">Nama Siswa</label>
                                <input type="text" class="form-control" name="nama_siswa" id="nama_siswa" placeholder="Nama Siswa">
                            </div>
                            <div class="form-group">
                                <label for="nama_sekolah">Nama Sekolah</label>
                                <input type="text" class="form-control" name="nama_sekolah" id="nama_sekolah" placeholder="Nama Sekolah">
                            </div>
                        </div>

                        <div class="col-md-7 offset-1">
                            <!-- Nilai IPA -->
                            <div class="form-group row">
                                <label for="nilai_ipa" class="col-sm-2 col-form-label">IPA</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_ipa1">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_ipa2">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_ipa2">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_ipa2">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_ipa2">
                                </div>
                            </div>

                            <!-- Nilai Matematika -->
                            <div class="form-group row">
                                <label for="nilai_mtk" class="col-sm-2 col-form-label">Matematika</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_mtk1">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_mtk2">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_mtk2">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_mtk2">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_mtk2">
                                </div>
                            </div>

                            <!-- Nilai IPS -->
                            <div class="form-group row">
                                <label for="nilai_ips" class="col-sm-2 col-form-label">IPS</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_ips1">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_ips2">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_ips2">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_ips2">
                                </div>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_ips2">
                                </div>
                            </div>

                            <!-- Minat & Nilai Test -->
                            <div class="form-group row">
                                <label for="nilai_test" class="col-sm-2 col-form-label">Nilai Test</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="nilai_test">
                                </div>

                                <label for="minat" class="col-sm-2 offset-1 col-form-label">Minat</label>
                                <div class="col-sm-4">
                                    <select class="form-control" name="minat" id="minat">
                                        <option value="">--Silahkan Pilih--</option>
                                        <option value="IPA">IPA</option>
                                        <option value="IPS">IPS</option>
                                    </select>
                                </div>
                            </div>

                        </div>

                        <button class="btn btn-primary ml-auto">Simpan</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php
require 'layouts/footer.php'; ?>