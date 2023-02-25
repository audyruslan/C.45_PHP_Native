<?php
session_start();
require '../functions.php';

function ubah_kriteria($data)
{
    global $conn;
    $id = $data["id"];
    $nama_siswa = $data['nama_siswa'];
    $nama_sekolah = $data['nama_sekolah'];
    $minat = $data['minat'];
    $nilai_tes = $data['nilai_tes'];
    $hasil = $data['hasil'];

    $query = "UPDATE tb_training 
                SET
				nama_siswa = '$nama_siswa',
				nama_sekolah = '$nama_sekolah',
				minat = '$minat',
				nilai_tes = '$nilai_tes',
				hasil = '$hasil'
                WHERE id = $id
			";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}


// Ubah Data
// cek apakah tombol submit sudah ditekan atau belum
if (isset($_POST["ubah"])) {

    // cek apakah data berhasil diubah atau tidak
    if (ubah_kriteria($_POST) > 0) {
        $_SESSION['status'] = "Data Training";
        $_SESSION['status_icon'] = "success";
        $_SESSION['status_info'] = "Berhasil Diubah";
        header("Location: ../training.php");
    } else {
        $_SESSION['status'] = "Data Training";
        $_SESSION['status_icon'] = "error";
        $_SESSION['status_info'] = "Gagal Diubah";
        header("Location: ../training.php");
    }
}