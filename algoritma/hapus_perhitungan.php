<?php
session_start();
require '../functions.php';

function hapus_perhitungan()
{
    global $conn;

    mysqli_query($conn, "TRUNCATE mining_c45");
    mysqli_query($conn, "TRUNCATE iterasi_c45");
    mysqli_query($conn, "TRUNCATE pohon_keputusan_c45");
}

//Jika Tombol Proses ditekan
if (hapus_perhitungan() > 0) {

    $_SESSION['status'] = "Data Mining";
    $_SESSION['status_icon'] = "success";
    $_SESSION['status_info'] = "Berhasil Dihapus";
    header("Location: ../atribut.php");
} else {
    $_SESSION['status'] = "Data Mining";
    $_SESSION['status_icon'] = "error";
    $_SESSION['status_info'] = "Gagal Dihapus";
    header("Location: ../atribut.php");
}
