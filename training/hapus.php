<?php
session_start();
require '../functions.php';

$id = $_GET["id"];

if (hapus_training($id) > 0) {
    $_SESSION['status'] = "Data Training";
    $_SESSION['status_icon'] = "success";
    $_SESSION['status_info'] = "Berhasil Dihapus";
    header("Location: ../training.php");
} else {
    $_SESSION['status'] = "Data Training";
    $_SESSION['status_icon'] = "error";
    $_SESSION['status_info'] = "Gagal Dihapus";
    header("Location: ../training.php");
}