<?php
// Total Data
$totalData = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training"));
$totalIPA = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA'"));
$totalIPS = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS'"));
$entropyAll = (-$totalIPA / $totalData) * log($totalIPA / $totalData, 2) + (-$totalIPS / $totalData) * log($totalIPS / $totalData, 2);

// Atribut Minat IPA
$minatIPA = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE minat = 'IPA'"));
$hasilIPAMinatIPA = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND minat = 'IPA'"));
$hasilIPSMinatIPA = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND minat = 'IPA'"));
$EntropyMinatIPA = (-$hasilIPAMinatIPA / $minatIPA) * log($hasilIPAMinatIPA / $minatIPA, 2) + (-$hasilIPSMinatIPA / $minatIPA) * log($hasilIPSMinatIPA / $minatIPA, 2);

// Atribut Minat IPS
$minatIPS = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE minat = 'IPS'"));
$hasilIPAMinatIPS = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND minat = 'IPS'"));
$hasilIPSMinatIPS = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND minat = 'IPS'"));
$EntropyMinatIPS = (-$hasilIPAMinatIPS / $minatIPS) * log($hasilIPAMinatIPS / $minatIPS, 2) + (-$hasilIPSMinatIPS / $minatIPS) * log($hasilIPSMinatIPS / $minatIPS, 2);

// Atribut Nilai Matematika Rendah
$NilaiMTKRendah = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE mtk_rata <= 80"));
$hasilMTKNilaiRendah = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND mtk_rata <= 80"));
$hasilIPSNilaiRendah = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND mtk_rata <= 80"));
$EntropyNilaiMTKRendah = (-$hasilMTKNilaiRendah / $NilaiMTKRendah) * log($hasilMTKNilaiRendah / $NilaiMTKRendah, 2) + (-$hasilIPSNilaiRendah / $NilaiMTKRendah) * log($hasilIPSNilaiRendah / $NilaiMTKRendah, 2);

// Atribut Nilai Matematika Sedang
$NilaiMTKSedang = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE mtk_rata >= 80"));
$hasilIPANilaiSedang = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND mtk_rata >= 80"));
$hasilIPSNilaiSedang = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND mtk_rata >= 80"));
$EntropyNilaiMTKSedang = (-$hasilIPANilaiSedang / $NilaiMTKSedang) * log($hasilIPANilaiSedang / $NilaiMTKSedang, 2) + (-$hasilIPSNilaiSedang / $NilaiMTKSedang) * log($hasilIPSNilaiSedang / $NilaiMTKSedang, 2);

// Atribut Nilai Matematika Tinggi
$NilaiMTKTinggi = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE mtk_rata >= 90"));
$hasilIPANilaiTinggi = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND mtk_rata >= 90"));
$hasilIPSNilaiTinggi = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND mtk_rata >= 90"));
$EntropyNilaiMTKTinggi = (-$hasilIPANilaiTinggi / $NilaiMTKTinggi) * log($hasilIPANilaiTinggi / $NilaiMTKTinggi, 2) + (-$hasilIPSNilaiTinggi / $NilaiMTKTinggi) * log($hasilIPSNilaiTinggi / $NilaiMTKTinggi, 2);

// Atribut Nilai IPA Rendah
$NilaiIPARendah = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE ipa_rata <= 80"));
$hasilIPANilaiRendah = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND ipa_rata <= 80"));
$hasilIPSNilaiRendah = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND ipa_rata <= 80"));
$EntropyNilaiIPARendah = (-$hasilIPANilaiRendah / $NilaiIPARendah) * log($hasilIPANilaiRendah / $NilaiIPARendah, 2) + (-$hasilIPSNilaiRendah / $NilaiIPARendah) * log($hasilIPSNilaiRendah / $NilaiIPARendah, 2);

// Atribut Nilai IPA Sedang
$NilaiIPASedang = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE ipa_rata >= 80"));
$hasilIPANilaiSedang = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND ipa_rata >= 80"));
$hasilIPSNilaiSedang = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND ipa_rata >= 80"));
$EntropyNilaiIPASedang = (-$hasilIPANilaiSedang / $NilaiIPASedang) * log($hasilIPANilaiSedang / $NilaiIPASedang, 2) + (-$hasilIPSNilaiSedang / $NilaiIPASedang) * log($hasilIPSNilaiSedang / $NilaiIPASedang, 2);

// Atribut Nilai IPA Tinggi
$NilaiIPAinggi = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE ipa_rata >= 90"));
$hasilIPANilaiTinggi = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND ipa_rata >= 90"));
$hasilIPSNilaiTinggi = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND ipa_rata >= 90"));
$EntropyNilaiIPAinggi = (-$hasilIPANilaiTinggi / $NilaiIPAinggi) * log($hasilIPANilaiTinggi / $NilaiIPAinggi, 2) + (-$hasilIPSNilaiTinggi / $NilaiIPAinggi) * log($hasilIPSNilaiTinggi / $NilaiIPAinggi, 2);

// Atribut Nilai IPS Rendah
$NilaiIPSRendah = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE ips_rata <= 80"));
$hasilIPANilaiRendah = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND ips_rata <= 80"));
$hasilIPSNilaiRendah = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND ips_rata <= 80"));
$EntropyNilaiIPSRendah = (-$hasilIPANilaiRendah / $NilaiIPSRendah) * log($hasilIPANilaiRendah / $NilaiIPSRendah, 2) + (-$hasilIPSNilaiRendah / $NilaiIPSRendah) * log($hasilIPSNilaiRendah / $NilaiIPSRendah, 2);

// Atribut Nilai IPS Sedang
$NilaiIPSSedang = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE ips_rata >= 80"));
$hasilIPANilaiSedang = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND ips_rata >= 80"));
$hasilIPSNilaiSedang = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND ips_rata >= 80"));
$EntropyNilaiIPSSedang = (-$hasilIPANilaiSedang / $NilaiIPSSedang) * log($hasilIPANilaiSedang / $NilaiIPSSedang, 2) + (-$hasilIPSNilaiSedang / $NilaiIPSSedang) * log($hasilIPSNilaiSedang / $NilaiIPSSedang, 2);

// Atribut Nilai IPS Tinggi
$NilaiIPSinggi = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE ips_rata >= 90"));
$hasilIPANilaiTinggi = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPA' AND ips_rata >= 90"));
$hasilIPSNilaiTinggi = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM tb_training WHERE hasil = 'IPS' AND ips_rata >= 90"));
$EntropyNilaiIPSinggi = (-$hasilIPANilaiTinggi / $NilaiIPSinggi) * log($hasilIPANilaiTinggi / $NilaiIPSinggi, 2) + (-$hasilIPSNilaiTinggi / $NilaiIPSinggi) * log($hasilIPSNilaiTinggi / $NilaiIPSinggi, 2);

// Algoritma C.45
function miningC45($atribut, $nilai_atribut)
{
    perhitunganC45($atribut, $nilai_atribut);
    insertAtributPohonKeputusan($atribut, $nilai_atribut);
    getInfGainMax($atribut, $nilai_atribut);
    replaceNull();
}
