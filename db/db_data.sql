-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 08:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `img_dir` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama_lengkap`, `img_dir`) VALUES
(1, 'audyruslan', '$2y$10$YJMlsasuDDlkgqAUS/.XdOeu/6/gPq1Z9dr1xAe.j40T8TtjfnD5S', 'Audy Ruslan', 'image/1638426625.png'),
(2, 'fahri', '$2y$10$Nn8pJ/PkiFYF7WDIuh5vlOr0yTCx9HVGzya44JSIER33TQEF12Na.', 'fahri', 'image/1676970984.png');

-- --------------------------------------------------------

--
-- Table structure for table `iterasi_c45`
--

CREATE TABLE `iterasi_c45` (
  `id` int(11) NOT NULL,
  `iterasi` varchar(3) NOT NULL,
  `atribut_gain_ratio_max` varchar(255) NOT NULL,
  `atribut` varchar(100) NOT NULL,
  `nilai_atribut` varchar(100) NOT NULL,
  `jml_kasus_total` varchar(5) NOT NULL,
  `jml_ipa` varchar(5) NOT NULL,
  `jml_ips` varchar(5) NOT NULL,
  `entropy` float NOT NULL,
  `inf_gain` float NOT NULL,
  `split_info` float NOT NULL,
  `gain_ratio` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `iterasi_c45`
--

INSERT INTO `iterasi_c45` (`id`, `iterasi`, `atribut_gain_ratio_max`, `atribut`, `nilai_atribut`, `jml_kasus_total`, `jml_ipa`, `jml_ips`, `entropy`, `inf_gain`, `split_info`, `gain_ratio`) VALUES
(1, '1', 'ips_grade', 'Total', 'Total', '525', '246', '279', 0.997148, 0, 0, 0),
(2, '2', 'ips_grade', 'minat', 'IPA', '262', '132', '130', 0.999958, 0.00358778, 0.999997, 0.00358779),
(3, '3', 'ips_grade', 'minat', 'IPS', '263', '114', '149', 0.987187, 0.00358778, 0.999997, 0.00358779),
(4, '4', 'ips_grade', 'mtk_grade', 'A', '140', '137', '3', 0.149388, 0.397923, 1.46449, 0.271714),
(5, '5', 'ips_grade', 'mtk_grade', 'B', '277', '104', '173', 0.954766, 0.397923, 1.46449, 0.271714),
(6, '6', 'ips_grade', 'mtk_grade', 'C', '108', '5', '103', 0.270451, 0.397923, 1.46449, 0.271714),
(7, '7', 'ips_grade', 'ipa_grade', 'A', '170', '161', '9', 0.298762, 0.405371, 1.30996, 0.309453),
(8, '8', 'ips_grade', 'ipa_grade', 'B', '304', '85', '219', 0.854912, 0.405371, 1.30996, 0.309453),
(9, '9', 'ips_grade', 'ipa_grade', 'C', '51', '0', '51', 0, 0.405371, 1.30996, 0.309453),
(10, '10', 'ips_grade', 'ips_grade', 'A', '198', '192', '6', 0.195909, 0.549703, 1.49252, 0.368305),
(11, '11', 'ips_grade', 'ips_grade', 'B', '234', '51', '183', 0.756404, 0.549703, 1.49252, 0.368305),
(12, '12', 'ips_grade', 'ips_grade', 'C', '93', '3', '90', 0.205593, 0.549703, 1.49252, 0.368305),
(13, '13', 'ips_grade', 'nilai_tes', 'A', '270', '191', '79', 0.872047, 0.199731, 1.41646, 0.141007),
(14, '14', 'ips_grade', 'nilai_tes', 'B', '183', '49', '134', 0.838231, 0.199731, 1.41646, 0.141007),
(15, '15', 'ips_grade', 'nilai_tes', 'C', '72', '6', '66', 0.413817, 0.199731, 1.41646, 0.141007),
(16, '1', 'ipa_grade', 'Total', 'Total', '198', '192', '6', 0.195909, 0, 0, 0),
(17, '2', 'ipa_grade', 'minat', 'IPA', '124', '118', '6', 0.279506, 0.0208651, 0.953499, 0.0218827),
(18, '3', 'ipa_grade', 'minat', 'IPS', '74', '74', '0', 0, 0.0208651, 0.953499, 0.0218827),
(19, '4', 'ipa_grade', 'mtk_grade', 'A', '129', '126', '3', 0.15935, 0.053527, 1.11308, 0.0480891),
(20, '5', 'ipa_grade', 'mtk_grade', 'B', '61', '61', '0', 0, 0.053527, 1.11308, 0.0480891),
(21, '6', 'ipa_grade', 'mtk_grade', 'C', '8', '5', '3', 0.954434, 0.053527, 1.11308, 0.0480891),
(22, '7', 'ipa_grade', 'ipa_grade', 'A', '142', '139', '3', 0.147721, 0.0899676, 0.944514, 0.0952528),
(23, '8', 'ipa_grade', 'ipa_grade', 'B', '53', '53', '0', 0, 0.0899676, 0.944514, 0.0952528),
(24, '9', 'ipa_grade', 'ipa_grade', 'C', '3', '0', '3', 0, 0.0899676, 0.944514, 0.0952528),
(25, '10', 'ipa_grade', 'nilai_tes', 'A', '168', '165', '3', 0.129234, 0.0203695, 0.723002, 0.0281735),
(26, '11', 'ipa_grade', 'nilai_tes', 'B', '24', '21', '3', 0.543564, 0.0203695, 0.723002, 0.0281735),
(27, '12', 'ipa_grade', 'nilai_tes', 'C', '6', '6', '0', 0, 0.0203695, 0.723002, 0.0281735),
(28, '1', 'ipa_grade', 'Total', 'Total', '234', '51', '183', 0.756404, 0, 0, 0),
(29, '2', 'ipa_grade', 'minat', 'IPA', '101', '11', '90', 0.496622, 0.0406241, 0.986468, 0.0411814),
(30, '3', 'ipa_grade', 'minat', 'IPS', '133', '40', '93', 0.882208, 0.0406241, 0.986468, 0.0411814),
(31, '4', 'ipa_grade', 'mtk_grade', 'A', '11', '11', '0', 0, 0.171673, 0.964947, 0.177909),
(32, '5', 'ipa_grade', 'mtk_grade', 'B', '178', '40', '138', 0.768691, 0.171673, 0.964947, 0.177909),
(33, '6', 'ipa_grade', 'mtk_grade', 'C', '45', '0', '45', 0, 0.171673, 0.964947, 0.177909),
(34, '7', 'ipa_grade', 'ipa_grade', 'A', '28', '22', '6', 0.749595, 0.165206, 0.859689, 0.192169),
(35, '8', 'ipa_grade', 'ipa_grade', 'B', '191', '29', '162', 0.614407, 0.165206, 0.859689, 0.192169),
(36, '9', 'ipa_grade', 'ipa_grade', 'C', '15', '0', '15', 0, 0.165206, 0.859689, 0.192169),
(37, '10', 'ipa_grade', 'nilai_tes', 'A', '72', '23', '49', 0.903776, 0.0607357, 1.38685, 0.043794),
(38, '11', 'ipa_grade', 'nilai_tes', 'B', '130', '28', '102', 0.75165, 0.0607357, 1.38685, 0.043794),
(39, '12', 'ipa_grade', 'nilai_tes', 'C', '32', '0', '32', 0, 0.0607357, 1.38685, 0.043794),
(40, '1', 'minat', 'Total', 'Total', '93', '3', '90', 0.205593, 0, 0, 0),
(41, '2', 'minat', 'minat', 'IPA', '37', '3', '34', 0.405977, 0.0440753, 0.969679, 0.0454535),
(42, '3', 'minat', 'minat', 'IPS', '56', '0', '56', 0, 0.0440753, 0.969679, 0.0454535),
(43, '4', 'minat', 'mtk_grade', 'A', '0', '0', '0', 0, 0.0427817, 0.975761, 0.0438444),
(44, '5', 'minat', 'mtk_grade', 'B', '38', '3', '35', 0.398459, 0.0427817, 0.975761, 0.0438444),
(45, '6', 'minat', 'mtk_grade', 'C', '55', '0', '55', 0, 0.0427817, 0.975761, 0.0438444),
(46, '7', 'minat', 'ipa_grade', 'A', '0', '0', '0', 0, 0.0208208, 0.938315, 0.0221896),
(47, '8', 'minat', 'ipa_grade', 'B', '60', '3', '57', 0.286397, 0.0208208, 0.938315, 0.0221896),
(48, '9', 'minat', 'ipa_grade', 'C', '33', '0', '33', 0, 0.0208208, 0.938315, 0.0221896),
(49, '10', 'minat', 'nilai_tes', 'A', '30', '3', '27', 0.468996, 0.0543041, 1.5815, 0.0343371),
(50, '11', 'minat', 'nilai_tes', 'B', '29', '0', '29', 0, 0.0543041, 1.5815, 0.0343371),
(51, '12', 'minat', 'nilai_tes', 'C', '34', '0', '34', 0, 0.0543041, 1.5815, 0.0343371);

-- --------------------------------------------------------

--
-- Table structure for table `mining_c45`
--

CREATE TABLE `mining_c45` (
  `id` int(11) NOT NULL,
  `atribut` varchar(100) NOT NULL,
  `nilai_atribut` varchar(100) NOT NULL,
  `jml_kasus_total` varchar(5) NOT NULL,
  `jml_ipa` varchar(5) NOT NULL,
  `jml_ips` varchar(5) NOT NULL,
  `entropy` float NOT NULL,
  `inf_gain` float NOT NULL,
  `inf_gain_temp` float NOT NULL,
  `split_info` float NOT NULL,
  `split_info_temp` float NOT NULL,
  `gain_ratio` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mining_c45`
--

INSERT INTO `mining_c45` (`id`, `atribut`, `nilai_atribut`, `jml_kasus_total`, `jml_ipa`, `jml_ips`, `entropy`, `inf_gain`, `inf_gain_temp`, `split_info`, `split_info_temp`, `gain_ratio`) VALUES
(1, 'Total', 'Total', '93', '3', '90', 0.205593, 0, -0.205593, 0, 0, 0),
(2, 'minat', 'IPA', '37', '3', '34', 0.405977, 0.0440753, -0.161518, 0.969679, -0.529023, 0.0454535),
(3, 'minat', 'IPS', '56', '0', '56', 0, 0.0440753, 0, 0.969679, -0.440656, 0.0454535),
(4, 'mtk_grade', 'A', '0', '0', '0', 0, 0.0427817, 0, 0.975761, 0, 0.0438444),
(5, 'mtk_grade', 'B', '38', '3', '35', 0.398459, 0.0427817, -0.162811, 0.975761, -0.5276, 0.0438444),
(6, 'mtk_grade', 'C', '55', '0', '55', 0, 0.0427817, 0, 0.975761, -0.448161, 0.0438444),
(7, 'ipa_grade', 'A', '0', '0', '0', 0, 0.0208208, 0, 0.938315, 0, 0.0221896),
(8, 'ipa_grade', 'B', '60', '3', '57', 0.286397, 0.0208208, -0.184772, 0.938315, -0.407915, 0.0221896),
(9, 'ipa_grade', 'C', '33', '0', '33', 0, 0.0208208, 0, 0.938315, -0.5304, 0.0221896),
(10, 'nilai_tes', 'A', '30', '3', '27', 0.468996, 0.0543041, -0.151289, 1.5815, -0.526538, 0.0343371),
(11, 'nilai_tes', 'B', '29', '0', '29', 0, 0.0543041, 0, 1.5815, -0.524238, 0.0343371),
(12, 'nilai_tes', 'C', '34', '0', '34', 0, 0.0543041, 0, 1.5815, -0.530728, 0.0343371);

-- --------------------------------------------------------

--
-- Table structure for table `pohon_keputusan_c45`
--

