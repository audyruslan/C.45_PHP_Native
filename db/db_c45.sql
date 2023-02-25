-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 12:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_c45`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `img_dir` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`, `img_dir`) VALUES
('audyruslan', '$2y$10$YJMlsasuDDlkgqAUS/.XdOeu/6/gPq1Z9dr1xAe.j40T8TtjfnD5S', 'Audy Ruslan', 'image/1638426625.png'),
('fahri', '$2y$10$Nn8pJ/PkiFYF7WDIuh5vlOr0yTCx9HVGzya44JSIER33TQEF12Na.', 'fahri', 'image/1676970984.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_data`
--

CREATE TABLE `tb_data` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(256) NOT NULL,
  `usia` int(11) NOT NULL,
  `pendidikan_terakhir` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `pendapatan_perbulan` varchar(256) NOT NULL,
  `kondisi_hunian` varchar(256) NOT NULL,
  `sejahtera` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_data`
--

INSERT INTO `tb_data` (`id`, `no_kk`, `nama_lengkap`, `jenis_kelamin`, `usia`, `pendidikan_terakhir`, `pekerjaan`, `pendapatan_perbulan`, `kondisi_hunian`, `sejahtera`) VALUES
(4, '7208020701990002', 'Ummul Fajri Rahmat', 'Laki-laki', 58, 'SD', 'Tidak Bekerja', 'Rendah', 'Tidak Layak', 'Tidak'),
(5, '7208020701990003', 'Yusran Halik Larisi', 'Laki-laki', 63, 'SMA', 'Wiraswasta', 'Tinggi', 'Layak', 'Ya'),
(7, '7208020701990005', 'Sapriadi', 'Laki-laki', 39, 'SMP', 'Nelayan', 'Rendah', 'Tidak Layak', 'Tidak'),
(8, '7208020701990006', 'Fadli Nur Zaman', 'Laki-laki', 52, 'S1', 'PNS', 'Sangat Tinggi', 'Layak', 'Ya'),
(9, '7208020701990007', 'Moh. Arfhan Afandy', 'Laki-laki', 32, 'SMA', 'Tidak Bekerja', 'Rendah', 'Tidak Layak', 'Tidak'),
(10, '7208020701990004', 'Irmalia', 'Perempuan', 69, 'D3', 'Petani', 'Tinggi', 'Layak', 'Ya'),
(11, '7208020701990008', 'Fikran', 'Laki-laki', 39, 'D3', 'Nelayan', 'Cukup', 'Cukup Layak', 'Ya'),
(12, '7208020701990009', 'Moh. Nur M Tahher', 'Laki-laki', 31, 'S1', 'PNS', 'Tinggi', 'Layak', 'Ya'),
(13, '72080207019900010', 'Zulkifli', 'Laki-laki', 52, 'SMP', 'Wiraswasta', 'Rendah', 'Tidak Layak', 'Tidak'),
(14, '7208020701990001', 'Audy Ruslan', 'Laki-laki', 58, 'SMP', 'Nelayan', 'Cukup', 'Cukup Layak', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `nilai` int(11) NOT NULL,
  `hasil` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `kelas`, `nilai`, `hasil`) VALUES
(1, 'Ya', 5, 0.5),
(2, 'Tidak', 5, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kondisi`
--

CREATE TABLE `tb_kondisi` (
  `id` int(11) NOT NULL,
  `nama_kriteria` varchar(255) NOT NULL,
  `kondisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kondisi`
--

INSERT INTO `tb_kondisi` (`id`, `nama_kriteria`, `kondisi`) VALUES
(3, 'Pendidikan Terakhir', 'SMP'),
(4, 'Pendidikan Terakhir', 'SMA'),
(6, 'Pendidikan Terakhir', 'S1'),
(7, 'Pendidikan Terakhir', 'D3'),
(9, 'Pekerjaan', 'Tidak Bekerja'),
(10, 'Pekerjaan', 'Nelayan'),
(11, 'Pekerjaan', 'Petani'),
(12, 'Pekerjaan', 'Wiraswasta'),
(13, 'Pekerjaan', 'PNS'),
(14, 'Pendapatan Perbulan', 'Cukup'),
(15, 'Pendapatan Perbulan', 'Rendah'),
(16, 'Pendapatan Perbulan', 'Tinggi'),
(17, 'Pendapatan Perbulan', 'Sangat Tinggi'),
(18, 'Kondisi Hunian', 'Layak'),
(19, 'Kondisi Hunian', 'Cukup Layak'),
(20, 'Kondisi Hunian', 'Tidak Layak'),
(22, 'Sejahtera', 'Ya'),
(23, 'Sejahtera', 'Tidak'),
(24, 'Pendidikan Terakhir', 'SD'),
(25, 'Usia', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id` int(11) NOT NULL,
  `nama_kriteria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id`, `nama_kriteria`) VALUES
(3, 'Usia'),
(7, 'Pendidikan Terakhir'),
(8, 'Pekerjaan'),
(9, 'Pendapatan Perbulan'),
(10, 'Kondisi Hunian'),
(11, 'Sejahtera');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penduduk`
--

CREATE TABLE `tb_penduduk` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(256) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_penduduk`
--

INSERT INTO `tb_penduduk` (`id`, `no_kk`, `nama_lengkap`, `jenis_kelamin`, `status`) VALUES
(1, '7208020701990001', 'Audy Ruslan', 'Laki-laki', 1),
(2, '7208020701990002', 'Ummul Fajri Rahmat', 'Laki-laki', 1),
(3, '7208020701990003', 'Yusran Halik Larisi', 'Laki-laki', 1),
(4, '7208020701990004', 'Irmalia', 'Perempuan', 1),
(5, '7208020701990005', 'Sapriadi', 'Laki-laki', 1),
(6, '7208020701990006', 'Fadli Nur Zaman', 'Laki-laki', 1),
(7, '7208020701990007', 'Moh. Arfhan Afandy', 'Laki-laki', 1),
(8, '7208020701990008', 'Fikran', 'Laki-laki', 1),
(9, '7208020701990009', 'Moh. Nur M Taher', 'Laki-laki', 1),
(10, '72080207019900010', 'Zulkifli', 'Laki-laki', 1),
(11, '72080207019900011', 'Whalid Dwi Aditya', 'Laki-laki', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_training`
--

CREATE TABLE `tb_training` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `mtk_1` int(11) NOT NULL,
  `mtk_2` int(11) NOT NULL,
  `mtk_3` int(11) NOT NULL,
  `mtk_4` int(11) NOT NULL,
  `mtk_5` int(11) NOT NULL,
  `mtk_rata` float NOT NULL,
  `mtk_grade` varchar(256) NOT NULL,
  `ipa_1` int(11) NOT NULL,
  `ipa_2` int(11) NOT NULL,
  `ipa_3` int(11) NOT NULL,
  `ipa_4` int(11) NOT NULL,
  `ipa_5` int(11) NOT NULL,
  `ipa_rata` float NOT NULL,
  `ipa_grade` varchar(256) NOT NULL,
  `ips_1` int(11) NOT NULL,
  `ips_2` int(11) NOT NULL,
  `ips_3` int(11) NOT NULL,
  `ips_4` int(11) NOT NULL,
  `ips_5` int(11) NOT NULL,
  `ips_rata` float NOT NULL,
  `ips_grade` varchar(256) NOT NULL,
  `minat` varchar(255) NOT NULL,
  `nilai_tes` float NOT NULL,
  `hasil` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_training`
--

INSERT INTO `tb_training` (`id`, `nama_siswa`, `nama_sekolah`, `mtk_1`, `mtk_2`, `mtk_3`, `mtk_4`, `mtk_5`, `mtk_rata`, `mtk_grade`, `ipa_1`, `ipa_2`, `ipa_3`, `ipa_4`, `ipa_5`, `ipa_rata`, `ipa_grade`, `ips_1`, `ips_2`, `ips_3`, `ips_4`, `ips_5`, `ips_rata`, `ips_grade`, `minat`, `nilai_tes`, `hasil`) VALUES
(2, 'Aan Irawan', 'SMP Negeri 1 Ampibabo', 79, 80, 88, 82, 81, 82, 'B', 79, 82, 84, 85, 86, 83.2, 'B', 80, 82, 87, 85, 86, 84, 'B', 'IPA', 82.6, 'IPS'),
(3, 'Abd. Rahim', 'SMP Negeri 2 Ampibabo', 75, 85, 89, 89, 89, 85.4, 'A', 77, 85, 89, 89, 89, 85.8, 'A', 78, 86, 89, 90, 90, 86.6, 'A', 'IPS', 86.5, 'IPA'),
(4, 'Abd. Rahman', 'SMP Negeri 3 Ampibabo', 75, 85, 88, 98, 91, 87.4, 'A', 77, 88, 88, 96, 96, 89, 'A', 77, 85, 88, 98, 96, 88.8, 'A', 'IPA', 89.4, 'IPA'),
(5, 'Abdi Gunawan', 'SMP Negeri 1 Ampibabo', 75, 80, 95, 92, 92, 86.8, 'A', 75, 80, 92, 90, 94, 86.2, 'A', 77, 85, 93, 95, 95, 89, 'A', 'IPS', 88.3, 'IPA'),
(6, 'Abdila', 'SMP Negeri 1 Ampibabo', 77, 82, 89, 90, 91, 85.8, 'A', 75, 87, 88, 89, 90, 85.8, 'A', 78, 85, 93, 93, 93, 88.4, 'A', 'IPA', 87.3, 'IPA'),
(7, 'Abdul Mesi', 'MtsN Ampibabo', 67, 88, 86, 88, 82, 82.2, 'B', 80, 84, 86, 86, 81, 83.4, 'B', 80, 86, 80, 81, 80, 81.4, 'B', 'IPA', 85.8, 'IPS'),
(8, 'Abdul Reza', 'SMP Negeri 1 Ampibabo', 77, 76, 77, 75, 80, 77, 'B', 82, 78, 78, 85, 82, 81, 'B', 76, 78, 79, 78, 80, 78.2, 'B', 'IPA', 80.9, 'IPS'),
(9, 'Abidad Bintang Prawana', 'MtsN Ampibabo', 64, 80, 83, 85, 80, 78.4, 'B', 69, 80, 81, 85, 80, 79, 'B', 72, 84, 89, 83, 80, 81.6, 'B', 'IPS', 82.2, 'IPS'),
(10, 'Abigael Singkali', 'MtsN Ampibabo', 60, 66, 80, 87, 84, 75.4, 'B', 77, 75, 87, 81, 87, 81.4, 'B', 66, 77, 80, 80, 89, 78.4, 'B', 'IPS', 82.2, 'IPS'),
(11, 'ade rian pratama', 'SMP Negeri 1 Ampibabo', 75, 78, 80, 78, 80, 78.2, 'B', 75, 85, 84, 88, 81, 82.6, 'B', 84, 80, 93, 80, 86, 84.6, 'B', 'IPA', 83.2, 'IPA'),
(12, 'Adelia', 'MtsN Ampibabo', 67, 75, 78, 80, 84, 76.8, 'B', 73, 85, 79, 88, 90, 83, 'B', 89, 82, 86, 90, 79, 85.2, 'A', 'IPA', 84.6, 'IPA'),
(13, 'adi puta tuwo', 'SMP Negeri 2 Ampibabo', 90, 92, 92, 94, 95, 92.6, 'A', 90, 92, 94, 95, 96, 93.4, 'A', 90, 90, 92, 92, 94, 91.6, 'A', 'IPA', 92.8, 'IPA'),
(14, 'Adinda', 'SMP Negeri 2 Ampibabo', 70, 80, 90, 91, 92, 84.6, 'B', 70, 75, 90, 91, 90, 83.2, 'B', 76, 85, 90, 91, 90, 86.4, 'A', 'IPS', 86.4, 'IPA'),
(15, 'Adinda', 'SMP Negeri 3 Ampibabo', 79, 80, 79, 88, 91, 83.4, 'B', 76, 87, 77, 95, 98, 86.6, 'A', 83, 98, 82, 91, 87, 88.2, 'A', 'IPA', 87.5, 'IPA'),
(16, 'Adit', 'SMP Negeri 1 Ampibabo', 79, 80, 80, 82, 82, 80.6, 'B', 83, 83, 84, 85, 85, 84, 'B', 80, 80, 84, 82, 82, 81.6, 'B', 'IPS', 83.7, 'IPS'),
(17, 'adri barkah perdana', 'SMP Negeri 1 Ampibabo', 76, 82, 92, 93, 93, 87.2, 'A', 76, 85, 90, 92, 92, 87, 'A', 75, 87, 92, 94, 94, 88.4, 'A', 'IPS', 89.4, 'IPA'),
(18, 'Adrian Ruslan', 'SMP Negeri 1 Ampibabo', 74, 80, 80, 77, 77, 77.6, 'B', 75, 85, 89, 91, 81, 84.2, 'B', 80, 87, 88, 79, 89, 84.6, 'B', 'IPS', 83.7, 'IPA'),
(19, 'adrizal arfiadi', 'SMP Negeri 3 Ampibabo', 70, 81, 80, 85, 82, 79.6, 'B', 85, 87, 78, 72, 90, 82.4, 'B', 75, 75, 85, 80, 80, 79, 'B', 'IPA', 82.3, 'IPS'),
(20, 'Afdal', 'SMP Negeri 3 Ampibabo', 75, 75, 84, 75, 80, 77.8, 'B', 76, 83, 85, 88, 85, 83.4, 'B', 73, 71, 87, 80, 81, 78.4, 'B', 'IPS', 80.4, 'IPS'),
(21, 'Afdal Salman', 'SMP Negeri 2 Ampibabo', 81, 82, 87, 87, 83, 84, 'B', 95, 82, 89, 88, 86, 88, 'A', 87, 83, 90, 93, 83, 87.2, 'A', 'IPS', 85.4, 'IPA'),
(22, 'Affan', 'SMP Negeri 3 Ampibabo', 77, 82, 77, 79, 83, 79.6, 'B', 79, 85, 83, 95, 80, 84.4, 'B', 83, 94, 93, 95, 92, 91.4, 'A', 'IPA', 85.3, 'IPA'),
(23, 'Afif Fairuz', 'SMP Negeri 2 Ampibabo', 77, 86, 92, 93, 93, 88.2, 'A', 75, 85, 93, 94, 94, 88.2, 'A', 79, 86, 95, 95, 96, 90.2, 'A', 'IPS', 90.3, 'IPA'),
(24, 'Afit', 'SMP Negeri 2 Ampibabo', 80, 92, 85, 91, 88, 87.2, 'A', 78, 89, 85, 95, 94, 88.2, 'A', 79, 89, 85, 90, 91, 86.8, 'A', 'IPA', 88.5, 'IPA'),
(25, 'Afriyansa A. Hb. Amboelo', 'SMP Negeri 3 Ampibabo', 76, 87, 90, 90, 92, 87, 'A', 75, 85, 91, 93, 95, 87.8, 'A', 77, 90, 91, 92, 94, 88.8, 'A', 'IPA', 88.3, 'IPA'),
(26, 'Afrizal Muhihdi', 'SMP Negeri 3 Ampibabo', 77, 87, 92, 92, 94, 88.4, 'A', 76, 85, 92, 93, 95, 88.2, 'A', 80, 95, 95, 97, 97, 92.8, 'A', 'IPS', 90.5, 'IPA'),
(27, 'agil angelika daut', 'SMP Negeri 3 Ampibabo', 75, 85, 90, 90, 90, 86, 'A', 78, 85, 90, 92, 94, 87.8, 'A', 76, 87, 90, 91, 94, 87.6, 'A', 'IPA', 88.3, 'IPA'),
(28, 'Agriza Wandini', 'SMP Negeri 2 Ampibabo', 78, 78, 77, 78, 84, 79, 'B', 87, 84, 81, 82, 87, 84.2, 'B', 77, 77, 78, 79, 79, 78, 'B', 'IPA', 82.5, 'IPS'),
(29, 'Agus Gel Gel Swarupa', 'SMP Negeri 1 Ampibabo', 60, 80, 80, 82, 90, 78.4, 'B', 75, 80, 81, 86, 87, 81.8, 'B', 81, 84, 89, 91, 80, 85, 'A', 'IPA', 85.5, 'IPA'),
(30, 'Ahmad Adi Ozan', 'SMP Negeri 2 Ampibabo', 62, 79, 78, 81, 77, 75.4, 'B', 70, 78, 76, 85, 90, 79.8, 'B', 72, 75, 80, 87, 79, 78.6, 'B', 'IPA', 81.3, 'IPS'),
(31, 'Ahmad Faqih Tegar', 'SMP Negeri 3 Ampibabo', 92, 89, 94, 94, 97, 93.2, 'A', 88, 91, 95, 95, 96, 93, 'A', 89, 89, 92, 94, 94, 91.6, 'A', 'IPS', 92.9, 'IPA'),
(32, 'ahmad junaidi', 'SMP Negeri 1 Ampibabo', 78, 79, 77, 76, 80, 78, 'B', 79, 80, 80, 80, 80, 79.8, 'B', 80, 83, 80, 96, 90, 85.8, 'A', 'IPS', 82.1, 'IPA'),
(33, 'ahmad taufik B', 'MtsN Ampibabo', 85, 82, 82, 92, 94, 87, 'A', 87, 85, 86, 92, 86, 87.2, 'A', 87, 86, 84, 92, 88, 87.4, 'A', 'IPA', 86.6, 'IPA'),
(34, 'Ainurrahmi', 'SMP Negeri 3 Ampibabo', 78, 85, 79, 90, 90, 84.4, 'B', 77, 85, 76, 94, 94, 85.2, 'A', 79, 87, 78, 96, 96, 87.2, 'A', 'IPA', 87.7, 'IPA'),
(35, 'Aisa', 'SMP Negeri 2 Ampibabo', 77, 85, 80, 80, 88, 82, 'B', 71, 85, 90, 80, 88, 82.8, 'B', 88, 79, 90, 91, 78, 85.2, 'A', 'IPA', 85.4, 'IPA'),
(36, 'Aisyah', 'SMP Negeri 2 Ampibabo', 60, 87, 80, 85, 79, 78.2, 'B', 80, 77, 82, 89, 84, 82.4, 'B', 80, 80, 79, 80, 80, 79.8, 'B', 'IPS', 82.2, 'IPS'),
(37, 'ajrian mase abrar', 'SMP Negeri 3 Ampibabo', 75, 87, 90, 90, 90, 86.4, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 75, 87, 89, 89, 90, 86, 'A', 'IPA', 87.8, 'IPA'),
(38, 'Akbar', 'SMP Negeri 3 Ampibabo', 75, 85, 91, 92, 94, 87.4, 'A', 74, 85, 91, 92, 95, 87.4, 'A', 77, 85, 90, 91, 94, 87.4, 'A', 'IPS', 89.3, 'IPA'),
(39, 'Alamsyah', 'SMP Negeri 2 Ampibabo', 74, 80, 83, 85, 86, 81.6, 'B', 82, 83, 84, 82, 82, 82.6, 'B', 85, 82, 84, 32, 82, 73, 'C', 'IPS', 84.1, 'IPS'),
(40, 'Alfa Mandala', 'MtsN Ampibabo', 94, 96, 92, 93, 92, 93.4, 'A', 98, 92, 86, 95, 92, 92.6, 'A', 93, 96, 95, 94, 95, 94.6, 'A', 'IPS', 91.3, 'IPA'),
(41, 'Alfarizi', 'SMP Negeri 1 Ampibabo', 60, 77, 85, 88, 76, 77.2, 'B', 69, 81, 73, 83, 85, 78.2, 'B', 74, 75, 87, 38, 79, 70.6, 'C', 'IPS', 81.6, 'IPS'),
(42, 'Alfaruq Zikri', 'SMP Negeri 1 Ampibabo', 65, 75, 75, 30, 76, 64.2, 'C', 75, 80, 82, 85, 81, 80.6, 'B', 78, 78, 81, 32, 78, 69.4, 'C', 'IPA', 80.8, 'IPS'),
(43, 'Alfut', 'SMP Negeri 1 Ampibabo', 75, 85, 88, 89, 90, 85.4, 'A', 74, 85, 89, 90, 92, 86, 'A', 78, 85, 94, 94, 95, 89.2, 'A', 'IPA', 88.3, 'IPA'),
(44, 'Algi Prasetyo', 'SMP Negeri 1 Ampibabo', 82, 85, 95, 90, 79, 86.2, 'A', 69, 85, 89, 88, 95, 85.2, 'A', 80, 78, 94, 91, 80, 86.25, 'A', 'IPA', 86.4, 'IPA'),
(45, 'alma mauliana', 'SMP Negeri 2 Ampibabo', 78, 88, 87, 90, 90, 86.6, 'A', 75, 85, 86, 94, 96, 87.2, 'A', 76, 87, 89, 96, 90, 87.6, 'A', 'IPS', 88.5, 'IPA'),
(46, 'Amalia', 'SMP Negeri 2 Ampibabo', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 93.7, 'IPA'),
(47, 'Amana Faturiska', 'SMP Negeri 2 Ampibabo', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 87.2, 'IPA'),
(48, 'Amanda Putri', 'SMP Negeri 2 Ampibabo', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 87.4, 'IPA'),
(49, 'Ambran', 'SMP Negeri satap 1 Ampibabo', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 89.1, 'IPA'),
(50, 'amelia tasya', 'SMP Negeri satap 1 Ampibabo', 80, 89, 82, 96, 80, 85.4, 'A', 90, 79, 78, 82, 82, 82.2, 'B', 82, 81, 78, 80, 77, 79.6, 'B', 'IPS', 82.8, 'IPA'),
(51, 'ana restiana', 'SMP Negeri 1 Ampibabo', 60, 82, 75, 80, 78, 75, 'B', 70, 76, 80, 85, 88, 79.8, 'B', 79, 75, 80, 83, 78, 79, 'B', 'IPS', 80.9, 'IPS'),
(52, 'Ananda Lestari', 'SMP Negeri 1 Ampibabo', 80, 76, 93, 94, 95, 87.6, 'A', 78, 91, 93, 94, 95, 90.2, 'A', 84, 85, 92, 94, 95, 90, 'A', 'IPA', 90.6, 'IPA'),
(53, 'Anansi', 'SMP Negeri 1 Ampibabo', 78, 86, 88, 89, 90, 86.2, 'A', 77, 87, 89, 89, 90, 86.4, 'A', 77, 87, 89, 90, 92, 87, 'A', 'IPA', 87.7, 'IPA'),
(54, 'Andi Ferdi', 'SMP Negeri satap 1 Ampibabo', 81, 90, 90, 95, 90, 89.2, 'A', 78, 80, 88, 85, 85, 83.2, 'B', 75, 85, 95, 90, 85, 86, 'A', 'IPS', 85.7, 'IPA'),
(55, 'Andi Hasmi', 'SMPN 2 AMPIBABO', 75, 85, 89, 90, 90, 85.8, 'A', 77, 84, 91, 92, 92, 87.2, 'A', 76, 85, 92, 94, 95, 88.4, 'A', 'IPS', 89.3, 'IPA'),
(56, 'andi jumarni', 'SATAP AMPIBABO', 65, 74, 80, 82, 90, 78.2, 'B', 73, 78, 68, 72, 80, 74.2, 'C', 75, 85, 85, 78, 82, 81, 'B', 'IPS', 81.7, 'IPS'),
(57, 'Andi Muhammad Rizki', 'SATAP AMPIBABO', 75, 69, 97, 78, 86, 81, 'B', 77, 75, 71, 84, 74, 76.2, 'B', 80, 80, 85, 80, 75, 80, 'B', 'IPA', 88.4, 'IPA'),
(58, 'Andi Rasya Nur', 'SATAP AMPIBABO', 76, 85, 90, 91, 91, 86.6, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 76, 90, 92, 92, 94, 88.8, 'A', 'IPA', 88.3, 'IPA'),
(59, 'Andi Razlan', 'SATAP AMPIBABO', 76, 86, 89, 89, 90, 86, 'A', 77, 85, 92, 92, 94, 88, 'A', 86, 86, 84, 90, 90, 87.2, 'A', 'IPA', 85.7, 'IPA'),
(60, 'Andi Rusani Indah Sari', 'SATAP AMPIBABO', 84, 82, 82, 89, 80, 83.4, 'B', 86, 84, 86, 89, 84, 85.8, 'A', 76, 76, 87, 89, 85, 82.6, 'B', 'IPS', 84.3, 'IPA'),
(61, 'Andra Fareza', 'MTs. ALKHAIRAAT AMPIBABO', 80, 81, 81, 85, 86, 82.6, 'B', 85, 86, 89, 91, 92, 88.6, 'A', 77, 80, 72, 80, 90, 79.8, 'B', 'IPS', 86.2, 'IPA'),
(62, 'Andre Bunai', 'SATAP AMPIBABO', 88, 85, 84, 82, 85, 84.8, 'B', 86, 80, 87, 79, 90, 84.4, 'B', 90, 80, 90, 91, 79, 86, 'A', 'IPS', 84.9, 'IPA'),
(63, 'Andriati Merly Matantu', 'SATAP AMPIBABO', 69, 78, 95, 82, 90, 82.8, 'B', 76, 85, 77, 83, 84, 81, 'B', 76, 75, 79, 75, 80, 77, 'B', 'IPS', 80.7, 'IPS'),
(64, 'angga budi susanto', 'MTs. ALKHAIRAAT AMPIBABO', 70, 78, 74, 82, 80, 76.8, 'B', 72, 72, 78, 77, 80, 75.8, 'B', 76, 86, 84, 83, 85, 82.8, 'B', 'IPA', 82.8, 'IPS'),
(65, 'Angga Prasetio', 'SATAP AMPIBABO', 77, 83, 79, 78, 82, 79.8, 'B', 79, 79, 79, 88, 89, 82.8, 'B', 80, 83, 86, 88, 90, 85.4, 'A', 'IPA', 83, 'IPA'),
(66, 'Angga Prasetya', 'MTs. ALKHAIRAAT AMPIBABO', 78, 85, 80, 85, 83, 82.2, 'B', 78, 80, 75, 80, 84, 79.4, 'B', 85, 89, 90, 95, 89, 89.6, 'A', 'IPA', 86.2, 'IPA'),
(67, 'Anggriani', 'SATAP AMPIBABO', 79, 85, 86, 90, 82, 84.4, 'B', 80, 82, 83, 85, 84, 82.8, 'B', 85, 89, 92, 91, 80, 87.4, 'A', 'IPA', 86.4, 'IPA'),
(68, 'Anggun Kasami', 'SATAP AMPIBABO', 76, 90, 85, 90, 81, 84.4, 'B', 80, 85, 86, 88, 91, 86, 'A', 82, 80, 92, 78, 80, 82.4, 'B', 'IPS', 84.2, 'IPA'),
(69, 'Anggun Pratiwi', 'MTs. ALKHAIRAAT AMPIBABO', 79, 77, 79, 87, 88, 82, 'B', 79, 81, 91, 90, 86, 85.4, 'A', 75, 87, 83, 78, 90, 82.6, 'B', 'IPS', 84.8, 'IPA'),
(70, 'Angris Gunawan', 'SATAP AMPIBABO', 80, 78, 81, 82, 82, 80.6, 'B', 80, 87, 77, 86, 88, 83.6, 'B', 83, 80, 87, 94, 78, 84.4, 'B', 'IPS', 76.9, 'IPS'),
(71, 'Anjas', 'MTs. ALKHAIRAAT AMPIBABO', 60, 75, 75, 78, 81, 73.8, 'C', 68, 75, 75, 80, 80, 75.6, 'B', 68, 76, 76, 33, 78, 66.2, 'C', 'IPS', 66.7, 'IPS'),
(72, 'Annisa', 'SATAP AMPIBABO', 73, 76, 79, 86, 77, 78.2, 'B', 72, 80, 77, 79, 79, 77.4, 'B', 75, 87, 76, 76, 81, 79, 'B', 'IPS', 66.1, 'IPS'),
(73, 'annisa mahardhani', 'MTs. ALKHAIRAAT AMPIBABO', 82, 82, 77, 74, 72, 77.4, 'B', 80, 82, 79, 76, 82, 79.8, 'B', 76, 75, 75, 78, 80, 76.8, 'B', 'IPS', 64.1, 'IPS'),
(74, 'Anofyan Patoro', 'SATAP AMPIBABO', 60, 83, 81, 82, 79, 77, 'B', 75, 77, 75, 75, 82, 76.8, 'B', 68, 75, 77, 79, 78, 75.4, 'B', 'IPA', 76.9, 'IPA'),
(75, 'aprilia nurhayati', 'MTs. ALKHAIRAAT AMPIBABO', 89, 91, 87, 90, 85, 88.4, 'A', 82, 85, 91, 93, 94, 89, 'A', 87, 85, 92, 87, 84, 87, 'A', 'IPA', 73.8, 'IPA'),
(76, 'Apriyani Kartini Kanoli', 'SATAP AMPIBABO', 75, 75, 70, 70, 76, 73.2, 'C', 75, 75, 70, 70, 78, 73.6, 'C', 71, 75, 75, 75, 78, 74.8, 'C', 'IPA', 73.7, 'IPS'),
(77, 'Aqida Izzah', 'SATAP AMPIBABO', 60, 78, 75, 75, 84, 74.4, 'C', 69, 77, 75, 80, 80, 76.2, 'B', 69, 75, 79, 33, 78, 66.8, 'C', 'IPS', 63.8, 'IPS'),
(78, 'Aqidatul Syawal', 'MTs. ALKHAIRAAT AMPIBABO', 60, 72, 93, 87, 84, 79.2, 'B', 69, 75, 76, 80, 84, 76.8, 'B', 73, 78, 79, 78, 78, 77.2, 'B', 'IPA', 64.8, 'IPS'),
(79, 'Ardan', 'SATAP AMPIBABO', 64, 67, 68, 70, 72, 68.2, 'C', 77, 80, 70, 71, 70, 73.6, 'C', 77, 65, 70, 75, 70, 71.4, 'C', 'IPA', 74.2, 'IPS'),
(80, 'Ardianza', 'SMPN 2 AMPIBABO', 60, 60, 70, 70, 80, 68, 'C', 68, 65, 70, 75, 85, 72.6, 'C', 65, 65, 72, 70, 77, 69.8, 'C', 'IPS', 71.3, 'IPS'),
(81, 'Arham Sandi', 'MTs. ALKHAIRAAT AMPIBABO', 60, 52, 70, 75, 75, 66.4, 'C', 70, 68, 80, 79, 84, 76.2, 'B', 70, 65, 75, 30, 82, 64.4, 'C', 'IPA', 77, 'IPS'),
(82, 'Ariansah', 'MTs. ALKHAIRAAT AMPIBABO', 60, 68, 85, 80, 76, 73.8, 'C', 68, 78, 75, 83, 84, 77.6, 'B', 74, 75, 78, 79, 78, 76.8, 'B', 'IPS', 78.9, 'IPS'),
(83, 'Arianto', 'SATAP AMPIBABO', 60, 75, 75, 78, 78, 73.2, 'C', 69, 75, 75, 78, 82, 75.8, 'B', 72, 78, 75, 81, 77, 76.6, 'B', 'IPS', 63.5, 'IPS'),
(84, 'Arifaldi', 'SATAP AMPIBABO', 61, 66, 80, 75, 79, 72.2, 'C', 75, 79, 86, 77, 88, 81, 'B', 65, 71, 70, 82, 85, 74.6, 'C', 'IPS', 79, 'IPS'),
(85, 'Arifandi', 'SATAP AMPIBABO', 50, 60, 68, 75, 77, 66, 'C', 60, 64, 70, 75, 88, 71.4, 'C', 65, 65, 70, 75, 72, 69.4, 'C', 'IPS', 60.7, 'IPS'),
(86, 'Arini', 'SATAP AMPIBABO', 60, 78, 78, 81, 75, 74.4, 'C', 69, 78, 75, 78, 87, 77.4, 'B', 68, 76, 78, 82, 79, 76.6, 'B', 'IPA', 78.4, 'IPS'),
(87, 'Arjuna Saputra', 'SATAP AMPIBABO', 60, 75, 77, 82, 82, 75.2, 'B', 70, 80, 75, 75, 79, 75.8, 'B', 68, 75, 77, 78, 75, 74.6, 'C', 'IPA', 65, 'IPS'),
(88, 'Armandiansa', 'SMPN 2 AMPIBABO', 76, 70, 79, 78, 79, 76.4, 'B', 80, 75, 79, 79, 88, 80.2, 'B', 80, 75, 80, 80, 80, 79, 'B', 'IPA', 65.9, 'IPS'),
(89, 'Arniyanti', 'SMPN 2 AMPIBABO', 70, 70, 79, 75, 81, 75, 'B', 70, 73, 78, 75, 77, 74.6, 'C', 69, 75, 75, 72, 81, 74.4, 'C', 'IPS', 76.9, 'IPS'),
(90, 'Artika', 'SMPN 2 AMPIBABO', 60, 83, 80, 82, 78, 76.6, 'B', 69, 76, 79, 75, 81, 76, 'B', 68, 75, 79, 81, 78, 76.2, 'B', 'IPA', 78.5, 'IPS'),
(91, 'Arya Saputra', 'SMPN 2 AMPIBABO', 60, 75, 75, 75, 81, 73.2, 'C', 75, 80, 75, 80, 80, 78, 'B', 75, 76, 75, 77, 75, 75.6, 'B', 'IPS', 77.1, 'IPS'),
(92, 'Ashar Aditia', 'SMPN 2 AMPIBABO', 69, 68, 70, 71, 75, 70.6, 'C', 76, 71, 72, 74, 74, 73.4, 'C', 70, 70, 75, 75, 85, 75, 'B', 'IPS', 75.5, 'IPS'),
(93, 'Asmar Abbas', 'SMPN 2 AMPIBABO', 75, 76, 68, 75, 80, 74.8, 'C', 75, 75, 70, 77, 79, 75.2, 'B', 71, 76, 70, 75, 76, 73.6, 'C', 'IPA', 76.6, 'IPS'),
(94, 'Asmar Abbas', 'SMPN 2 AMPIBABO', 80, 70, 75, 70, 78, 74.6, 'C', 63, 75, 78, 74, 78, 73.6, 'C', 75, 65, 75, 75, 80, 74, 'C', 'IPA', 76.5, 'IPS'),
(95, 'Asnur', 'SMPN 2 AMPIBABO', 81, 81, 80, 75, 78, 79, 'B', 77, 79, 80, 78, 76, 78, 'B', 87, 83, 76, 71, 95, 82.4, 'B', 'IPA', 79.9, 'IPS'),
(96, 'Asrafil', 'SMPN 2 AMPIBABO', 60, 79, 78, 78, 81, 75.2, 'B', 69, 71, 76, 79, 84, 75.8, 'B', 68, 75, 75, 78, 78, 74.8, 'C', 'IPS', 77.1, 'IPS'),
(97, 'Astika Dwi Meiriska', 'SMPN 2 AMPIBABO', 72, 75, 75, 76, 75, 74.6, 'C', 75, 75, 76, 76, 77, 75.8, 'B', 80, 76, 76, 79, 80, 78.2, 'B', 'IPA', 78.2, 'IPS'),
(98, 'Astrid Ikra Mawika', 'SMPN 2 AMPIBABO', 60, 87, 85, 80, 82, 78.8, 'B', 69, 77, 77, 87, 82, 78.4, 'B', 71, 78, 78, 80, 79, 77.2, 'B', 'IPA', 66.4, 'IPS'),
(99, 'Astuti', 'MTs. ALKHAIRAAT AMPIBABO', 66, 75, 85, 79, 80, 77, 'B', 68, 75, 85, 80, 93, 80.2, 'B', 74, 75, 95, 90, 88, 84.4, 'B', 'IPA', 67.5, 'IPS'),
(100, 'Atika', 'MTs. ALKHAIRAAT AMPIBABO', 68, 70, 67, 65, 75, 69, 'C', 65, 68, 66, 66, 77, 68.4, 'C', 66, 77, 66, 71, 76, 71.2, 'C', 'IPS', 72, 'IPS'),
(101, 'Aulia Fatra', 'MTs. ALKHAIRAAT AMPIBABO', 66, 77, 80, 78, 79, 76, 'B', 68, 77, 75, 83, 85, 77.6, 'B', 68, 76, 78, 31, 79, 66.4, 'C', 'IPS', 72, 'IPS'),
(102, 'Aulia Nadin Azzahra', 'SATAP AMPIBABO', 71, 72, 73, 75, 70, 72.2, 'C', 70, 80, 80, 65, 79, 74.8, 'C', 72, 79, 79, 79, 77, 77.2, 'B', 'IPA', 79.1, 'IPS'),
(103, 'Aulivia', 'SATAP AMPIBABO', 65, 76, 66, 71, 82, 72, 'C', 70, 76, 73, 74, 86, 75.8, 'B', 72, 97, 89, 85, 86, 85.8, 'A', 'IPS', 77.3, 'IPA'),
(104, 'Awal', 'MTs. ALKHAIRAAT AMPIBABO', 66, 64, 70, 70, 80, 70, 'C', 64, 64, 72, 74, 87, 72.2, 'C', 72, 97, 89, 85, 86, 85.8, 'A', 'IPA', 78.6, 'IPS'),
(105, 'Ayu Lestari', 'MTs. ALKHAIRAAT AMPIBABO', 60, 77, 60, 77, 75, 68, 'C', 68, 75, 69, 75, 85, 74.4, 'C', 73, 82, 72, 35, 83, 69, 'C', 'IPS', 78.9, 'IPS'),
(106, 'Ayu Maha Dewi', 'MTs. ALKHAIRAAT AMPIBABO', 75, 75, 75, 78, 75, 75.6, 'B', 75, 75, 76, 75, 76, 75.4, 'B', 68, 75, 68, 75, 70, 71.2, 'C', 'IPA', 74.5, 'IPS'),
(107, 'Ayuni R. Larotha', 'MTs. ALKHAIRAAT AMPIBABO', 60, 80, 75, 75, 84, 74.75, 'C', 69, 75, 75, 78, 80, 75.4, 'B', 75, 76, 80, 75, 80, 77.2, 'B', 'IPA', 76.2, 'IPS'),
(108, 'Azar', 'MTs. ALKHAIRAAT AMPIBABO', 63, 75, 95, 80, 79, 78.4, 'B', 68, 75, 78, 79, 80, 76, 'B', 72, 75, 75, 81, 75, 75.6, 'B', 'IPA', 78.9, 'IPS'),
(109, 'Beby Indah Sari', 'MTs. ALKHAIRAAT AMPIBABO', 60, 75, 80, 81, 81, 75.4, 'B', 70, 78, 79, 81, 81, 77.8, 'B', 70, 75, 79, 70, 76, 74, 'C', 'IPA', 66.7, 'IPS'),
(110, 'Cahyani Ramadhan', 'MTs. ALKHAIRAAT AMPIBABO', 75, 76, 78, 76, 0, 61, 'C', 75, 76, 80, 77, 0, 61.6, 'C', 73, 80, 78, 34, 79, 68.8, 'C', 'IPS', 52.4, 'IPS'),
(111, 'Carina Angelia Basjir', 'MTs. ALKHAIRAAT AMPIBABO', 78, 80, 80, 85, 85, 81.6, 'B', 80, 78, 88, 85, 88, 83.8, 'B', 75, 75, 75, 79, 0, 60.8, 'C', 'IPS', 71.6, 'IPS'),
(112, 'Chelsi Olivia', 'MTs. ALKHAIRAAT SINIU', 60, 75, 80, 80, 78, 74.6, 'C', 69, 80, 75, 79, 80, 76.6, 'B', 95, 79, 82, 91, 97, 88.8, 'A', 'IPA', 79.3, 'IPA'),
(113, 'Chikita Kirey Tomuntuan', 'MTs. ALKHAIRAAT SINIU', 60, 83, 78, 75, 80, 75.2, 'B', 70, 78, 75, 75, 88, 77.2, 'B', 75, 75, 75, 80, 79, 76.8, 'B', 'IPA', 79, 'IPS'),
(114, 'Cikatri Aprila', 'SMPN 3 AMPIBABO', 60, 75, 79, 84, 76, 74.8, 'C', 69, 80, 77, 78, 84, 77.6, 'B', 72, 75, 78, 79, 79, 76.6, 'B', 'IPA', 77.5, 'IPS'),
(115, 'Cindy Faula Ika Lestari', 'SMPN 3 AMPIBABO', 70, 75, 70, 78, 75, 73.6, 'C', 75, 75, 76, 75, 90, 78.2, 'B', 68, 70, 79, 80, 87, 76.8, 'B', 'IPS', 78.9, 'IPS'),
(116, 'Citra Ramadani', 'MTs. ALKHAIRAAT AMPIBABO', 69, 69, 71, 80, 80, 73.8, 'C', 66, 70, 68, 79, 69, 70.4, 'C', 70, 75, 74, 75, 81, 75, 'B', 'IPA', 76.1, 'IPS'),
(117, 'Citra Vebriyanti', 'MTs. ALKHAIRAAT AMPIBABO', 77, 75, 82, 79, 77, 78, 'B', 73, 79, 83, 75, 76, 77.2, 'B', 75, 77, 77, 77, 89, 79, 'B', 'IPA', 66.6, 'IPS'),
(118, 'Citra Wirda', 'MTs. ALKHAIRAAT AMPIBABO', 80, 82, 80, 82, 87, 82.2, 'B', 80, 84, 81, 83, 90, 83.6, 'B', 0, 84, 82, 80, 87, 66.6, 'C', 'IPS', 68.8, 'IPS'),
(119, 'Clara Lasimpara', 'SMPN 3 AMPIBABO', 64, 83, 78, 80, 82, 77.4, 'B', 68, 80, 75, 79, 81, 76.6, 'B', 69, 80, 70, 75, 80, 74.8, 'C', 'IPS', 76.9, 'IPS'),
(120, 'Cresya Sarapang', 'MTs. ALKHAIRAAT AMPIBABO', 73, 71, 66, 75, 80, 73, 'C', 73, 79, 74, 80, 80, 77.2, 'B', 70, 73, 70, 75, 80, 73.6, 'C', 'IPS', 77.4, 'IPS'),
(121, 'Crystin Sherlin Mengkopi', 'SMPN 3 AMPIBABO', 70, 78, 81, 79, 79, 77.4, 'B', 78, 80, 85, 83, 90, 83.2, 'B', 70, 75, 80, 85, 80, 78, 'B', 'IPS', 66.5, 'IPS'),
(122, 'Dandung Sadewa', 'SMPN 3 AMPIBABO', 75, 78, 79, 79, 80, 78.2, 'B', 75, 78, 79, 79, 80, 78.2, 'B', 76, 78, 78, 80, 85, 79.4, 'B', 'IPS', 67.8, 'IPS'),
(123, 'Debi Lestari Putri', 'SMPN 3 AMPIBABO', 78, 89, 89, 90, 90, 87.2, 'A', 77, 85, 92, 93, 93, 88, 'A', 79, 87, 90, 94, 94, 88.8, 'A', 'IPA', 73.7, 'IPA'),
(124, 'Dedy Afriansyah', 'SMPN 3 AMPIBABO', 68, 76, 70, 76, 79, 73.8, 'C', 70, 75, 70, 73, 80, 73.6, 'C', 70, 80, 72, 76, 80, 75.6, 'B', 'IPA', 76.1, 'IPS'),
(125, 'Dedy Kudong', 'SMPN 3 AMPIBABO', 68, 75, 75, 75, 80, 74.6, 'C', 65, 80, 76, 98, 75, 78.8, 'B', 65, 70, 75, 85, 78, 74.6, 'C', 'IPA', 77.1, 'IPS'),
(126, 'Dela Puspita', 'MTs. ALKHAIRAAT AMPIBABO', 60, 86, 75, 80, 85, 77.2, 'B', 76, 78, 77, 85, 87, 80.6, 'B', 71, 79, 81, 87, 80, 79.6, 'B', 'IPA', 79.4, 'IPS'),
(127, 'Deni', 'MTs. ALKHAIRAAT AMPIBABO', 65, 70, 65, 77, 83, 72, 'C', 74, 68, 74, 83, 83, 76.4, 'B', 75, 75, 75, 86, 81, 78.4, 'B', 'IPA', 76.8, 'IPS'),
(128, 'Deri Ab Pasau', 'SMPN 3 AMPIBABO', 70, 74, 77, 82, 80, 76.6, 'B', 74, 80, 81, 81, 80, 79.2, 'B', 72, 70, 69, 75, 80, 73.2, 'C', 'IPS', 79.1, 'IPS'),
(129, 'Devi', 'MTs. ALKHAIRAAT AMPIBABO', 68, 70, 70, 79, 84, 74.2, 'C', 75, 79, 75, 80, 85, 78.8, 'B', 79, 79, 79, 80, 90, 81.4, 'B', 'IPS', 63.8, 'IPS'),
(130, 'Devi Febriansih', 'MTs. ALKHAIRAAT AMPIBABO', 76, 80, 79, 85, 93, 82.6, 'B', 82, 80, 80, 79, 84, 81, 'B', 78, 83, 83, 80, 89, 82.6, 'B', 'IPS', 76.1, 'IPS'),
(131, 'Dewi Salsyah', 'SMPN 3 AMPIBABO', 71, 77, 78, 73, 78, 75.4, 'B', 75, 78, 82, 79, 80, 78.8, 'B', 79, 80, 75, 76, 85, 79, 'B', 'IPA', 78.2, 'IPS'),
(132, 'Dhanikah Adilan', 'SMPN 3 AMPIBABO', 65, 65, 65, 67, 77, 67.8, 'C', 75, 70, 65, 70, 75, 71, 'C', 68, 68, 88, 30, 80, 66.8, 'C', 'IPA', 77.6, 'IPS'),
(133, 'Dhara Alfia', 'SMPN 3 AMPIBABO', 75, 65, 65, 75, 65, 69, 'C', 75, 65, 65, 65, 80, 70, 'C', 70, 75, 75, 75, 70, 73, 'C', 'IPS', 60.4, 'IPS'),
(134, 'Diah Puspita Handayani', 'MTs. ALKHAIRAAT AMPIBABO', 62, 85, 85, 85, 85, 80.4, 'B', 75, 88, 82, 83, 85, 82.6, 'B', 76, 78, 83, 85, 84, 81.2, 'B', 'IPS', 68.6, 'IPS'),
(135, 'Diana Lestari Mega Utami Batalipu', 'SMPN 3 AMPIBABO', 60, 75, 75, 76, 78, 72.8, 'C', 69, 78, 76, 79, 81, 76.6, 'B', 73, 75, 75, 79, 75, 75.4, 'B', 'IPS', 78.5, 'IPS'),
(136, 'Didit Praftama', 'SMPN 3 AMPIBABO', 76, 79, 70, 76, 75, 75.2, 'B', 75, 76, 79, 81, 78, 77.8, 'B', 75, 77, 81, 79, 78, 78, 'B', 'IPS', 77.6, 'IPS'),
(137, 'Diki', 'SMPN 3 AMPIBABO', 70, 76, 80, 78, 75, 75.8, 'B', 70, 80, 80, 79, 85, 78.8, 'B', 70, 78, 78, 80, 76, 76.4, 'B', 'IPS', 64.3, 'IPS'),
(138, 'Dimas', 'MTs. ALKHAIRAAT AMPIBABO', 65, 86, 85, 85, 76, 79.4, 'B', 69, 83, 78, 85, 90, 81, 'B', 78, 79, 84, 85, 79, 81, 'B', 'IPS', 68.2, 'IPS'),
(139, 'Dimas Adytya Mulyadi', 'MTs. ALKHAIRAAT AMPIBABO', 70, 81, 78, 79, 91, 79.8, 'B', 75, 78, 74, 79, 76, 76.4, 'B', 73, 78, 76, 84, 86, 79.4, 'B', 'IPS', 64.9, 'IPS'),
(140, 'Dimas Angger Pangestu', 'MTs. ALKHAIRAAT AMPIBABO', 60, 75, 78, 85, 75, 74.6, 'C', 70, 75, 80, 85, 86, 79.2, 'B', 73, 80, 78, 81, 78, 78, 'B', 'IPS', 77.9, 'IPS'),
(141, 'Dimas Ari Saputra', 'SMPN 2 AMPIBABO', 75, 85, 76, 76, 78, 78, 'B', 75, 85, 99, 90, 90, 87.8, 'A', 75, 85, 88, 90, 86, 84.8, 'B', 'IPA', 79.8, 'IPS'),
(142, 'Dina Aulia', 'SMPN 2 AMPIBABO', 79, 78, 80, 80, 84, 80.2, 'B', 75, 78, 80, 80, 85, 79.6, 'B', 80, 90, 80, 78, 85, 82.6, 'B', 'IPS', 81.5, 'IPA'),
(143, 'Dina Mariana', 'SMPN 2 AMPIBABO', 75, 81, 80, 80, 82, 79.6, 'B', 70, 82, 76, 79, 80, 77.4, 'B', 77, 77, 89, 35, 89, 73.4, 'C', 'IPA', 81.7, 'IPA'),
(144, 'Dinda Suci Pratiwi', 'SMPN 2 AMPIBABO', 78, 90, 70, 76, 89, 80.6, 'B', 85, 90, 80, 80, 75, 82, 'B', 91, 96, 90, 94, 97, 93.6, 'A', 'IPA', 84.9, 'IPA'),
(145, 'Dirgawansa', 'SMPN 2 AMPIBABO', 86, 98, 94, 92, 97, 93.4, 'A', 83, 95, 90, 94, 96, 91.6, 'A', 82, 95, 92, 94, 97, 92, 'A', 'IPA', 80.7, 'IPA'),
(146, 'Dirsa', 'SMPN 2 AMPIBABO', 88, 89, 89, 90, 90, 89.2, 'A', 85, 85, 88, 87, 89, 86.8, 'A', 86, 88, 92, 94, 95, 91, 'A', 'IPS', 88, 'IPA'),
(147, 'Doni Setiawan', 'SMPN 2 AMPIBABO', 72, 75, 78, 77, 76, 75.6, 'B', 70, 71, 78, 78, 80, 75.4, 'B', 90, 86, 85, 88, 75, 84.8, 'B', 'IPA', 79.1, 'IPS'),
(148, 'Dwi Pujiati', 'SMPN 2 AMPIBABO', 82, 77, 80, 81, 82, 80.4, 'B', 81, 77, 84, 84, 99, 85, 'A', 75, 78, 88, 78, 80, 79.8, 'B', 'IPA', 83.4, 'IPS'),
(149, 'Dwi Sinta', 'SMPN 2 AMPIBABO', 75, 80, 77, 77, 80, 77.8, 'B', 79, 79, 79, 85, 79, 80.2, 'B', 77, 80, 80, 91, 95, 84.6, 'B', 'IPS', 81.7, 'IPS'),
(150, 'Edwin Aprilyalen G', 'SMPN 2 AMPIBABO', 95, 80, 80, 90, 81, 85.2, 'A', 70, 96, 88, 82, 90, 85.2, 'A', 89, 78, 96, 80, 84, 85.4, 'A', 'IPA', 77.5, 'IPS'),
(151, 'Een Fiqah Inayah Anwar', 'SMPN 2 AMPIBABO', 79, 80, 88, 82, 81, 82, 'B', 79, 82, 84, 85, 86, 83.2, 'B', 80, 82, 87, 85, 86, 84, 'B', 'IPA', 82.6, 'IPS'),
(152, 'Een Mawada', 'SMPN 2 AMPIBABO', 77, 88, 90, 91, 92, 87.6, 'A', 80, 85, 90, 91, 91, 87.4, 'A', 79, 89, 90, 91, 92, 88.2, 'A', 'IPA', 89.4, 'IPA'),
(153, 'Egy Saputra', 'MTs. ALKHAIRAAT AMPIBABO', 75, 85, 89, 89, 89, 85.4, 'A', 77, 85, 89, 89, 89, 85.8, 'A', 78, 86, 89, 90, 90, 86.6, 'A', 'IPS', 86.5, 'IPA'),
(154, 'Eka Devy Laksmini Putri', 'SMPN 3 AMPIBABO', 75, 85, 88, 98, 91, 87.4, 'A', 77, 88, 88, 96, 96, 89, 'A', 77, 85, 88, 98, 96, 88.8, 'A', 'IPA', 89.4, 'IPA'),
(155, 'Eka Rahmawati', 'MTs. ALKHAIRAAT AMPIBABO', 75, 80, 95, 92, 92, 86.8, 'A', 75, 80, 92, 90, 94, 86.2, 'A', 77, 85, 93, 95, 95, 89, 'A', 'IPS', 88.3, 'IPA'),
(156, 'Eka Riski', 'MTs. ALKHAIRAAT AMPIBABO', 77, 82, 89, 90, 91, 85.8, 'A', 75, 87, 88, 89, 90, 85.8, 'A', 78, 85, 93, 93, 93, 88.4, 'A', 'IPA', 87.3, 'IPA'),
(157, 'Eksel Aditiapura', 'MTs. ALKHAIRAAT AMPIBABO', 67, 88, 86, 88, 82, 82.2, 'B', 80, 84, 86, 86, 81, 83.4, 'B', 80, 86, 80, 81, 80, 81.4, 'B', 'IPA', 85.8, 'IPS'),
(158, 'Elisabet Sinaga', 'MTs. ALKHAIRAAT AMPIBABO', 77, 76, 77, 75, 80, 77, 'B', 82, 78, 78, 85, 82, 81, 'B', 76, 78, 79, 78, 80, 78.2, 'B', 'IPA', 80.9, 'IPS'),
(159, 'Elsa', 'SMP INSAN KAMIL', 64, 80, 83, 85, 80, 78.4, 'B', 69, 80, 81, 85, 80, 79, 'B', 72, 84, 89, 83, 80, 81.6, 'B', 'IPS', 82.2, 'IPS'),
(160, 'Elsy', 'MTs. ALKHAIRAAT SIDOLE', 60, 66, 80, 87, 84, 75.4, 'B', 77, 75, 87, 81, 87, 81.4, 'B', 66, 77, 80, 80, 89, 78.4, 'B', 'IPS', 82.2, 'IPS'),
(161, 'Emiliana Mustafa', 'MTs. ALKHAIRAAT SIDOLE', 75, 78, 80, 78, 80, 78.2, 'B', 75, 85, 84, 88, 81, 82.6, 'B', 84, 80, 93, 80, 86, 84.6, 'B', 'IPA', 83.2, 'IPA'),
(162, 'Emma', 'MTs. ALKHAIRAAT SIDOLE', 67, 75, 78, 80, 84, 76.8, 'B', 73, 85, 79, 88, 90, 83, 'B', 89, 82, 86, 90, 79, 85.2, 'A', 'IPA', 84.6, 'IPA'),
(163, 'Enjela Puspita Sari', 'SMP INSAN KAMIL', 90, 92, 92, 94, 95, 92.6, 'A', 90, 92, 94, 95, 96, 93.4, 'A', 90, 90, 92, 92, 94, 91.6, 'A', 'IPA', 92.8, 'IPA'),
(164, 'Erif Ramadhan', 'SMPN 3 AMPIBABO', 70, 80, 90, 91, 92, 84.6, 'B', 70, 75, 90, 91, 90, 83.2, 'B', 76, 85, 90, 91, 90, 86.4, 'A', 'IPS', 86.4, 'IPA'),
(165, 'Erlangga', 'SMPN 3 AMPIBABO', 79, 80, 79, 88, 91, 83.4, 'B', 76, 87, 77, 95, 98, 86.6, 'A', 83, 98, 82, 91, 87, 88.2, 'A', 'IPA', 87.5, 'IPA'),
(166, 'Erliza', 'SMPN 3 AMPIBABO', 79, 80, 80, 82, 82, 80.6, 'B', 83, 83, 84, 85, 85, 84, 'B', 80, 80, 84, 82, 82, 81.6, 'B', 'IPS', 83.7, 'IPS'),
(167, 'Evan Ramadhan', 'SMPN 3 AMPIBABO', 76, 82, 92, 93, 93, 87.2, 'A', 76, 85, 90, 92, 92, 87, 'A', 75, 87, 92, 94, 94, 88.4, 'A', 'IPS', 89.4, 'IPA'),
(168, 'Evayanti', 'MTs. ALKHAIRAAT AMPIBABO', 74, 80, 80, 77, 77, 77.6, 'B', 75, 85, 89, 91, 81, 84.2, 'B', 80, 87, 88, 79, 89, 84.6, 'B', 'IPS', 83.7, 'IPA'),
(169, 'Fadlan', 'SMPN 3 AMPIBABO', 70, 81, 80, 85, 82, 79.6, 'B', 85, 87, 78, 72, 90, 82.4, 'B', 75, 75, 85, 80, 80, 79, 'B', 'IPA', 82.3, 'IPS'),
(170, 'Fadlia', 'SMPN 3 AMPIBABO', 75, 75, 84, 75, 80, 77.8, 'B', 76, 83, 85, 88, 85, 83.4, 'B', 73, 71, 87, 80, 81, 78.4, 'B', 'IPS', 80.4, 'IPS'),
(171, 'Fagil', 'MTs. ALKHAIRAAT SIDOLE', 81, 82, 87, 87, 83, 84, 'B', 95, 82, 89, 88, 86, 88, 'A', 87, 83, 90, 93, 83, 87.2, 'A', 'IPS', 85.4, 'IPA'),
(172, 'Fahri', 'MTs. ALKHAIRAAT SIDOLE', 77, 82, 77, 79, 83, 79.6, 'B', 79, 85, 83, 95, 80, 84.4, 'B', 83, 94, 93, 95, 92, 91.4, 'A', 'IPA', 85.3, 'IPA'),
(173, 'Fairel Zaim', 'MTs. ALKHAIRAAT SIDOLE', 77, 86, 92, 93, 93, 88.2, 'A', 75, 85, 93, 94, 94, 88.2, 'A', 79, 86, 95, 95, 96, 90.2, 'A', 'IPS', 90.3, 'IPA'),
(174, 'Fajriatun', 'MTs. ALKHAIRAAT SIDOLE', 80, 92, 85, 91, 88, 87.2, 'A', 78, 89, 85, 95, 94, 88.2, 'A', 79, 89, 85, 90, 91, 86.8, 'A', 'IPA', 88.5, 'IPA'),
(175, 'Falen Pelumbu', 'MTs. ALKHAIRAAT SIDOLE', 76, 87, 90, 90, 92, 87, 'A', 75, 85, 91, 93, 95, 87.8, 'A', 77, 90, 91, 92, 94, 88.8, 'A', 'IPA', 88.3, 'IPA'),
(176, 'Fanisa Citra Ioslami', 'SMP SATAP AMPIBABO', 77, 87, 92, 92, 94, 88.4, 'A', 76, 85, 92, 93, 95, 88.2, 'A', 80, 95, 95, 97, 97, 92.8, 'A', 'IPS', 90.5, 'IPA'),
(177, 'Farel', 'SMP SATAP AMPIBABO', 75, 85, 90, 90, 90, 86, 'A', 78, 85, 90, 92, 94, 87.8, 'A', 76, 87, 90, 91, 94, 87.6, 'A', 'IPA', 88.3, 'IPA'),
(178, 'Farel Andika', 'SMP SATAP AMPIBABO', 78, 78, 77, 78, 84, 79, 'B', 87, 84, 81, 82, 87, 84.2, 'B', 77, 77, 78, 79, 79, 78, 'B', 'IPA', 82.5, 'IPS'),
(179, 'Farid Sukriadi', 'SMP SATAP AMPIBABO', 60, 80, 80, 82, 90, 78.4, 'B', 75, 80, 81, 86, 87, 81.8, 'B', 81, 84, 89, 91, 80, 85, 'A', 'IPA', 85.5, 'IPA'),
(180, 'Faris', 'SMP SATAP AMPIBABO', 62, 79, 78, 81, 77, 75.4, 'B', 70, 78, 76, 85, 90, 79.8, 'B', 72, 75, 80, 87, 79, 78.6, 'B', 'IPA', 81.3, 'IPS'),
(181, 'Fatima', 'SMP SATAP AMPIBABO', 92, 89, 94, 94, 97, 93.2, 'A', 88, 91, 95, 95, 96, 93, 'A', 89, 89, 92, 94, 94, 91.6, 'A', 'IPS', 92.9, 'IPA'),
(182, 'Fatmi', 'SMPN 2 AMPIBABO', 78, 79, 77, 76, 80, 78, 'B', 79, 80, 80, 80, 80, 79.8, 'B', 80, 83, 80, 96, 90, 85.8, 'A', 'IPS', 82.1, 'IPA'),
(183, 'Febbyanka Lamadi', 'SMPN 2 AMPIBABO', 85, 82, 82, 92, 94, 87, 'A', 87, 85, 86, 92, 86, 87.2, 'A', 87, 86, 84, 92, 88, 87.4, 'A', 'IPA', 86.6, 'IPA'),
(184, 'Febiana\nFikri', 'SMPN 2 AMPIBABO', 78, 85, 79, 90, 90, 84.4, 'B', 77, 85, 76, 94, 94, 85.2, 'A', 79, 87, 78, 96, 96, 87.2, 'A', 'IPA', 87.7, 'IPA'),
(185, 'Feby', 'SMPN 3 AMPIBABO', 77, 85, 80, 80, 88, 82, 'B', 71, 85, 90, 80, 88, 82.8, 'B', 88, 79, 90, 91, 78, 85.2, 'A', 'IPA', 85.4, 'IPA'),
(186, 'Fery', 'SMPN 3 AMPIBABO', 60, 87, 80, 85, 79, 78.2, 'B', 80, 77, 82, 89, 84, 82.4, 'B', 80, 80, 79, 80, 80, 79.8, 'B', 'IPS', 82.2, 'IPS'),
(187, 'Firga Ananda', 'SMPN 2 AMPIBABO', 75, 87, 90, 90, 90, 86.4, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 75, 87, 89, 89, 90, 86, 'A', 'IPA', 87.8, 'IPA'),
(188, 'Firman Ashar', 'SMPN 2 AMPIBABO', 75, 85, 91, 92, 94, 87.4, 'A', 74, 85, 91, 92, 95, 87.4, 'A', 77, 85, 90, 91, 94, 87.4, 'A', 'IPS', 89.3, 'IPA'),
(189, 'Fiska', 'SMPN 3 AMPIBABO', 74, 80, 83, 85, 86, 81.6, 'B', 82, 83, 84, 82, 82, 82.6, 'B', 85, 82, 84, 32, 82, 73, 'C', 'IPS', 84.1, 'IPS'),
(190, 'Fitra Azzahra', 'SMP SATAP AMPIBABO', 94, 96, 92, 93, 92, 93.4, 'A', 98, 92, 86, 95, 92, 92.6, 'A', 93, 96, 95, 94, 95, 94.6, 'A', 'IPS', 91.3, 'IPA'),
(191, 'Fitra Octa Satya', 'MTs. ALKHAIRAAT AMPIBABO', 60, 77, 85, 88, 76, 77.2, 'B', 69, 81, 73, 83, 85, 78.2, 'B', 74, 75, 87, 38, 79, 70.6, 'C', 'IPS', 81.6, 'IPS'),
(192, 'Fitra Ramadan', 'SMPN 1 AMPIBABO', 65, 75, 75, 30, 76, 64.2, 'C', 75, 80, 82, 85, 81, 80.6, 'B', 78, 78, 81, 32, 78, 69.4, 'C', 'IPA', 80.8, 'IPS'),
(193, 'Fitri', 'SMPN 1 AMPIBABO', 75, 85, 88, 89, 90, 85.4, 'A', 74, 85, 89, 90, 92, 86, 'A', 78, 85, 94, 94, 95, 89.2, 'A', 'IPA', 88.3, 'IPA'),
(194, 'Fitri', 'SMPN 1 AMPIBABO', 82, 85, 95, 90, 79, 86.2, 'A', 69, 85, 89, 88, 95, 85.2, 'A', 80, 78, 94, 91, 80, 86.25, 'A', 'IPA', 86.4, 'IPA'),
(195, 'Fitri Siti Marfu Ah', 'SMPN 1 AMPIBABO', 78, 88, 87, 90, 90, 86.6, 'A', 75, 85, 86, 94, 96, 87.2, 'A', 76, 87, 89, 96, 90, 87.6, 'A', 'IPS', 88.5, 'IPA'),
(196, 'Fitria Ningsih', 'SMPN 1 AMPIBABO', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 93.7, 'IPA'),
(197, 'Fitriani Anwar', 'MTs. ALKHAIRAAT SIDOLE', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 87.2, 'IPA'),
(198, 'Fitriya tunnisa', 'MTs. ALKHAIRAAT SIDOLE', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 87.4, 'IPA'),
(199, 'Fitriyana', 'MTs. ALKHAIRAAT SIDOLE', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 89.1, 'IPA'),
(200, 'Fitrotul Nur Azizah', 'SMPN 1 AMPIBABO', 80, 89, 82, 96, 80, 85.4, 'A', 90, 79, 78, 82, 82, 82.2, 'B', 82, 81, 78, 80, 77, 79.6, 'B', 'IPS', 82.8, 'IPA'),
(201, 'Fitry Ramadhani R. Ilimulla', 'SMPN 1 AMPIBABO', 60, 82, 75, 80, 78, 75, 'B', 70, 76, 80, 85, 88, 79.8, 'B', 79, 75, 80, 83, 78, 79, 'B', 'IPS', 80.9, 'IPS'),
(202, 'Fladira Rofjeck Saisab', 'SMPN 1 AMPIBABO', 80, 76, 93, 94, 95, 87.6, 'A', 78, 91, 93, 94, 95, 90.2, 'A', 84, 85, 92, 94, 95, 90, 'A', 'IPA', 90.6, 'IPA'),
(203, 'Frelyana Tibo', 'SMPN 1 AMPIBABO', 78, 86, 88, 89, 90, 86.2, 'A', 77, 87, 89, 89, 90, 86.4, 'A', 77, 87, 89, 90, 92, 87, 'A', 'IPA', 87.7, 'IPA'),
(204, 'Frengki Werokati', 'SMPN 1 AMPIBABO', 81, 90, 90, 95, 90, 89.2, 'A', 78, 80, 88, 85, 85, 83.2, 'B', 75, 85, 95, 90, 85, 86, 'A', 'IPS', 85.7, 'IPA'),
(205, 'Friza Yustika W. T', 'SMP INSAN KAMIL', 75, 85, 89, 90, 90, 85.8, 'A', 77, 84, 91, 92, 92, 87.2, 'A', 76, 85, 92, 94, 95, 88.4, 'A', 'IPS', 89.3, 'IPA'),
(206, 'Galang Rizaldi', 'SMP INSAN KAMIL', 65, 74, 80, 82, 90, 78.2, 'B', 73, 78, 68, 72, 80, 74.2, 'C', 75, 85, 85, 78, 82, 81, 'B', 'IPS', 81.7, 'IPS'),
(207, 'Gede Febrianata', 'SMP INSAN KAMIL', 75, 69, 97, 78, 86, 81, 'B', 77, 75, 71, 84, 74, 76.2, 'B', 80, 80, 85, 80, 75, 80, 'B', 'IPA', 88.4, 'IPA'),
(208, 'Gede Putu Jefri Gusnaedi', 'SMP INSAN KAMIL', 76, 85, 90, 91, 91, 86.6, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 76, 90, 92, 92, 94, 88.8, 'A', 'IPA', 88.3, 'IPA'),
(209, 'Gede Surya Mahatma Yasa', 'SMPN 1 AMPIBABO', 76, 86, 89, 89, 90, 86, 'A', 77, 85, 92, 92, 94, 88, 'A', 86, 86, 84, 90, 90, 87.2, 'A', 'IPA', 85.7, 'IPA'),
(210, 'Gilda Aura Rizika', 'MTs. ALKHAIRAAT AMPIBABO', 84, 82, 82, 89, 80, 83.4, 'B', 86, 84, 86, 89, 84, 85.8, 'A', 76, 76, 87, 89, 85, 82.6, 'B', 'IPS', 84.3, 'IPA'),
(211, 'Gita', 'SMPN 1 AMPIBABO', 80, 81, 81, 85, 86, 82.6, 'B', 85, 86, 89, 91, 92, 88.6, 'A', 77, 80, 72, 80, 90, 79.8, 'B', 'IPS', 86.2, 'IPA'),
(212, 'Gita Hanifa Ananda Nento', 'SMPN 1 AMPIBABO', 88, 85, 84, 82, 85, 84.8, 'B', 86, 80, 87, 79, 90, 84.4, 'B', 90, 80, 90, 91, 79, 86, 'A', 'IPS', 84.9, 'IPA'),
(213, 'Gita Wulandari Senen', 'SMPN 1 AMPIBABO', 69, 78, 95, 82, 90, 82.8, 'B', 76, 85, 77, 83, 84, 81, 'B', 76, 75, 79, 75, 80, 77, 'B', 'IPS', 80.7, 'IPS'),
(214, 'Gracela Claudia Kotika', 'MTs. ALKHAIRAAT AMPIBABO', 70, 78, 74, 82, 80, 76.8, 'B', 72, 72, 78, 77, 80, 75.8, 'B', 76, 86, 84, 83, 85, 82.8, 'B', 'IPA', 82.8, 'IPS'),
(215, 'Gusti Ayu Wismawati', 'SMPN 1 AMPIBABO', 77, 83, 79, 78, 82, 79.8, 'B', 79, 79, 79, 88, 89, 82.8, 'B', 80, 83, 86, 88, 90, 85.4, 'A', 'IPA', 83, 'IPA'),
(216, 'Haerul Hadriansyah D', 'SMPN 1 AMPIBABO', 78, 85, 80, 85, 83, 82.2, 'B', 78, 80, 75, 80, 84, 79.4, 'B', 85, 89, 90, 95, 89, 89.6, 'A', 'IPA', 86.2, 'IPA'),
(217, 'Haifi', 'SMPN 1 AMPIBABO', 79, 85, 86, 90, 82, 84.4, 'B', 80, 82, 83, 85, 84, 82.8, 'B', 85, 89, 92, 91, 80, 87.4, 'A', 'IPA', 86.4, 'IPA'),
(218, 'Haikal', 'SMPN 1 AMPIBABO', 76, 90, 85, 90, 81, 84.4, 'B', 80, 85, 86, 88, 91, 86, 'A', 82, 80, 92, 78, 80, 82.4, 'B', 'IPS', 84.2, 'IPA'),
(219, 'Haikal', 'SMPN 1 AMPIBABO', 79, 77, 79, 87, 88, 82, 'B', 79, 81, 91, 90, 86, 85.4, 'A', 75, 87, 83, 78, 90, 82.6, 'B', 'IPS', 84.8, 'IPA'),
(220, 'Hajria Wulan Sari', 'SMPN 1 AMPIBABO', 80, 78, 81, 82, 82, 80.6, 'B', 80, 87, 77, 86, 88, 83.6, 'B', 83, 80, 87, 94, 78, 84.4, 'B', 'IPS', 76.9, 'IPS'),
(221, 'Hanifa D.R. Lemba', 'SMPN 1 AMPIBABO', 60, 75, 75, 78, 81, 73.8, 'C', 68, 75, 75, 80, 80, 75.6, 'B', 68, 76, 76, 33, 78, 66.2, 'C', 'IPS', 66.7, 'IPS'),
(222, 'Hapsa Natul Ahyani', 'SMPN 1 AMPIBABO', 73, 76, 79, 86, 77, 78.2, 'B', 72, 80, 77, 79, 79, 77.4, 'B', 75, 87, 76, 76, 81, 79, 'B', 'IPS', 66.1, 'IPS'),
(223, 'Hawa', 'SMPN 1 AMPIBABO', 82, 82, 77, 74, 72, 77.4, 'B', 80, 82, 79, 76, 82, 79.8, 'B', 76, 75, 75, 78, 80, 76.8, 'B', 'IPS', 64.1, 'IPS'),
(224, 'Hazya Reina', 'SMPN 1 AMPIBABO', 60, 83, 81, 82, 79, 77, 'B', 75, 77, 75, 75, 82, 76.8, 'B', 68, 75, 77, 79, 78, 75.4, 'B', 'IPA', 76.9, 'IPA'),
(225, 'Henddy Inggriawan', 'SMPN 1 AMPIBABO', 89, 91, 87, 90, 85, 88.4, 'A', 82, 85, 91, 93, 94, 89, 'A', 87, 85, 92, 87, 84, 87, 'A', 'IPA', 73.8, 'IPA'),
(226, 'Herfenda', 'SMPN 1 AMPIBABO', 75, 75, 70, 70, 76, 73.2, 'C', 75, 75, 70, 70, 78, 73.6, 'C', 71, 75, 75, 75, 78, 74.8, 'C', 'IPA', 73.7, 'IPS'),
(227, 'Hesti', 'SMPN 1 AMPIBABO', 60, 78, 75, 75, 84, 74.4, 'C', 69, 77, 75, 80, 80, 76.2, 'B', 69, 75, 79, 33, 78, 66.8, 'C', 'IPS', 63.8, 'IPS'),
(228, 'Hilla Abizar', 'SMPN 1 AMPIBABO', 60, 72, 93, 87, 84, 79.2, 'B', 69, 75, 76, 80, 84, 76.8, 'B', 73, 78, 79, 78, 78, 77.2, 'B', 'IPA', 64.8, 'IPS'),
(229, 'Hiqma Rezkia', 'SMPN 1 AMPIBABO', 64, 67, 68, 70, 72, 68.2, 'C', 77, 80, 70, 71, 70, 73.6, 'C', 77, 65, 70, 75, 70, 71.4, 'C', 'IPA', 74.2, 'IPS'),
(230, 'I Gede Adi Saputra', 'SMPN 1 AMPIBABO', 60, 60, 70, 70, 80, 68, 'C', 68, 65, 70, 75, 85, 72.6, 'C', 65, 65, 72, 70, 77, 69.8, 'C', 'IPS', 71.3, 'IPS'),
(231, 'I Gede Jodi Pratama', 'SMPN 1 AMPIBABO', 60, 52, 70, 75, 75, 66.4, 'C', 70, 68, 80, 79, 84, 76.2, 'B', 70, 65, 75, 30, 82, 64.4, 'C', 'IPA', 77, 'IPS'),
(232, 'I Gede Suka Yasa', 'SMPN 1 AMPIBABO', 60, 68, 85, 80, 76, 73.8, 'C', 68, 78, 75, 83, 84, 77.6, 'B', 74, 75, 78, 79, 78, 76.8, 'B', 'IPS', 78.9, 'IPS'),
(233, 'I Ketut Ari Saputra', 'SMPN 1 AMPIBABO', 60, 75, 75, 78, 78, 73.2, 'C', 69, 75, 75, 78, 82, 75.8, 'B', 72, 78, 75, 81, 77, 76.6, 'B', 'IPS', 63.5, 'IPS'),
(234, 'I Ketut Aris Dinata', 'SMPN 1 AMPIBABO', 61, 66, 80, 75, 79, 72.2, 'C', 75, 79, 86, 77, 88, 81, 'B', 65, 71, 70, 82, 85, 74.6, 'C', 'IPS', 79, 'IPS'),
(235, 'I Md Sukayasa', 'SMPN 2 TANASITOLO', 50, 60, 68, 75, 77, 66, 'C', 60, 64, 70, 75, 88, 71.4, 'C', 65, 65, 70, 75, 72, 69.4, 'C', 'IPS', 60.7, 'IPS'),
(236, 'Ibnu Abdillah', 'SMPN 1 AMPIBABO', 60, 78, 78, 81, 75, 74.4, 'C', 69, 78, 75, 78, 87, 77.4, 'B', 68, 76, 78, 82, 79, 76.6, 'B', 'IPA', 78.4, 'IPS'),
(237, 'Ice Trisnawati', 'SMPN 1 AMPIBABO', 60, 75, 77, 82, 82, 75.2, 'B', 70, 80, 75, 75, 79, 75.8, 'B', 68, 75, 77, 78, 75, 74.6, 'C', 'IPA', 65, 'IPS'),
(238, 'Ifda Yanti', 'SMPN 1 AMPIBABO', 76, 70, 79, 78, 79, 76.4, 'B', 80, 75, 79, 79, 88, 80.2, 'B', 80, 75, 80, 80, 80, 79, 'B', 'IPA', 65.9, 'IPS'),
(239, 'Iftahul Khumainah', 'SMPN 1 AMPIBABO', 70, 70, 79, 75, 81, 75, 'B', 70, 73, 78, 75, 77, 74.6, 'C', 69, 75, 75, 72, 81, 74.4, 'C', 'IPS', 76.9, 'IPS'),
(240, 'Iftitah', 'SMPN 1 AMPIBABO', 60, 83, 80, 82, 78, 76.6, 'B', 69, 76, 79, 75, 81, 76, 'B', 68, 75, 79, 81, 78, 76.2, 'B', 'IPA', 78.5, 'IPS'),
(241, 'Ikbal', 'SMPN 1 AMPIBABO', 60, 75, 75, 75, 81, 73.2, 'C', 75, 80, 75, 80, 80, 78, 'B', 75, 76, 75, 77, 75, 75.6, 'B', 'IPS', 77.1, 'IPS'),
(242, 'Ikhwatul Khumainah', 'MTs. ALKHAIRAAT AMPIBABO', 69, 68, 70, 71, 75, 70.6, 'C', 76, 71, 72, 74, 74, 73.4, 'C', 70, 70, 75, 75, 85, 75, 'B', 'IPS', 75.5, 'IPS'),
(243, 'Ikmaldi Wahindi K. Manauwa', 'SMPN 1 AMPIBABO', 75, 76, 68, 75, 80, 74.8, 'C', 75, 75, 70, 77, 79, 75.2, 'B', 71, 76, 70, 75, 76, 73.6, 'C', 'IPA', 76.6, 'IPS'),
(244, 'Imam', 'SMPN 1 AMPIBABO', 80, 70, 75, 70, 78, 74.6, 'C', 63, 75, 78, 74, 78, 73.6, 'C', 75, 65, 75, 75, 80, 74, 'C', 'IPA', 76.5, 'IPS'),
(245, 'Imel', 'SMPN 1 AMPIBABO', 81, 81, 80, 75, 78, 79, 'B', 77, 79, 80, 78, 76, 78, 'B', 87, 83, 76, 71, 95, 82.4, 'B', 'IPA', 79.9, 'IPS'),
(246, 'Imel', 'SMPN 1 AMPIBABO', 60, 79, 78, 78, 81, 75.2, 'B', 69, 71, 76, 79, 84, 75.8, 'B', 68, 75, 75, 78, 78, 74.8, 'C', 'IPS', 77.1, 'IPS'),
(247, 'Indah', 'MTs. ALKHAIRAAT 1 PALU', 72, 75, 75, 76, 75, 74.6, 'C', 75, 75, 76, 76, 77, 75.8, 'B', 80, 76, 76, 79, 80, 78.2, 'B', 'IPA', 78.2, 'IPS'),
(248, 'Indi', 'SMPN 1 AMPIBABO', 60, 87, 85, 80, 82, 78.8, 'B', 69, 77, 77, 87, 82, 78.4, 'B', 71, 78, 78, 80, 79, 77.2, 'B', 'IPA', 66.4, 'IPS'),
(249, 'Indri', 'SMPN 1 AMPIBABO', 66, 75, 85, 79, 80, 77, 'B', 68, 75, 85, 80, 93, 80.2, 'B', 74, 75, 95, 90, 88, 84.4, 'B', 'IPA', 67.5, 'IPS'),
(250, 'Intan', 'SMPN 1 AMPIBABO', 68, 70, 67, 65, 75, 69, 'C', 65, 68, 66, 66, 77, 68.4, 'C', 66, 77, 66, 71, 76, 71.2, 'C', 'IPS', 72, 'IPS'),
(251, 'Intan Fatimatuzzahra', 'SMPN 3 AMPIBABO', 66, 77, 80, 78, 79, 76, 'B', 68, 77, 75, 83, 85, 77.6, 'B', 68, 76, 78, 31, 79, 66.4, 'C', 'IPS', 72, 'IPS'),
(252, 'Intan Nur Afani', 'SMPN 1 AMPIBABO', 71, 72, 73, 75, 70, 72.2, 'C', 70, 80, 80, 65, 79, 74.8, 'C', 72, 79, 79, 79, 77, 77.2, 'B', 'IPA', 79.1, 'IPS'),
(253, 'Iqra Fatika Sari Wange', 'SMPN 1 AMPIBABO', 65, 76, 66, 71, 82, 72, 'C', 70, 76, 73, 74, 86, 75.8, 'B', 72, 97, 89, 85, 86, 85.8, 'A', 'IPS', 77.3, 'IPA'),
(254, 'Iren Savira', 'SMP INSAN KAMIL', 66, 64, 70, 70, 80, 70, 'C', 64, 64, 72, 74, 87, 72.2, 'C', 72, 97, 89, 85, 86, 85.8, 'A', 'IPA', 78.6, 'IPS'),
(255, 'Ismul A\'Zam', 'SMPN 1 AMPIBABO', 60, 77, 60, 77, 75, 68, 'C', 68, 75, 69, 75, 85, 74.4, 'C', 73, 82, 72, 35, 83, 69, 'C', 'IPS', 78.9, 'IPS'),
(256, 'Izwar Kholiq Passanda', 'SMPN 1 AMPIBABO', 75, 75, 75, 78, 75, 75.6, 'B', 75, 75, 76, 75, 76, 75.4, 'B', 68, 75, 68, 75, 70, 71.2, 'C', 'IPA', 74.5, 'IPS'),
(257, 'Jabbar Rahma', 'MTs. ALKHAIRAAT AMPIBABO', 60, 80, 75, 75, 84, 74.75, 'C', 69, 75, 75, 78, 80, 75.4, 'B', 75, 76, 80, 75, 80, 77.2, 'B', 'IPA', 76.2, 'IPS'),
(258, 'Jek Ramadan', 'SMPN 4 TOILI', 63, 75, 95, 80, 79, 78.4, 'B', 68, 75, 78, 79, 80, 76, 'B', 72, 75, 75, 81, 75, 75.6, 'B', 'IPA', 78.9, 'IPS'),
(259, 'Jerry', 'SMPN 1 AMPIBABO', 60, 75, 80, 81, 81, 75.4, 'B', 70, 78, 79, 81, 81, 77.8, 'B', 70, 75, 79, 70, 76, 74, 'C', 'IPA', 66.7, 'IPS'),
(260, 'Jihan Farial', 'SMPN 1 AMPIBABO', 75, 76, 78, 76, 0, 61, 'C', 75, 76, 80, 77, 0, 61.6, 'C', 73, 80, 78, 34, 79, 68.8, 'C', 'IPS', 52.4, 'IPS'),
(261, 'Jonathan Prasetya Putra Pesoba', 'SMPN 1 AMPIBABO', 73, 71, 66, 75, 80, 73, 'C', 73, 79, 74, 80, 80, 77.2, 'B', 70, 73, 70, 75, 80, 73.6, 'C', 'IPS', 77.4, 'IPS'),
(262, 'Julia Safira', 'SMPN 1 AMPIBABO', 70, 78, 81, 79, 79, 77.4, 'B', 78, 80, 85, 83, 90, 83.2, 'B', 70, 75, 80, 85, 80, 78, 'B', 'IPS', 66.5, 'IPS'),
(263, 'Julian Agus Saputra', 'SMPN 1 AMPIBABO', 75, 78, 79, 79, 80, 78.2, 'B', 75, 78, 79, 79, 80, 78.2, 'B', 76, 78, 78, 80, 85, 79.4, 'B', 'IPS', 67.8, 'IPS'),
(264, 'Jusmawati', 'SMPN 1 AMPIBABO', 78, 89, 89, 90, 90, 87.2, 'A', 77, 85, 92, 93, 93, 88, 'A', 79, 87, 90, 94, 94, 88.8, 'A', 'IPA', 73.7, 'IPA'),
(265, 'Kartika', 'SMPN 3 AMPIBABO', 68, 76, 70, 76, 79, 73.8, 'C', 70, 75, 70, 73, 80, 73.6, 'C', 70, 80, 72, 76, 80, 75.6, 'B', 'IPA', 76.1, 'IPS'),
(266, 'Kenji Ardana\nKevin Andreas', 'SMPN 3 AMPIBABO', 68, 75, 75, 75, 80, 74.6, 'C', 65, 80, 76, 98, 75, 78.8, 'B', 65, 70, 75, 85, 78, 74.6, 'C', 'IPA', 77.1, 'IPS'),
(267, 'Khairun Nisa', 'SMPN 1 AMPIBABO', 60, 86, 75, 80, 85, 77.2, 'B', 76, 78, 77, 85, 87, 80.6, 'B', 71, 79, 81, 87, 80, 79.6, 'B', 'IPA', 79.4, 'IPS'),
(268, 'Khofifah', 'SMPN 3 AMPIBABO', 65, 70, 65, 77, 83, 72, 'C', 74, 68, 74, 83, 83, 76.4, 'B', 75, 75, 75, 86, 81, 78.4, 'B', 'IPA', 76.8, 'IPS'),
(269, 'khoirunnisa', 'MTs. ALKHAIRAAT AMPIBABO', 70, 74, 77, 82, 80, 76.6, 'B', 74, 80, 81, 81, 80, 79.2, 'B', 72, 70, 69, 75, 80, 73.2, 'C', 'IPS', 79.1, 'IPS'),
(270, 'Komang Meli Hartati', 'MTs. ALKHAIRAAT AMPIBABO', 68, 70, 70, 79, 84, 74.2, 'C', 75, 79, 75, 80, 85, 78.8, 'B', 79, 79, 79, 80, 90, 81.4, 'B', 'IPS', 63.8, 'IPS'),
(271, 'Lidia Alia Safitri', 'MTs. ALKHAIRAAT SINIU', 76, 80, 79, 85, 93, 82.6, 'B', 82, 80, 80, 79, 84, 81, 'B', 78, 83, 83, 80, 89, 82.6, 'B', 'IPS', 76.1, 'IPS'),
(272, 'Lidya Anna Tasya', 'SMPN 1 AMPIBABO', 71, 77, 78, 73, 78, 75.4, 'B', 75, 78, 82, 79, 80, 78.8, 'B', 79, 80, 75, 76, 85, 79, 'B', 'IPA', 78.2, 'IPS'),
(273, 'Lira Marsida', 'SMPN 1 AMPIBABO', 65, 65, 65, 67, 77, 67.8, 'C', 75, 70, 65, 70, 75, 71, 'C', 68, 68, 88, 30, 80, 66.8, 'C', 'IPA', 77.6, 'IPS'),
(274, 'Lisa Rosita', 'SMPN 1 AMPIBABO', 75, 65, 65, 75, 65, 69, 'C', 75, 65, 65, 65, 80, 70, 'C', 70, 75, 75, 75, 70, 73, 'C', 'IPS', 60.4, 'IPS'),
(275, 'Lujain', 'SMPN 1 AMPIBABO', 62, 85, 85, 85, 85, 80.4, 'B', 75, 88, 82, 83, 85, 82.6, 'B', 76, 78, 83, 85, 84, 81.2, 'B', 'IPS', 68.6, 'IPS'),
(276, 'M. Rizki ', 'SMPN 1 AMPIBABO', 60, 75, 75, 76, 78, 72.8, 'C', 69, 78, 76, 79, 81, 76.6, 'B', 73, 75, 75, 79, 75, 75.4, 'B', 'IPS', 78.5, 'IPS'),
(277, 'Madan Setiawan', 'SMPN 1 AMPIBABO', 76, 79, 70, 76, 75, 75.2, 'B', 75, 76, 79, 81, 78, 77.8, 'B', 75, 77, 81, 79, 78, 78, 'B', 'IPS', 77.6, 'IPS'),
(278, 'Magfirah', 'SMPN 1 AMPIBABO', 70, 76, 80, 78, 75, 75.8, 'B', 70, 80, 80, 79, 85, 78.8, 'B', 70, 78, 78, 80, 76, 76.4, 'B', 'IPS', 64.3, 'IPS'),
(279, 'Mario', 'MTs. MADINATUL ILMI', 65, 86, 85, 85, 76, 79.4, 'B', 69, 83, 78, 85, 90, 81, 'B', 78, 79, 84, 85, 79, 81, 'B', 'IPS', 68.2, 'IPS'),
(280, 'Marla Ramadhani', 'SMPN 1 AMPIBABO', 70, 81, 78, 79, 91, 79.8, 'B', 75, 78, 74, 79, 76, 76.4, 'B', 73, 78, 76, 84, 86, 79.4, 'B', 'IPS', 64.9, 'IPS'),
(281, 'Marsanda', 'SMPN 1 AMPIBABO', 60, 75, 78, 85, 75, 74.6, 'C', 70, 75, 80, 85, 86, 79.2, 'B', 73, 80, 78, 81, 78, 78, 'B', 'IPS', 77.9, 'IPS'),
(282, 'Ma\'Ruf Hafidz', 'SMPN 1 AMPIBABO', 75, 85, 76, 76, 78, 78, 'B', 75, 85, 99, 90, 90, 87.8, 'A', 75, 85, 88, 90, 86, 84.8, 'B', 'IPA', 79.8, 'IPS'),
(283, 'Maryana A. Larabuka', 'SMPN 1 AMPIBABO', 79, 78, 80, 80, 84, 80.2, 'B', 75, 78, 80, 80, 85, 79.6, 'B', 80, 90, 80, 78, 85, 82.6, 'B', 'IPS', 81.5, 'IPA'),
(284, 'Mawar', 'SMPN 1 AMPIBABO', 75, 81, 80, 80, 82, 79.6, 'B', 70, 82, 76, 79, 80, 77.4, 'B', 77, 77, 89, 35, 89, 73.4, 'C', 'IPA', 81.7, 'IPA'),
(285, 'Maya', 'SMPN 2 AMPIBABO', 78, 90, 70, 76, 89, 80.6, 'B', 85, 90, 80, 80, 75, 82, 'B', 91, 96, 90, 94, 97, 93.6, 'A', 'IPA', 84.9, 'IPA'),
(286, 'Merliovin Sumarantika', 'SMPN 1 AMPIBABO', 86, 98, 94, 92, 97, 93.4, 'A', 83, 95, 90, 94, 96, 91.6, 'A', 82, 95, 92, 94, 97, 92, 'A', 'IPA', 80.7, 'IPA'),
(287, 'Mifta Huljana S.', 'SMPN 1 AMPIBABO', 88, 89, 89, 90, 90, 89.2, 'A', 85, 85, 88, 87, 89, 86.8, 'A', 86, 88, 92, 94, 95, 91, 'A', 'IPS', 88, 'IPA'),
(288, 'Mirawati J Laburunga', 'SMPN 1 AMPIBABO', 72, 75, 78, 77, 76, 75.6, 'B', 70, 71, 78, 78, 80, 75.4, 'B', 90, 86, 85, 88, 75, 84.8, 'B', 'IPA', 79.1, 'IPS'),
(289, 'Moh. Abdul Rakib', 'SMPN 1 AMPIBABO', 82, 77, 80, 81, 82, 80.4, 'B', 81, 77, 84, 84, 99, 85, 'A', 75, 78, 88, 78, 80, 79.8, 'B', 'IPA', 83.4, 'IPS'),
(290, 'Moh. Adhib', 'SMPN 1 AMPIBABO', 75, 80, 77, 77, 80, 77.8, 'B', 79, 79, 79, 85, 79, 80.2, 'B', 77, 80, 80, 91, 95, 84.6, 'B', 'IPS', 81.7, 'IPS'),
(291, 'Moh. Adrian', 'MTs. WALI SONGO PUTRA', 95, 80, 80, 90, 81, 85.2, 'A', 70, 96, 88, 82, 90, 85.2, 'A', 89, 78, 96, 80, 84, 85.4, 'A', 'IPA', 77.5, 'IPS'),
(292, 'Moh. Afriansyah', 'SMPN 1 AMPIBABO', 79, 80, 88, 82, 81, 82, 'B', 79, 82, 84, 85, 86, 83.2, 'B', 80, 82, 87, 85, 86, 84, 'B', 'IPA', 82.6, 'IPS'),
(293, 'Moh. Alif Sabil', 'SMPN 1 AMPIBABO', 77, 88, 90, 91, 92, 87.6, 'A', 80, 85, 90, 91, 91, 87.4, 'A', 79, 89, 90, 91, 92, 88.2, 'A', 'IPA', 89.4, 'IPA'),
(294, 'Moh. Arif', 'SMPN 1 AMPIBABO', 75, 85, 89, 89, 89, 85.4, 'A', 77, 85, 89, 89, 89, 85.8, 'A', 78, 86, 89, 90, 90, 86.6, 'A', 'IPS', 86.5, 'IPA'),
(295, 'Moh. Azis', 'SMPN 1 AMPIBABO', 75, 85, 88, 98, 91, 87.4, 'A', 77, 88, 88, 96, 96, 89, 'A', 77, 85, 88, 98, 96, 88.8, 'A', 'IPA', 89.4, 'IPA'),
(296, 'Moh. Chiro Marselino', 'SMPN 4 TANANTOVEA', 75, 80, 95, 92, 92, 86.8, 'A', 75, 80, 92, 90, 94, 86.2, 'A', 77, 85, 93, 95, 95, 89, 'A', 'IPS', 88.3, 'IPA'),
(297, 'Moh. Dudek', 'SMPN 1 AMPIBABO', 77, 82, 89, 90, 91, 85.8, 'A', 75, 87, 88, 89, 90, 85.8, 'A', 78, 85, 93, 93, 93, 88.4, 'A', 'IPA', 87.3, 'IPA'),
(298, 'Moh. Fahri Hidayat', 'SMPN 1 AMPIBABO', 67, 88, 86, 88, 82, 82.2, 'B', 80, 84, 86, 86, 81, 83.4, 'B', 80, 86, 80, 81, 80, 81.4, 'B', 'IPA', 85.8, 'IPS'),
(299, 'Moh. Faizal', 'SMPN 1 AMPIBABO', 77, 76, 77, 75, 80, 77, 'B', 82, 78, 78, 85, 82, 81, 'B', 76, 78, 79, 78, 80, 78.2, 'B', 'IPA', 80.9, 'IPS'),
(300, 'Moh. Farel', 'SMPN 1 AMPIBABO', 64, 80, 83, 85, 80, 78.4, 'B', 69, 80, 81, 85, 80, 79, 'B', 72, 84, 89, 83, 80, 81.6, 'B', 'IPS', 82.2, 'IPS'),
(301, 'Moh. Firdaus', 'SMP INSAN KAMIL', 60, 66, 80, 87, 84, 75.4, 'B', 77, 75, 87, 81, 87, 81.4, 'B', 66, 77, 80, 80, 89, 78.4, 'B', 'IPS', 82.2, 'IPS'),
(302, 'Moh. Fitra', 'SMPN 1 AMPIBABO', 75, 78, 80, 78, 80, 78.2, 'B', 75, 85, 84, 88, 81, 82.6, 'B', 84, 80, 93, 80, 86, 84.6, 'B', 'IPA', 83.2, 'IPA'),
(303, 'Moh. Hendri Fermana', 'SMPN 1 AMPIBABO', 67, 75, 78, 80, 84, 76.8, 'B', 73, 85, 79, 88, 90, 83, 'B', 89, 82, 86, 90, 79, 85.2, 'A', 'IPA', 84.6, 'IPA'),
(304, 'Moh. Ihsan', 'MTs. ALKHAIRAAT SIDOLE', 90, 92, 92, 94, 95, 92.6, 'A', 90, 92, 94, 95, 96, 93.4, 'A', 90, 90, 92, 92, 94, 91.6, 'A', 'IPA', 92.8, 'IPA'),
(305, 'Moh. Ikhsan', 'SMPN 17 PALU', 70, 80, 90, 91, 92, 84.6, 'B', 70, 75, 90, 91, 90, 83.2, 'B', 76, 85, 90, 91, 90, 86.4, 'A', 'IPS', 86.4, 'IPA'),
(306, 'Moh. Indra S. Bunai', 'SMPN 1 AMPIBABO', 79, 80, 79, 88, 91, 83.4, 'B', 76, 87, 77, 95, 98, 86.6, 'A', 83, 98, 82, 91, 87, 88.2, 'A', 'IPA', 87.5, 'IPA'),
(307, 'Moh. Ishak', 'SMP INSAN KAMIL', 79, 80, 80, 82, 82, 80.6, 'B', 83, 83, 84, 85, 85, 84, 'B', 80, 80, 84, 82, 82, 81.6, 'B', 'IPS', 83.7, 'IPS'),
(308, 'Moh. Nabil', 'SMPN 1 AMPIBABO', 76, 82, 92, 93, 93, 87.2, 'A', 76, 85, 90, 92, 92, 87, 'A', 75, 87, 92, 94, 94, 88.4, 'A', 'IPS', 89.4, 'IPA'),
(309, 'Moh. Pahri', 'MTs. ALKHAIRAAT TOWERA', 74, 80, 80, 77, 77, 77.6, 'B', 75, 85, 89, 91, 81, 84.2, 'B', 80, 87, 88, 79, 89, 84.6, 'B', 'IPS', 83.7, 'IPA'),
(310, 'Moh. Radith', 'SMP SATAP AMPIBABO', 70, 81, 80, 85, 82, 79.6, 'B', 85, 87, 78, 72, 90, 82.4, 'B', 75, 75, 85, 80, 80, 79, 'B', 'IPA', 82.3, 'IPS'),
(311, 'Moh. Rafli', 'MTs. ALKHAIRAAT AMPIBABO', 75, 75, 84, 75, 80, 77.8, 'B', 76, 83, 85, 88, 85, 83.4, 'B', 73, 71, 87, 80, 81, 78.4, 'B', 'IPS', 80.4, 'IPS'),
(312, 'Moh. Rafli Raman', 'SMPN 1 AMPIBABO', 81, 82, 87, 87, 83, 84, 'B', 95, 82, 89, 88, 86, 88, 'A', 87, 83, 90, 93, 83, 87.2, 'A', 'IPS', 85.4, 'IPA'),
(313, 'Moh. Rasya Pratama', 'SMPN 1 AMPIBABO', 77, 82, 77, 79, 83, 79.6, 'B', 79, 85, 83, 95, 80, 84.4, 'B', 83, 94, 93, 95, 92, 91.4, 'A', 'IPA', 85.3, 'IPA'),
(314, 'Moh. Renaldi', 'SMPN 1 AMPIBABO', 77, 86, 92, 93, 93, 88.2, 'A', 75, 85, 93, 94, 94, 88.2, 'A', 79, 86, 95, 95, 96, 90.2, 'A', 'IPS', 90.3, 'IPA'),
(315, 'Moh. Revan Liong', 'SMPN 1 AMPIBABO', 80, 92, 85, 91, 88, 87.2, 'A', 78, 89, 85, 95, 94, 88.2, 'A', 79, 89, 85, 90, 91, 86.8, 'A', 'IPA', 88.5, 'IPA'),
(316, 'Moh. Ridwan', 'SMPN 1 AMPIBABO', 76, 87, 90, 90, 92, 87, 'A', 75, 85, 91, 93, 95, 87.8, 'A', 77, 90, 91, 92, 94, 88.8, 'A', 'IPA', 88.3, 'IPA'),
(317, 'Moh. Rifat', 'SMPN 1 AMPIBABO', 77, 87, 92, 92, 94, 88.4, 'A', 76, 85, 92, 93, 95, 88.2, 'A', 80, 95, 95, 97, 97, 92.8, 'A', 'IPS', 90.5, 'IPA'),
(318, 'Moh. Safwan', 'SMPN 2 AMPIBABO', 75, 85, 90, 90, 90, 86, 'A', 78, 85, 90, 92, 94, 87.8, 'A', 76, 87, 90, 91, 94, 87.6, 'A', 'IPA', 88.3, 'IPA'),
(319, 'Moh. Saifullah', 'MTs. ALKHAIRAAT TINOMBO', 78, 78, 77, 78, 84, 79, 'B', 87, 84, 81, 82, 87, 84.2, 'B', 77, 77, 78, 79, 79, 78, 'B', 'IPA', 82.5, 'IPS'),
(320, 'Moh. Salim', 'SMPN 1 AMPIBABO', 60, 80, 80, 82, 90, 78.4, 'B', 75, 80, 81, 86, 87, 81.8, 'B', 81, 84, 89, 91, 80, 85, 'A', 'IPA', 85.5, 'IPA'),
(321, 'Moh. Wilan', 'SMPN 1 AMPIBABO', 62, 79, 78, 81, 77, 75.4, 'B', 70, 78, 76, 85, 90, 79.8, 'B', 72, 75, 80, 87, 79, 78.6, 'B', 'IPA', 81.3, 'IPS'),
(322, 'Moh. Yusman', 'SMPN 1 AMPIBABO', 92, 89, 94, 94, 97, 93.2, 'A', 88, 91, 95, 95, 96, 93, 'A', 89, 89, 92, 94, 94, 91.6, 'A', 'IPS', 92.9, 'IPA');
INSERT INTO `tb_training` (`id`, `nama_siswa`, `nama_sekolah`, `mtk_1`, `mtk_2`, `mtk_3`, `mtk_4`, `mtk_5`, `mtk_rata`, `mtk_grade`, `ipa_1`, `ipa_2`, `ipa_3`, `ipa_4`, `ipa_5`, `ipa_rata`, `ipa_grade`, `ips_1`, `ips_2`, `ips_3`, `ips_4`, `ips_5`, `ips_rata`, `ips_grade`, `minat`, `nilai_tes`, `hasil`) VALUES
(323, 'Moh. Yusuf', 'MTs. ALKHAIRAAT AMPIBABO', 78, 79, 77, 76, 80, 78, 'B', 79, 80, 80, 80, 80, 79.8, 'B', 80, 83, 80, 96, 90, 85.8, 'A', 'IPS', 82.1, 'IPA'),
(324, 'Moh. Zirliyansyah', 'MTs. ALKHAIRAAT AMPIBABO', 85, 82, 82, 92, 94, 87, 'A', 87, 85, 86, 92, 86, 87.2, 'A', 87, 86, 84, 92, 88, 87.4, 'A', 'IPA', 86.6, 'IPA'),
(325, 'Moh.Akbar', 'SMPN 3 AMPIBABO', 78, 85, 79, 90, 90, 84.4, 'B', 77, 85, 76, 94, 94, 85.2, 'A', 79, 87, 78, 96, 96, 87.2, 'A', 'IPA', 87.7, 'IPA'),
(326, 'Moh.Akbar Hansen', 'MTs. ALKHAIRAAT AMPIBABO', 77, 85, 80, 80, 88, 82, 'B', 71, 85, 90, 80, 88, 82.8, 'B', 88, 79, 90, 91, 78, 85.2, 'A', 'IPA', 85.4, 'IPA'),
(327, 'Moh.Alwi', 'MTs. ALKHAIRAAT AMPIBABO', 60, 87, 80, 85, 79, 78.2, 'B', 80, 77, 82, 89, 84, 82.4, 'B', 80, 80, 79, 80, 80, 79.8, 'B', 'IPS', 82.2, 'IPS'),
(328, 'Moh.Geral Pramudya\nMohammad Abdan Syukran', 'SMPN 2 AMPIBABO', 75, 87, 90, 90, 90, 86.4, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 75, 87, 89, 89, 90, 86, 'A', 'IPA', 87.8, 'IPA'),
(329, 'Mohamad Reyhan Rukli', 'SMPN 2 AMPIBABO', 75, 85, 91, 92, 94, 87.4, 'A', 74, 85, 91, 92, 95, 87.4, 'A', 77, 85, 90, 91, 94, 87.4, 'A', 'IPS', 89.3, 'IPA'),
(330, 'Mohammad Rezky', 'SMPN 2 AMPIBABO', 74, 80, 83, 85, 86, 81.6, 'B', 82, 83, 84, 82, 82, 82.6, 'B', 85, 82, 84, 32, 82, 73, 'C', 'IPS', 84.1, 'IPS'),
(331, 'Mohammad Rizki', 'SATAPN 1 TORIBULU', 94, 96, 92, 93, 92, 93.4, 'A', 98, 92, 86, 95, 92, 92.6, 'A', 93, 96, 95, 94, 95, 94.6, 'A', 'IPS', 91.3, 'IPA'),
(332, 'Muh. Ariel', 'SATAPN 1 TORIBULU', 60, 77, 85, 88, 76, 77.2, 'B', 69, 81, 73, 83, 85, 78.2, 'B', 74, 75, 87, 38, 79, 70.6, 'C', 'IPS', 81.6, 'IPS'),
(333, 'Muh. Panji Raditya', 'SATAPN 1 TORIBULU', 65, 75, 75, 30, 76, 64.2, 'C', 75, 80, 82, 85, 81, 80.6, 'B', 78, 78, 81, 32, 78, 69.4, 'C', 'IPA', 80.8, 'IPS'),
(334, 'Muhammad Ditmar', 'SMPN 2 LARIANG', 75, 85, 88, 89, 90, 85.4, 'A', 74, 85, 89, 90, 92, 86, 'A', 78, 85, 94, 94, 95, 89.2, 'A', 'IPA', 88.3, 'IPA'),
(335, 'Muhammad Fadil', 'SMPN 2 AMPIBABO', 82, 85, 95, 90, 79, 86.2, 'A', 69, 85, 89, 88, 95, 85.2, 'A', 80, 78, 94, 91, 80, 86.25, 'A', 'IPA', 86.4, 'IPA'),
(336, 'Muhammad Imam Afandi', 'SMPN 2 AMPIBABO', 78, 88, 87, 90, 90, 86.6, 'A', 75, 85, 86, 94, 96, 87.2, 'A', 76, 87, 89, 96, 90, 87.6, 'A', 'IPS', 88.5, 'IPA'),
(337, 'Muhammad Isnan', 'SATAPN 1 TORIBULU', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 93.7, 'IPA'),
(338, 'Muhammad Joko Iswanto', 'SMPN 2 AMPIBABO', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 87.2, 'IPA'),
(339, 'Muhammad Jumarlan', 'SATAPN 1 TORIBULU', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 87.4, 'IPA'),
(340, 'Muhammad Syakieb', 'SATAPN 1 TORIBULU', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 89.1, 'IPA'),
(341, 'Muhammad Zein Hardiansyah', 'SATAPN 1 TORIBULU', 80, 89, 82, 96, 80, 85.4, 'A', 90, 79, 78, 82, 82, 82.2, 'B', 82, 81, 78, 80, 77, 79.6, 'B', 'IPS', 82.8, 'IPA'),
(342, 'Muhammat Revan', 'SATAPN 1 TORIBULU', 60, 82, 75, 80, 78, 75, 'B', 70, 76, 80, 85, 88, 79.8, 'B', 79, 75, 80, 83, 78, 79, 'B', 'IPS', 80.9, 'IPS'),
(343, 'Munaldi Yasit Ridho', 'SATAPN 1 TORIBULU', 80, 76, 93, 94, 95, 87.6, 'A', 78, 91, 93, 94, 95, 90.2, 'A', 84, 85, 92, 94, 95, 90, 'A', 'IPA', 90.6, 'IPA'),
(344, 'Musdalifah Indah', 'SATAPN 1 TORIBULU', 78, 86, 88, 89, 90, 86.2, 'A', 77, 87, 89, 89, 90, 86.4, 'A', 77, 87, 89, 90, 92, 87, 'A', 'IPA', 87.7, 'IPA'),
(345, 'Nabil', 'SMPN 2 AMPIBABO', 81, 90, 90, 95, 90, 89.2, 'A', 78, 80, 88, 85, 85, 83.2, 'B', 75, 85, 95, 90, 85, 86, 'A', 'IPS', 85.7, 'IPA'),
(346, 'Nabila', 'SMPN 2 AMPIBABO', 75, 85, 89, 90, 90, 85.8, 'A', 77, 84, 91, 92, 92, 87.2, 'A', 76, 85, 92, 94, 95, 88.4, 'A', 'IPS', 89.3, 'IPA'),
(347, 'Nabila N', 'SMPN 2 AMPIBABO', 65, 74, 80, 82, 90, 78.2, 'B', 73, 78, 68, 72, 80, 74.2, 'C', 75, 85, 85, 78, 82, 81, 'B', 'IPS', 81.7, 'IPS'),
(348, 'Nadia', 'SMPN 2 AMPIBABO', 75, 69, 97, 78, 86, 81, 'B', 77, 75, 71, 84, 74, 76.2, 'B', 80, 80, 85, 80, 75, 80, 'B', 'IPA', 88.4, 'IPA'),
(349, 'Nadya Kartika Astri', 'SMPN 2 AMPIBABO', 76, 85, 90, 91, 91, 86.6, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 76, 90, 92, 92, 94, 88.8, 'A', 'IPA', 88.3, 'IPA'),
(350, 'Naila', 'SMPN 2 AMPIBABO', 76, 86, 89, 89, 90, 86, 'A', 77, 85, 92, 92, 94, 88, 'A', 86, 86, 84, 90, 90, 87.2, 'A', 'IPA', 85.7, 'IPA'),
(351, 'Na\'Ima', 'SMPN 2 AMPIBABO', 84, 82, 82, 89, 80, 83.4, 'B', 86, 84, 86, 89, 84, 85.8, 'A', 76, 76, 87, 89, 85, 82.6, 'B', 'IPS', 84.3, 'IPA'),
(352, 'Najwa Syifa Djakatara ', 'SMPN 2 AMPIBABO', 80, 81, 81, 85, 86, 82.6, 'B', 85, 86, 89, 91, 92, 88.6, 'A', 77, 80, 72, 80, 90, 79.8, 'B', 'IPS', 86.2, 'IPA'),
(353, 'Nanda Ayu Safira', 'SMPN 2 AMPIBABO', 88, 85, 84, 82, 85, 84.8, 'B', 86, 80, 87, 79, 90, 84.4, 'B', 90, 80, 90, 91, 79, 86, 'A', 'IPS', 84.9, 'IPA'),
(354, 'Nelvarina', 'SMPN 2 AMPIBABO', 69, 78, 95, 82, 90, 82.8, 'B', 76, 85, 77, 83, 84, 81, 'B', 76, 75, 79, 75, 80, 77, 'B', 'IPS', 80.7, 'IPS'),
(355, 'Ni Kadek Yuni Pelisa', 'SMPN 2 AMPIBABO', 70, 78, 74, 82, 80, 76.8, 'B', 72, 72, 78, 77, 80, 75.8, 'B', 76, 86, 84, 83, 85, 82.8, 'B', 'IPA', 82.8, 'IPS'),
(356, 'Ni Komang Erna Suriani', 'SMPN 2 AMPIBABO', 77, 83, 79, 78, 82, 79.8, 'B', 79, 79, 79, 88, 89, 82.8, 'B', 80, 83, 86, 88, 90, 85.4, 'A', 'IPA', 83, 'IPA'),
(357, 'Ni Komang Murdiani', 'SMPN 2 AMPIBABO', 78, 85, 80, 85, 83, 82.2, 'B', 78, 80, 75, 80, 84, 79.4, 'B', 85, 89, 90, 95, 89, 89.6, 'A', 'IPA', 86.2, 'IPA'),
(358, 'Ni Komang Yana Hucchi', 'SMPN 2 AMPIBABO', 79, 85, 86, 90, 82, 84.4, 'B', 80, 82, 83, 85, 84, 82.8, 'B', 85, 89, 92, 91, 80, 87.4, 'A', 'IPA', 86.4, 'IPA'),
(359, 'Ni Luh Yudi Yastira', 'SMPN 2 AMPIBABO', 76, 90, 85, 90, 81, 84.4, 'B', 80, 85, 86, 88, 91, 86, 'A', 82, 80, 92, 78, 80, 82.4, 'B', 'IPS', 84.2, 'IPA'),
(360, 'Ni Made Jeniarti', 'SMPN 1 TORIBULU', 79, 77, 79, 87, 88, 82, 'B', 79, 81, 91, 90, 86, 85.4, 'A', 75, 87, 83, 78, 90, 82.6, 'B', 'IPS', 84.8, 'IPA'),
(361, 'Ni Nyoman Semiani', 'SMPN 1 TORIBULU', 80, 78, 81, 82, 82, 80.6, 'B', 80, 87, 77, 86, 88, 83.6, 'B', 83, 80, 87, 94, 78, 84.4, 'B', 'IPS', 76.9, 'IPS'),
(362, 'Nia Yuniasih', 'SMPN 1 TORIBULU', 60, 75, 75, 78, 81, 73.8, 'C', 68, 75, 75, 80, 80, 75.6, 'B', 68, 76, 76, 33, 78, 66.2, 'C', 'IPS', 66.7, 'IPS'),
(363, 'Niar', 'SMPN 1 TORIBULU', 73, 76, 79, 86, 77, 78.2, 'B', 72, 80, 77, 79, 79, 77.4, 'B', 75, 87, 76, 76, 81, 79, 'B', 'IPS', 66.1, 'IPS'),
(364, 'Nifti Oktafiana', 'SMPN 1 TORIBULU', 82, 82, 77, 74, 72, 77.4, 'B', 80, 82, 79, 76, 82, 79.8, 'B', 76, 75, 75, 78, 80, 76.8, 'B', 'IPS', 64.1, 'IPS'),
(365, 'Nila ', 'SMPN 1 TORIBULU', 60, 83, 81, 82, 79, 77, 'B', 75, 77, 75, 75, 82, 76.8, 'B', 68, 75, 77, 79, 78, 75.4, 'B', 'IPA', 76.9, 'IPA'),
(366, 'Nilu Putu Eka Suryasih', 'SMPN 1 TORIBULU', 89, 91, 87, 90, 85, 88.4, 'A', 82, 85, 91, 93, 94, 89, 'A', 87, 85, 92, 87, 84, 87, 'A', 'IPA', 73.8, 'IPA'),
(367, 'Nimas', 'SMPN 1 TORIBULU', 75, 75, 70, 70, 76, 73.2, 'C', 75, 75, 70, 70, 78, 73.6, 'C', 71, 75, 75, 75, 78, 74.8, 'C', 'IPA', 73.7, 'IPS'),
(368, 'Nina', 'SMPN 1 TORIBULU', 60, 78, 75, 75, 84, 74.4, 'C', 69, 77, 75, 80, 80, 76.2, 'B', 69, 75, 79, 33, 78, 66.8, 'C', 'IPS', 63.8, 'IPS'),
(369, 'Nirmala Sari', 'SMPN 1 TORIBULU', 60, 72, 93, 87, 84, 79.2, 'B', 69, 75, 76, 80, 84, 76.8, 'B', 73, 78, 79, 78, 78, 77.2, 'B', 'IPA', 64.8, 'IPS'),
(370, 'Nofita', 'SMPN 2 AMPIBABO', 64, 67, 68, 70, 72, 68.2, 'C', 77, 80, 70, 71, 70, 73.6, 'C', 77, 65, 70, 75, 70, 71.4, 'C', 'IPA', 74.2, 'IPS'),
(371, 'Noval', 'SMPN 1 TORIBULU', 60, 60, 70, 70, 80, 68, 'C', 68, 65, 70, 75, 85, 72.6, 'C', 65, 65, 72, 70, 77, 69.8, 'C', 'IPS', 71.3, 'IPS'),
(372, 'Novan Kristianto', 'SMP MUHAMMADIYAH PALU', 60, 52, 70, 75, 75, 66.4, 'C', 70, 68, 80, 79, 84, 76.2, 'B', 70, 65, 75, 30, 82, 64.4, 'C', 'IPA', 77, 'IPS'),
(373, 'Numran Wahdini', 'SMPN 2 AMPIBABO', 60, 68, 85, 80, 76, 73.8, 'C', 68, 78, 75, 83, 84, 77.6, 'B', 74, 75, 78, 79, 78, 76.8, 'B', 'IPS', 78.9, 'IPS'),
(374, 'Nur Afni', 'SMPN 2 AMPIBABO', 60, 75, 75, 78, 78, 73.2, 'C', 69, 75, 75, 78, 82, 75.8, 'B', 72, 78, 75, 81, 77, 76.6, 'B', 'IPS', 63.5, 'IPS'),
(375, 'Nur Ainun', 'SMPN 2 AMPIBABO', 61, 66, 80, 75, 79, 72.2, 'C', 75, 79, 86, 77, 88, 81, 'B', 65, 71, 70, 82, 85, 74.6, 'C', 'IPS', 79, 'IPS'),
(376, 'Nur Azizah', 'SMPN 3 AMPIBABO', 50, 60, 68, 75, 77, 66, 'C', 60, 64, 70, 75, 88, 71.4, 'C', 65, 65, 70, 75, 72, 69.4, 'C', 'IPS', 60.7, 'IPS'),
(377, 'Nur Cahyani', 'SMPN 3 AMPIBABO', 60, 78, 78, 81, 75, 74.4, 'C', 69, 78, 75, 78, 87, 77.4, 'B', 68, 76, 78, 82, 79, 76.6, 'B', 'IPA', 78.4, 'IPS'),
(378, 'Nur Hidayat', 'SMPN 1 TORIBULU', 60, 75, 77, 82, 82, 75.2, 'B', 70, 80, 75, 75, 79, 75.8, 'B', 68, 75, 77, 78, 75, 74.6, 'C', 'IPA', 65, 'IPS'),
(379, 'Nur Hikmah', 'SMP PGRI SIENJO', 76, 70, 79, 78, 79, 76.4, 'B', 80, 75, 79, 79, 88, 80.2, 'B', 80, 75, 80, 80, 80, 79, 'B', 'IPA', 65.9, 'IPS'),
(380, 'Nur Ramadani. M', 'SMPN 2 AMPIBABO', 70, 70, 79, 75, 81, 75, 'B', 70, 73, 78, 75, 77, 74.6, 'C', 69, 75, 75, 72, 81, 74.4, 'C', 'IPS', 76.9, 'IPS'),
(381, 'Nur Risma Fajar', 'SMPN 1 TORIBULU', 60, 83, 80, 82, 78, 76.6, 'B', 69, 76, 79, 75, 81, 76, 'B', 68, 75, 79, 81, 78, 76.2, 'B', 'IPA', 78.5, 'IPS'),
(382, 'Nurain', 'SMPN 1 TANA TOVEA', 60, 75, 75, 75, 81, 73.2, 'C', 75, 80, 75, 80, 80, 78, 'B', 75, 76, 75, 77, 75, 75.6, 'B', 'IPS', 77.1, 'IPS'),
(383, 'Nuraini', 'SMPN 1 TORIBULU', 69, 68, 70, 71, 75, 70.6, 'C', 76, 71, 72, 74, 74, 73.4, 'C', 70, 70, 75, 75, 85, 75, 'B', 'IPS', 75.5, 'IPS'),
(384, 'Nuraini Laminula', 'SMPN 1 TORIBULU', 75, 76, 68, 75, 80, 74.8, 'C', 75, 75, 70, 77, 79, 75.2, 'B', 71, 76, 70, 75, 76, 73.6, 'C', 'IPA', 76.6, 'IPS'),
(385, 'Nur\'Ani', 'SMPN 1 TORIBULU', 80, 70, 75, 70, 78, 74.6, 'C', 63, 75, 78, 74, 78, 73.6, 'C', 75, 65, 75, 75, 80, 74, 'C', 'IPA', 76.5, 'IPS'),
(386, 'Nuratika', 'SMPN 1 SINIU', 81, 81, 80, 75, 78, 79, 'B', 77, 79, 80, 78, 76, 78, 'B', 87, 83, 76, 71, 95, 82.4, 'B', 'IPA', 79.9, 'IPS'),
(387, 'Nurhana', 'MTs. ALKHAIRAAT SINIU\'', 60, 79, 78, 78, 81, 75.2, 'B', 69, 71, 76, 79, 84, 75.8, 'B', 68, 75, 75, 78, 78, 74.8, 'C', 'IPS', 77.1, 'IPS'),
(388, 'Nurmila', 'SMPN 1 SINIU', 72, 75, 75, 76, 75, 74.6, 'C', 75, 75, 76, 76, 77, 75.8, 'B', 80, 76, 76, 79, 80, 78.2, 'B', 'IPA', 78.2, 'IPS'),
(389, 'Nurul Hidayah', 'SMPN 1 SINIU', 60, 87, 85, 80, 82, 78.8, 'B', 69, 77, 77, 87, 82, 78.4, 'B', 71, 78, 78, 80, 79, 77.2, 'B', 'IPA', 66.4, 'IPS'),
(390, 'Nurul Hikmah Syam', 'SMPN 1 TORIBULU', 66, 75, 85, 79, 80, 77, 'B', 68, 75, 85, 80, 93, 80.2, 'B', 74, 75, 95, 90, 88, 84.4, 'B', 'IPA', 67.5, 'IPS'),
(391, 'Nurul Iman', 'SMPN 1 TORIBULU', 68, 70, 67, 65, 75, 69, 'C', 65, 68, 66, 66, 77, 68.4, 'C', 66, 77, 66, 71, 76, 71.2, 'C', 'IPS', 72, 'IPS'),
(392, 'Nurul Kheyla Ramadhani', 'SMPN 1 TORIBULU', 66, 77, 80, 78, 79, 76, 'B', 68, 77, 75, 83, 85, 77.6, 'B', 68, 76, 78, 31, 79, 66.4, 'C', 'IPS', 72, 'IPS'),
(393, 'Nurul Safitri', 'SMPN 1 TORIBULU', 71, 72, 73, 75, 70, 72.2, 'C', 70, 80, 80, 65, 79, 74.8, 'C', 72, 79, 79, 79, 77, 77.2, 'B', 'IPA', 79.1, 'IPS'),
(394, 'Nusta Rambu Meilano', 'SMPN 1 TORIBULU', 65, 76, 66, 71, 82, 72, 'C', 70, 76, 73, 74, 86, 75.8, 'B', 72, 97, 89, 85, 86, 85.8, 'A', 'IPS', 77.3, 'IPA'),
(395, 'Nyoman Ariawan', 'SMPN 1 SINIU', 66, 64, 70, 70, 80, 70, 'C', 64, 64, 72, 74, 87, 72.2, 'C', 72, 97, 89, 85, 86, 85.8, 'A', 'IPA', 78.6, 'IPS'),
(396, 'Ofan', 'SMPN 1 SINIU', 60, 77, 60, 77, 75, 68, 'C', 68, 75, 69, 75, 85, 74.4, 'C', 73, 82, 72, 35, 83, 69, 'C', 'IPS', 78.9, 'IPS'),
(397, 'Pandu R. Nata', 'SMPN 3 AMPIBABO', 75, 75, 75, 78, 75, 75.6, 'B', 75, 75, 76, 75, 76, 75.4, 'B', 68, 75, 68, 75, 70, 71.2, 'C', 'IPA', 74.5, 'IPS'),
(398, 'Parhan  A.B Parasulu', 'SMPN 1 SINIU', 60, 80, 75, 75, 84, 74.75, 'C', 69, 75, 75, 78, 80, 75.4, 'B', 75, 76, 80, 75, 80, 77.2, 'B', 'IPA', 76.2, 'IPS'),
(399, 'Pratiwi', 'SMP PGRI SIENJO', 63, 75, 95, 80, 79, 78.4, 'B', 68, 75, 78, 79, 80, 76, 'B', 72, 75, 75, 81, 75, 75.6, 'B', 'IPA', 78.9, 'IPS'),
(400, 'Putra Ardiansah', 'SMPN 1 SINIU', 60, 75, 80, 81, 81, 75.4, 'B', 70, 78, 79, 81, 81, 77.8, 'B', 70, 75, 79, 70, 76, 74, 'C', 'IPA', 66.7, 'IPS'),
(401, 'Putri Andini', 'SMPN 1 SINIU', 75, 76, 78, 76, 0, 61, 'C', 75, 76, 80, 77, 0, 61.6, 'C', 73, 80, 78, 34, 79, 68.8, 'C', 'IPS', 52.4, 'IPS'),
(402, 'Putri Devi Yanti', 'SMPN 1 TORIBULU', 78, 80, 80, 85, 85, 81.6, 'B', 80, 78, 88, 85, 88, 83.8, 'B', 75, 75, 75, 79, 0, 60.8, 'C', 'IPS', 71.6, 'IPS'),
(403, 'Putri Julianti', 'SMPN 4 PALOPO', 60, 75, 80, 80, 78, 74.6, 'C', 69, 80, 75, 79, 80, 76.6, 'B', 95, 79, 82, 91, 97, 88.8, 'A', 'IPA', 79.3, 'IPA'),
(404, 'Putu Gede Budarsana', 'SMPN 1 TORIBULU', 60, 83, 78, 75, 80, 75.2, 'B', 70, 78, 75, 75, 88, 77.2, 'B', 75, 75, 75, 80, 79, 76.8, 'B', 'IPA', 79, 'IPS'),
(405, 'Rada Rani Dewi Dasi', 'SMPN 3 AMPIBABO', 60, 75, 79, 84, 76, 74.8, 'C', 69, 80, 77, 78, 84, 77.6, 'B', 72, 75, 78, 79, 79, 76.6, 'B', 'IPA', 77.5, 'IPS'),
(406, 'Raf\'Al', 'SMPN 1 TORIBULU', 70, 75, 70, 78, 75, 73.6, 'C', 75, 75, 76, 75, 90, 78.2, 'B', 68, 70, 79, 80, 87, 76.8, 'B', 'IPS', 78.9, 'IPS'),
(407, 'Rafel', 'SMPN 1 TORIBULU', 69, 69, 71, 80, 80, 73.8, 'C', 66, 70, 68, 79, 69, 70.4, 'C', 70, 75, 74, 75, 81, 75, 'B', 'IPA', 76.1, 'IPS'),
(408, 'Rafi', 'SMPN 1 TORIBULU', 77, 75, 82, 79, 77, 78, 'B', 73, 79, 83, 75, 76, 77.2, 'B', 75, 77, 77, 77, 89, 79, 'B', 'IPA', 66.6, 'IPS'),
(409, 'Rafli', 'SMPN 1 TORIBULU', 80, 82, 80, 82, 87, 82.2, 'B', 80, 84, 81, 83, 90, 83.6, 'B', 0, 84, 82, 80, 87, 66.6, 'C', 'IPS', 68.8, 'IPS'),
(410, 'Rafli', 'SMPN 1 TORIBULU', 64, 83, 78, 80, 82, 77.4, 'B', 68, 80, 75, 79, 81, 76.6, 'B', 69, 80, 70, 75, 80, 74.8, 'C', 'IPS', 76.9, 'IPS'),
(411, 'Rafli', 'SMPN 1 TORIBULU', 73, 71, 66, 75, 80, 73, 'C', 73, 79, 74, 80, 80, 77.2, 'B', 70, 73, 70, 75, 80, 73.6, 'C', 'IPS', 77.4, 'IPS'),
(412, 'Rafli Aan Saputra', 'SMPN 1 TORIBULU', 70, 78, 81, 79, 79, 77.4, 'B', 78, 80, 85, 83, 90, 83.2, 'B', 70, 75, 80, 85, 80, 78, 'B', 'IPS', 66.5, 'IPS'),
(413, 'Rahmat', 'SMPN 1 TORIBULU', 75, 78, 79, 79, 80, 78.2, 'B', 75, 78, 79, 79, 80, 78.2, 'B', 76, 78, 78, 80, 85, 79.4, 'B', 'IPS', 67.8, 'IPS'),
(414, 'Rahmat Al Fauzan', 'SMPN 2 AMPIBABO', 78, 89, 89, 90, 90, 87.2, 'A', 77, 85, 92, 93, 93, 88, 'A', 79, 87, 90, 94, 94, 88.8, 'A', 'IPA', 73.7, 'IPA'),
(415, 'Rahmat Candra Mohi', 'SMPN 1 TORIBULU', 68, 76, 70, 76, 79, 73.8, 'C', 70, 75, 70, 73, 80, 73.6, 'C', 70, 80, 72, 76, 80, 75.6, 'B', 'IPA', 76.1, 'IPS'),
(416, 'Rahmat Hidayat', 'SMPN 2 AMPIBABO', 68, 75, 75, 75, 80, 74.6, 'C', 65, 80, 76, 98, 75, 78.8, 'B', 65, 70, 75, 85, 78, 74.6, 'C', 'IPA', 77.1, 'IPS'),
(417, 'Rahmat Hidayat', 'MTs. DARUSSHOLIHIN SAUSU', 60, 86, 75, 80, 85, 77.2, 'B', 76, 78, 77, 85, 87, 80.6, 'B', 71, 79, 81, 87, 80, 79.6, 'B', 'IPA', 79.4, 'IPS'),
(418, 'Rahmat Ramadhan', 'SMPN 1 TORIBULU', 65, 70, 65, 77, 83, 72, 'C', 74, 68, 74, 83, 83, 76.4, 'B', 75, 75, 75, 86, 81, 78.4, 'B', 'IPA', 76.8, 'IPS'),
(419, 'Rahmatiya', 'SMPN 1 TORIBULU', 70, 74, 77, 82, 80, 76.6, 'B', 74, 80, 81, 81, 80, 79.2, 'B', 72, 70, 69, 75, 80, 73.2, 'C', 'IPS', 79.1, 'IPS'),
(420, 'Raina Salsabilla', 'SMPN 1 TORIBULU', 68, 70, 70, 79, 84, 74.2, 'C', 75, 79, 75, 80, 85, 78.8, 'B', 79, 79, 79, 80, 90, 81.4, 'B', 'IPS', 63.8, 'IPS'),
(421, 'Raisa Ramadani', 'MTs. ALKHAIRAAT AMPIBABO', 76, 80, 79, 85, 93, 82.6, 'B', 82, 80, 80, 79, 84, 81, 'B', 78, 83, 83, 80, 89, 82.6, 'B', 'IPS', 76.1, 'IPS'),
(422, 'Rakan Septiansah', 'MTs. ALKHAIRAAT TOWERA', 71, 77, 78, 73, 78, 75.4, 'B', 75, 78, 82, 79, 80, 78.8, 'B', 79, 80, 75, 76, 85, 79, 'B', 'IPA', 78.2, 'IPS'),
(423, 'Ramadan', 'MTs. ALKHAIRAAT TOWERA', 65, 65, 65, 67, 77, 67.8, 'C', 75, 70, 65, 70, 75, 71, 'C', 68, 68, 88, 30, 80, 66.8, 'C', 'IPA', 77.6, 'IPS'),
(424, 'Rasli', 'SMPN 1 TORIBULU', 75, 65, 65, 75, 65, 69, 'C', 75, 65, 65, 65, 80, 70, 'C', 70, 75, 75, 75, 70, 73, 'C', 'IPS', 60.4, 'IPS'),
(425, 'Raudatul Jannah', 'MTs. ALKHAIRAAT TOWERA', 62, 85, 85, 85, 85, 80.4, 'B', 75, 88, 82, 83, 85, 82.6, 'B', 76, 78, 83, 85, 84, 81.2, 'B', 'IPS', 68.6, 'IPS'),
(426, 'Raya Putri Ananda', 'MTs. ALKHAIRAAT PINOTU', 60, 75, 75, 76, 78, 72.8, 'C', 69, 78, 76, 79, 81, 76.6, 'B', 73, 75, 75, 79, 75, 75.4, 'B', 'IPS', 78.5, 'IPS'),
(427, 'Refa Julianti', 'SMPN 2 AMPIBABO', 76, 79, 70, 76, 75, 75.2, 'B', 75, 76, 79, 81, 78, 77.8, 'B', 75, 77, 81, 79, 78, 78, 'B', 'IPS', 77.6, 'IPS'),
(428, 'Regina Cahyani Putri', 'SMP PGRI SIENJO', 70, 76, 80, 78, 75, 75.8, 'B', 70, 80, 80, 79, 85, 78.8, 'B', 70, 78, 78, 80, 76, 76.4, 'B', 'IPS', 64.3, 'IPS'),
(429, 'Reno', 'MTs. NEGERI 1 PARIGI', 65, 86, 85, 85, 76, 79.4, 'B', 69, 83, 78, 85, 90, 81, 'B', 78, 79, 84, 85, 79, 81, 'B', 'IPS', 68.2, 'IPS'),
(430, 'Reski Farel', 'SMP PGRI SIENJO', 70, 81, 78, 79, 91, 79.8, 'B', 75, 78, 74, 79, 76, 76.4, 'B', 73, 78, 76, 84, 86, 79.4, 'B', 'IPS', 64.9, 'IPS'),
(431, 'Resky', 'SMPN 2 AMPIBABO', 60, 75, 78, 85, 75, 74.6, 'C', 70, 75, 80, 85, 86, 79.2, 'B', 73, 80, 78, 81, 78, 78, 'B', 'IPS', 77.9, 'IPS'),
(432, 'Reva Lina', 'SMPN 1 TORIBULU', 75, 85, 76, 76, 78, 78, 'B', 75, 85, 99, 90, 90, 87.8, 'A', 75, 85, 88, 90, 86, 84.8, 'B', 'IPA', 79.8, 'IPS'),
(433, 'Reyfan', 'SMPN 1 TANA TOVEA', 79, 78, 80, 80, 84, 80.2, 'B', 75, 78, 80, 80, 85, 79.6, 'B', 80, 90, 80, 78, 85, 82.6, 'B', 'IPS', 81.5, 'IPA'),
(434, 'Riansyah', 'SMPN 1 TORIBULU', 75, 81, 80, 80, 82, 79.6, 'B', 70, 82, 76, 79, 80, 77.4, 'B', 77, 77, 89, 35, 89, 73.4, 'C', 'IPA', 81.7, 'IPA'),
(435, 'Rice Giringan', 'SMPN 1 TORIBULU', 78, 90, 70, 76, 89, 80.6, 'B', 85, 90, 80, 80, 75, 82, 'B', 91, 96, 90, 94, 97, 93.6, 'A', 'IPA', 84.9, 'IPA'),
(436, 'Ridhatul Meidina', 'SMPN 1 TORIBULU', 86, 98, 94, 92, 97, 93.4, 'A', 83, 95, 90, 94, 96, 91.6, 'A', 82, 95, 92, 94, 97, 92, 'A', 'IPA', 80.7, 'IPA'),
(437, 'Rifal', 'SMPN 1 SINIU', 88, 89, 89, 90, 90, 89.2, 'A', 85, 85, 88, 87, 89, 86.8, 'A', 86, 88, 92, 94, 95, 91, 'A', 'IPS', 88, 'IPA'),
(438, 'Rifal', 'MTs. ALKHAIRAAT SINIU\'', 72, 75, 78, 77, 76, 75.6, 'B', 70, 71, 78, 78, 80, 75.4, 'B', 90, 86, 85, 88, 75, 84.8, 'B', 'IPA', 79.1, 'IPS'),
(439, 'Rifal', 'SMPN 1 SINIU', 82, 77, 80, 81, 82, 80.4, 'B', 81, 77, 84, 84, 99, 85, 'A', 75, 78, 88, 78, 80, 79.8, 'B', 'IPA', 83.4, 'IPS'),
(440, 'Rifaldi Jasrin', 'SMPN 1 SINIU', 75, 80, 77, 77, 80, 77.8, 'B', 79, 79, 79, 85, 79, 80.2, 'B', 77, 80, 80, 91, 95, 84.6, 'B', 'IPS', 81.7, 'IPS'),
(441, 'Rifki Rifaldi Jumardin', 'SMPN 1 TORIBULU', 95, 80, 80, 90, 81, 85.2, 'A', 70, 96, 88, 82, 90, 85.2, 'A', 89, 78, 96, 80, 84, 85.4, 'A', 'IPA', 77.5, 'IPS'),
(442, 'Rifran', 'SMPN 1 TORIBULU', 79, 80, 88, 82, 81, 82, 'B', 79, 82, 84, 85, 86, 83.2, 'B', 80, 82, 87, 85, 86, 84, 'B', 'IPA', 82.6, 'IPS'),
(443, 'Riki', 'SMPN 1 TORIBULU', 77, 88, 90, 91, 92, 87.6, 'A', 80, 85, 90, 91, 91, 87.4, 'A', 79, 89, 90, 91, 92, 88.2, 'A', 'IPA', 89.4, 'IPA'),
(444, 'Rinaldi', 'SMPN 1 TORIBULU', 75, 85, 89, 89, 89, 85.4, 'A', 77, 85, 89, 89, 89, 85.8, 'A', 78, 86, 89, 90, 90, 86.6, 'A', 'IPS', 86.5, 'IPA'),
(445, 'Risca Aprilia', 'SMPN 1 TORIBULU', 75, 85, 88, 98, 91, 87.4, 'A', 77, 88, 88, 96, 96, 89, 'A', 77, 85, 88, 98, 96, 88.8, 'A', 'IPA', 89.4, 'IPA'),
(446, 'Riski', 'SMPN 1 SINIU', 75, 80, 95, 92, 92, 86.8, 'A', 75, 80, 92, 90, 94, 86.2, 'A', 77, 85, 93, 95, 95, 89, 'A', 'IPS', 88.3, 'IPA'),
(447, 'Riswandi', 'SMPN 1 SINIU', 77, 82, 89, 90, 91, 85.8, 'A', 75, 87, 88, 89, 90, 85.8, 'A', 78, 85, 93, 93, 93, 88.4, 'A', 'IPA', 87.3, 'IPA'),
(448, 'Rival', 'SMPN 3 AMPIBABO', 67, 88, 86, 88, 82, 82.2, 'B', 80, 84, 86, 86, 81, 83.4, 'B', 80, 86, 80, 81, 80, 81.4, 'B', 'IPA', 85.8, 'IPS'),
(449, 'Rizka Aulia', 'SMPN 1 SINIU', 77, 76, 77, 75, 80, 77, 'B', 82, 78, 78, 85, 82, 81, 'B', 76, 78, 79, 78, 80, 78.2, 'B', 'IPA', 80.9, 'IPS'),
(450, 'Rizky Rizmawan Ramadhan', 'SMP PGRI SIENJO', 64, 80, 83, 85, 80, 78.4, 'B', 69, 80, 81, 85, 80, 79, 'B', 72, 84, 89, 83, 80, 81.6, 'B', 'IPS', 82.2, 'IPS'),
(451, 'Sadce', 'SMPN 1 SINIU', 60, 66, 80, 87, 84, 75.4, 'B', 77, 75, 87, 81, 87, 81.4, 'B', 66, 77, 80, 80, 89, 78.4, 'B', 'IPS', 82.2, 'IPS'),
(452, 'Safina Sardin', 'SMPN 1 SINIU', 75, 78, 80, 78, 80, 78.2, 'B', 75, 85, 84, 88, 81, 82.6, 'B', 84, 80, 93, 80, 86, 84.6, 'B', 'IPA', 83.2, 'IPA'),
(453, 'Safira Amalia', 'SMPN 1 TORIBULU', 67, 75, 78, 80, 84, 76.8, 'B', 73, 85, 79, 88, 90, 83, 'B', 89, 82, 86, 90, 79, 85.2, 'A', 'IPA', 84.6, 'IPA'),
(454, 'Sahra Nur Aulia', 'SMPN 4 PALOPO', 90, 92, 92, 94, 95, 92.6, 'A', 90, 92, 94, 95, 96, 93.4, 'A', 90, 90, 92, 92, 94, 91.6, 'A', 'IPA', 92.8, 'IPA'),
(455, 'Sakia Almesa', 'SMPN 1 TORIBULU', 70, 80, 90, 91, 92, 84.6, 'B', 70, 75, 90, 91, 90, 83.2, 'B', 76, 85, 90, 91, 90, 86.4, 'A', 'IPS', 86.4, 'IPA'),
(456, 'Saldin', 'SMPN 3 AMPIBABO', 79, 80, 79, 88, 91, 83.4, 'B', 76, 87, 77, 95, 98, 86.6, 'A', 83, 98, 82, 91, 87, 88.2, 'A', 'IPA', 87.5, 'IPA'),
(457, 'Salsa Nabila', 'SMPN 1 TORIBULU', 79, 80, 80, 82, 82, 80.6, 'B', 83, 83, 84, 85, 85, 84, 'B', 80, 80, 84, 82, 82, 81.6, 'B', 'IPS', 83.7, 'IPS'),
(458, 'Salsabila', 'SMPN 1 TORIBULU', 76, 82, 92, 93, 93, 87.2, 'A', 76, 85, 90, 92, 92, 87, 'A', 75, 87, 92, 94, 94, 88.4, 'A', 'IPS', 89.4, 'IPA'),
(459, 'San Valentino Sailana', 'SMPN 1 TORIBULU', 74, 80, 80, 77, 77, 77.6, 'B', 75, 85, 89, 91, 81, 84.2, 'B', 80, 87, 88, 79, 89, 84.6, 'B', 'IPS', 83.7, 'IPA'),
(460, 'Sandi', 'SMPN 1 TORIBULU', 70, 81, 80, 85, 82, 79.6, 'B', 85, 87, 78, 72, 90, 82.4, 'B', 75, 75, 85, 80, 80, 79, 'B', 'IPA', 82.3, 'IPS'),
(461, 'Sartika', 'SMPN 1 TORIBULU', 75, 75, 84, 75, 80, 77.8, 'B', 76, 83, 85, 88, 85, 83.4, 'B', 73, 71, 87, 80, 81, 78.4, 'B', 'IPS', 80.4, 'IPS'),
(462, 'Sasna', 'SMPN 1 TORIBULU', 81, 82, 87, 87, 83, 84, 'B', 95, 82, 89, 88, 86, 88, 'A', 87, 83, 90, 93, 83, 87.2, 'A', 'IPS', 85.4, 'IPA'),
(463, 'Satrin', 'SMPN 1 TORIBULU', 77, 82, 77, 79, 83, 79.6, 'B', 79, 85, 83, 95, 80, 84.4, 'B', 83, 94, 93, 95, 92, 91.4, 'A', 'IPA', 85.3, 'IPA'),
(464, 'Selvi', 'SMPN 1 TORIBULU', 77, 86, 92, 93, 93, 88.2, 'A', 75, 85, 93, 94, 94, 88.2, 'A', 79, 86, 95, 95, 96, 90.2, 'A', 'IPS', 90.3, 'IPA'),
(465, 'Selvia Putri', 'SMPN 2 AMPIBABO', 80, 92, 85, 91, 88, 87.2, 'A', 78, 89, 85, 95, 94, 88.2, 'A', 79, 89, 85, 90, 91, 86.8, 'A', 'IPA', 88.5, 'IPA'),
(466, 'Shinta Bella', 'SMPN 1 TORIBULU', 76, 87, 90, 90, 92, 87, 'A', 75, 85, 91, 93, 95, 87.8, 'A', 77, 90, 91, 92, 94, 88.8, 'A', 'IPA', 88.3, 'IPA'),
(467, 'Shofa Azzahra', 'SMPN 2 AMPIBABO', 77, 87, 92, 92, 94, 88.4, 'A', 76, 85, 92, 93, 95, 88.2, 'A', 80, 95, 95, 97, 97, 92.8, 'A', 'IPS', 90.5, 'IPA'),
(468, 'Silta', 'MTs. DARUSSHOLIHIN SAUSU', 75, 85, 90, 90, 90, 86, 'A', 78, 85, 90, 92, 94, 87.8, 'A', 76, 87, 90, 91, 94, 87.6, 'A', 'IPA', 88.3, 'IPA'),
(469, 'Silvi Nijma', 'SMPN 1 TORIBULU', 78, 78, 77, 78, 84, 79, 'B', 87, 84, 81, 82, 87, 84.2, 'B', 77, 77, 78, 79, 79, 78, 'B', 'IPA', 82.5, 'IPS'),
(470, 'Siska', 'SMPN 1 TORIBULU', 60, 80, 80, 82, 90, 78.4, 'B', 75, 80, 81, 86, 87, 81.8, 'B', 81, 84, 89, 91, 80, 85, 'A', 'IPA', 85.5, 'IPA'),
(471, 'Siti Azzahra', 'SMPN 1 TORIBULU', 62, 79, 78, 81, 77, 75.4, 'B', 70, 78, 76, 85, 90, 79.8, 'B', 72, 75, 80, 87, 79, 78.6, 'B', 'IPA', 81.3, 'IPS'),
(472, 'Siti Fadila', 'MTs. ALKHAIRAAT AMPIBABO', 92, 89, 94, 94, 97, 93.2, 'A', 88, 91, 95, 95, 96, 93, 'A', 89, 89, 92, 94, 94, 91.6, 'A', 'IPS', 92.9, 'IPA'),
(473, 'Siti Fadilla', 'MTs. ALKHAIRAAT TOWERA', 78, 79, 77, 76, 80, 78, 'B', 79, 80, 80, 80, 80, 79.8, 'B', 80, 83, 80, 96, 90, 85.8, 'A', 'IPS', 82.1, 'IPA'),
(474, 'Siti Fatima', 'MTs. ALKHAIRAAT TOWERA', 85, 82, 82, 92, 94, 87, 'A', 87, 85, 86, 92, 86, 87.2, 'A', 87, 86, 84, 92, 88, 87.4, 'A', 'IPA', 86.6, 'IPA'),
(475, 'Siti Musylahida', 'SMPN 1 TORIBULU', 78, 85, 79, 90, 90, 84.4, 'B', 77, 85, 76, 94, 94, 85.2, 'A', 79, 87, 78, 96, 96, 87.2, 'A', 'IPA', 87.7, 'IPA'),
(476, 'Siti Nur Zul Fadillah', 'MTs. ALKHAIRAAT TOWERA', 77, 85, 80, 80, 88, 82, 'B', 71, 85, 90, 80, 88, 82.8, 'B', 88, 79, 90, 91, 78, 85.2, 'A', 'IPA', 85.4, 'IPA'),
(477, 'Siti Nurfadila', 'MTs. ALKHAIRAAT PINOTU', 60, 87, 80, 85, 79, 78.2, 'B', 80, 77, 82, 89, 84, 82.4, 'B', 80, 80, 79, 80, 80, 79.8, 'B', 'IPS', 82.2, 'IPS'),
(478, 'Siti Nurfatimah', 'SMPN 2 AMPIBABO', 75, 87, 90, 90, 90, 86.4, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 75, 87, 89, 89, 90, 86, 'A', 'IPA', 87.8, 'IPA'),
(479, 'Siti Rahmawati', 'SMP PGRI SIENJO', 75, 85, 91, 92, 94, 87.4, 'A', 74, 85, 91, 92, 95, 87.4, 'A', 77, 85, 90, 91, 94, 87.4, 'A', 'IPS', 89.3, 'IPA'),
(480, 'Sitti Thaharah Darman S', 'SMP PGRI SIENJO', 74, 80, 83, 85, 86, 81.6, 'B', 82, 83, 84, 82, 82, 82.6, 'B', 85, 82, 84, 32, 82, 73, 'C', 'IPS', 84.1, 'IPS'),
(481, 'Sri Hartati', 'SMPN 2 AMPIBABO', 94, 96, 92, 93, 92, 93.4, 'A', 98, 92, 86, 95, 92, 92.6, 'A', 93, 96, 95, 94, 95, 94.6, 'A', 'IPS', 91.3, 'IPA'),
(482, 'Sri Wahyuni Anjani', 'SMPN 1 TORIBULU', 60, 77, 85, 88, 76, 77.2, 'B', 69, 81, 73, 83, 85, 78.2, 'B', 74, 75, 87, 38, 79, 70.6, 'C', 'IPS', 81.6, 'IPS'),
(483, 'Sri Wanda', 'SMPN 1 TANA TOVEA', 65, 75, 75, 30, 76, 64.2, 'C', 75, 80, 82, 85, 81, 80.6, 'B', 78, 78, 81, 32, 78, 69.4, 'C', 'IPA', 80.8, 'IPS'),
(484, 'Suci', 'SMPN 1 TORIBULU', 75, 85, 88, 89, 90, 85.4, 'A', 74, 85, 89, 90, 92, 86, 'A', 78, 85, 94, 94, 95, 89.2, 'A', 'IPA', 88.3, 'IPA'),
(485, 'Suci Rahmani', 'SMPN 1 TORIBULU', 82, 85, 95, 90, 79, 86.2, 'A', 69, 85, 89, 88, 95, 85.2, 'A', 80, 78, 94, 91, 80, 86.25, 'A', 'IPA', 86.4, 'IPA'),
(486, 'Suci Ramadani', 'SMPN 1 TORIBULU', 78, 88, 87, 90, 90, 86.6, 'A', 75, 85, 86, 94, 96, 87.2, 'A', 76, 87, 89, 96, 90, 87.6, 'A', 'IPS', 88.5, 'IPA'),
(487, 'Suci Sahifanur', 'SMPN 1 SINIU', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 93.7, 'IPA'),
(488, 'Sugianto', 'MTs. ALKHAIRAAT SINIU\'', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 87.2, 'IPA'),
(489, 'Sundari Dg. Tene', 'SMPN 1 SINIU', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 87.4, 'IPA'),
(490, 'Suriyanti', 'SMPN 1 SINIU', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 89.1, 'IPA'),
(491, 'Surriadi', 'SMPN 1 TORIBULU', 80, 89, 82, 96, 80, 85.4, 'A', 90, 79, 78, 82, 82, 82.2, 'B', 82, 81, 78, 80, 77, 79.6, 'B', 'IPS', 82.8, 'IPA'),
(492, 'Syafira', 'SMPN 1 TORIBULU', 60, 82, 75, 80, 78, 75, 'B', 70, 76, 80, 85, 88, 79.8, 'B', 79, 75, 80, 83, 78, 79, 'B', 'IPS', 80.9, 'IPS'),
(493, 'Tevan', 'SMPN 1 TORIBULU', 80, 76, 93, 94, 95, 87.6, 'A', 78, 91, 93, 94, 95, 90.2, 'A', 84, 85, 92, 94, 95, 90, 'A', 'IPA', 90.6, 'IPA'),
(494, 'Tiara', 'SMPN 1 TORIBULU', 78, 86, 88, 89, 90, 86.2, 'A', 77, 87, 89, 89, 90, 86.4, 'A', 77, 87, 89, 90, 92, 87, 'A', 'IPA', 87.7, 'IPA'),
(495, 'Toufikurrahman', 'SMPN 1 TORIBULU', 81, 90, 90, 95, 90, 89.2, 'A', 78, 80, 88, 85, 85, 83.2, 'B', 75, 85, 95, 90, 85, 86, 'A', 'IPS', 85.7, 'IPA'),
(496, 'Tri Darmawangsa', 'SMPN 1 SINIU', 78, 88, 87, 90, 90, 86.6, 'A', 75, 85, 86, 94, 96, 87.2, 'A', 76, 87, 89, 96, 90, 87.6, 'A', 'IPS', 88.5, 'IPA'),
(497, 'Tri Hartanto', 'SMPN 1 SINIU', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 93.7, 'IPA'),
(498, 'Tri Julianti Puspitasari B. Lakirama', 'SMPN 3 AMPIBABO', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 87.2, 'IPA'),
(499, 'Tri Yulia', 'SMPN 1 SINIU', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 87.4, 'IPA'),
(500, 'Usna Fadilah', 'SMP PGRI SIENJO', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 89.1, 'IPA'),
(501, 'Usria', 'SMPN 1 SINIU', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 93.7, 'IPA'),
(502, 'Usril', 'SMPN 1 SINIU', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 87.2, 'IPA'),
(503, 'Valentino', 'SMPN 1 TORIBULU', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 87.4, 'IPA'),
(504, 'Vebry Andi Abbas', 'SMPN 4 PALOPO', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 89.1, 'IPA'),
(505, 'Vivin', 'SMPN 1 TORIBULU', 80, 89, 82, 96, 80, 85.4, 'A', 90, 79, 78, 82, 82, 82.2, 'B', 82, 81, 78, 80, 77, 79.6, 'B', 'IPS', 82.8, 'IPA'),
(506, 'Wahyu Ajib', 'SMPN 3 AMPIBABO', 60, 82, 75, 80, 78, 75, 'B', 70, 76, 80, 85, 88, 79.8, 'B', 79, 75, 80, 83, 78, 79, 'B', 'IPS', 80.9, 'IPS'),
(507, 'Wahyu Gunawan', 'SMPN 1 TORIBULU', 80, 76, 93, 94, 95, 87.6, 'A', 78, 91, 93, 94, 95, 90.2, 'A', 84, 85, 92, 94, 95, 90, 'A', 'IPA', 90.6, 'IPA'),
(508, 'Wahyu Widodo', 'SMPN 1 TORIBULU', 78, 86, 88, 89, 90, 86.2, 'A', 77, 87, 89, 89, 90, 86.4, 'A', 77, 87, 89, 90, 92, 87, 'A', 'IPA', 87.7, 'IPA'),
(509, 'Wahyuli', 'SMPN 1 TORIBULU', 81, 90, 90, 95, 90, 89.2, 'A', 78, 80, 88, 85, 85, 83.2, 'B', 75, 85, 95, 90, 85, 86, 'A', 'IPS', 85.7, 'IPA'),
(510, 'Walza', 'SMPN 1 TORIBULU', 75, 85, 89, 90, 90, 85.8, 'A', 77, 84, 91, 92, 92, 87.2, 'A', 76, 85, 92, 94, 95, 88.4, 'A', 'IPS', 89.3, 'IPA'),
(511, 'Wardiasyah', 'SMPN 1 TORIBULU', 65, 74, 80, 82, 90, 78.2, 'B', 73, 78, 68, 72, 80, 74.2, 'C', 75, 85, 85, 78, 82, 81, 'B', 'IPS', 81.7, 'IPS'),
(512, 'Windi', 'SMPN 1 TORIBULU', 75, 69, 97, 78, 86, 81, 'B', 77, 75, 71, 84, 74, 76.2, 'B', 80, 80, 85, 80, 75, 80, 'B', 'IPA', 88.4, 'IPA'),
(513, 'Yasni', 'SMPN 1 TORIBULU', 76, 85, 90, 91, 91, 86.6, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 76, 90, 92, 92, 94, 88.8, 'A', 'IPA', 88.3, 'IPA'),
(514, 'Yola Puspitasari', 'SMPN 1 TORIBULU', 76, 86, 89, 89, 90, 86, 'A', 77, 85, 92, 92, 94, 88, 'A', 86, 86, 84, 90, 90, 87.2, 'A', 'IPA', 85.7, 'IPA'),
(515, 'Yolandani', 'SMPN 2 AMPIBABO', 84, 82, 82, 89, 80, 83.4, 'B', 86, 84, 86, 89, 84, 85.8, 'A', 76, 76, 87, 89, 85, 82.6, 'B', 'IPS', 84.3, 'IPA'),
(516, 'Yulia Putri', 'SMPN 1 TORIBULU', 80, 81, 81, 85, 86, 82.6, 'B', 85, 86, 89, 91, 92, 88.6, 'A', 77, 80, 72, 80, 90, 79.8, 'B', 'IPS', 86.2, 'IPA'),
(517, 'Yustika', 'SMPN 2 AMPIBABO', 88, 85, 84, 82, 85, 84.8, 'B', 86, 80, 87, 79, 90, 84.4, 'B', 90, 80, 90, 91, 79, 86, 'A', 'IPS', 84.9, 'IPA'),
(518, 'Yusuf', 'MTs. DARUSSHOLIHIN SAUSU', 69, 78, 95, 82, 90, 82.8, 'B', 76, 85, 77, 83, 84, 81, 'B', 76, 75, 79, 75, 80, 77, 'B', 'IPS', 80.7, 'IPS'),
(519, 'Zahra', 'SMPN 1 TORIBULU', 70, 78, 74, 82, 80, 76.8, 'B', 72, 72, 78, 77, 80, 75.8, 'B', 76, 86, 84, 83, 85, 82.8, 'B', 'IPA', 82.8, 'IPS'),
(520, 'Zahra Islamiah', 'SMPN 1 TORIBULU', 77, 83, 79, 78, 82, 79.8, 'B', 79, 79, 79, 88, 89, 82.8, 'B', 80, 83, 86, 88, 90, 85.4, 'A', 'IPA', 83, 'IPA'),
(521, 'Zahra Tusita', 'SMPN 1 TORIBULU', 78, 85, 80, 85, 83, 82.2, 'B', 78, 80, 75, 80, 84, 79.4, 'B', 85, 89, 90, 95, 89, 89.6, 'A', 'IPA', 86.2, 'IPA'),
(522, 'Zahwa', 'MTs. ALKHAIRAAT AMPIBABO', 79, 85, 86, 90, 82, 84.4, 'B', 80, 82, 83, 85, 84, 82.8, 'B', 85, 89, 92, 91, 80, 87.4, 'A', 'IPA', 86.4, 'IPA'),
(523, 'Zaskia', 'MTs. ALKHAIRAAT TOWERA', 76, 90, 85, 90, 81, 84.4, 'B', 80, 85, 86, 88, 91, 86, 'A', 82, 80, 92, 78, 80, 82.4, 'B', 'IPS', 84.2, 'IPA'),
(524, 'Zulkifli', 'MTs. ALKHAIRAAT TOWERA', 79, 77, 79, 87, 88, 82, 'B', 79, 81, 91, 90, 86, 85.4, 'A', 75, 87, 83, 78, 90, 82.6, 'B', 'IPS', 84.8, 'IPA'),
(525, 'Zulpiana', 'SMPN 1 TORIBULU', 80, 78, 81, 82, 82, 80.6, 'B', 80, 87, 77, 86, 88, 83.6, 'B', 83, 80, 87, 94, 78, 84.4, 'B', 'IPS', 76.9, 'IPS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_data`
--
ALTER TABLE `tb_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kondisi`
--
ALTER TABLE `tb_kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penduduk`
--
ALTER TABLE `tb_penduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_training`
--
ALTER TABLE `tb_training`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_data`
--
ALTER TABLE `tb_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_kondisi`
--
ALTER TABLE `tb_kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_penduduk`
--
ALTER TABLE `tb_penduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_training`
--
ALTER TABLE `tb_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
