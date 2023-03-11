<?php
session_start();
require '../functions.php';

function tambah()
{
    global $conn;

    mysqli_query($conn, "INSERT INTO `tb_atribut` (`id`, `atribut`, `nilai_atribut`) VALUES
    ('', 'total', 'total'),
    ('', 'Minat', 'IPA'),
    ('', 'Minat', 'IPS'),
    ('', 'Nilai Matematika', 'A'),
    ('', 'Nilai Matematika', 'B'),
    ('', 'Nilai Matematika', 'C'),
    ('', 'Nilai IPA', 'A'),
    ('', 'Nilai IPA', 'B'),
    ('', 'Nilai IPA', 'C'),
    ('', 'Nilai IPS', 'A'),
    ('', 'Nilai IPS', 'B'),
    ('', 'Nilai IPS', 'C')
    ");

    return mysqli_affected_rows($conn);
}

//Data Menu
if (tambah()) {
    $_SESSION['status'] = "Data Atribut";
    $_SESSION['status_icon'] = "success";
    $_SESSION['status_info'] = "Berhasil Terkirim";
    header("Location: ../atribut.php");
} else {
    $_SESSION['status'] = "Data Atribut";
    $_SESSION['status_icon'] = "error";
    $_SESSION['status_info'] = "Gagal Terkirim";
    header("Location: ../atribut.php");
}
