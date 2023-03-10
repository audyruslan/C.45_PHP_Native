<?php
session_start();
require '../functions.php';

function ubah($data)
{
    global $conn;
    $id = $data["id"];
    $nama_atribut = $data['nama_atribut'];

    $query = "UPDATE tb_atribut
                SET
				nama_atribut = '$nama_atribut'
                WHERE id = $id
			";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}


// Ubah Data
// cek apakah tombol submit sudah ditekan atau belum
if (isset($_POST["ubah"])) {

    // cek apakah data berhasil diubah atau tidak
    if (ubah($_POST) > 0) {
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
}
