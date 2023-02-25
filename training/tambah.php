<?php
session_start();
require '../functions.php';

function tambah_kriteria($data)
{
    global $conn;

    $nama_siswa = $data['nama_siswa'];
    $nama_sekolah = $data['nama_sekolah'];
    $minat = $data['minat'];
    $nilai_tes = $data['nilai_tes'];
    $hasil = $data['hasil'];

    $query = "INSERT INTO tb_training
				VALUES 
				('','$nama_siswa','$nama_sekolah','$minat','$nilai_tes','$hasil')";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}

//Data Menu
if (isset($_POST["tambah"])) {

    if (tambah_kriteria($_POST) > 0) {
        $_SESSION['status'] = "Data Training";
        $_SESSION['status_icon'] = "success";
        $_SESSION['status_info'] = "Berhasil Terkirim";
        header("Location: ../training.php");
    } else {
        $_SESSION['status'] = "Data Training";
        $_SESSION['status_icon'] = "error";
        $_SESSION['status_info'] = "Gagal Terkirim";
        header("Location: ../training.php");
    }
}