CREATE TABLE `pohon_keputusan_c45` (
  `id` int(4) NOT NULL,
  `atribut` varchar(100) NOT NULL,
  `nilai_atribut` varchar(100) NOT NULL,
  `id_parent` char(3) DEFAULT NULL,
  `jml_ipa` varchar(5) NOT NULL,
  `jml_ips` varchar(5) NOT NULL,
  `keputusan` varchar(100) NOT NULL,
  `diproses` varchar(10) NOT NULL,
  `kondisi_atribut` varchar(255) NOT NULL,
  `looping_kondisi` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pohon_keputusan_c45`
--

INSERT INTO `pohon_keputusan_c45` (`id`, `atribut`, `nilai_atribut`, `id_parent`, `jml_ipa`, `jml_ips`, `keputusan`, `diproses`, `kondisi_atribut`, `looping_kondisi`) VALUES
(1, 'ips_grade', 'A', '0', '192', '6', 'IPA', 'Sudah', 'AND ips_grade = ~A~', 'Belum'),
(2, 'ips_grade', 'B', '0', '51', '183', 'IPS', 'Sudah', 'AND ips_grade = ~B~', 'Belum'),
(3, 'ips_grade', 'C', '0', '3', '90', 'IPS', 'Sudah', 'AND ips_grade = ~C~', 'Belum'),
(5, 'ipa_grade', 'B', '1', '53', '0', 'IPA', 'Sudah', 'AND ips_grade = ~A~ AND ipa_grade = ~B~', 'Sudah'),
(6, 'ipa_grade', 'C', '1', '0', '3', 'IPS', 'Sudah', 'AND ips_grade = ~A~ AND ipa_grade = ~C~', 'Sudah'),
(9, 'ipa_grade', 'C', '2', '0', '15', 'IPS', 'Sudah', 'AND ips_grade = ~B~ AND ipa_grade = ~C~', 'Sudah'),
(11, 'minat', 'IPS', '3', '0', '56', 'IPS', 'Belum', 'AND ips_grade = ~C~ AND minat = ~IPS~', 'Sudah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_atribut`
--

CREATE TABLE `tb_atribut` (
  `id` int(3) NOT NULL,
  `atribut` varchar(100) NOT NULL,
  `nilai_atribut` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_atribut`
--

INSERT INTO `tb_atribut` (`id`, `atribut`, `nilai_atribut`) VALUES
(1, 'total', 'total'),
(2, 'minat', 'IPA'),
(3, 'minat', 'IPS'),
(4, 'mtk_grade', 'A'),
(5, 'mtk_grade', 'B'),
(6, 'mtk_grade', 'C'),
(7, 'ipa_grade', 'A'),
(8, 'ipa_grade', 'B'),
(9, 'ipa_grade', 'C'),
(10, 'ips_grade', 'A'),
(11, 'ips_grade', 'B'),
(12, 'ips_grade', 'C'),
(13, 'nilai_tes', 'A'),
(14, 'nilai_tes', 'B'),
(15, 'nilai_tes', 'C');

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
  `nilai_tes` varchar(256) NOT NULL,
  `hasil` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_training`
--

INSERT INTO `tb_training` (`id`, `nama_siswa`, `nama_sekolah`, `mtk_1`, `mtk_2`, `mtk_3`, `mtk_4`, `mtk_5`, `mtk_rata`, `mtk_grade`, `ipa_1`, `ipa_2`, `ipa_3`, `ipa_4`, `ipa_5`, `ipa_rata`, `ipa_grade`, `ips_1`, `ips_2`, `ips_3`, `ips_4`, `ips_5`, `ips_rata`, `ips_grade`, `minat`, `nilai_tes`, `hasil`) VALUES
(1, 'Aan Irawan', 'SMP Negeri 1 Ampibabo', 79, 80, 88, 82, 81, 82, 'B', 79, 82, 84, 85, 86, 83.2, 'B', 80, 82, 87, 85, 86, 84, 'B', 'IPA', 'B', 'IPS'),
(2, 'Abd. Ihsan', 'SMP Negeri 1 Ampibabo', 77, 88, 90, 91, 92, 87.6, 'A', 80, 85, 90, 91, 91, 87.4, 'A', 79, 89, 90, 91, 92, 88.2, 'A', 'IPA', 'A', 'IPA'),
(3, 'Abd. Rahim', 'SMP Negeri 2 Ampibabo', 75, 85, 89, 89, 89, 85.4, 'A', 77, 85, 89, 89, 89, 85.8, 'A', 78, 86, 89, 90, 90, 86.6, 'A', 'IPS', 'A', 'IPA'),
(4, 'Abd. Rahman', 'SMP Negeri 3 Ampibabo', 75, 85, 88, 98, 91, 87.4, 'A', 77, 88, 88, 96, 96, 89, 'A', 77, 85, 88, 98, 96, 88.8, 'A', 'IPA', 'A', 'IPA'),
(5, 'Abdi Gunawan', 'SMP Negeri 1 Ampibabo', 75, 80, 95, 92, 92, 86.8, 'A', 75, 80, 92, 90, 94, 86.2, 'A', 77, 85, 93, 95, 95, 89, 'A', 'IPS', 'A', 'IPA'),
(6, 'Abdila', 'SMP Negeri 1 Ampibabo', 77, 82, 89, 90, 91, 85.8, 'A', 75, 87, 88, 89, 90, 85.8, 'A', 78, 85, 93, 93, 93, 88.4, 'A', 'IPA', 'A', 'IPA'),
(7, 'Abdul Mesi', 'MtsN Ampibabo', 67, 88, 86, 88, 82, 82.2, 'B', 80, 84, 86, 86, 81, 83.4, 'B', 80, 86, 80, 81, 80, 81.4, 'B', 'IPA', 'A', 'IPS'),
(8, 'Abdul Reza', 'SMP Negeri 1 Ampibabo', 77, 76, 77, 75, 80, 77, 'B', 82, 78, 78, 85, 82, 81, 'B', 76, 78, 79, 78, 80, 78.2, 'B', 'IPA', 'B', 'IPS'),
(9, 'Abidad Bintang Prawana', 'MtsN Ampibabo', 64, 80, 83, 85, 80, 78.4, 'B', 69, 80, 81, 85, 80, 79, 'B', 72, 84, 89, 83, 80, 81.6, 'B', 'IPS', 'B', 'IPS'),
(10, 'Abigael Singkali', 'MtsN Ampibabo', 60, 66, 80, 87, 84, 75.4, 'B', 77, 75, 87, 81, 87, 81.4, 'B', 66, 77, 80, 80, 89, 78.4, 'B', 'IPS', 'B', 'IPS'),
(11, 'ade rian pratama', 'SMP Negeri 1 Ampibabo', 75, 78, 80, 78, 80, 78.2, 'B', 75, 85, 84, 88, 81, 82.6, 'B', 84, 80, 93, 80, 86, 84.6, 'B', 'IPA', 'B', 'IPA'),
(12, 'Adelia', 'MtsN Ampibabo', 67, 75, 78, 80, 84, 76.8, 'B', 73, 85, 79, 88, 90, 83, 'B', 89, 82, 86, 90, 79, 85.2, 'A', 'IPA', 'B', 'IPA'),
(13, 'adi puta tuwo', 'SMP Negeri 2 Ampibabo', 90, 92, 92, 94, 95, 92.6, 'A', 90, 92, 94, 95, 96, 93.4, 'A', 90, 90, 92, 92, 94, 91.6, 'A', 'IPA', 'A', 'IPA'),
(14, 'Adinda', 'SMP Negeri 2 Ampibabo', 70, 80, 90, 91, 92, 84.6, 'B', 70, 75, 90, 91, 90, 83.2, 'B', 76, 85, 90, 91, 90, 86.4, 'A', 'IPS', 'A', 'IPA'),
(15, 'Adinda', 'SMP Negeri 3 Ampibabo', 79, 80, 79, 88, 91, 83.4, 'B', 76, 87, 77, 95, 98, 86.6, 'A', 83, 98, 82, 91, 87, 88.2, 'A', 'IPA', 'A', 'IPA'),
(16, 'Adit', 'SMP Negeri 1 Ampibabo', 79, 80, 80, 82, 82, 80.6, 'B', 83, 83, 84, 85, 85, 84, 'B', 80, 80, 84, 82, 82, 81.6, 'B', 'IPS', 'B', 'IPS'),
(17, 'adri barkah perdana', 'SMP Negeri 1 Ampibabo', 76, 82, 92, 93, 93, 87.2, 'A', 76, 85, 90, 92, 92, 87, 'A', 75, 87, 92, 94, 94, 88.4, 'A', 'IPS', 'A', 'IPA'),
(18, 'Adrian Ruslan', 'SMP Negeri 1 Ampibabo', 74, 80, 80, 77, 77, 77.6, 'B', 75, 85, 89, 91, 81, 84.2, 'B', 80, 87, 88, 79, 89, 84.6, 'B', 'IPS', 'B', 'IPA'),
(19, 'adrizal arfiadi', 'SMP Negeri 3 Ampibabo', 70, 81, 80, 85, 82, 79.6, 'B', 85, 87, 78, 72, 90, 82.4, 'B', 75, 75, 85, 80, 80, 79, 'B', 'IPA', 'B', 'IPS'),
(20, 'Afdal', 'SMP Negeri 3 Ampibabo', 75, 75, 84, 75, 80, 77.8, 'B', 76, 83, 85, 88, 85, 83.4, 'B', 73, 71, 87, 80, 81, 78.4, 'B', 'IPS', 'B', 'IPS'),
(21, 'Afdal Salman', 'SMP Negeri 2 Ampibabo', 81, 82, 87, 87, 83, 84, 'B', 95, 82, 89, 88, 86, 88, 'A', 87, 83, 90, 93, 83, 87.2, 'A', 'IPS', 'A', 'IPA'),
(22, 'Affan', 'SMP Negeri 3 Ampibabo', 77, 82, 77, 79, 83, 79.6, 'B', 79, 85, 83, 95, 80, 84.4, 'B', 83, 94, 93, 95, 92, 91.4, 'A', 'IPA', 'A', 'IPA'),
(23, 'Afif Fairuz', 'SMP Negeri 2 Ampibabo', 77, 86, 92, 93, 93, 88.2, 'A', 75, 85, 93, 94, 94, 88.2, 'A', 79, 86, 95, 95, 96, 90.2, 'A', 'IPS', 'A', 'IPA'),
(24, 'Afit', 'SMP Negeri 2 Ampibabo', 80, 92, 85, 91, 88, 87.2, 'A', 78, 89, 85, 95, 94, 88.2, 'A', 79, 89, 85, 90, 91, 86.8, 'A', 'IPA', 'A', 'IPA'),
(25, 'Afriyansa A. Hb. Amboelo', 'SMP Negeri 3 Ampibabo', 76, 87, 90, 90, 92, 87, 'A', 75, 85, 91, 93, 95, 87.8, 'A', 77, 90, 91, 92, 94, 88.8, 'A', 'IPA', 'A', 'IPA'),
(26, 'Afrizal Muhihdi', 'SMP Negeri 3 Ampibabo', 77, 87, 92, 92, 94, 88.4, 'A', 76, 85, 92, 93, 95, 88.2, 'A', 80, 95, 95, 97, 97, 92.8, 'A', 'IPS', 'A', 'IPA'),
(27, 'agil angelika daut', 'SMP Negeri 3 Ampibabo', 75, 85, 90, 90, 90, 86, 'A', 78, 85, 90, 92, 94, 87.8, 'A', 76, 87, 90, 91, 94, 87.6, 'A', 'IPA', 'A', 'IPA'),
(28, 'Agriza Wandini', 'SMP Negeri 2 Ampibabo', 78, 78, 77, 78, 84, 79, 'B', 87, 84, 81, 82, 87, 84.2, 'B', 77, 77, 78, 79, 79, 78, 'B', 'IPA', 'B', 'IPS'),
(29, 'Agus Gel Gel Swarupa', 'SMP Negeri 1 Ampibabo', 60, 80, 80, 82, 90, 78.4, 'B', 75, 80, 81, 86, 87, 81.8, 'B', 81, 84, 89, 91, 80, 85, 'A', 'IPA', 'A', 'IPA'),
(30, 'Ahmad Adi Ozan', 'SMP Negeri 2 Ampibabo', 62, 79, 78, 81, 77, 75.4, 'B', 70, 78, 76, 85, 90, 79.8, 'B', 72, 75, 80, 87, 79, 78.6, 'B', 'IPA', 'B', 'IPS'),
(31, 'Ahmad Faqih Tegar', 'SMP Negeri 3 Ampibabo', 92, 89, 94, 94, 97, 93.2, 'A', 88, 91, 95, 95, 96, 93, 'A', 89, 89, 92, 94, 94, 91.6, 'A', 'IPS', 'A', 'IPA'),
(32, 'ahmad junaidi', 'SMP Negeri 1 Ampibabo', 78, 79, 77, 76, 80, 78, 'B', 79, 80, 80, 80, 80, 79.8, 'B', 80, 83, 80, 96, 90, 85.8, 'A', 'IPS', 'B', 'IPA'),
(33, 'ahmad taufik B', 'MtsN Ampibabo', 85, 82, 82, 92, 94, 87, 'A', 87, 85, 86, 92, 86, 87.2, 'A', 87, 86, 84, 92, 88, 87.4, 'A', 'IPA', 'A', 'IPA'),
(34, 'Ainurrahmi', 'SMP Negeri 3 Ampibabo', 78, 85, 79, 90, 90, 84.4, 'B', 77, 85, 76, 94, 94, 85.2, 'A', 79, 87, 78, 96, 96, 87.2, 'A', 'IPA', 'A', 'IPA'),
(35, 'Aisa', 'SMP Negeri 2 Ampibabo', 77, 85, 80, 80, 88, 82, 'B', 71, 85, 90, 80, 88, 82.8, 'B', 88, 79, 90, 91, 78, 85.2, 'A', 'IPA', 'A', 'IPA'),
(36, 'Aisyah', 'SMP Negeri 2 Ampibabo', 60, 87, 80, 85, 79, 78.2, 'B', 80, 77, 82, 89, 84, 82.4, 'B', 80, 80, 79, 80, 80, 79.8, 'B', 'IPS', 'B', 'IPS'),
(37, 'ajrian mase abrar', 'SMP Negeri 3 Ampibabo', 75, 87, 90, 90, 90, 86.4, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 75, 87, 89, 89, 90, 86, 'A', 'IPA', 'A', 'IPA'),
(38, 'Akbar', 'SMP Negeri 3 Ampibabo', 75, 85, 91, 92, 94, 87.4, 'A', 74, 85, 91, 92, 95, 87.4, 'A', 77, 85, 90, 91, 94, 87.4, 'A', 'IPS', 'A', 'IPA'),
(39, 'Alamsyah', 'SMP Negeri 2 Ampibabo', 74, 80, 83, 85, 86, 81.6, 'B', 82, 83, 84, 82, 82, 82.6, 'B', 85, 82, 84, 32, 82, 73, 'C', 'IPS', 'B', 'IPS'),
(40, 'Alfa Mandala', 'MtsN Ampibabo', 94, 96, 92, 93, 92, 93.4, 'A', 98, 92, 86, 95, 92, 92.6, 'A', 93, 96, 95, 94, 95, 94.6, 'A', 'IPS', 'A', 'IPA'),
(41, 'Alfarizi', 'SMP Negeri 1 Ampibabo', 60, 77, 85, 88, 76, 77.2, 'B', 69, 81, 73, 83, 85, 78.2, 'B', 74, 75, 87, 38, 79, 70.6, 'C', 'IPS', 'B', 'IPS'),
(42, 'Alfaruq Zikri', 'SMP Negeri 1 Ampibabo', 65, 75, 75, 30, 76, 64.2, 'C', 75, 80, 82, 85, 81, 80.6, 'B', 78, 78, 81, 32, 78, 69.4, 'C', 'IPA', 'B', 'IPS'),
(43, 'Alfut', 'SMP Negeri 1 Ampibabo', 75, 85, 88, 89, 90, 85.4, 'A', 74, 85, 89, 90, 92, 86, 'A', 78, 85, 94, 94, 95, 89.2, 'A', 'IPA', 'A', 'IPA'),
(44, 'Algi Prasetyo', 'SMP Negeri 1 Ampibabo', 82, 85, 95, 90, 79, 86.2, 'A', 69, 85, 89, 88, 95, 85.2, 'A', 80, 78, 94, 91, 80, 86.25, 'A', 'IPA', 'A', 'IPA'),
(45, 'alma mauliana', 'SMP Negeri 2 Ampibabo', 78, 88, 87, 90, 90, 86.6, 'A', 75, 85, 86, 94, 96, 87.2, 'A', 76, 87, 89, 96, 90, 87.6, 'A', 'IPS', 'A', 'IPA'),
(46, 'Amalia', 'SMP Negeri 2 Ampibabo', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 'A', 'IPA'),
(47, 'Amana Faturiska', 'SMP Negeri 2 Ampibabo', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 'A', 'IPA'),
(48, 'Amanda Putri', 'SMP Negeri 2 Ampibabo', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 'A', 'IPA'),
(49, 'Ambran', 'SMP Negeri satap 1 Ampibabo', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 'A', 'IPA'),
(50, 'amelia tasya', 'SMP Negeri satap 1 Ampibabo', 80, 89, 82, 96, 80, 85.4, 'A', 90, 79, 78, 82, 82, 82.2, 'B', 82, 81, 78, 80, 77, 79.6, 'B', 'IPS', 'B', 'IPA'),
(51, 'ana restiana', 'SMP Negeri 1 Ampibabo', 60, 82, 75, 80, 78, 75, 'B', 70, 76, 80, 85, 88, 79.8, 'B', 79, 75, 80, 83, 78, 79, 'B', 'IPS', 'B', 'IPS'),
(52, 'Ananda Lestari', 'SMP Negeri 1 Ampibabo', 80, 76, 93, 94, 95, 87.6, 'A', 78, 91, 93, 94, 95, 90.2, 'A', 84, 85, 92, 94, 95, 90, 'A', 'IPA', 'A', 'IPA'),
(53, 'Anansi', 'SMP Negeri 1 Ampibabo', 78, 86, 88, 89, 90, 86.2, 'A', 77, 87, 89, 89, 90, 86.4, 'A', 77, 87, 89, 90, 92, 87, 'A', 'IPA', 'A', 'IPA'),
(54, 'Andi Ferdi', 'SMP Negeri satap 1 Ampibabo', 81, 90, 90, 95, 90, 89.2, 'A', 78, 80, 88, 85, 85, 83.2, 'B', 75, 85, 95, 90, 85, 86, 'A', 'IPS', 'A', 'IPA'),
(55, 'Andi Hasmi', 'SMPN 2 AMPIBABO', 75, 85, 89, 90, 90, 85.8, 'A', 77, 84, 91, 92, 92, 87.2, 'A', 76, 85, 92, 94, 95, 88.4, 'A', 'IPS', 'A', 'IPA'),
(56, 'andi jumarni', 'SATAP AMPIBABO', 65, 74, 80, 82, 90, 78.2, 'B', 73, 78, 68, 72, 80, 74.2, 'C', 75, 85, 85, 78, 82, 81, 'B', 'IPS', 'B', 'IPS'),
(57, 'Andi Muhammad Rizki', 'SATAP AMPIBABO', 75, 69, 97, 78, 86, 81, 'B', 77, 75, 71, 84, 74, 76.2, 'B', 80, 80, 85, 80, 75, 80, 'B', 'IPA', 'A', 'IPA'),
(58, 'Andi Rasya Nur', 'SATAP AMPIBABO', 76, 85, 90, 91, 91, 86.6, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 76, 90, 92, 92, 94, 88.8, 'A', 'IPA', 'A', 'IPA'),
(59, 'Andi Razlan', 'SATAP AMPIBABO', 76, 86, 89, 89, 90, 86, 'A', 77, 85, 92, 92, 94, 88, 'A', 86, 86, 84, 90, 90, 87.2, 'A', 'IPA', 'A', 'IPA'),
(60, 'Andi Rusani Indah Sari', 'SATAP AMPIBABO', 84, 82, 82, 89, 80, 83.4, 'B', 86, 84, 86, 89, 84, 85.8, 'A', 76, 76, 87, 89, 85, 82.6, 'B', 'IPS', 'B', 'IPA'),
(61, 'Andra Fareza', 'MTs. ALKHAIRAAT AMPIBABO', 80, 81, 81, 85, 86, 82.6, 'B', 85, 86, 89, 91, 92, 88.6, 'A', 77, 80, 72, 80, 90, 79.8, 'B', 'IPS', 'A', 'IPA'),
(62, 'Andre Bunai', 'SATAP AMPIBABO', 88, 85, 84, 82, 85, 84.8, 'B', 86, 80, 87, 79, 90, 84.4, 'B', 90, 80, 90, 91, 79, 86, 'A', 'IPS', 'B', 'IPA'),
(63, 'Andriati Merly Matantu', 'SATAP AMPIBABO', 69, 78, 95, 82, 90, 82.8, 'B', 76, 85, 77, 83, 84, 81, 'B', 76, 75, 79, 75, 80, 77, 'B', 'IPS', 'B', 'IPS'),
(64, 'angga budi susanto', 'MTs. ALKHAIRAAT AMPIBABO', 70, 78, 74, 82, 80, 76.8, 'B', 72, 72, 78, 77, 80, 75.8, 'B', 76, 86, 84, 83, 85, 82.8, 'B', 'IPA', 'B', 'IPS'),
(65, 'Angga Prasetio', 'SATAP AMPIBABO', 77, 83, 79, 78, 82, 79.8, 'B', 79, 79, 79, 88, 89, 82.8, 'B', 80, 83, 86, 88, 90, 85.4, 'A', 'IPA', 'B', 'IPA'),
(66, 'Angga Prasetya', 'MTs. ALKHAIRAAT AMPIBABO', 78, 85, 80, 85, 83, 82.2, 'B', 78, 80, 75, 80, 84, 79.4, 'B', 85, 89, 90, 95, 89, 89.6, 'A', 'IPA', 'A', 'IPA'),
(67, 'Anggriani', 'SATAP AMPIBABO', 79, 85, 86, 90, 82, 84.4, 'B', 80, 82, 83, 85, 84, 82.8, 'B', 85, 89, 92, 91, 80, 87.4, 'A', 'IPA', 'A', 'IPA'),
(68, 'Anggun Kasami', 'SATAP AMPIBABO', 76, 90, 85, 90, 81, 84.4, 'B', 80, 85, 86, 88, 91, 86, 'A', 82, 80, 92, 78, 80, 82.4, 'B', 'IPS', 'B', 'IPA'),
(69, 'Anggun Pratiwi', 'MTs. ALKHAIRAAT AMPIBABO', 79, 77, 79, 87, 88, 82, 'B', 79, 81, 91, 90, 86, 85.4, 'A', 75, 87, 83, 78, 90, 82.6, 'B', 'IPS', 'B', 'IPA'),
(70, 'Angris Gunawan', 'SATAP AMPIBABO', 80, 78, 81, 82, 82, 80.6, 'B', 80, 87, 77, 86, 88, 83.6, 'B', 83, 80, 87, 94, 78, 84.4, 'B', 'IPS', 'B', 'IPS'),
(71, 'Anjas', 'MTs. ALKHAIRAAT AMPIBABO', 60, 75, 75, 78, 81, 73.8, 'C', 68, 75, 75, 80, 80, 75.6, 'B', 68, 76, 76, 33, 78, 66.2, 'C', 'IPS', 'C', 'IPS'),
(72, 'Annisa', 'SATAP AMPIBABO', 73, 76, 79, 86, 77, 78.2, 'B', 72, 80, 77, 79, 79, 77.4, 'B', 75, 87, 76, 76, 81, 79, 'B', 'IPS', 'C', 'IPS'),
(73, 'annisa mahardhani', 'MTs. ALKHAIRAAT AMPIBABO', 82, 82, 77, 74, 72, 77.4, 'B', 80, 82, 79, 76, 82, 79.8, 'B', 76, 75, 75, 78, 80, 76.8, 'B', 'IPS', 'C', 'IPS'),
(74, 'Anofyan Patoro', 'SATAP AMPIBABO', 60, 83, 81, 82, 79, 77, 'B', 75, 77, 75, 75, 82, 76.8, 'B', 68, 75, 77, 79, 78, 75.4, 'B', 'IPA', 'B', 'IPA'),
(75, 'aprilia nurhayati', 'MTs. ALKHAIRAAT AMPIBABO', 89, 91, 87, 90, 85, 88.4, 'A', 82, 85, 91, 93, 94, 89, 'A', 87, 85, 92, 87, 84, 87, 'A', 'IPA', 'C', 'IPA'),
(76, 'Apriyani Kartini Kanoli', 'SATAP AMPIBABO', 75, 75, 70, 70, 76, 73.2, 'C', 75, 75, 70, 70, 78, 73.6, 'C', 71, 75, 75, 75, 78, 74.8, 'C', 'IPA', 'C', 'IPS'),
(77, 'Aqida Izzah', 'SATAP AMPIBABO', 60, 78, 75, 75, 84, 74.4, 'C', 69, 77, 75, 80, 80, 76.2, 'B', 69, 75, 79, 33, 78, 66.8, 'C', 'IPS', 'C', 'IPS'),
(78, 'Aqidatul Syawal', 'MTs. ALKHAIRAAT AMPIBABO', 60, 72, 93, 87, 84, 79.2, 'B', 69, 75, 76, 80, 84, 76.8, 'B', 73, 78, 79, 78, 78, 77.2, 'B', 'IPA', 'C', 'IPS'),
(79, 'Ardan', 'SATAP AMPIBABO', 64, 67, 68, 70, 72, 68.2, 'C', 77, 80, 70, 71, 70, 73.6, 'C', 77, 65, 70, 75, 70, 71.4, 'C', 'IPA', 'C', 'IPS'),
(80, 'Ardianza', 'SMPN 2 AMPIBABO', 60, 60, 70, 70, 80, 68, 'C', 68, 65, 70, 75, 85, 72.6, 'C', 65, 65, 72, 70, 77, 69.8, 'C', 'IPS', 'C', 'IPS'),
(81, 'Arham Sandi', 'MTs. ALKHAIRAAT AMPIBABO', 60, 52, 70, 75, 75, 66.4, 'C', 70, 68, 80, 79, 84, 76.2, 'B', 70, 65, 75, 30, 82, 64.4, 'C', 'IPA', 'A', 'IPS'),
(82, 'Ariansah', 'MTs. ALKHAIRAAT AMPIBABO', 60, 68, 85, 80, 76, 73.8, 'C', 68, 78, 75, 83, 84, 77.6, 'B', 74, 75, 78, 79, 78, 76.8, 'B', 'IPS', 'A', 'IPS'),
(83, 'Arianto', 'SATAP AMPIBABO', 60, 75, 75, 78, 78, 73.2, 'C', 69, 75, 75, 78, 82, 75.8, 'B', 72, 78, 75, 81, 77, 76.6, 'B', 'IPS', 'A', 'IPS'),
(84, 'Arifaldi', 'SATAP AMPIBABO', 61, 66, 80, 75, 79, 72.2, 'C', 75, 79, 86, 77, 88, 81, 'B', 65, 71, 70, 82, 85, 74.6, 'C', 'IPS', 'A', 'IPS'),
(85, 'Arifandi', 'SATAP AMPIBABO', 50, 60, 68, 75, 77, 66, 'C', 60, 64, 70, 75, 88, 71.4, 'C', 65, 65, 70, 75, 72, 69.4, 'C', 'IPS', 'A', 'IPS'),
(86, 'Arini', 'SATAP AMPIBABO', 60, 78, 78, 81, 75, 74.4, 'C', 69, 78, 75, 78, 87, 77.4, 'B', 68, 76, 78, 82, 79, 76.6, 'B', 'IPA', 'A', 'IPS'),
(87, 'Arjuna Saputra', 'SATAP AMPIBABO', 60, 75, 77, 82, 82, 75.2, 'B', 70, 80, 75, 75, 79, 75.8, 'B', 68, 75, 77, 78, 75, 74.6, 'C', 'IPA', 'A', 'IPS'),
(88, 'Armandiansa', 'SMPN 2 AMPIBABO', 76, 70, 79, 78, 79, 76.4, 'B', 80, 75, 79, 79, 88, 80.2, 'B', 80, 75, 80, 80, 80, 79, 'B', 'IPA', 'A', 'IPS'),
(89, 'Arniyanti', 'SMPN 2 AMPIBABO', 70, 70, 79, 75, 81, 75, 'B', 70, 73, 78, 75, 77, 74.6, 'C', 69, 75, 75, 72, 81, 74.4, 'C', 'IPS', 'A', 'IPS'),
(90, 'Artika', 'SMPN 2 AMPIBABO', 60, 83, 80, 82, 78, 76.6, 'B', 69, 76, 79, 75, 81, 76, 'B', 68, 75, 79, 81, 78, 76.2, 'B', 'IPA', 'A', 'IPS'),
(91, 'Arya Saputra', 'SMPN 2 AMPIBABO', 60, 75, 75, 75, 81, 73.2, 'C', 75, 80, 75, 80, 80, 78, 'B', 75, 76, 75, 77, 75, 75.6, 'B', 'IPS', 'A', 'IPS'),
(92, 'Ashar Aditia', 'SMPN 2 AMPIBABO', 69, 68, 70, 71, 75, 70.6, 'C', 76, 71, 72, 74, 74, 73.4, 'C', 70, 70, 75, 75, 85, 75, 'B', 'IPS', 'A', 'IPS'),
(93, 'Asmar Abbas', 'SMPN 2 AMPIBABO', 75, 76, 68, 75, 80, 74.8, 'C', 75, 75, 70, 77, 79, 75.2, 'B', 71, 76, 70, 75, 76, 73.6, 'C', 'IPA', 'A', 'IPS'),
(94, 'Asmar Abbas', 'SMPN 2 AMPIBABO', 80, 70, 75, 70, 78, 74.6, 'C', 63, 75, 78, 74, 78, 73.6, 'C', 75, 65, 75, 75, 80, 74, 'C', 'IPA', 'A', 'IPS'),
(95, 'Asnur', 'SMPN 2 AMPIBABO', 81, 81, 80, 75, 78, 79, 'B', 77, 79, 80, 78, 76, 78, 'B', 87, 83, 76, 71, 95, 82.4, 'B', 'IPA', 'A', 'IPS'),
(96, 'Asrafil', 'SMPN 2 AMPIBABO', 60, 79, 78, 78, 81, 75.2, 'B', 69, 71, 76, 79, 84, 75.8, 'B', 68, 75, 75, 78, 78, 74.8, 'C', 'IPS', 'A', 'IPS'),
(97, 'Astika Dwi Meiriska', 'SMPN 2 AMPIBABO', 72, 75, 75, 76, 75, 74.6, 'C', 75, 75, 76, 76, 77, 75.8, 'B', 80, 76, 76, 79, 80, 78.2, 'B', 'IPA', 'A', 'IPS'),
(98, 'Astrid Ikra Mawika', 'SMPN 2 AMPIBABO', 60, 87, 85, 80, 82, 78.8, 'B', 69, 77, 77, 87, 82, 78.4, 'B', 71, 78, 78, 80, 79, 77.2, 'B', 'IPA', 'A', 'IPS'),
(99, 'Astuti', 'MTs. ALKHAIRAAT AMPIBABO', 66, 75, 85, 79, 80, 77, 'B', 68, 75, 85, 80, 93, 80.2, 'B', 74, 75, 95, 90, 88, 84.4, 'B', 'IPA', 'A', 'IPS'),
(100, 'Atika', 'MTs. ALKHAIRAAT AMPIBABO', 68, 70, 67, 65, 75, 69, 'C', 65, 68, 66, 66, 77, 68.4, 'C', 66, 77, 66, 71, 76, 71.2, 'C', 'IPS', 'A', 'IPS'),
(101, 'Aulia Fatra', 'MTs. ALKHAIRAAT AMPIBABO', 66, 77, 80, 78, 79, 76, 'B', 68, 77, 75, 83, 85, 77.6, 'B', 68, 76, 78, 31, 79, 66.4, 'C', 'IPS', 'C', 'IPS'),
(102, 'Aulia Nadin Azzahra', 'SATAP AMPIBABO', 71, 72, 73, 75, 70, 72.2, 'C', 70, 80, 80, 65, 79, 74.8, 'C', 72, 79, 79, 79, 77, 77.2, 'B', 'IPA', 'B', 'IPS'),
(103, 'Aulivia', 'SATAP AMPIBABO', 65, 76, 66, 71, 82, 72, 'C', 70, 76, 73, 74, 86, 75.8, 'B', 72, 97, 89, 85, 86, 85.8, 'A', 'IPS', 'B', 'IPA'),
(104, 'Awal', 'MTs. ALKHAIRAAT AMPIBABO', 66, 64, 70, 70, 80, 70, 'C', 64, 64, 72, 74, 87, 72.2, 'C', 72, 97, 89, 85, 86, 85.8, 'A', 'IPA', 'B', 'IPS'),
(105, 'Ayu Lestari', 'MTs. ALKHAIRAAT AMPIBABO', 60, 77, 60, 77, 75, 68, 'C', 68, 75, 69, 75, 85, 74.4, 'C', 73, 82, 72, 35, 83, 69, 'C', 'IPS', 'B', 'IPS'),
(106, 'Ayu Maha Dewi', 'MTs. ALKHAIRAAT AMPIBABO', 75, 75, 75, 78, 75, 75.6, 'B', 75, 75, 76, 75, 76, 75.4, 'B', 68, 75, 68, 75, 70, 71.2, 'C', 'IPA', 'C', 'IPS'),
(107, 'Ayuni R. Larotha', 'MTs. ALKHAIRAAT AMPIBABO', 60, 80, 75, 75, 84, 74.75, 'C', 69, 75, 75, 78, 80, 75.4, 'B', 75, 76, 80, 75, 80, 77.2, 'B', 'IPA', 'B', 'IPS'),
(108, 'Azar', 'MTs. ALKHAIRAAT AMPIBABO', 63, 75, 95, 80, 79, 78.4, 'B', 68, 75, 78, 79, 80, 76, 'B', 72, 75, 75, 81, 75, 75.6, 'B', 'IPA', 'B', 'IPS'),
(109, 'Beby Indah Sari', 'MTs. ALKHAIRAAT AMPIBABO', 60, 75, 80, 81, 81, 75.4, 'B', 70, 78, 79, 81, 81, 77.8, 'B', 70, 75, 79, 70, 76, 74, 'C', 'IPA', 'C', 'IPS'),
(110, 'Cahyani Ramadhan', 'MTs. ALKHAIRAAT AMPIBABO', 75, 76, 78, 76, 0, 61, 'C', 75, 76, 80, 77, 0, 61.6, 'C', 73, 80, 78, 34, 79, 68.8, 'C', 'IPS', 'C', 'IPS'),
(111, 'Carina Angelia Basjir', 'MTs. ALKHAIRAAT AMPIBABO', 78, 80, 80, 85, 85, 81.6, 'B', 80, 78, 88, 85, 88, 83.8, 'B', 75, 75, 75, 79, 0, 60.8, 'C', 'IPS', 'C', 'IPS'),
(112, 'Chelsi Olivia', 'MTs. ALKHAIRAAT SINIU', 60, 75, 80, 80, 78, 74.6, 'C', 69, 80, 75, 79, 80, 76.6, 'B', 95, 79, 82, 91, 97, 88.8, 'A', 'IPA', 'B', 'IPA'),
(113, 'Chikita Kirey Tomuntuan', 'MTs. ALKHAIRAAT SINIU', 60, 83, 78, 75, 80, 75.2, 'B', 70, 78, 75, 75, 88, 77.2, 'B', 75, 75, 75, 80, 79, 76.8, 'B', 'IPA', 'B', 'IPS'),
(114, 'Cikatri Aprila', 'SMPN 3 AMPIBABO', 60, 75, 79, 84, 76, 74.8, 'C', 69, 80, 77, 78, 84, 77.6, 'B', 72, 75, 78, 79, 79, 76.6, 'B', 'IPA', 'B', 'IPS'),
(115, 'Cindy Faula Ika Lestari', 'SMPN 3 AMPIBABO', 70, 75, 70, 78, 75, 73.6, 'C', 75, 75, 76, 75, 90, 78.2, 'B', 68, 70, 79, 80, 87, 76.8, 'B', 'IPS', 'B', 'IPS'),
(116, 'Citra Ramadani', 'MTs. ALKHAIRAAT AMPIBABO', 69, 69, 71, 80, 80, 73.8, 'C', 66, 70, 68, 79, 69, 70.4, 'C', 70, 75, 74, 75, 81, 75, 'B', 'IPA', 'B', 'IPS'),
(117, 'Citra Vebriyanti', 'MTs. ALKHAIRAAT AMPIBABO', 77, 75, 82, 79, 77, 78, 'B', 73, 79, 83, 75, 76, 77.2, 'B', 75, 77, 77, 77, 89, 79, 'B', 'IPA', 'C', 'IPS'),
(118, 'Citra Wirda', 'MTs. ALKHAIRAAT AMPIBABO', 80, 82, 80, 82, 87, 82.2, 'B', 80, 84, 81, 83, 90, 83.6, 'B', 0, 84, 82, 80, 87, 66.6, 'C', 'IPS', 'C', 'IPS'),
(119, 'Clara Lasimpara', 'SMPN 3 AMPIBABO', 64, 83, 78, 80, 82, 77.4, 'B', 68, 80, 75, 79, 81, 76.6, 'B', 69, 80, 70, 75, 80, 74.8, 'C', 'IPS', 'B', 'IPS'),
(120, 'Cresya Sarapang', 'MTs. ALKHAIRAAT AMPIBABO', 73, 71, 66, 75, 80, 73, 'C', 73, 79, 74, 80, 80, 77.2, 'B', 70, 73, 70, 75, 80, 73.6, 'C', 'IPS', 'B', 'IPS'),
(121, 'Crystin Sherlin Mengkopi', 'SMPN 3 AMPIBABO', 70, 78, 81, 79, 79, 77.4, 'B', 78, 80, 85, 83, 90, 83.2, 'B', 70, 75, 80, 85, 80, 78, 'B', 'IPS', 'C', 'IPS'),
(122, 'Dandung Sadewa', 'SMPN 3 AMPIBABO', 75, 78, 79, 79, 80, 78.2, 'B', 75, 78, 79, 79, 80, 78.2, 'B', 76, 78, 78, 80, 85, 79.4, 'B', 'IPS', 'C', 'IPS'),
(123, 'Debi Lestari Putri', 'SMPN 3 AMPIBABO', 78, 89, 89, 90, 90, 87.2, 'A', 77, 85, 92, 93, 93, 88, 'A', 79, 87, 90, 94, 94, 88.8, 'A', 'IPA', 'C', 'IPA'),
(124, 'Dedy Afriansyah', 'SMPN 3 AMPIBABO', 68, 76, 70, 76, 79, 73.8, 'C', 70, 75, 70, 73, 80, 73.6, 'C', 70, 80, 72, 76, 80, 75.6, 'B', 'IPA', 'B', 'IPS'),
(125, 'Dedy Kudong', 'SMPN 3 AMPIBABO', 68, 75, 75, 75, 80, 74.6, 'C', 65, 80, 76, 98, 75, 78.8, 'B', 65, 70, 75, 85, 78, 74.6, 'C', 'IPA', 'B', 'IPS'),
(126, 'Dela Puspita', 'MTs. ALKHAIRAAT AMPIBABO', 60, 86, 75, 80, 85, 77.2, 'B', 76, 78, 77, 85, 87, 80.6, 'B', 71, 79, 81, 87, 80, 79.6, 'B', 'IPA', 'B', 'IPS'),
(127, 'Deni', 'MTs. ALKHAIRAAT AMPIBABO', 65, 70, 65, 77, 83, 72, 'C', 74, 68, 74, 83, 83, 76.4, 'B', 75, 75, 75, 86, 81, 78.4, 'B', 'IPA', 'B', 'IPS'),
(128, 'Deri Ab Pasau', 'SMPN 3 AMPIBABO', 70, 74, 77, 82, 80, 76.6, 'B', 74, 80, 81, 81, 80, 79.2, 'B', 72, 70, 69, 75, 80, 73.2, 'C', 'IPS', 'B', 'IPS'),
(129, 'Devi', 'MTs. ALKHAIRAAT AMPIBABO', 68, 70, 70, 79, 84, 74.2, 'C', 75, 79, 75, 80, 85, 78.8, 'B', 79, 79, 79, 80, 90, 81.4, 'B', 'IPS', 'C', 'IPS'),
(130, 'Devi Febriansih', 'MTs. ALKHAIRAAT AMPIBABO', 76, 80, 79, 85, 93, 82.6, 'B', 82, 80, 80, 79, 84, 81, 'B', 78, 83, 83, 80, 89, 82.6, 'B', 'IPS', 'B', 'IPS'),
(131, 'Dewi Salsyah', 'SMPN 3 AMPIBABO', 71, 77, 78, 73, 78, 75.4, 'B', 75, 78, 82, 79, 80, 78.8, 'B', 79, 80, 75, 76, 85, 79, 'B', 'IPA', 'B', 'IPS'),
(132, 'Dhanikah Adilan', 'SMPN 3 AMPIBABO', 65, 65, 65, 67, 77, 67.8, 'C', 75, 70, 65, 70, 75, 71, 'C', 68, 68, 88, 30, 80, 66.8, 'C', 'IPA', 'B', 'IPS'),
(133, 'Dhara Alfia', 'SMPN 3 AMPIBABO', 75, 65, 65, 75, 65, 69, 'C', 75, 65, 65, 65, 80, 70, 'C', 70, 75, 75, 75, 70, 73, 'C', 'IPS', 'C', 'IPS'),
(134, 'Diah Puspita Handayani', 'MTs. ALKHAIRAAT AMPIBABO', 62, 85, 85, 85, 85, 80.4, 'B', 75, 88, 82, 83, 85, 82.6, 'B', 76, 78, 83, 85, 84, 81.2, 'B', 'IPS', 'C', 'IPS'),
(135, 'Diana Lestari Mega Utami Batalipu', 'SMPN 3 AMPIBABO', 60, 75, 75, 76, 78, 72.8, 'C', 69, 78, 76, 79, 81, 76.6, 'B', 73, 75, 75, 79, 75, 75.4, 'B', 'IPS', 'B', 'IPS'),
(136, 'Didit Praftama', 'SMPN 3 AMPIBABO', 76, 79, 70, 76, 75, 75.2, 'B', 75, 76, 79, 81, 78, 77.8, 'B', 75, 77, 81, 79, 78, 78, 'B', 'IPS', 'B', 'IPS'),
(137, 'Diki', 'SMPN 3 AMPIBABO', 70, 76, 80, 78, 75, 75.8, 'B', 70, 80, 80, 79, 85, 78.8, 'B', 70, 78, 78, 80, 76, 76.4, 'B', 'IPS', 'C', 'IPS'),
(138, 'Dimas', 'MTs. ALKHAIRAAT AMPIBABO', 65, 86, 85, 85, 76, 79.4, 'B', 69, 83, 78, 85, 90, 81, 'B', 78, 79, 84, 85, 79, 81, 'B', 'IPS', 'C', 'IPS'),
(139, 'Dimas Adytya Mulyadi', 'MTs. ALKHAIRAAT AMPIBABO', 70, 81, 78, 79, 91, 79.8, 'B', 75, 78, 74, 79, 76, 76.4, 'B', 73, 78, 76, 84, 86, 79.4, 'B', 'IPS', 'C', 'IPS'),
(140, 'Dimas Angger Pangestu', 'MTs. ALKHAIRAAT AMPIBABO', 60, 75, 78, 85, 75, 74.6, 'C', 70, 75, 80, 85, 86, 79.2, 'B', 73, 80, 78, 81, 78, 78, 'B', 'IPS', 'B', 'IPS'),
(141, 'Dimas Ari Saputra', 'SMPN 2 AMPIBABO', 75, 85, 76, 76, 78, 78, 'B', 75, 85, 99, 90, 90, 87.8, 'A', 75, 85, 88, 90, 86, 84.8, 'B', 'IPA', 'A', 'IPS'),
(142, 'Dina Aulia', 'SMPN 2 AMPIBABO', 79, 78, 80, 80, 84, 80.2, 'B', 75, 78, 80, 80, 85, 79.6, 'B', 80, 90, 80, 78, 85, 82.6, 'B', 'IPS', 'A', 'IPA'),
(143, 'Dina Mariana', 'SMPN 2 AMPIBABO', 75, 81, 80, 80, 82, 79.6, 'B', 70, 82, 76, 79, 80, 77.4, 'B', 77, 77, 89, 35, 89, 73.4, 'C', 'IPA', 'A', 'IPA'),
(144, 'Dinda Suci Pratiwi', 'SMPN 2 AMPIBABO', 78, 90, 70, 76, 89, 80.6, 'B', 85, 90, 80, 80, 75, 82, 'B', 91, 96, 90, 94, 97, 93.6, 'A', 'IPA', 'A', 'IPA'),
(145, 'Dirgawansa', 'SMPN 2 AMPIBABO', 86, 98, 94, 92, 97, 93.4, 'A', 83, 95, 90, 94, 96, 91.6, 'A', 82, 95, 92, 94, 97, 92, 'A', 'IPA', 'A', 'IPA'),
(146, 'Dirsa', 'SMPN 2 AMPIBABO', 88, 89, 89, 90, 90, 89.2, 'A', 85, 85, 88, 87, 89, 86.8, 'A', 86, 88, 92, 94, 95, 91, 'A', 'IPS', 'A', 'IPA'),
(147, 'Doni Setiawan', 'SMPN 2 AMPIBABO', 72, 75, 78, 77, 76, 75.6, 'B', 70, 71, 78, 78, 80, 75.4, 'B', 90, 86, 85, 88, 75, 84.8, 'B', 'IPA', 'A', 'IPS'),
(148, 'Dwi Pujiati', 'SMPN 2 AMPIBABO', 82, 77, 80, 81, 82, 80.4, 'B', 81, 77, 84, 84, 99, 85, 'A', 75, 78, 88, 78, 80, 79.8, 'B', 'IPA', 'A', 'IPS'),
(149, 'Dwi Sinta', 'SMPN 2 AMPIBABO', 75, 80, 77, 77, 80, 77.8, 'B', 79, 79, 79, 85, 79, 80.2, 'B', 77, 80, 80, 91, 95, 84.6, 'B', 'IPS', 'A', 'IPS'),
(150, 'Edwin Aprilyalen G', 'SMPN 2 AMPIBABO', 95, 80, 80, 90, 81, 85.2, 'A', 70, 96, 88, 82, 90, 85.2, 'A', 89, 78, 96, 80, 84, 85.4, 'A', 'IPA', 'A', 'IPS'),
(151, 'Een Fiqah Inayah Anwar', 'SMPN 2 AMPIBABO', 79, 80, 88, 82, 81, 82, 'B', 79, 82, 84, 85, 86, 83.2, 'B', 80, 82, 87, 85, 86, 84, 'B', 'IPA', 'B', 'IPS'),
(152, 'Een Mawada', 'SMPN 2 AMPIBABO', 77, 88, 90, 91, 92, 87.6, 'A', 80, 85, 90, 91, 91, 87.4, 'A', 79, 89, 90, 91, 92, 88.2, 'A', 'IPA', 'A', 'IPA'),
(153, 'Egy Saputra', 'MTs. ALKHAIRAAT AMPIBABO', 75, 85, 89, 89, 89, 85.4, 'A', 77, 85, 89, 89, 89, 85.8, 'A', 78, 86, 89, 90, 90, 86.6, 'A', 'IPS', 'A', 'IPA'),
(154, 'Eka Devy Laksmini Putri', 'SMPN 3 AMPIBABO', 75, 85, 88, 98, 91, 87.4, 'A', 77, 88, 88, 96, 96, 89, 'A', 77, 85, 88, 98, 96, 88.8, 'A', 'IPA', 'A', 'IPA'),
(155, 'Eka Rahmawati', 'MTs. ALKHAIRAAT AMPIBABO', 75, 80, 95, 92, 92, 86.8, 'A', 75, 80, 92, 90, 94, 86.2, 'A', 77, 85, 93, 95, 95, 89, 'A', 'IPS', 'A', 'IPA'),
(156, 'Eka Riski', 'MTs. ALKHAIRAAT AMPIBABO', 77, 82, 89, 90, 91, 85.8, 'A', 75, 87, 88, 89, 90, 85.8, 'A', 78, 85, 93, 93, 93, 88.4, 'A', 'IPA', 'A', 'IPA'),
(157, 'Eksel Aditiapura', 'MTs. ALKHAIRAAT AMPIBABO', 67, 88, 86, 88, 82, 82.2, 'B', 80, 84, 86, 86, 81, 83.4, 'B', 80, 86, 80, 81, 80, 81.4, 'B', 'IPA', 'A', 'IPS'),
(158, 'Elisabet Sinaga', 'MTs. ALKHAIRAAT AMPIBABO', 77, 76, 77, 75, 80, 77, 'B', 82, 78, 78, 85, 82, 81, 'B', 76, 78, 79, 78, 80, 78.2, 'B', 'IPA', 'B', 'IPS'),
(159, 'Elsa', 'SMP INSAN KAMIL', 64, 80, 83, 85, 80, 78.4, 'B', 69, 80, 81, 85, 80, 79, 'B', 72, 84, 89, 83, 80, 81.6, 'B', 'IPS', 'B', 'IPS'),
(160, 'Elsy', 'MTs. ALKHAIRAAT SIDOLE', 60, 66, 80, 87, 84, 75.4, 'B', 77, 75, 87, 81, 87, 81.4, 'B', 66, 77, 80, 80, 89, 78.4, 'B', 'IPS', 'B', 'IPS'),
(161, 'Emiliana Mustafa', 'MTs. ALKHAIRAAT SIDOLE', 75, 78, 80, 78, 80, 78.2, 'B', 75, 85, 84, 88, 81, 82.6, 'B', 84, 80, 93, 80, 86, 84.6, 'B', 'IPA', 'B', 'IPA'),
(162, 'Emma', 'MTs. ALKHAIRAAT SIDOLE', 67, 75, 78, 80, 84, 76.8, 'B', 73, 85, 79, 88, 90, 83, 'B', 89, 82, 86, 90, 79, 85.2, 'A', 'IPA', 'B', 'IPA'),
(163, 'Enjela Puspita Sari', 'SMP INSAN KAMIL', 90, 92, 92, 94, 95, 92.6, 'A', 90, 92, 94, 95, 96, 93.4, 'A', 90, 90, 92, 92, 94, 91.6, 'A', 'IPA', 'A', 'IPA'),
(164, 'Erif Ramadhan', 'SMPN 3 AMPIBABO', 70, 80, 90, 91, 92, 84.6, 'B', 70, 75, 90, 91, 90, 83.2, 'B', 76, 85, 90, 91, 90, 86.4, 'A', 'IPS', 'A', 'IPA'),
(165, 'Erlangga', 'SMPN 3 AMPIBABO', 79, 80, 79, 88, 91, 83.4, 'B', 76, 87, 77, 95, 98, 86.6, 'A', 83, 98, 82, 91, 87, 88.2, 'A', 'IPA', 'A', 'IPA'),
(166, 'Erliza', 'SMPN 3 AMPIBABO', 79, 80, 80, 82, 82, 80.6, 'B', 83, 83, 84, 85, 85, 84, 'B', 80, 80, 84, 82, 82, 81.6, 'B', 'IPS', 'B', 'IPS'),
(167, 'Evan Ramadhan', 'SMPN 3 AMPIBABO', 76, 82, 92, 93, 93, 87.2, 'A', 76, 85, 90, 92, 92, 87, 'A', 75, 87, 92, 94, 94, 88.4, 'A', 'IPS', 'A', 'IPA'),
(168, 'Evayanti', 'MTs. ALKHAIRAAT AMPIBABO', 74, 80, 80, 77, 77, 77.6, 'B', 75, 85, 89, 91, 81, 84.2, 'B', 80, 87, 88, 79, 89, 84.6, 'B', 'IPS', 'B', 'IPA'),
(169, 'Fadlan', 'SMPN 3 AMPIBABO', 70, 81, 80, 85, 82, 79.6, 'B', 85, 87, 78, 72, 90, 82.4, 'B', 75, 75, 85, 80, 80, 79, 'B', 'IPA', 'B', 'IPS'),
(170, 'Fadlia', 'SMPN 3 AMPIBABO', 75, 75, 84, 75, 80, 77.8, 'B', 76, 83, 85, 88, 85, 83.4, 'B', 73, 71, 87, 80, 81, 78.4, 'B', 'IPS', 'B', 'IPS'),
(171, 'Fagil', 'MTs. ALKHAIRAAT SIDOLE', 81, 82, 87, 87, 83, 84, 'B', 95, 82, 89, 88, 86, 88, 'A', 87, 83, 90, 93, 83, 87.2, 'A', 'IPS', 'A', 'IPA'),
(172, 'Fahri', 'MTs. ALKHAIRAAT SIDOLE', 77, 82, 77, 79, 83, 79.6, 'B', 79, 85, 83, 95, 80, 84.4, 'B', 83, 94, 93, 95, 92, 91.4, 'A', 'IPA', 'A', 'IPA'),
(173, 'Fairel Zaim', 'MTs. ALKHAIRAAT SIDOLE', 77, 86, 92, 93, 93, 88.2, 'A', 75, 85, 93, 94, 94, 88.2, 'A', 79, 86, 95, 95, 96, 90.2, 'A', 'IPS', 'A', 'IPA'),
(174, 'Fajriatun', 'MTs. ALKHAIRAAT SIDOLE', 80, 92, 85, 91, 88, 87.2, 'A', 78, 89, 85, 95, 94, 88.2, 'A', 79, 89, 85, 90, 91, 86.8, 'A', 'IPA', 'A', 'IPA'),
(175, 'Falen Pelumbu', 'MTs. ALKHAIRAAT SIDOLE', 76, 87, 90, 90, 92, 87, 'A', 75, 85, 91, 93, 95, 87.8, 'A', 77, 90, 91, 92, 94, 88.8, 'A', 'IPA', 'A', 'IPA'),
(176, 'Fanisa Citra Ioslami', 'SMP SATAP AMPIBABO', 77, 87, 92, 92, 94, 88.4, 'A', 76, 85, 92, 93, 95, 88.2, 'A', 80, 95, 95, 97, 97, 92.8, 'A', 'IPS', 'A', 'IPA'),
(177, 'Farel', 'SMP SATAP AMPIBABO', 75, 85, 90, 90, 90, 86, 'A', 78, 85, 90, 92, 94, 87.8, 'A', 76, 87, 90, 91, 94, 87.6, 'A', 'IPA', 'A', 'IPA'),
(178, 'Farel Andika', 'SMP SATAP AMPIBABO', 78, 78, 77, 78, 84, 79, 'B', 87, 84, 81, 82, 87, 84.2, 'B', 77, 77, 78, 79, 79, 78, 'B', 'IPA', 'B', 'IPS'),
(179, 'Farid Sukriadi', 'SMP SATAP AMPIBABO', 60, 80, 80, 82, 90, 78.4, 'B', 75, 80, 81, 86, 87, 81.8, 'B', 81, 84, 89, 91, 80, 85, 'A', 'IPA', 'A', 'IPA'),
(180, 'Faris', 'SMP SATAP AMPIBABO', 62, 79, 78, 81, 77, 75.4, 'B', 70, 78, 76, 85, 90, 79.8, 'B', 72, 75, 80, 87, 79, 78.6, 'B', 'IPA', 'B', 'IPS'),
(181, 'Fatima', 'SMP SATAP AMPIBABO', 92, 89, 94, 94, 97, 93.2, 'A', 88, 91, 95, 95, 96, 93, 'A', 89, 89, 92, 94, 94, 91.6, 'A', 'IPS', 'A', 'IPA'),
(182, 'Fatmi', 'SMPN 2 AMPIBABO', 78, 79, 77, 76, 80, 78, 'B', 79, 80, 80, 80, 80, 79.8, 'B', 80, 83, 80, 96, 90, 85.8, 'A', 'IPS', 'B', 'IPA'),
(183, 'Febbyanka Lamadi', 'SMPN 2 AMPIBABO', 85, 82, 82, 92, 94, 87, 'A', 87, 85, 86, 92, 86, 87.2, 'A', 87, 86, 84, 92, 88, 87.4, 'A', 'IPA', 'A', 'IPA'),
(184, 'Febiana\nFikri', 'SMPN 2 AMPIBABO', 78, 85, 79, 90, 90, 84.4, 'B', 77, 85, 76, 94, 94, 85.2, 'A', 79, 87, 78, 96, 96, 87.2, 'A', 'IPA', 'A', 'IPA'),
(185, 'Feby', 'SMPN 3 AMPIBABO', 77, 85, 80, 80, 88, 82, 'B', 71, 85, 90, 80, 88, 82.8, 'B', 88, 79, 90, 91, 78, 85.2, 'A', 'IPA', 'A', 'IPA'),
(186, 'Fery', 'SMPN 3 AMPIBABO', 60, 87, 80, 85, 79, 78.2, 'B', 80, 77, 82, 89, 84, 82.4, 'B', 80, 80, 79, 80, 80, 79.8, 'B', 'IPS', 'B', 'IPS'),
(187, 'Firga Ananda', 'SMPN 2 AMPIBABO', 75, 87, 90, 90, 90, 86.4, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 75, 87, 89, 89, 90, 86, 'A', 'IPA', 'A', 'IPA'),
(188, 'Firman Ashar', 'SMPN 2 AMPIBABO', 75, 85, 91, 92, 94, 87.4, 'A', 74, 85, 91, 92, 95, 87.4, 'A', 77, 85, 90, 91, 94, 87.4, 'A', 'IPS', 'A', 'IPA'),
(189, 'Fiska', 'SMPN 3 AMPIBABO', 74, 80, 83, 85, 86, 81.6, 'B', 82, 83, 84, 82, 82, 82.6, 'B', 85, 82, 84, 32, 82, 73, 'C', 'IPS', 'B', 'IPS'),
(190, 'Fitra Azzahra', 'SMP SATAP AMPIBABO', 94, 96, 92, 93, 92, 93.4, 'A', 98, 92, 86, 95, 92, 92.6, 'A', 93, 96, 95, 94, 95, 94.6, 'A', 'IPS', 'A', 'IPA'),
(191, 'Fitra Octa Satya', 'MTs. ALKHAIRAAT AMPIBABO', 60, 77, 85, 88, 76, 77.2, 'B', 69, 81, 73, 83, 85, 78.2, 'B', 74, 75, 87, 38, 79, 70.6, 'C', 'IPS', 'B', 'IPS'),
(192, 'Fitra Ramadan', 'SMPN 1 AMPIBABO', 65, 75, 75, 30, 76, 64.2, 'C', 75, 80, 82, 85, 81, 80.6, 'B', 78, 78, 81, 32, 78, 69.4, 'C', 'IPA', 'B', 'IPS'),
(193, 'Fitri', 'SMPN 1 AMPIBABO', 75, 85, 88, 89, 90, 85.4, 'A', 74, 85, 89, 90, 92, 86, 'A', 78, 85, 94, 94, 95, 89.2, 'A', 'IPA', 'A', 'IPA'),
(194, 'Fitri', 'SMPN 1 AMPIBABO', 82, 85, 95, 90, 79, 86.2, 'A', 69, 85, 89, 88, 95, 85.2, 'A', 80, 78, 94, 91, 80, 86.25, 'A', 'IPA', 'A', 'IPA'),
(195, 'Fitri Siti Marfu Ah', 'SMPN 1 AMPIBABO', 78, 88, 87, 90, 90, 86.6, 'A', 75, 85, 86, 94, 96, 87.2, 'A', 76, 87, 89, 96, 90, 87.6, 'A', 'IPS', 'A', 'IPA'),
(196, 'Fitria Ningsih', 'SMPN 1 AMPIBABO', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 'A', 'IPA'),
(197, 'Fitriani Anwar', 'MTs. ALKHAIRAAT SIDOLE', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 'A', 'IPA'),
(198, 'Fitriya tunnisa', 'MTs. ALKHAIRAAT SIDOLE', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 'A', 'IPA'),
(199, 'Fitriyana', 'MTs. ALKHAIRAAT SIDOLE', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 'A', 'IPA'),
(200, 'Fitrotul Nur Azizah', 'SMPN 1 AMPIBABO', 80, 89, 82, 96, 80, 85.4, 'A', 90, 79, 78, 82, 82, 82.2, 'B', 82, 81, 78, 80, 77, 79.6, 'B', 'IPS', 'B', 'IPA'),
(201, 'Fitry Ramadhani R. Ilimulla', 'SMPN 1 AMPIBABO', 60, 82, 75, 80, 78, 75, 'B', 70, 76, 80, 85, 88, 79.8, 'B', 79, 75, 80, 83, 78, 79, 'B', 'IPS', 'B', 'IPS'),
(202, 'Fladira Rofjeck Saisab', 'SMPN 1 AMPIBABO', 80, 76, 93, 94, 95, 87.6, 'A', 78, 91, 93, 94, 95, 90.2, 'A', 84, 85, 92, 94, 95, 90, 'A', 'IPA', 'A', 'IPA'),
(203, 'Frelyana Tibo', 'SMPN 1 AMPIBABO', 78, 86, 88, 89, 90, 86.2, 'A', 77, 87, 89, 89, 90, 86.4, 'A', 77, 87, 89, 90, 92, 87, 'A', 'IPA', 'A', 'IPA'),
(204, 'Frengki Werokati', 'SMPN 1 AMPIBABO', 81, 90, 90, 95, 90, 89.2, 'A', 78, 80, 88, 85, 85, 83.2, 'B', 75, 85, 95, 90, 85, 86, 'A', 'IPS', 'A', 'IPA'),
(205, 'Friza Yustika W. T', 'SMP INSAN KAMIL', 75, 85, 89, 90, 90, 85.8, 'A', 77, 84, 91, 92, 92, 87.2, 'A', 76, 85, 92, 94, 95, 88.4, 'A', 'IPS', 'A', 'IPA'),
(206, 'Galang Rizaldi', 'SMP INSAN KAMIL', 65, 74, 80, 82, 90, 78.2, 'B', 73, 78, 68, 72, 80, 74.2, 'C', 75, 85, 85, 78, 82, 81, 'B', 'IPS', 'B', 'IPS'),
(207, 'Gede Febrianata', 'SMP INSAN KAMIL', 75, 69, 97, 78, 86, 81, 'B', 77, 75, 71, 84, 74, 76.2, 'B', 80, 80, 85, 80, 75, 80, 'B', 'IPA', 'A', 'IPA'),
(208, 'Gede Putu Jefri Gusnaedi', 'SMP INSAN KAMIL', 76, 85, 90, 91, 91, 86.6, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 76, 90, 92, 92, 94, 88.8, 'A', 'IPA', 'A', 'IPA'),
(209, 'Gede Surya Mahatma Yasa', 'SMPN 1 AMPIBABO', 76, 86, 89, 89, 90, 86, 'A', 77, 85, 92, 92, 94, 88, 'A', 86, 86, 84, 90, 90, 87.2, 'A', 'IPA', 'A', 'IPA'),
(210, 'Gilda Aura Rizika', 'MTs. ALKHAIRAAT AMPIBABO', 84, 82, 82, 89, 80, 83.4, 'B', 86, 84, 86, 89, 84, 85.8, 'A', 76, 76, 87, 89, 85, 82.6, 'B', 'IPS', 'B', 'IPA'),
(211, 'Gita', 'SMPN 1 AMPIBABO', 80, 81, 81, 85, 86, 82.6, 'B', 85, 86, 89, 91, 92, 88.6, 'A', 77, 80, 72, 80, 90, 79.8, 'B', 'IPS', 'A', 'IPA'),
(212, 'Gita Hanifa Ananda Nento', 'SMPN 1 AMPIBABO', 88, 85, 84, 82, 85, 84.8, 'B', 86, 80, 87, 79, 90, 84.4, 'B', 90, 80, 90, 91, 79, 86, 'A', 'IPS', 'B', 'IPA'),
(213, 'Gita Wulandari Senen', 'SMPN 1 AMPIBABO', 69, 78, 95, 82, 90, 82.8, 'B', 76, 85, 77, 83, 84, 81, 'B', 76, 75, 79, 75, 80, 77, 'B', 'IPS', 'B', 'IPS'),
(214, 'Gracela Claudia Kotika', 'MTs. ALKHAIRAAT AMPIBABO', 70, 78, 74, 82, 80, 76.8, 'B', 72, 72, 78, 77, 80, 75.8, 'B', 76, 86, 84, 83, 85, 82.8, 'B', 'IPA', 'B', 'IPS'),
(215, 'Gusti Ayu Wismawati', 'SMPN 1 AMPIBABO', 77, 83, 79, 78, 82, 79.8, 'B', 79, 79, 79, 88, 89, 82.8, 'B', 80, 83, 86, 88, 90, 85.4, 'A', 'IPA', 'B', 'IPA'),
(216, 'Haerul Hadriansyah D', 'SMPN 1 AMPIBABO', 78, 85, 80, 85, 83, 82.2, 'B', 78, 80, 75, 80, 84, 79.4, 'B', 85, 89, 90, 95, 89, 89.6, 'A', 'IPA', 'A', 'IPA'),
(217, 'Haifi', 'SMPN 1 AMPIBABO', 79, 85, 86, 90, 82, 84.4, 'B', 80, 82, 83, 85, 84, 82.8, 'B', 85, 89, 92, 91, 80, 87.4, 'A', 'IPA', 'A', 'IPA'),
(218, 'Haikal', 'SMPN 1 AMPIBABO', 76, 90, 85, 90, 81, 84.4, 'B', 80, 85, 86, 88, 91, 86, 'A', 82, 80, 92, 78, 80, 82.4, 'B', 'IPS', 'B', 'IPA'),
(219, 'Haikal', 'SMPN 1 AMPIBABO', 79, 77, 79, 87, 88, 82, 'B', 79, 81, 91, 90, 86, 85.4, 'A', 75, 87, 83, 78, 90, 82.6, 'B', 'IPS', 'B', 'IPA'),
(220, 'Hajria Wulan Sari', 'SMPN 1 AMPIBABO', 80, 78, 81, 82, 82, 80.6, 'B', 80, 87, 77, 86, 88, 83.6, 'B', 83, 80, 87, 94, 78, 84.4, 'B', 'IPS', 'B', 'IPS'),
(221, 'Hanifa D.R. Lemba', 'SMPN 1 AMPIBABO', 60, 75, 75, 78, 81, 73.8, 'C', 68, 75, 75, 80, 80, 75.6, 'B', 68, 76, 76, 33, 78, 66.2, 'C', 'IPS', 'C', 'IPS'),
(222, 'Hapsa Natul Ahyani', 'SMPN 1 AMPIBABO', 73, 76, 79, 86, 77, 78.2, 'B', 72, 80, 77, 79, 79, 77.4, 'B', 75, 87, 76, 76, 81, 79, 'B', 'IPS', 'C', 'IPS'),
(223, 'Hawa', 'SMPN 1 AMPIBABO', 82, 82, 77, 74, 72, 77.4, 'B', 80, 82, 79, 76, 82, 79.8, 'B', 76, 75, 75, 78, 80, 76.8, 'B', 'IPS', 'C', 'IPS'),
(224, 'Hazya Reina', 'SMPN 1 AMPIBABO', 60, 83, 81, 82, 79, 77, 'B', 75, 77, 75, 75, 82, 76.8, 'B', 68, 75, 77, 79, 78, 75.4, 'B', 'IPA', 'B', 'IPA'),
(225, 'Henddy Inggriawan', 'SMPN 1 AMPIBABO', 89, 91, 87, 90, 85, 88.4, 'A', 82, 85, 91, 93, 94, 89, 'A', 87, 85, 92, 87, 84, 87, 'A', 'IPA', 'C', 'IPA'),
(226, 'Herfenda', 'SMPN 1 AMPIBABO', 75, 75, 70, 70, 76, 73.2, 'C', 75, 75, 70, 70, 78, 73.6, 'C', 71, 75, 75, 75, 78, 74.8, 'C', 'IPA', 'C', 'IPS'),
(227, 'Hesti', 'SMPN 1 AMPIBABO', 60, 78, 75, 75, 84, 74.4, 'C', 69, 77, 75, 80, 80, 76.2, 'B', 69, 75, 79, 33, 78, 66.8, 'C', 'IPS', 'C', 'IPS'),
(228, 'Hilla Abizar', 'SMPN 1 AMPIBABO', 60, 72, 93, 87, 84, 79.2, 'B', 69, 75, 76, 80, 84, 76.8, 'B', 73, 78, 79, 78, 78, 77.2, 'B', 'IPA', 'C', 'IPS'),
(229, 'Hiqma Rezkia', 'SMPN 1 AMPIBABO', 64, 67, 68, 70, 72, 68.2, 'C', 77, 80, 70, 71, 70, 73.6, 'C', 77, 65, 70, 75, 70, 71.4, 'C', 'IPA', 'C', 'IPS'),
(230, 'I Gede Adi Saputra', 'SMPN 1 AMPIBABO', 60, 60, 70, 70, 80, 68, 'C', 68, 65, 70, 75, 85, 72.6, 'C', 65, 65, 72, 70, 77, 69.8, 'C', 'IPS', 'C', 'IPS'),
(231, 'I Gede Jodi Pratama', 'SMPN 1 AMPIBABO', 60, 52, 70, 75, 75, 66.4, 'C', 70, 68, 80, 79, 84, 76.2, 'B', 70, 65, 75, 30, 82, 64.4, 'C', 'IPA', 'A', 'IPS'),
(232, 'I Gede Suka Yasa', 'SMPN 1 AMPIBABO', 60, 68, 85, 80, 76, 73.8, 'C', 68, 78, 75, 83, 84, 77.6, 'B', 74, 75, 78, 79, 78, 76.8, 'B', 'IPS', 'A', 'IPS'),
(233, 'I Ketut Ari Saputra', 'SMPN 1 AMPIBABO', 60, 75, 75, 78, 78, 73.2, 'C', 69, 75, 75, 78, 82, 75.8, 'B', 72, 78, 75, 81, 77, 76.6, 'B', 'IPS', 'A', 'IPS'),
(234, 'I Ketut Aris Dinata', 'SMPN 1 AMPIBABO', 61, 66, 80, 75, 79, 72.2, 'C', 75, 79, 86, 77, 88, 81, 'B', 65, 71, 70, 82, 85, 74.6, 'C', 'IPS', 'A', 'IPS'),
(235, 'I Md Sukayasa', 'SMPN 2 TANASITOLO', 50, 60, 68, 75, 77, 66, 'C', 60, 64, 70, 75, 88, 71.4, 'C', 65, 65, 70, 75, 72, 69.4, 'C', 'IPS', 'A', 'IPS'),
(236, 'Ibnu Abdillah', 'SMPN 1 AMPIBABO', 60, 78, 78, 81, 75, 74.4, 'C', 69, 78, 75, 78, 87, 77.4, 'B', 68, 76, 78, 82, 79, 76.6, 'B', 'IPA', 'A', 'IPS'),
(237, 'Ice Trisnawati', 'SMPN 1 AMPIBABO', 60, 75, 77, 82, 82, 75.2, 'B', 70, 80, 75, 75, 79, 75.8, 'B', 68, 75, 77, 78, 75, 74.6, 'C', 'IPA', 'A', 'IPS'),
(238, 'Ifda Yanti', 'SMPN 1 AMPIBABO', 76, 70, 79, 78, 79, 76.4, 'B', 80, 75, 79, 79, 88, 80.2, 'B', 80, 75, 80, 80, 80, 79, 'B', 'IPA', 'A', 'IPS'),
(239, 'Iftahul Khumainah', 'SMPN 1 AMPIBABO', 70, 70, 79, 75, 81, 75, 'B', 70, 73, 78, 75, 77, 74.6, 'C', 69, 75, 75, 72, 81, 74.4, 'C', 'IPS', 'A', 'IPS'),
(240, 'Iftitah', 'SMPN 1 AMPIBABO', 60, 83, 80, 82, 78, 76.6, 'B', 69, 76, 79, 75, 81, 76, 'B', 68, 75, 79, 81, 78, 76.2, 'B', 'IPA', 'A', 'IPS'),
(241, 'Ikbal', 'SMPN 1 AMPIBABO', 60, 75, 75, 75, 81, 73.2, 'C', 75, 80, 75, 80, 80, 78, 'B', 75, 76, 75, 77, 75, 75.6, 'B', 'IPS', 'A', 'IPS'),
(242, 'Ikhwatul Khumainah', 'MTs. ALKHAIRAAT AMPIBABO', 69, 68, 70, 71, 75, 70.6, 'C', 76, 71, 72, 74, 74, 73.4, 'C', 70, 70, 75, 75, 85, 75, 'B', 'IPS', 'A', 'IPS'),
(243, 'Ikmaldi Wahindi K. Manauwa', 'SMPN 1 AMPIBABO', 75, 76, 68, 75, 80, 74.8, 'C', 75, 75, 70, 77, 79, 75.2, 'B', 71, 76, 70, 75, 76, 73.6, 'C', 'IPA', 'A', 'IPS'),
(244, 'Imam', 'SMPN 1 AMPIBABO', 80, 70, 75, 70, 78, 74.6, 'C', 63, 75, 78, 74, 78, 73.6, 'C', 75, 65, 75, 75, 80, 74, 'C', 'IPA', 'A', 'IPS'),
(245, 'Imel', 'SMPN 1 AMPIBABO', 81, 81, 80, 75, 78, 79, 'B', 77, 79, 80, 78, 76, 78, 'B', 87, 83, 76, 71, 95, 82.4, 'B', 'IPA', 'A', 'IPS'),
(246, 'Imel', 'SMPN 1 AMPIBABO', 60, 79, 78, 78, 81, 75.2, 'B', 69, 71, 76, 79, 84, 75.8, 'B', 68, 75, 75, 78, 78, 74.8, 'C', 'IPS', 'A', 'IPS'),
(247, 'Indah', 'MTs. ALKHAIRAAT 1 PALU', 72, 75, 75, 76, 75, 74.6, 'C', 75, 75, 76, 76, 77, 75.8, 'B', 80, 76, 76, 79, 80, 78.2, 'B', 'IPA', 'A', 'IPS'),
(248, 'Indi', 'SMPN 1 AMPIBABO', 60, 87, 85, 80, 82, 78.8, 'B', 69, 77, 77, 87, 82, 78.4, 'B', 71, 78, 78, 80, 79, 77.2, 'B', 'IPA', 'A', 'IPS'),
(249, 'Indri', 'SMPN 1 AMPIBABO', 66, 75, 85, 79, 80, 77, 'B', 68, 75, 85, 80, 93, 80.2, 'B', 74, 75, 95, 90, 88, 84.4, 'B', 'IPA', 'A', 'IPS'),
(250, 'Intan', 'SMPN 1 AMPIBABO', 68, 70, 67, 65, 75, 69, 'C', 65, 68, 66, 66, 77, 68.4, 'C', 66, 77, 66, 71, 76, 71.2, 'C', 'IPS', 'A', 'IPS'),
(251, 'Intan Fatimatuzzahra', 'SMPN 3 AMPIBABO', 66, 77, 80, 78, 79, 76, 'B', 68, 77, 75, 83, 85, 77.6, 'B', 68, 76, 78, 31, 79, 66.4, 'C', 'IPS', 'C', 'IPS'),
(252, 'Intan Nur Afani', 'SMPN 1 AMPIBABO', 71, 72, 73, 75, 70, 72.2, 'C', 70, 80, 80, 65, 79, 74.8, 'C', 72, 79, 79, 79, 77, 77.2, 'B', 'IPA', 'B', 'IPS'),
(253, 'Iqra Fatika Sari Wange', 'SMPN 1 AMPIBABO', 65, 76, 66, 71, 82, 72, 'C', 70, 76, 73, 74, 86, 75.8, 'B', 72, 97, 89, 85, 86, 85.8, 'A', 'IPS', 'B', 'IPA'),
(254, 'Iren Savira', 'SMP INSAN KAMIL', 66, 64, 70, 70, 80, 70, 'C', 64, 64, 72, 74, 87, 72.2, 'C', 72, 97, 89, 85, 86, 85.8, 'A', 'IPA', 'B', 'IPS'),
(255, 'Ismul A\'Zam', 'SMPN 1 AMPIBABO', 60, 77, 60, 77, 75, 68, 'C', 68, 75, 69, 75, 85, 74.4, 'C', 73, 82, 72, 35, 83, 69, 'C', 'IPS', 'B', 'IPS'),
(256, 'Izwar Kholiq Passanda', 'SMPN 1 AMPIBABO', 75, 75, 75, 78, 75, 75.6, 'B', 75, 75, 76, 75, 76, 75.4, 'B', 68, 75, 68, 75, 70, 71.2, 'C', 'IPA', 'C', 'IPS'),
(257, 'Jabbar Rahma', 'MTs. ALKHAIRAAT AMPIBABO', 60, 80, 75, 75, 84, 74.75, 'C', 69, 75, 75, 78, 80, 75.4, 'B', 75, 76, 80, 75, 80, 77.2, 'B', 'IPA', 'B', 'IPS'),
(258, 'Jek Ramadan', 'SMPN 4 TOILI', 63, 75, 95, 80, 79, 78.4, 'B', 68, 75, 78, 79, 80, 76, 'B', 72, 75, 75, 81, 75, 75.6, 'B', 'IPA', 'B', 'IPS'),
(259, 'Jerry', 'SMPN 1 AMPIBABO', 60, 75, 80, 81, 81, 75.4, 'B', 70, 78, 79, 81, 81, 77.8, 'B', 70, 75, 79, 70, 76, 74, 'C', 'IPA', 'C', 'IPS'),
(260, 'Jihan Farial', 'SMPN 1 AMPIBABO', 75, 76, 78, 76, 0, 61, 'C', 75, 76, 80, 77, 0, 61.6, 'C', 73, 80, 78, 34, 79, 68.8, 'C', 'IPS', 'C', 'IPS'),
(261, 'Jonathan Prasetya Putra Pesoba', 'SMPN 1 AMPIBABO', 73, 71, 66, 75, 80, 73, 'C', 73, 79, 74, 80, 80, 77.2, 'B', 70, 73, 70, 75, 80, 73.6, 'C', 'IPS', 'B', 'IPS'),
(262, 'Julia Safira', 'SMPN 1 AMPIBABO', 70, 78, 81, 79, 79, 77.4, 'B', 78, 80, 85, 83, 90, 83.2, 'B', 70, 75, 80, 85, 80, 78, 'B', 'IPS', 'C', 'IPS'),
(263, 'Julian Agus Saputra', 'SMPN 1 AMPIBABO', 75, 78, 79, 79, 80, 78.2, 'B', 75, 78, 79, 79, 80, 78.2, 'B', 76, 78, 78, 80, 85, 79.4, 'B', 'IPS', 'C', 'IPS'),
(264, 'Jusmawati', 'SMPN 1 AMPIBABO', 78, 89, 89, 90, 90, 87.2, 'A', 77, 85, 92, 93, 93, 88, 'A', 79, 87, 90, 94, 94, 88.8, 'A', 'IPA', 'C', 'IPA'),
(265, 'Kartika', 'SMPN 3 AMPIBABO', 68, 76, 70, 76, 79, 73.8, 'C', 70, 75, 70, 73, 80, 73.6, 'C', 70, 80, 72, 76, 80, 75.6, 'B', 'IPA', 'B', 'IPS'),
(266, 'Kenji Ardana\nKevin Andreas', 'SMPN 3 AMPIBABO', 68, 75, 75, 75, 80, 74.6, 'C', 65, 80, 76, 98, 75, 78.8, 'B', 65, 70, 75, 85, 78, 74.6, 'C', 'IPA', 'B', 'IPS'),
(267, 'Khairun Nisa', 'SMPN 1 AMPIBABO', 60, 86, 75, 80, 85, 77.2, 'B', 76, 78, 77, 85, 87, 80.6, 'B', 71, 79, 81, 87, 80, 79.6, 'B', 'IPA', 'B', 'IPS'),
(268, 'Khofifah', 'SMPN 3 AMPIBABO', 65, 70, 65, 77, 83, 72, 'C', 74, 68, 74, 83, 83, 76.4, 'B', 75, 75, 75, 86, 81, 78.4, 'B', 'IPA', 'B', 'IPS'),
(269, 'khoirunnisa', 'MTs. ALKHAIRAAT AMPIBABO', 70, 74, 77, 82, 80, 76.6, 'B', 74, 80, 81, 81, 80, 79.2, 'B', 72, 70, 69, 75, 80, 73.2, 'C', 'IPS', 'B', 'IPS'),
(270, 'Komang Meli Hartati', 'MTs. ALKHAIRAAT AMPIBABO', 68, 70, 70, 79, 84, 74.2, 'C', 75, 79, 75, 80, 85, 78.8, 'B', 79, 79, 79, 80, 90, 81.4, 'B', 'IPS', 'C', 'IPS'),
(271, 'Lidia Alia Safitri', 'MTs. ALKHAIRAAT SINIU', 76, 80, 79, 85, 93, 82.6, 'B', 82, 80, 80, 79, 84, 81, 'B', 78, 83, 83, 80, 89, 82.6, 'B', 'IPS', 'B', 'IPS'),
(272, 'Lidya Anna Tasya', 'SMPN 1 AMPIBABO', 71, 77, 78, 73, 78, 75.4, 'B', 75, 78, 82, 79, 80, 78.8, 'B', 79, 80, 75, 76, 85, 79, 'B', 'IPA', 'B', 'IPS'),
(273, 'Lira Marsida', 'SMPN 1 AMPIBABO', 65, 65, 65, 67, 77, 67.8, 'C', 75, 70, 65, 70, 75, 71, 'C', 68, 68, 88, 30, 80, 66.8, 'C', 'IPA', 'B', 'IPS'),
(274, 'Lisa Rosita', 'SMPN 1 AMPIBABO', 75, 65, 65, 75, 65, 69, 'C', 75, 65, 65, 65, 80, 70, 'C', 70, 75, 75, 75, 70, 73, 'C', 'IPS', 'C', 'IPS'),
(275, 'Lujain', 'SMPN 1 AMPIBABO', 62, 85, 85, 85, 85, 80.4, 'B', 75, 88, 82, 83, 85, 82.6, 'B', 76, 78, 83, 85, 84, 81.2, 'B', 'IPS', 'C', 'IPS'),
(276, 'M. Rizki ', 'SMPN 1 AMPIBABO', 60, 75, 75, 76, 78, 72.8, 'C', 69, 78, 76, 79, 81, 76.6, 'B', 73, 75, 75, 79, 75, 75.4, 'B', 'IPS', 'B', 'IPS'),
(277, 'Madan Setiawan', 'SMPN 1 AMPIBABO', 76, 79, 70, 76, 75, 75.2, 'B', 75, 76, 79, 81, 78, 77.8, 'B', 75, 77, 81, 79, 78, 78, 'B', 'IPS', 'B', 'IPS'),
(278, 'Magfirah', 'SMPN 1 AMPIBABO', 70, 76, 80, 78, 75, 75.8, 'B', 70, 80, 80, 79, 85, 78.8, 'B', 70, 78, 78, 80, 76, 76.4, 'B', 'IPS', 'C', 'IPS'),
(279, 'Mario', 'MTs. MADINATUL ILMI', 65, 86, 85, 85, 76, 79.4, 'B', 69, 83, 78, 85, 90, 81, 'B', 78, 79, 84, 85, 79, 81, 'B', 'IPS', 'C', 'IPS'),
(280, 'Marla Ramadhani', 'SMPN 1 AMPIBABO', 70, 81, 78, 79, 91, 79.8, 'B', 75, 78, 74, 79, 76, 76.4, 'B', 73, 78, 76, 84, 86, 79.4, 'B', 'IPS', 'C', 'IPS'),
(281, 'Marsanda', 'SMPN 1 AMPIBABO', 60, 75, 78, 85, 75, 74.6, 'C', 70, 75, 80, 85, 86, 79.2, 'B', 73, 80, 78, 81, 78, 78, 'B', 'IPS', 'B', 'IPS'),
(282, 'Ma\'Ruf Hafidz', 'SMPN 1 AMPIBABO', 75, 85, 76, 76, 78, 78, 'B', 75, 85, 99, 90, 90, 87.8, 'A', 75, 85, 88, 90, 86, 84.8, 'B', 'IPA', 'A', 'IPS'),
(283, 'Maryana A. Larabuka', 'SMPN 1 AMPIBABO', 79, 78, 80, 80, 84, 80.2, 'B', 75, 78, 80, 80, 85, 79.6, 'B', 80, 90, 80, 78, 85, 82.6, 'B', 'IPS', 'A', 'IPA'),
(284, 'Mawar', 'SMPN 1 AMPIBABO', 75, 81, 80, 80, 82, 79.6, 'B', 70, 82, 76, 79, 80, 77.4, 'B', 77, 77, 89, 35, 89, 73.4, 'C', 'IPA', 'A', 'IPA'),
(285, 'Maya', 'SMPN 2 AMPIBABO', 78, 90, 70, 76, 89, 80.6, 'B', 85, 90, 80, 80, 75, 82, 'B', 91, 96, 90, 94, 97, 93.6, 'A', 'IPA', 'A', 'IPA'),
(286, 'Merliovin Sumarantika', 'SMPN 1 AMPIBABO', 86, 98, 94, 92, 97, 93.4, 'A', 83, 95, 90, 94, 96, 91.6, 'A', 82, 95, 92, 94, 97, 92, 'A', 'IPA', 'A', 'IPA'),
(287, 'Mifta Huljana S.', 'SMPN 1 AMPIBABO', 88, 89, 89, 90, 90, 89.2, 'A', 85, 85, 88, 87, 89, 86.8, 'A', 86, 88, 92, 94, 95, 91, 'A', 'IPS', 'A', 'IPA'),
(288, 'Mirawati J Laburunga', 'SMPN 1 AMPIBABO', 72, 75, 78, 77, 76, 75.6, 'B', 70, 71, 78, 78, 80, 75.4, 'B', 90, 86, 85, 88, 75, 84.8, 'B', 'IPA', 'A', 'IPS'),
(289, 'Moh. Abdul Rakib', 'SMPN 1 AMPIBABO', 82, 77, 80, 81, 82, 80.4, 'B', 81, 77, 84, 84, 99, 85, 'A', 75, 78, 88, 78, 80, 79.8, 'B', 'IPA', 'A', 'IPS'),
(290, 'Moh. Adhib', 'SMPN 1 AMPIBABO', 75, 80, 77, 77, 80, 77.8, 'B', 79, 79, 79, 85, 79, 80.2, 'B', 77, 80, 80, 91, 95, 84.6, 'B', 'IPS', 'A', 'IPS'),
(291, 'Moh. Adrian', 'MTs. WALI SONGO PUTRA', 95, 80, 80, 90, 81, 85.2, 'A', 70, 96, 88, 82, 90, 85.2, 'A', 89, 78, 96, 80, 84, 85.4, 'A', 'IPA', 'A', 'IPS'),
(292, 'Moh. Afriansyah', 'SMPN 1 AMPIBABO', 79, 80, 88, 82, 81, 82, 'B', 79, 82, 84, 85, 86, 83.2, 'B', 80, 82, 87, 85, 86, 84, 'B', 'IPA', 'B', 'IPS'),
(293, 'Moh. Alif Sabil', 'SMPN 1 AMPIBABO', 77, 88, 90, 91, 92, 87.6, 'A', 80, 85, 90, 91, 91, 87.4, 'A', 79, 89, 90, 91, 92, 88.2, 'A', 'IPA', 'A', 'IPA'),
(294, 'Moh. Arif', 'SMPN 1 AMPIBABO', 75, 85, 89, 89, 89, 85.4, 'A', 77, 85, 89, 89, 89, 85.8, 'A', 78, 86, 89, 90, 90, 86.6, 'A', 'IPS', 'A', 'IPA'),
(295, 'Moh. Azis', 'SMPN 1 AMPIBABO', 75, 85, 88, 98, 91, 87.4, 'A', 77, 88, 88, 96, 96, 89, 'A', 77, 85, 88, 98, 96, 88.8, 'A', 'IPA', 'A', 'IPA'),
(296, 'Moh. Chiro Marselino', 'SMPN 4 TANANTOVEA', 75, 80, 95, 92, 92, 86.8, 'A', 75, 80, 92, 90, 94, 86.2, 'A', 77, 85, 93, 95, 95, 89, 'A', 'IPS', 'A', 'IPA'),
(297, 'Moh. Dudek', 'SMPN 1 AMPIBABO', 77, 82, 89, 90, 91, 85.8, 'A', 75, 87, 88, 89, 90, 85.8, 'A', 78, 85, 93, 93, 93, 88.4, 'A', 'IPA', 'A', 'IPA'),
(298, 'Moh. Fahri Hidayat', 'SMPN 1 AMPIBABO', 67, 88, 86, 88, 82, 82.2, 'B', 80, 84, 86, 86, 81, 83.4, 'B', 80, 86, 80, 81, 80, 81.4, 'B', 'IPA', 'A', 'IPS'),
(299, 'Moh. Faizal', 'SMPN 1 AMPIBABO', 77, 76, 77, 75, 80, 77, 'B', 82, 78, 78, 85, 82, 81, 'B', 76, 78, 79, 78, 80, 78.2, 'B', 'IPA', 'B', 'IPS'),
(300, 'Moh. Farel', 'SMPN 1 AMPIBABO', 64, 80, 83, 85, 80, 78.4, 'B', 69, 80, 81, 85, 80, 79, 'B', 72, 84, 89, 83, 80, 81.6, 'B', 'IPS', 'B', 'IPS'),
(301, 'Moh. Firdaus', 'SMP INSAN KAMIL', 60, 66, 80, 87, 84, 75.4, 'B', 77, 75, 87, 81, 87, 81.4, 'B', 66, 77, 80, 80, 89, 78.4, 'B', 'IPS', 'B', 'IPS'),
(302, 'Moh. Fitra', 'SMPN 1 AMPIBABO', 75, 78, 80, 78, 80, 78.2, 'B', 75, 85, 84, 88, 81, 82.6, 'B', 84, 80, 93, 80, 86, 84.6, 'B', 'IPA', 'B', 'IPA'),
(303, 'Moh. Hendri Fermana', 'SMPN 1 AMPIBABO', 67, 75, 78, 80, 84, 76.8, 'B', 73, 85, 79, 88, 90, 83, 'B', 89, 82, 86, 90, 79, 85.2, 'A', 'IPA', 'B', 'IPA'),
(304, 'Moh. Ihsan', 'MTs. ALKHAIRAAT SIDOLE', 90, 92, 92, 94, 95, 92.6, 'A', 90, 92, 94, 95, 96, 93.4, 'A', 90, 90, 92, 92, 94, 91.6, 'A', 'IPA', 'A', 'IPA'),
(305, 'Moh. Ikhsan', 'SMPN 17 PALU', 70, 80, 90, 91, 92, 84.6, 'B', 70, 75, 90, 91, 90, 83.2, 'B', 76, 85, 90, 91, 90, 86.4, 'A', 'IPS', 'A', 'IPA'),
(306, 'Moh. Indra S. Bunai', 'SMPN 1 AMPIBABO', 79, 80, 79, 88, 91, 83.4, 'B', 76, 87, 77, 95, 98, 86.6, 'A', 83, 98, 82, 91, 87, 88.2, 'A', 'IPA', 'A', 'IPA'),
(307, 'Moh. Ishak', 'SMP INSAN KAMIL', 79, 80, 80, 82, 82, 80.6, 'B', 83, 83, 84, 85, 85, 84, 'B', 80, 80, 84, 82, 82, 81.6, 'B', 'IPS', 'B', 'IPS'),
(308, 'Moh. Nabil', 'SMPN 1 AMPIBABO', 76, 82, 92, 93, 93, 87.2, 'A', 76, 85, 90, 92, 92, 87, 'A', 75, 87, 92, 94, 94, 88.4, 'A', 'IPS', 'A', 'IPA'),
(309, 'Moh. Pahri', 'MTs. ALKHAIRAAT TOWERA', 74, 80, 80, 77, 77, 77.6, 'B', 75, 85, 89, 91, 81, 84.2, 'B', 80, 87, 88, 79, 89, 84.6, 'B', 'IPS', 'B', 'IPA'),
(310, 'Moh. Radith', 'SMP SATAP AMPIBABO', 70, 81, 80, 85, 82, 79.6, 'B', 85, 87, 78, 72, 90, 82.4, 'B', 75, 75, 85, 80, 80, 79, 'B', 'IPA', 'B', 'IPS'),
(311, 'Moh. Rafli', 'MTs. ALKHAIRAAT AMPIBABO', 75, 75, 84, 75, 80, 77.8, 'B', 76, 83, 85, 88, 85, 83.4, 'B', 73, 71, 87, 80, 81, 78.4, 'B', 'IPS', 'B', 'IPS'),
(312, 'Moh. Rafli Raman', 'SMPN 1 AMPIBABO', 81, 82, 87, 87, 83, 84, 'B', 95, 82, 89, 88, 86, 88, 'A', 87, 83, 90, 93, 83, 87.2, 'A', 'IPS', 'A', 'IPA'),
(313, 'Moh. Rasya Pratama', 'SMPN 1 AMPIBABO', 77, 82, 77, 79, 83, 79.6, 'B', 79, 85, 83, 95, 80, 84.4, 'B', 83, 94, 93, 95, 92, 91.4, 'A', 'IPA', 'A', 'IPA'),
(314, 'Moh. Renaldi', 'SMPN 1 AMPIBABO', 77, 86, 92, 93, 93, 88.2, 'A', 75, 85, 93, 94, 94, 88.2, 'A', 79, 86, 95, 95, 96, 90.2, 'A', 'IPS', 'A', 'IPA'),
(315, 'Moh. Revan Liong', 'SMPN 1 AMPIBABO', 80, 92, 85, 91, 88, 87.2, 'A', 78, 89, 85, 95, 94, 88.2, 'A', 79, 89, 85, 90, 91, 86.8, 'A', 'IPA', 'A', 'IPA'),
(316, 'Moh. Ridwan', 'SMPN 1 AMPIBABO', 76, 87, 90, 90, 92, 87, 'A', 75, 85, 91, 93, 95, 87.8, 'A', 77, 90, 91, 92, 94, 88.8, 'A', 'IPA', 'A', 'IPA'),
(317, 'Moh. Rifat', 'SMPN 1 AMPIBABO', 77, 87, 92, 92, 94, 88.4, 'A', 76, 85, 92, 93, 95, 88.2, 'A', 80, 95, 95, 97, 97, 92.8, 'A', 'IPS', 'A', 'IPA'),
(318, 'Moh. Safwan', 'SMPN 2 AMPIBABO', 75, 85, 90, 90, 90, 86, 'A', 78, 85, 90, 92, 94, 87.8, 'A', 76, 87, 90, 91, 94, 87.6, 'A', 'IPA', 'A', 'IPA'),
(319, 'Moh. Saifullah', 'MTs. ALKHAIRAAT TINOMBO', 78, 78, 77, 78, 84, 79, 'B', 87, 84, 81, 82, 87, 84.2, 'B', 77, 77, 78, 79, 79, 78, 'B', 'IPA', 'B', 'IPS'),
(320, 'Moh. Salim', 'SMPN 1 AMPIBABO', 60, 80, 80, 82, 90, 78.4, 'B', 75, 80, 81, 86, 87, 81.8, 'B', 81, 84, 89, 91, 80, 85, 'A', 'IPA', 'A', 'IPA'),
(321, 'Moh. Wilan', 'SMPN 1 AMPIBABO', 62, 79, 78, 81, 77, 75.4, 'B', 70, 78, 76, 85, 90, 79.8, 'B', 72, 75, 80, 87, 79, 78.6, 'B', 'IPA', 'B', 'IPS'),
(322, 'Moh. Yusman', 'SMPN 1 AMPIBABO', 92, 89, 94, 94, 97, 93.2, 'A', 88, 91, 95, 95, 96, 93, 'A', 89, 89, 92, 94, 94, 91.6, 'A', 'IPS', 'A', 'IPA'),
(323, 'Moh. Yusuf', 'MTs. ALKHAIRAAT AMPIBABO', 78, 79, 77, 76, 80, 78, 'B', 79, 80, 80, 80, 80, 79.8, 'B', 80, 83, 80, 96, 90, 85.8, 'A', 'IPS', 'B', 'IPA');
INSERT INTO `tb_training` (`id`, `nama_siswa`, `nama_sekolah`, `mtk_1`, `mtk_2`, `mtk_3`, `mtk_4`, `mtk_5`, `mtk_rata`, `mtk_grade`, `ipa_1`, `ipa_2`, `ipa_3`, `ipa_4`, `ipa_5`, `ipa_rata`, `ipa_grade`, `ips_1`, `ips_2`, `ips_3`, `ips_4`, `ips_5`, `ips_rata`, `ips_grade`, `minat`, `nilai_tes`, `hasil`) VALUES
(324, 'Moh. Zirliyansyah', 'MTs. ALKHAIRAAT AMPIBABO', 85, 82, 82, 92, 94, 87, 'A', 87, 85, 86, 92, 86, 87.2, 'A', 87, 86, 84, 92, 88, 87.4, 'A', 'IPA', 'A', 'IPA'),
(325, 'Moh.Akbar', 'SMPN 3 AMPIBABO', 78, 85, 79, 90, 90, 84.4, 'B', 77, 85, 76, 94, 94, 85.2, 'A', 79, 87, 78, 96, 96, 87.2, 'A', 'IPA', 'A', 'IPA'),
(326, 'Moh.Akbar Hansen', 'MTs. ALKHAIRAAT AMPIBABO', 77, 85, 80, 80, 88, 82, 'B', 71, 85, 90, 80, 88, 82.8, 'B', 88, 79, 90, 91, 78, 85.2, 'A', 'IPA', 'A', 'IPA'),
(327, 'Moh.Alwi', 'MTs. ALKHAIRAAT AMPIBABO', 60, 87, 80, 85, 79, 78.2, 'B', 80, 77, 82, 89, 84, 82.4, 'B', 80, 80, 79, 80, 80, 79.8, 'B', 'IPS', 'B', 'IPS'),
(328, 'Moh.Geral Pramudya\nMohammad Abdan Syukran', 'SMPN 2 AMPIBABO', 75, 87, 90, 90, 90, 86.4, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 75, 87, 89, 89, 90, 86, 'A', 'IPA', 'A', 'IPA'),
(329, 'Mohamad Reyhan Rukli', 'SMPN 2 AMPIBABO', 75, 85, 91, 92, 94, 87.4, 'A', 74, 85, 91, 92, 95, 87.4, 'A', 77, 85, 90, 91, 94, 87.4, 'A', 'IPS', 'A', 'IPA'),
(330, 'Mohammad Rezky', 'SMPN 2 AMPIBABO', 74, 80, 83, 85, 86, 81.6, 'B', 82, 83, 84, 82, 82, 82.6, 'B', 85, 82, 84, 32, 82, 73, 'C', 'IPS', 'B', 'IPS'),
(331, 'Mohammad Rizki', 'SATAPN 1 TORIBULU', 94, 96, 92, 93, 92, 93.4, 'A', 98, 92, 86, 95, 92, 92.6, 'A', 93, 96, 95, 94, 95, 94.6, 'A', 'IPS', 'A', 'IPA'),
(332, 'Muh. Ariel', 'SATAPN 1 TORIBULU', 60, 77, 85, 88, 76, 77.2, 'B', 69, 81, 73, 83, 85, 78.2, 'B', 74, 75, 87, 38, 79, 70.6, 'C', 'IPS', 'B', 'IPS'),
(333, 'Muh. Panji Raditya', 'SATAPN 1 TORIBULU', 65, 75, 75, 30, 76, 64.2, 'C', 75, 80, 82, 85, 81, 80.6, 'B', 78, 78, 81, 32, 78, 69.4, 'C', 'IPA', 'B', 'IPS'),
(334, 'Muhammad Ditmar', 'SMPN 2 LARIANG', 75, 85, 88, 89, 90, 85.4, 'A', 74, 85, 89, 90, 92, 86, 'A', 78, 85, 94, 94, 95, 89.2, 'A', 'IPA', 'A', 'IPA'),
(335, 'Muhammad Fadil', 'SMPN 2 AMPIBABO', 82, 85, 95, 90, 79, 86.2, 'A', 69, 85, 89, 88, 95, 85.2, 'A', 80, 78, 94, 91, 80, 86.25, 'A', 'IPA', 'A', 'IPA'),
(336, 'Muhammad Imam Afandi', 'SMPN 2 AMPIBABO', 78, 88, 87, 90, 90, 86.6, 'A', 75, 85, 86, 94, 96, 87.2, 'A', 76, 87, 89, 96, 90, 87.6, 'A', 'IPS', 'A', 'IPA'),
(337, 'Muhammad Isnan', 'SATAPN 1 TORIBULU', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 'A', 'IPA'),
(338, 'Muhammad Joko Iswanto', 'SMPN 2 AMPIBABO', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 'A', 'IPA'),
(339, 'Muhammad Jumarlan', 'SATAPN 1 TORIBULU', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 'A', 'IPA'),
(340, 'Muhammad Syakieb', 'SATAPN 1 TORIBULU', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 'A', 'IPA'),
(341, 'Muhammad Zein Hardiansyah', 'SATAPN 1 TORIBULU', 80, 89, 82, 96, 80, 85.4, 'A', 90, 79, 78, 82, 82, 82.2, 'B', 82, 81, 78, 80, 77, 79.6, 'B', 'IPS', 'B', 'IPA'),
(342, 'Muhammat Revan', 'SATAPN 1 TORIBULU', 60, 82, 75, 80, 78, 75, 'B', 70, 76, 80, 85, 88, 79.8, 'B', 79, 75, 80, 83, 78, 79, 'B', 'IPS', 'B', 'IPS'),
(343, 'Munaldi Yasit Ridho', 'SATAPN 1 TORIBULU', 80, 76, 93, 94, 95, 87.6, 'A', 78, 91, 93, 94, 95, 90.2, 'A', 84, 85, 92, 94, 95, 90, 'A', 'IPA', 'A', 'IPA'),
(344, 'Musdalifah Indah', 'SATAPN 1 TORIBULU', 78, 86, 88, 89, 90, 86.2, 'A', 77, 87, 89, 89, 90, 86.4, 'A', 77, 87, 89, 90, 92, 87, 'A', 'IPA', 'A', 'IPA'),
(345, 'Nabil', 'SMPN 2 AMPIBABO', 81, 90, 90, 95, 90, 89.2, 'A', 78, 80, 88, 85, 85, 83.2, 'B', 75, 85, 95, 90, 85, 86, 'A', 'IPS', 'A', 'IPA'),
(346, 'Nabila', 'SMPN 2 AMPIBABO', 75, 85, 89, 90, 90, 85.8, 'A', 77, 84, 91, 92, 92, 87.2, 'A', 76, 85, 92, 94, 95, 88.4, 'A', 'IPS', 'A', 'IPA'),
(347, 'Nabila N', 'SMPN 2 AMPIBABO', 65, 74, 80, 82, 90, 78.2, 'B', 73, 78, 68, 72, 80, 74.2, 'C', 75, 85, 85, 78, 82, 81, 'B', 'IPS', 'B', 'IPS'),
(348, 'Nadia', 'SMPN 2 AMPIBABO', 75, 69, 97, 78, 86, 81, 'B', 77, 75, 71, 84, 74, 76.2, 'B', 80, 80, 85, 80, 75, 80, 'B', 'IPA', 'A', 'IPA'),
(349, 'Nadya Kartika Astri', 'SMPN 2 AMPIBABO', 76, 85, 90, 91, 91, 86.6, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 76, 90, 92, 92, 94, 88.8, 'A', 'IPA', 'A', 'IPA'),
(350, 'Naila', 'SMPN 2 AMPIBABO', 76, 86, 89, 89, 90, 86, 'A', 77, 85, 92, 92, 94, 88, 'A', 86, 86, 84, 90, 90, 87.2, 'A', 'IPA', 'A', 'IPA'),
(351, 'Na\'Ima', 'SMPN 2 AMPIBABO', 84, 82, 82, 89, 80, 83.4, 'B', 86, 84, 86, 89, 84, 85.8, 'A', 76, 76, 87, 89, 85, 82.6, 'B', 'IPS', 'B', 'IPA'),
(352, 'Najwa Syifa Djakatara ', 'SMPN 2 AMPIBABO', 80, 81, 81, 85, 86, 82.6, 'B', 85, 86, 89, 91, 92, 88.6, 'A', 77, 80, 72, 80, 90, 79.8, 'B', 'IPS', 'A', 'IPA'),
(353, 'Nanda Ayu Safira', 'SMPN 2 AMPIBABO', 88, 85, 84, 82, 85, 84.8, 'B', 86, 80, 87, 79, 90, 84.4, 'B', 90, 80, 90, 91, 79, 86, 'A', 'IPS', 'B', 'IPA'),
(354, 'Nelvarina', 'SMPN 2 AMPIBABO', 69, 78, 95, 82, 90, 82.8, 'B', 76, 85, 77, 83, 84, 81, 'B', 76, 75, 79, 75, 80, 77, 'B', 'IPS', 'B', 'IPS'),
(355, 'Ni Kadek Yuni Pelisa', 'SMPN 2 AMPIBABO', 70, 78, 74, 82, 80, 76.8, 'B', 72, 72, 78, 77, 80, 75.8, 'B', 76, 86, 84, 83, 85, 82.8, 'B', 'IPA', 'B', 'IPS'),
(356, 'Ni Komang Erna Suriani', 'SMPN 2 AMPIBABO', 77, 83, 79, 78, 82, 79.8, 'B', 79, 79, 79, 88, 89, 82.8, 'B', 80, 83, 86, 88, 90, 85.4, 'A', 'IPA', 'B', 'IPA'),
(357, 'Ni Komang Murdiani', 'SMPN 2 AMPIBABO', 78, 85, 80, 85, 83, 82.2, 'B', 78, 80, 75, 80, 84, 79.4, 'B', 85, 89, 90, 95, 89, 89.6, 'A', 'IPA', 'A', 'IPA'),
(358, 'Ni Komang Yana Hucchi', 'SMPN 2 AMPIBABO', 79, 85, 86, 90, 82, 84.4, 'B', 80, 82, 83, 85, 84, 82.8, 'B', 85, 89, 92, 91, 80, 87.4, 'A', 'IPA', 'A', 'IPA'),
(359, 'Ni Luh Yudi Yastira', 'SMPN 2 AMPIBABO', 76, 90, 85, 90, 81, 84.4, 'B', 80, 85, 86, 88, 91, 86, 'A', 82, 80, 92, 78, 80, 82.4, 'B', 'IPS', 'B', 'IPA'),
(360, 'Ni Made Jeniarti', 'SMPN 1 TORIBULU', 79, 77, 79, 87, 88, 82, 'B', 79, 81, 91, 90, 86, 85.4, 'A', 75, 87, 83, 78, 90, 82.6, 'B', 'IPS', 'B', 'IPA'),
(361, 'Ni Nyoman Semiani', 'SMPN 1 TORIBULU', 80, 78, 81, 82, 82, 80.6, 'B', 80, 87, 77, 86, 88, 83.6, 'B', 83, 80, 87, 94, 78, 84.4, 'B', 'IPS', 'B', 'IPS'),
(362, 'Nia Yuniasih', 'SMPN 1 TORIBULU', 60, 75, 75, 78, 81, 73.8, 'C', 68, 75, 75, 80, 80, 75.6, 'B', 68, 76, 76, 33, 78, 66.2, 'C', 'IPS', 'C', 'IPS'),
(363, 'Niar', 'SMPN 1 TORIBULU', 73, 76, 79, 86, 77, 78.2, 'B', 72, 80, 77, 79, 79, 77.4, 'B', 75, 87, 76, 76, 81, 79, 'B', 'IPS', 'C', 'IPS'),
(364, 'Nifti Oktafiana', 'SMPN 1 TORIBULU', 82, 82, 77, 74, 72, 77.4, 'B', 80, 82, 79, 76, 82, 79.8, 'B', 76, 75, 75, 78, 80, 76.8, 'B', 'IPS', 'C', 'IPS'),
(365, 'Nila ', 'SMPN 1 TORIBULU', 60, 83, 81, 82, 79, 77, 'B', 75, 77, 75, 75, 82, 76.8, 'B', 68, 75, 77, 79, 78, 75.4, 'B', 'IPA', 'B', 'IPA'),
(366, 'Nilu Putu Eka Suryasih', 'SMPN 1 TORIBULU', 89, 91, 87, 90, 85, 88.4, 'A', 82, 85, 91, 93, 94, 89, 'A', 87, 85, 92, 87, 84, 87, 'A', 'IPA', 'C', 'IPA'),
(367, 'Nimas', 'SMPN 1 TORIBULU', 75, 75, 70, 70, 76, 73.2, 'C', 75, 75, 70, 70, 78, 73.6, 'C', 71, 75, 75, 75, 78, 74.8, 'C', 'IPA', 'C', 'IPS'),
(368, 'Nina', 'SMPN 1 TORIBULU', 60, 78, 75, 75, 84, 74.4, 'C', 69, 77, 75, 80, 80, 76.2, 'B', 69, 75, 79, 33, 78, 66.8, 'C', 'IPS', 'C', 'IPS'),
(369, 'Nirmala Sari', 'SMPN 1 TORIBULU', 60, 72, 93, 87, 84, 79.2, 'B', 69, 75, 76, 80, 84, 76.8, 'B', 73, 78, 79, 78, 78, 77.2, 'B', 'IPA', 'C', 'IPS'),
(370, 'Nofita', 'SMPN 2 AMPIBABO', 64, 67, 68, 70, 72, 68.2, 'C', 77, 80, 70, 71, 70, 73.6, 'C', 77, 65, 70, 75, 70, 71.4, 'C', 'IPA', 'C', 'IPS'),
(371, 'Noval', 'SMPN 1 TORIBULU', 60, 60, 70, 70, 80, 68, 'C', 68, 65, 70, 75, 85, 72.6, 'C', 65, 65, 72, 70, 77, 69.8, 'C', 'IPS', 'C', 'IPS'),
(372, 'Novan Kristianto', 'SMP MUHAMMADIYAH PALU', 60, 52, 70, 75, 75, 66.4, 'C', 70, 68, 80, 79, 84, 76.2, 'B', 70, 65, 75, 30, 82, 64.4, 'C', 'IPA', 'A', 'IPS'),
(373, 'Numran Wahdini', 'SMPN 2 AMPIBABO', 60, 68, 85, 80, 76, 73.8, 'C', 68, 78, 75, 83, 84, 77.6, 'B', 74, 75, 78, 79, 78, 76.8, 'B', 'IPS', 'A', 'IPS'),
(374, 'Nur Afni', 'SMPN 2 AMPIBABO', 60, 75, 75, 78, 78, 73.2, 'C', 69, 75, 75, 78, 82, 75.8, 'B', 72, 78, 75, 81, 77, 76.6, 'B', 'IPS', 'A', 'IPS'),
(375, 'Nur Ainun', 'SMPN 2 AMPIBABO', 61, 66, 80, 75, 79, 72.2, 'C', 75, 79, 86, 77, 88, 81, 'B', 65, 71, 70, 82, 85, 74.6, 'C', 'IPS', 'A', 'IPS'),
(376, 'Nur Azizah', 'SMPN 3 AMPIBABO', 50, 60, 68, 75, 77, 66, 'C', 60, 64, 70, 75, 88, 71.4, 'C', 65, 65, 70, 75, 72, 69.4, 'C', 'IPS', 'A', 'IPS'),
(377, 'Nur Cahyani', 'SMPN 3 AMPIBABO', 60, 78, 78, 81, 75, 74.4, 'C', 69, 78, 75, 78, 87, 77.4, 'B', 68, 76, 78, 82, 79, 76.6, 'B', 'IPA', 'A', 'IPS'),
(378, 'Nur Hidayat', 'SMPN 1 TORIBULU', 60, 75, 77, 82, 82, 75.2, 'B', 70, 80, 75, 75, 79, 75.8, 'B', 68, 75, 77, 78, 75, 74.6, 'C', 'IPA', 'A', 'IPS'),
(379, 'Nur Hikmah', 'SMP PGRI SIENJO', 76, 70, 79, 78, 79, 76.4, 'B', 80, 75, 79, 79, 88, 80.2, 'B', 80, 75, 80, 80, 80, 79, 'B', 'IPA', 'A', 'IPS'),
(380, 'Nur Ramadani. M', 'SMPN 2 AMPIBABO', 70, 70, 79, 75, 81, 75, 'B', 70, 73, 78, 75, 77, 74.6, 'C', 69, 75, 75, 72, 81, 74.4, 'C', 'IPS', 'A', 'IPS'),
(381, 'Nur Risma Fajar', 'SMPN 1 TORIBULU', 60, 83, 80, 82, 78, 76.6, 'B', 69, 76, 79, 75, 81, 76, 'B', 68, 75, 79, 81, 78, 76.2, 'B', 'IPA', 'A', 'IPS'),
(382, 'Nurain', 'SMPN 1 TANA TOVEA', 60, 75, 75, 75, 81, 73.2, 'C', 75, 80, 75, 80, 80, 78, 'B', 75, 76, 75, 77, 75, 75.6, 'B', 'IPS', 'A', 'IPS'),
(383, 'Nuraini', 'SMPN 1 TORIBULU', 69, 68, 70, 71, 75, 70.6, 'C', 76, 71, 72, 74, 74, 73.4, 'C', 70, 70, 75, 75, 85, 75, 'B', 'IPS', 'A', 'IPS'),
(384, 'Nuraini Laminula', 'SMPN 1 TORIBULU', 75, 76, 68, 75, 80, 74.8, 'C', 75, 75, 70, 77, 79, 75.2, 'B', 71, 76, 70, 75, 76, 73.6, 'C', 'IPA', 'A', 'IPS'),
(385, 'Nur\'Ani', 'SMPN 1 TORIBULU', 80, 70, 75, 70, 78, 74.6, 'C', 63, 75, 78, 74, 78, 73.6, 'C', 75, 65, 75, 75, 80, 74, 'C', 'IPA', 'A', 'IPS'),
(386, 'Nuratika', 'SMPN 1 SINIU', 81, 81, 80, 75, 78, 79, 'B', 77, 79, 80, 78, 76, 78, 'B', 87, 83, 76, 71, 95, 82.4, 'B', 'IPA', 'A', 'IPS'),
(387, 'Nurhana', 'MTs. ALKHAIRAAT SINIU\'', 60, 79, 78, 78, 81, 75.2, 'B', 69, 71, 76, 79, 84, 75.8, 'B', 68, 75, 75, 78, 78, 74.8, 'C', 'IPS', 'A', 'IPS'),
(388, 'Nurmila', 'SMPN 1 SINIU', 72, 75, 75, 76, 75, 74.6, 'C', 75, 75, 76, 76, 77, 75.8, 'B', 80, 76, 76, 79, 80, 78.2, 'B', 'IPA', 'A', 'IPS'),
(389, 'Nurul Hidayah', 'SMPN 1 SINIU', 60, 87, 85, 80, 82, 78.8, 'B', 69, 77, 77, 87, 82, 78.4, 'B', 71, 78, 78, 80, 79, 77.2, 'B', 'IPA', 'A', 'IPS'),
(390, 'Nurul Hikmah Syam', 'SMPN 1 TORIBULU', 66, 75, 85, 79, 80, 77, 'B', 68, 75, 85, 80, 93, 80.2, 'B', 74, 75, 95, 90, 88, 84.4, 'B', 'IPA', 'A', 'IPS'),
(391, 'Nurul Iman', 'SMPN 1 TORIBULU', 68, 70, 67, 65, 75, 69, 'C', 65, 68, 66, 66, 77, 68.4, 'C', 66, 77, 66, 71, 76, 71.2, 'C', 'IPS', 'A', 'IPS'),
(392, 'Nurul Kheyla Ramadhani', 'SMPN 1 TORIBULU', 66, 77, 80, 78, 79, 76, 'B', 68, 77, 75, 83, 85, 77.6, 'B', 68, 76, 78, 31, 79, 66.4, 'C', 'IPS', 'C', 'IPS'),
(393, 'Nurul Safitri', 'SMPN 1 TORIBULU', 71, 72, 73, 75, 70, 72.2, 'C', 70, 80, 80, 65, 79, 74.8, 'C', 72, 79, 79, 79, 77, 77.2, 'B', 'IPA', 'B', 'IPS'),
(394, 'Nusta Rambu Meilano', 'SMPN 1 TORIBULU', 65, 76, 66, 71, 82, 72, 'C', 70, 76, 73, 74, 86, 75.8, 'B', 72, 97, 89, 85, 86, 85.8, 'A', 'IPS', 'B', 'IPA'),
(395, 'Nyoman Ariawan', 'SMPN 1 SINIU', 66, 64, 70, 70, 80, 70, 'C', 64, 64, 72, 74, 87, 72.2, 'C', 72, 97, 89, 85, 86, 85.8, 'A', 'IPA', 'B', 'IPS'),
(396, 'Ofan', 'SMPN 1 SINIU', 60, 77, 60, 77, 75, 68, 'C', 68, 75, 69, 75, 85, 74.4, 'C', 73, 82, 72, 35, 83, 69, 'C', 'IPS', 'B', 'IPS'),
(397, 'Pandu R. Nata', 'SMPN 3 AMPIBABO', 75, 75, 75, 78, 75, 75.6, 'B', 75, 75, 76, 75, 76, 75.4, 'B', 68, 75, 68, 75, 70, 71.2, 'C', 'IPA', 'C', 'IPS'),
(398, 'Parhan  A.B Parasulu', 'SMPN 1 SINIU', 60, 80, 75, 75, 84, 74.75, 'C', 69, 75, 75, 78, 80, 75.4, 'B', 75, 76, 80, 75, 80, 77.2, 'B', 'IPA', 'B', 'IPS'),
(399, 'Pratiwi', 'SMP PGRI SIENJO', 63, 75, 95, 80, 79, 78.4, 'B', 68, 75, 78, 79, 80, 76, 'B', 72, 75, 75, 81, 75, 75.6, 'B', 'IPA', 'B', 'IPS'),
(400, 'Putra Ardiansah', 'SMPN 1 SINIU', 60, 75, 80, 81, 81, 75.4, 'B', 70, 78, 79, 81, 81, 77.8, 'B', 70, 75, 79, 70, 76, 74, 'C', 'IPA', 'C', 'IPS'),
(401, 'Putri Andini', 'SMPN 1 SINIU', 75, 76, 78, 76, 0, 61, 'C', 75, 76, 80, 77, 0, 61.6, 'C', 73, 80, 78, 34, 79, 68.8, 'C', 'IPS', 'C', 'IPS'),
(402, 'Putri Devi Yanti', 'SMPN 1 TORIBULU', 78, 80, 80, 85, 85, 81.6, 'B', 80, 78, 88, 85, 88, 83.8, 'B', 75, 75, 75, 79, 0, 60.8, 'C', 'IPS', 'C', 'IPS'),
(403, 'Putri Julianti', 'SMPN 4 PALOPO', 60, 75, 80, 80, 78, 74.6, 'C', 69, 80, 75, 79, 80, 76.6, 'B', 95, 79, 82, 91, 97, 88.8, 'A', 'IPA', 'B', 'IPA'),
(404, 'Putu Gede Budarsana', 'SMPN 1 TORIBULU', 60, 83, 78, 75, 80, 75.2, 'B', 70, 78, 75, 75, 88, 77.2, 'B', 75, 75, 75, 80, 79, 76.8, 'B', 'IPA', 'B', 'IPS'),
(405, 'Rada Rani Dewi Dasi', 'SMPN 3 AMPIBABO', 60, 75, 79, 84, 76, 74.8, 'C', 69, 80, 77, 78, 84, 77.6, 'B', 72, 75, 78, 79, 79, 76.6, 'B', 'IPA', 'B', 'IPS'),
(406, 'Raf\'Al', 'SMPN 1 TORIBULU', 70, 75, 70, 78, 75, 73.6, 'C', 75, 75, 76, 75, 90, 78.2, 'B', 68, 70, 79, 80, 87, 76.8, 'B', 'IPS', 'B', 'IPS'),
(407, 'Rafel', 'SMPN 1 TORIBULU', 69, 69, 71, 80, 80, 73.8, 'C', 66, 70, 68, 79, 69, 70.4, 'C', 70, 75, 74, 75, 81, 75, 'B', 'IPA', 'B', 'IPS'),
(408, 'Rafi', 'SMPN 1 TORIBULU', 77, 75, 82, 79, 77, 78, 'B', 73, 79, 83, 75, 76, 77.2, 'B', 75, 77, 77, 77, 89, 79, 'B', 'IPA', 'C', 'IPS'),
(409, 'Rafli', 'SMPN 1 TORIBULU', 80, 82, 80, 82, 87, 82.2, 'B', 80, 84, 81, 83, 90, 83.6, 'B', 0, 84, 82, 80, 87, 66.6, 'C', 'IPS', 'C', 'IPS'),
(410, 'Rafli', 'SMPN 1 TORIBULU', 64, 83, 78, 80, 82, 77.4, 'B', 68, 80, 75, 79, 81, 76.6, 'B', 69, 80, 70, 75, 80, 74.8, 'C', 'IPS', 'B', 'IPS'),
(411, 'Rafli', 'SMPN 1 TORIBULU', 73, 71, 66, 75, 80, 73, 'C', 73, 79, 74, 80, 80, 77.2, 'B', 70, 73, 70, 75, 80, 73.6, 'C', 'IPS', 'B', 'IPS'),
(412, 'Rafli Aan Saputra', 'SMPN 1 TORIBULU', 70, 78, 81, 79, 79, 77.4, 'B', 78, 80, 85, 83, 90, 83.2, 'B', 70, 75, 80, 85, 80, 78, 'B', 'IPS', 'C', 'IPS'),
(413, 'Rahmat', 'SMPN 1 TORIBULU', 75, 78, 79, 79, 80, 78.2, 'B', 75, 78, 79, 79, 80, 78.2, 'B', 76, 78, 78, 80, 85, 79.4, 'B', 'IPS', 'C', 'IPS'),
(414, 'Rahmat Al Fauzan', 'SMPN 2 AMPIBABO', 78, 89, 89, 90, 90, 87.2, 'A', 77, 85, 92, 93, 93, 88, 'A', 79, 87, 90, 94, 94, 88.8, 'A', 'IPA', 'C', 'IPA'),
(415, 'Rahmat Candra Mohi', 'SMPN 1 TORIBULU', 68, 76, 70, 76, 79, 73.8, 'C', 70, 75, 70, 73, 80, 73.6, 'C', 70, 80, 72, 76, 80, 75.6, 'B', 'IPA', 'B', 'IPS'),
(416, 'Rahmat Hidayat', 'SMPN 2 AMPIBABO', 68, 75, 75, 75, 80, 74.6, 'C', 65, 80, 76, 98, 75, 78.8, 'B', 65, 70, 75, 85, 78, 74.6, 'C', 'IPA', 'B', 'IPS'),
(417, 'Rahmat Hidayat', 'MTs. DARUSSHOLIHIN SAUSU', 60, 86, 75, 80, 85, 77.2, 'B', 76, 78, 77, 85, 87, 80.6, 'B', 71, 79, 81, 87, 80, 79.6, 'B', 'IPA', 'B', 'IPS'),
(418, 'Rahmat Ramadhan', 'SMPN 1 TORIBULU', 65, 70, 65, 77, 83, 72, 'C', 74, 68, 74, 83, 83, 76.4, 'B', 75, 75, 75, 86, 81, 78.4, 'B', 'IPA', 'B', 'IPS'),
(419, 'Rahmatiya', 'SMPN 1 TORIBULU', 70, 74, 77, 82, 80, 76.6, 'B', 74, 80, 81, 81, 80, 79.2, 'B', 72, 70, 69, 75, 80, 73.2, 'C', 'IPS', 'B', 'IPS'),
(420, 'Raina Salsabilla', 'SMPN 1 TORIBULU', 68, 70, 70, 79, 84, 74.2, 'C', 75, 79, 75, 80, 85, 78.8, 'B', 79, 79, 79, 80, 90, 81.4, 'B', 'IPS', 'C', 'IPS'),
(421, 'Raisa Ramadani', 'MTs. ALKHAIRAAT AMPIBABO', 76, 80, 79, 85, 93, 82.6, 'B', 82, 80, 80, 79, 84, 81, 'B', 78, 83, 83, 80, 89, 82.6, 'B', 'IPS', 'B', 'IPS'),
(422, 'Rakan Septiansah', 'MTs. ALKHAIRAAT TOWERA', 71, 77, 78, 73, 78, 75.4, 'B', 75, 78, 82, 79, 80, 78.8, 'B', 79, 80, 75, 76, 85, 79, 'B', 'IPA', 'B', 'IPS'),
(423, 'Ramadan', 'MTs. ALKHAIRAAT TOWERA', 65, 65, 65, 67, 77, 67.8, 'C', 75, 70, 65, 70, 75, 71, 'C', 68, 68, 88, 30, 80, 66.8, 'C', 'IPA', 'B', 'IPS'),
(424, 'Rasli', 'SMPN 1 TORIBULU', 75, 65, 65, 75, 65, 69, 'C', 75, 65, 65, 65, 80, 70, 'C', 70, 75, 75, 75, 70, 73, 'C', 'IPS', 'C', 'IPS'),
(425, 'Raudatul Jannah', 'MTs. ALKHAIRAAT TOWERA', 62, 85, 85, 85, 85, 80.4, 'B', 75, 88, 82, 83, 85, 82.6, 'B', 76, 78, 83, 85, 84, 81.2, 'B', 'IPS', 'C', 'IPS'),
(426, 'Raya Putri Ananda', 'MTs. ALKHAIRAAT PINOTU', 60, 75, 75, 76, 78, 72.8, 'C', 69, 78, 76, 79, 81, 76.6, 'B', 73, 75, 75, 79, 75, 75.4, 'B', 'IPS', 'B', 'IPS'),
(427, 'Refa Julianti', 'SMPN 2 AMPIBABO', 76, 79, 70, 76, 75, 75.2, 'B', 75, 76, 79, 81, 78, 77.8, 'B', 75, 77, 81, 79, 78, 78, 'B', 'IPS', 'B', 'IPS'),
(428, 'Regina Cahyani Putri', 'SMP PGRI SIENJO', 70, 76, 80, 78, 75, 75.8, 'B', 70, 80, 80, 79, 85, 78.8, 'B', 70, 78, 78, 80, 76, 76.4, 'B', 'IPS', 'C', 'IPS'),
(429, 'Reno', 'MTs. NEGERI 1 PARIGI', 65, 86, 85, 85, 76, 79.4, 'B', 69, 83, 78, 85, 90, 81, 'B', 78, 79, 84, 85, 79, 81, 'B', 'IPS', 'C', 'IPS'),
(430, 'Reski Farel', 'SMP PGRI SIENJO', 70, 81, 78, 79, 91, 79.8, 'B', 75, 78, 74, 79, 76, 76.4, 'B', 73, 78, 76, 84, 86, 79.4, 'B', 'IPS', 'C', 'IPS'),
(431, 'Resky', 'SMPN 2 AMPIBABO', 60, 75, 78, 85, 75, 74.6, 'C', 70, 75, 80, 85, 86, 79.2, 'B', 73, 80, 78, 81, 78, 78, 'B', 'IPS', 'B', 'IPS'),
(432, 'Reva Lina', 'SMPN 1 TORIBULU', 75, 85, 76, 76, 78, 78, 'B', 75, 85, 99, 90, 90, 87.8, 'A', 75, 85, 88, 90, 86, 84.8, 'B', 'IPA', 'A', 'IPS'),
(433, 'Reyfan', 'SMPN 1 TANA TOVEA', 79, 78, 80, 80, 84, 80.2, 'B', 75, 78, 80, 80, 85, 79.6, 'B', 80, 90, 80, 78, 85, 82.6, 'B', 'IPS', 'A', 'IPA'),
(434, 'Riansyah', 'SMPN 1 TORIBULU', 75, 81, 80, 80, 82, 79.6, 'B', 70, 82, 76, 79, 80, 77.4, 'B', 77, 77, 89, 35, 89, 73.4, 'C', 'IPA', 'A', 'IPA'),
(435, 'Rice Giringan', 'SMPN 1 TORIBULU', 78, 90, 70, 76, 89, 80.6, 'B', 85, 90, 80, 80, 75, 82, 'B', 91, 96, 90, 94, 97, 93.6, 'A', 'IPA', 'A', 'IPA'),
(436, 'Ridhatul Meidina', 'SMPN 1 TORIBULU', 86, 98, 94, 92, 97, 93.4, 'A', 83, 95, 90, 94, 96, 91.6, 'A', 82, 95, 92, 94, 97, 92, 'A', 'IPA', 'A', 'IPA'),
(437, 'Rifal', 'SMPN 1 SINIU', 88, 89, 89, 90, 90, 89.2, 'A', 85, 85, 88, 87, 89, 86.8, 'A', 86, 88, 92, 94, 95, 91, 'A', 'IPS', 'A', 'IPA'),
(438, 'Rifal', 'MTs. ALKHAIRAAT SINIU\'', 72, 75, 78, 77, 76, 75.6, 'B', 70, 71, 78, 78, 80, 75.4, 'B', 90, 86, 85, 88, 75, 84.8, 'B', 'IPA', 'A', 'IPS'),
(439, 'Rifal', 'SMPN 1 SINIU', 82, 77, 80, 81, 82, 80.4, 'B', 81, 77, 84, 84, 99, 85, 'A', 75, 78, 88, 78, 80, 79.8, 'B', 'IPA', 'A', 'IPS'),
(440, 'Rifaldi Jasrin', 'SMPN 1 SINIU', 75, 80, 77, 77, 80, 77.8, 'B', 79, 79, 79, 85, 79, 80.2, 'B', 77, 80, 80, 91, 95, 84.6, 'B', 'IPS', 'A', 'IPS'),
(441, 'Rifki Rifaldi Jumardin', 'SMPN 1 TORIBULU', 95, 80, 80, 90, 81, 85.2, 'A', 70, 96, 88, 82, 90, 85.2, 'A', 89, 78, 96, 80, 84, 85.4, 'A', 'IPA', 'A', 'IPS'),
(442, 'Rifran', 'SMPN 1 TORIBULU', 79, 80, 88, 82, 81, 82, 'B', 79, 82, 84, 85, 86, 83.2, 'B', 80, 82, 87, 85, 86, 84, 'B', 'IPA', 'B', 'IPS'),
(443, 'Riki', 'SMPN 1 TORIBULU', 77, 88, 90, 91, 92, 87.6, 'A', 80, 85, 90, 91, 91, 87.4, 'A', 79, 89, 90, 91, 92, 88.2, 'A', 'IPA', 'A', 'IPA'),
(444, 'Rinaldi', 'SMPN 1 TORIBULU', 75, 85, 89, 89, 89, 85.4, 'A', 77, 85, 89, 89, 89, 85.8, 'A', 78, 86, 89, 90, 90, 86.6, 'A', 'IPS', 'A', 'IPA'),
(445, 'Risca Aprilia', 'SMPN 1 TORIBULU', 75, 85, 88, 98, 91, 87.4, 'A', 77, 88, 88, 96, 96, 89, 'A', 77, 85, 88, 98, 96, 88.8, 'A', 'IPA', 'A', 'IPA'),
(446, 'Riski', 'SMPN 1 SINIU', 75, 80, 95, 92, 92, 86.8, 'A', 75, 80, 92, 90, 94, 86.2, 'A', 77, 85, 93, 95, 95, 89, 'A', 'IPS', 'A', 'IPA'),
(447, 'Riswandi', 'SMPN 1 SINIU', 77, 82, 89, 90, 91, 85.8, 'A', 75, 87, 88, 89, 90, 85.8, 'A', 78, 85, 93, 93, 93, 88.4, 'A', 'IPA', 'A', 'IPA'),
(448, 'Rival', 'SMPN 3 AMPIBABO', 67, 88, 86, 88, 82, 82.2, 'B', 80, 84, 86, 86, 81, 83.4, 'B', 80, 86, 80, 81, 80, 81.4, 'B', 'IPA', 'A', 'IPS'),
(449, 'Rizka Aulia', 'SMPN 1 SINIU', 77, 76, 77, 75, 80, 77, 'B', 82, 78, 78, 85, 82, 81, 'B', 76, 78, 79, 78, 80, 78.2, 'B', 'IPA', 'B', 'IPS'),
(450, 'Rizky Rizmawan Ramadhan', 'SMP PGRI SIENJO', 64, 80, 83, 85, 80, 78.4, 'B', 69, 80, 81, 85, 80, 79, 'B', 72, 84, 89, 83, 80, 81.6, 'B', 'IPS', 'B', 'IPS'),
(451, 'Sadce', 'SMPN 1 SINIU', 60, 66, 80, 87, 84, 75.4, 'B', 77, 75, 87, 81, 87, 81.4, 'B', 66, 77, 80, 80, 89, 78.4, 'B', 'IPS', 'B', 'IPS'),
(452, 'Safina Sardin', 'SMPN 1 SINIU', 75, 78, 80, 78, 80, 78.2, 'B', 75, 85, 84, 88, 81, 82.6, 'B', 84, 80, 93, 80, 86, 84.6, 'B', 'IPA', 'B', 'IPA'),
(453, 'Safira Amalia', 'SMPN 1 TORIBULU', 67, 75, 78, 80, 84, 76.8, 'B', 73, 85, 79, 88, 90, 83, 'B', 89, 82, 86, 90, 79, 85.2, 'A', 'IPA', 'B', 'IPA'),
(454, 'Sahra Nur Aulia', 'SMPN 4 PALOPO', 90, 92, 92, 94, 95, 92.6, 'A', 90, 92, 94, 95, 96, 93.4, 'A', 90, 90, 92, 92, 94, 91.6, 'A', 'IPA', 'A', 'IPA'),
(455, 'Sakia Almesa', 'SMPN 1 TORIBULU', 70, 80, 90, 91, 92, 84.6, 'B', 70, 75, 90, 91, 90, 83.2, 'B', 76, 85, 90, 91, 90, 86.4, 'A', 'IPS', 'A', 'IPA'),
(456, 'Saldin', 'SMPN 3 AMPIBABO', 79, 80, 79, 88, 91, 83.4, 'B', 76, 87, 77, 95, 98, 86.6, 'A', 83, 98, 82, 91, 87, 88.2, 'A', 'IPA', 'A', 'IPA'),
(457, 'Salsa Nabila', 'SMPN 1 TORIBULU', 79, 80, 80, 82, 82, 80.6, 'B', 83, 83, 84, 85, 85, 84, 'B', 80, 80, 84, 82, 82, 81.6, 'B', 'IPS', 'B', 'IPS'),
(458, 'Salsabila', 'SMPN 1 TORIBULU', 76, 82, 92, 93, 93, 87.2, 'A', 76, 85, 90, 92, 92, 87, 'A', 75, 87, 92, 94, 94, 88.4, 'A', 'IPS', 'A', 'IPA'),
(459, 'San Valentino Sailana', 'SMPN 1 TORIBULU', 74, 80, 80, 77, 77, 77.6, 'B', 75, 85, 89, 91, 81, 84.2, 'B', 80, 87, 88, 79, 89, 84.6, 'B', 'IPS', 'B', 'IPA'),
(460, 'Sandi', 'SMPN 1 TORIBULU', 70, 81, 80, 85, 82, 79.6, 'B', 85, 87, 78, 72, 90, 82.4, 'B', 75, 75, 85, 80, 80, 79, 'B', 'IPA', 'B', 'IPS'),
(461, 'Sartika', 'SMPN 1 TORIBULU', 75, 75, 84, 75, 80, 77.8, 'B', 76, 83, 85, 88, 85, 83.4, 'B', 73, 71, 87, 80, 81, 78.4, 'B', 'IPS', 'B', 'IPS'),
(462, 'Sasna', 'SMPN 1 TORIBULU', 81, 82, 87, 87, 83, 84, 'B', 95, 82, 89, 88, 86, 88, 'A', 87, 83, 90, 93, 83, 87.2, 'A', 'IPS', 'A', 'IPA'),
(463, 'Satrin', 'SMPN 1 TORIBULU', 77, 82, 77, 79, 83, 79.6, 'B', 79, 85, 83, 95, 80, 84.4, 'B', 83, 94, 93, 95, 92, 91.4, 'A', 'IPA', 'A', 'IPA'),
(464, 'Selvi', 'SMPN 1 TORIBULU', 77, 86, 92, 93, 93, 88.2, 'A', 75, 85, 93, 94, 94, 88.2, 'A', 79, 86, 95, 95, 96, 90.2, 'A', 'IPS', 'A', 'IPA'),
(465, 'Selvia Putri', 'SMPN 2 AMPIBABO', 80, 92, 85, 91, 88, 87.2, 'A', 78, 89, 85, 95, 94, 88.2, 'A', 79, 89, 85, 90, 91, 86.8, 'A', 'IPA', 'A', 'IPA'),
(466, 'Shinta Bella', 'SMPN 1 TORIBULU', 76, 87, 90, 90, 92, 87, 'A', 75, 85, 91, 93, 95, 87.8, 'A', 77, 90, 91, 92, 94, 88.8, 'A', 'IPA', 'A', 'IPA'),
(467, 'Shofa Azzahra', 'SMPN 2 AMPIBABO', 77, 87, 92, 92, 94, 88.4, 'A', 76, 85, 92, 93, 95, 88.2, 'A', 80, 95, 95, 97, 97, 92.8, 'A', 'IPS', 'A', 'IPA'),
(468, 'Silta', 'MTs. DARUSSHOLIHIN SAUSU', 75, 85, 90, 90, 90, 86, 'A', 78, 85, 90, 92, 94, 87.8, 'A', 76, 87, 90, 91, 94, 87.6, 'A', 'IPA', 'A', 'IPA'),
(469, 'Silvi Nijma', 'SMPN 1 TORIBULU', 78, 78, 77, 78, 84, 79, 'B', 87, 84, 81, 82, 87, 84.2, 'B', 77, 77, 78, 79, 79, 78, 'B', 'IPA', 'B', 'IPS'),
(470, 'Siska', 'SMPN 1 TORIBULU', 60, 80, 80, 82, 90, 78.4, 'B', 75, 80, 81, 86, 87, 81.8, 'B', 81, 84, 89, 91, 80, 85, 'A', 'IPA', 'A', 'IPA'),
(471, 'Siti Azzahra', 'SMPN 1 TORIBULU', 62, 79, 78, 81, 77, 75.4, 'B', 70, 78, 76, 85, 90, 79.8, 'B', 72, 75, 80, 87, 79, 78.6, 'B', 'IPA', 'B', 'IPS'),
(472, 'Siti Fadila', 'MTs. ALKHAIRAAT AMPIBABO', 92, 89, 94, 94, 97, 93.2, 'A', 88, 91, 95, 95, 96, 93, 'A', 89, 89, 92, 94, 94, 91.6, 'A', 'IPS', 'A', 'IPA'),
(473, 'Siti Fadilla', 'MTs. ALKHAIRAAT TOWERA', 78, 79, 77, 76, 80, 78, 'B', 79, 80, 80, 80, 80, 79.8, 'B', 80, 83, 80, 96, 90, 85.8, 'A', 'IPS', 'B', 'IPA'),
(474, 'Siti Fatima', 'MTs. ALKHAIRAAT TOWERA', 85, 82, 82, 92, 94, 87, 'A', 87, 85, 86, 92, 86, 87.2, 'A', 87, 86, 84, 92, 88, 87.4, 'A', 'IPA', 'A', 'IPA'),
(475, 'Siti Musylahida', 'SMPN 1 TORIBULU', 78, 85, 79, 90, 90, 84.4, 'B', 77, 85, 76, 94, 94, 85.2, 'A', 79, 87, 78, 96, 96, 87.2, 'A', 'IPA', 'A', 'IPA'),
(476, 'Siti Nur Zul Fadillah', 'MTs. ALKHAIRAAT TOWERA', 77, 85, 80, 80, 88, 82, 'B', 71, 85, 90, 80, 88, 82.8, 'B', 88, 79, 90, 91, 78, 85.2, 'A', 'IPA', 'A', 'IPA'),
(477, 'Siti Nurfadila', 'MTs. ALKHAIRAAT PINOTU', 60, 87, 80, 85, 79, 78.2, 'B', 80, 77, 82, 89, 84, 82.4, 'B', 80, 80, 79, 80, 80, 79.8, 'B', 'IPS', 'B', 'IPS'),
(478, 'Siti Nurfatimah', 'SMPN 2 AMPIBABO', 75, 87, 90, 90, 90, 86.4, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 75, 87, 89, 89, 90, 86, 'A', 'IPA', 'A', 'IPA'),
(479, 'Siti Rahmawati', 'SMP PGRI SIENJO', 75, 85, 91, 92, 94, 87.4, 'A', 74, 85, 91, 92, 95, 87.4, 'A', 77, 85, 90, 91, 94, 87.4, 'A', 'IPS', 'A', 'IPA'),
(480, 'Sitti Thaharah Darman S', 'SMP PGRI SIENJO', 74, 80, 83, 85, 86, 81.6, 'B', 82, 83, 84, 82, 82, 82.6, 'B', 85, 82, 84, 32, 82, 73, 'C', 'IPS', 'B', 'IPS'),
(481, 'Sri Hartati', 'SMPN 2 AMPIBABO', 94, 96, 92, 93, 92, 93.4, 'A', 98, 92, 86, 95, 92, 92.6, 'A', 93, 96, 95, 94, 95, 94.6, 'A', 'IPS', 'A', 'IPA'),
(482, 'Sri Wahyuni Anjani', 'SMPN 1 TORIBULU', 60, 77, 85, 88, 76, 77.2, 'B', 69, 81, 73, 83, 85, 78.2, 'B', 74, 75, 87, 38, 79, 70.6, 'C', 'IPS', 'B', 'IPS'),
(483, 'Sri Wanda', 'SMPN 1 TANA TOVEA', 65, 75, 75, 30, 76, 64.2, 'C', 75, 80, 82, 85, 81, 80.6, 'B', 78, 78, 81, 32, 78, 69.4, 'C', 'IPA', 'B', 'IPS'),
(484, 'Suci', 'SMPN 1 TORIBULU', 75, 85, 88, 89, 90, 85.4, 'A', 74, 85, 89, 90, 92, 86, 'A', 78, 85, 94, 94, 95, 89.2, 'A', 'IPA', 'A', 'IPA'),
(485, 'Suci Rahmani', 'SMPN 1 TORIBULU', 82, 85, 95, 90, 79, 86.2, 'A', 69, 85, 89, 88, 95, 85.2, 'A', 80, 78, 94, 91, 80, 86.25, 'A', 'IPA', 'A', 'IPA'),
(486, 'Suci Ramadani', 'SMPN 1 TORIBULU', 78, 88, 87, 90, 90, 86.6, 'A', 75, 85, 86, 94, 96, 87.2, 'A', 76, 87, 89, 96, 90, 87.6, 'A', 'IPS', 'A', 'IPA'),
(487, 'Suci Sahifanur', 'SMPN 1 SINIU', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 'A', 'IPA'),
(488, 'Sugianto', 'MTs. ALKHAIRAAT SINIU\'', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 'A', 'IPA'),
(489, 'Sundari Dg. Tene', 'SMPN 1 SINIU', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 'A', 'IPA'),
(490, 'Suriyanti', 'SMPN 1 SINIU', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 'A', 'IPA'),
(491, 'Surriadi', 'SMPN 1 TORIBULU', 80, 89, 82, 96, 80, 85.4, 'A', 90, 79, 78, 82, 82, 82.2, 'B', 82, 81, 78, 80, 77, 79.6, 'B', 'IPS', 'B', 'IPA'),
(492, 'Syafira', 'SMPN 1 TORIBULU', 60, 82, 75, 80, 78, 75, 'B', 70, 76, 80, 85, 88, 79.8, 'B', 79, 75, 80, 83, 78, 79, 'B', 'IPS', 'B', 'IPS'),
(493, 'Tevan', 'SMPN 1 TORIBULU', 80, 76, 93, 94, 95, 87.6, 'A', 78, 91, 93, 94, 95, 90.2, 'A', 84, 85, 92, 94, 95, 90, 'A', 'IPA', 'A', 'IPA'),
(494, 'Tiara', 'SMPN 1 TORIBULU', 78, 86, 88, 89, 90, 86.2, 'A', 77, 87, 89, 89, 90, 86.4, 'A', 77, 87, 89, 90, 92, 87, 'A', 'IPA', 'A', 'IPA'),
(495, 'Toufikurrahman', 'SMPN 1 TORIBULU', 81, 90, 90, 95, 90, 89.2, 'A', 78, 80, 88, 85, 85, 83.2, 'B', 75, 85, 95, 90, 85, 86, 'A', 'IPS', 'A', 'IPA'),
(496, 'Tri Darmawangsa', 'SMPN 1 SINIU', 78, 88, 87, 90, 90, 86.6, 'A', 75, 85, 86, 94, 96, 87.2, 'A', 76, 87, 89, 96, 90, 87.6, 'A', 'IPS', 'A', 'IPA'),
(497, 'Tri Hartanto', 'SMPN 1 SINIU', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 'A', 'IPA'),
(498, 'Tri Julianti Puspitasari B. Lakirama', 'SMPN 3 AMPIBABO', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 'A', 'IPA'),
(499, 'Tri Yulia', 'SMPN 1 SINIU', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 'A', 'IPA'),
(500, 'Usna Fadilah', 'SMP PGRI SIENJO', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 'A', 'IPA'),
(501, 'Usria', 'SMPN 1 SINIU', 94, 95, 95, 96, 98, 95.6, 'A', 89, 92, 95, 97, 98, 94.2, 'A', 84, 90, 93, 95, 97, 91.8, 'A', 'IPS', 'A', 'IPA'),
(502, 'Usril', 'SMPN 1 SINIU', 76, 85, 78, 90, 90, 83.8, 'B', 75, 85, 79, 92, 92, 84.6, 'B', 76, 85, 77, 93, 93, 84.8, 'B', 'IPS', 'A', 'IPA'),
(503, 'Valentino', 'SMPN 1 TORIBULU', 75, 81, 89, 89, 89, 84.6, 'B', 75, 85, 90, 92, 92, 86.8, 'A', 76, 85, 91, 91, 94, 87.4, 'A', 'IPA', 'A', 'IPA'),
(504, 'Vebry Andi Abbas', 'SMPN 4 PALOPO', 88, 86, 88, 75, 93, 86, 'A', 93, 87, 84, 85, 83, 86.4, 'A', 92, 93, 86, 35, 90, 79.2, 'B', 'IPS', 'A', 'IPA'),
(505, 'Vivin', 'SMPN 1 TORIBULU', 80, 89, 82, 96, 80, 85.4, 'A', 90, 79, 78, 82, 82, 82.2, 'B', 82, 81, 78, 80, 77, 79.6, 'B', 'IPS', 'B', 'IPA'),
(506, 'Wahyu Ajib', 'SMPN 3 AMPIBABO', 60, 82, 75, 80, 78, 75, 'B', 70, 76, 80, 85, 88, 79.8, 'B', 79, 75, 80, 83, 78, 79, 'B', 'IPS', 'B', 'IPS'),
(507, 'Wahyu Gunawan', 'SMPN 1 TORIBULU', 80, 76, 93, 94, 95, 87.6, 'A', 78, 91, 93, 94, 95, 90.2, 'A', 84, 85, 92, 94, 95, 90, 'A', 'IPA', 'A', 'IPA'),
(508, 'Wahyu Widodo', 'SMPN 1 TORIBULU', 78, 86, 88, 89, 90, 86.2, 'A', 77, 87, 89, 89, 90, 86.4, 'A', 77, 87, 89, 90, 92, 87, 'A', 'IPA', 'A', 'IPA'),
(509, 'Wahyuli', 'SMPN 1 TORIBULU', 81, 90, 90, 95, 90, 89.2, 'A', 78, 80, 88, 85, 85, 83.2, 'B', 75, 85, 95, 90, 85, 86, 'A', 'IPS', 'A', 'IPA'),
(510, 'Walza', 'SMPN 1 TORIBULU', 75, 85, 89, 90, 90, 85.8, 'A', 77, 84, 91, 92, 92, 87.2, 'A', 76, 85, 92, 94, 95, 88.4, 'A', 'IPS', 'A', 'IPA'),
(511, 'Wardiasyah', 'SMPN 1 TORIBULU', 65, 74, 80, 82, 90, 78.2, 'B', 73, 78, 68, 72, 80, 74.2, 'C', 75, 85, 85, 78, 82, 81, 'B', 'IPS', 'B', 'IPS'),
(512, 'Windi', 'SMPN 1 TORIBULU', 75, 69, 97, 78, 86, 81, 'B', 77, 75, 71, 84, 74, 76.2, 'B', 80, 80, 85, 80, 75, 80, 'B', 'IPA', 'A', 'IPA'),
(513, 'Yasni', 'SMPN 1 TORIBULU', 76, 85, 90, 91, 91, 86.6, 'A', 75, 85, 89, 90, 90, 85.8, 'A', 76, 90, 92, 92, 94, 88.8, 'A', 'IPA', 'A', 'IPA'),
(514, 'Yola Puspitasari', 'SMPN 1 TORIBULU', 76, 86, 89, 89, 90, 86, 'A', 77, 85, 92, 92, 94, 88, 'A', 86, 86, 84, 90, 90, 87.2, 'A', 'IPA', 'A', 'IPA'),
(515, 'Yolandani', 'SMPN 2 AMPIBABO', 84, 82, 82, 89, 80, 83.4, 'B', 86, 84, 86, 89, 84, 85.8, 'A', 76, 76, 87, 89, 85, 82.6, 'B', 'IPS', 'B', 'IPA'),
(516, 'Yulia Putri', 'SMPN 1 TORIBULU', 80, 81, 81, 85, 86, 82.6, 'B', 85, 86, 89, 91, 92, 88.6, 'A', 77, 80, 72, 80, 90, 79.8, 'B', 'IPS', 'A', 'IPA'),
(517, 'Yustika', 'SMPN 2 AMPIBABO', 88, 85, 84, 82, 85, 84.8, 'B', 86, 80, 87, 79, 90, 84.4, 'B', 90, 80, 90, 91, 79, 86, 'A', 'IPS', 'B', 'IPA'),
(518, 'Yusuf', 'MTs. DARUSSHOLIHIN SAUSU', 69, 78, 95, 82, 90, 82.8, 'B', 76, 85, 77, 83, 84, 81, 'B', 76, 75, 79, 75, 80, 77, 'B', 'IPS', 'B', 'IPS'),
(519, 'Zahra', 'SMPN 1 TORIBULU', 70, 78, 74, 82, 80, 76.8, 'B', 72, 72, 78, 77, 80, 75.8, 'B', 76, 86, 84, 83, 85, 82.8, 'B', 'IPA', 'B', 'IPS'),
(520, 'Zahra Islamiah', 'SMPN 1 TORIBULU', 77, 83, 79, 78, 82, 79.8, 'B', 79, 79, 79, 88, 89, 82.8, 'B', 80, 83, 86, 88, 90, 85.4, 'A', 'IPA', 'B', 'IPA'),
(521, 'Zahra Tusita', 'SMPN 1 TORIBULU', 78, 85, 80, 85, 83, 82.2, 'B', 78, 80, 75, 80, 84, 79.4, 'B', 85, 89, 90, 95, 89, 89.6, 'A', 'IPA', 'A', 'IPA'),
(522, 'Zahwa', 'MTs. ALKHAIRAAT AMPIBABO', 79, 85, 86, 90, 82, 84.4, 'B', 80, 82, 83, 85, 84, 82.8, 'B', 85, 89, 92, 91, 80, 87.4, 'A', 'IPA', 'A', 'IPA'),
(523, 'Zaskia', 'MTs. ALKHAIRAAT TOWERA', 76, 90, 85, 90, 81, 84.4, 'B', 80, 85, 86, 88, 91, 86, 'A', 82, 80, 92, 78, 80, 82.4, 'B', 'IPS', 'B', 'IPA'),
(524, 'Zulkifli', 'MTs. ALKHAIRAAT TOWERA', 79, 77, 79, 87, 88, 82, 'B', 79, 81, 91, 90, 86, 85.4, 'A', 75, 87, 83, 78, 90, 82.6, 'B', 'IPS', 'B', 'IPA'),
(525, 'Zulpiana', 'SMPN 1 TORIBULU', 80, 78, 81, 82, 82, 80.6, 'B', 80, 87, 77, 86, 88, 83.6, 'B', 83, 80, 87, 94, 78, 84.4, 'B', 'IPS', 'B', 'IPS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iterasi_c45`
--
ALTER TABLE `iterasi_c45`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mining_c45`
--
ALTER TABLE `mining_c45`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pohon_keputusan_c45`
--
ALTER TABLE `pohon_keputusan_c45`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_atribut`
--
ALTER TABLE `tb_atribut`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `iterasi_c45`
--
ALTER TABLE `iterasi_c45`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `mining_c45`
--
ALTER TABLE `mining_c45`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pohon_keputusan_c45`
--
ALTER TABLE `pohon_keputusan_c45`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_atribut`
--
ALTER TABLE `tb_atribut`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_training`
--
ALTER TABLE `tb_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
