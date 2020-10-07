-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2017 at 03:18 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beesmartv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cbt_admin`
--

CREATE TABLE `cbt_admin` (
  `Urut` int(11) NOT NULL,
  `XSekolah` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XTingkat` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `XIp` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XAlamat` text COLLATE latin1_general_ci NOT NULL,
  `XTelp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XFax` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XEmail` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XWeb` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XLogo` text COLLATE latin1_general_ci NOT NULL,
  `XBanner` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XKepSek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `XAdmin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `XPicAdmin` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XWarna` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatus` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XNIPKepsek` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XNIPAdmin` varchar(30) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_admin`
--

INSERT INTO `cbt_admin` (`Urut`, `XSekolah`, `XTingkat`, `XIp`, `XAlamat`, `XTelp`, `XFax`, `XEmail`, `XWeb`, `XLogo`, `XBanner`, `XKepSek`, `XAdmin`, `XPicAdmin`, `XWarna`, `XStatus`, `XKodeSekolah`, `XNIPKepsek`, `XNIPAdmin`) VALUES
(2, 'SMP BEESMART', 'SMP', '127.0.0.1', 'www.cbtbeesmart.com', '081615555611', '-', '-', 'www.tuwagapat.com', 'icon.gif', 'logo.png', 'Sigit Hariono', 'abizayra', '15541974_1211472018934821_4807101813906355199_n.png', 'ffca01', '1', 'P9999991', '99999999999', '3333333333');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_audio`
--

CREATE TABLE `cbt_audio` (
  `Urut` int(11) NOT NULL,
  `XMulai` float NOT NULL,
  `XPutar` int(11) NOT NULL,
  `XUserJawab` varchar(50) NOT NULL,
  `XTokenUjian` varchar(10) NOT NULL,
  `XKodeSoal` varchar(50) NOT NULL,
  `XNomerSoal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_jawaban`
--

CREATE TABLE `cbt_jawaban` (
  `Urutan` int(11) NOT NULL,
  `Urut` int(11) NOT NULL,
  `XNomerSoal` int(11) NOT NULL,
  `XKodeUjian` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XJenisSoal` int(11) NOT NULL,
  `XTokenUjian` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XA` int(11) NOT NULL,
  `XB` int(11) NOT NULL,
  `XC` int(11) NOT NULL,
  `XD` int(11) NOT NULL,
  `XE` int(11) NOT NULL,
  `XJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XTemp` text COLLATE latin1_general_ci NOT NULL,
  `XJawabanEsai` text COLLATE latin1_general_ci NOT NULL,
  `XKodeJawab` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `XNilaiJawab` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XNilai` int(11) NOT NULL,
  `XNilaiEsai` float NOT NULL,
  `XRagu` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XMulai` float NOT NULL,
  `XPutar` int(11) NOT NULL,
  `XMulaiV` float NOT NULL,
  `XPutarV` int(11) NOT NULL,
  `XTglJawab` date NOT NULL,
  `XJamJawab` time NOT NULL,
  `XKunciJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XUserJawab` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Campur` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSemester` int(1) NOT NULL,
  `XUserPeriksa` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XTglPeriksa` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJamPeriksa` varchar(8) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_jawaban`
--

INSERT INTO `cbt_jawaban` (`Urutan`, `Urut`, `XNomerSoal`, `XKodeUjian`, `XKodeKelas`, `XKodeJurusan`, `XKodeMapel`, `XKodeSoal`, `XJenisSoal`, `XTokenUjian`, `XA`, `XB`, `XC`, `XD`, `XE`, `XJawaban`, `XTemp`, `XJawabanEsai`, `XKodeJawab`, `XNilaiJawab`, `XNilai`, `XNilaiEsai`, `XRagu`, `XMulai`, `XPutar`, `XMulaiV`, `XPutarV`, `XTglJawab`, `XJamJawab`, `XKunciJawaban`, `XUserJawab`, `Campur`, `XSetId`, `XSemester`, `XUserPeriksa`, `XTglPeriksa`, `XJamPeriksa`) VALUES
(1, 1, 1, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 1, 'ZQKTE', 1, 2, 3, 4, 0, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2017-11-08', '21:51:17', '2', 'U001', 'ZQKTE', '2017/2018', 1, '', '', ''),
(2, 2, 2, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 1, 'ZQKTE', 1, 2, 3, 4, 0, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2017-11-08', '21:51:22', '4', 'U001', 'ZQKTE', '2017/2018', 1, '', '', ''),
(3, 3, 3, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 1, 'ZQKTE', 3, 1, 4, 2, 0, 'A', '', '', 'XA', '3', 0, 0, '', 0, 0, 0, 0, '2017-11-08', '21:51:26', '4', 'U001', 'ZQKTE', '2017/2018', 1, '', '', ''),
(4, 4, 5, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 1, 'ZQKTE', 3, 1, 2, 4, 0, 'B', '', '', 'XB', '1', 0, 0, '', 0, 0, 0, 0, '2017-11-08', '21:51:29', '3', 'U001', 'ZQKTE', '2017/2018', 1, '', '', ''),
(5, 5, 6, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 1, 'ZQKTE', 1, 2, 3, 4, 0, 'B', '', '', 'XB', '2', 1, 0, '', 0, 0, 0, 0, '2017-11-08', '21:51:31', '2', 'U001', 'ZQKTE', '2017/2018', 1, '', '', ''),
(6, 6, 4, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 1, 'ZQKTE', 1, 2, 3, 4, 0, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2017-11-08', '21:51:35', '4', 'U001', 'ZQKTE', '2017/2018', 1, '', '', ''),
(7, 7, 56, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 2, 'ZQKTE', 0, 0, 0, 0, 0, '', '7', 'indonesia, malaysia', '', '', 0, 0, '', 0, 0, 0, 0, '2017-11-08', '21:51:43', '', 'U001', '', '2017/2018', 1, '', '', ''),
(8, 8, 59, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 2, 'ZQKTE', 0, 0, 0, 0, 0, '', '8', 'indonesia, malaysia', '', '', 0, 10, '', 0, 0, 0, 0, '2017-11-08', '21:51:49', '', 'U001', '', '2017/2018', 1, '', '', ''),
(9, 9, 60, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 2, 'ZQKTE', 0, 0, 0, 0, 0, '', '9', 'indonesia, malaysia', '', '', 0, 10, '', 0, 0, 0, 0, '2017-11-08', '21:51:53', '', 'U001', '', '2017/2018', 1, '', '', ''),
(10, 10, 58, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 2, 'ZQKTE', 0, 0, 0, 0, 0, '', '10', 'indonesia, malaysia', '', '', 0, 10, '', 0, 0, 0, 0, '2017-11-08', '21:51:55', '', 'U001', '', '2017/2018', 1, '', '', ''),
(11, 11, 57, 'TO4', 'IPA1', 'IPA', 'XGAL3', 'TryOut', 2, 'ZQKTE', 0, 0, 0, 0, 0, '', '11', 'indonesia, malaysia', '', '', 0, 10, '', 0, 0, 0, 0, '2017-11-08', '21:51:59', '', 'U001', '', '2017/2018', 1, '', '', ''),
(12, 1, 1, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 1, 'MMQAE', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:01', '2', 'U001', 'MMQAE', '2017/2018', 1, '', '', ''),
(13, 2, 2, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 1, 'MMQAE', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:06', '4', 'U001', 'MMQAE', '2017/2018', 1, '', '', ''),
(14, 3, 3, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 1, 'MMQAE', 2, 1, 3, 4, 5, 'D', '', '', 'XD', '4', 1, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:12', '4', 'U001', 'MMQAE', '2017/2018', 1, '', '', ''),
(15, 4, 4, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 1, 'MMQAE', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:14', '4', 'U001', 'MMQAE', '2017/2018', 1, '', '', ''),
(16, 5, 5, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 1, 'MMQAE', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:20', '4', 'U001', 'MMQAE', '2017/2018', 1, '', '', ''),
(17, 6, 6, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 1, 'MMQAE', 4, 2, 3, 5, 1, 'B', '', '', 'XB', '2', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:24', '4', 'U001', 'MMQAE', '2017/2018', 1, '', '', ''),
(18, 7, 7, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 1, 'MMQAE', 1, 2, 3, 4, 5, 'B', '', '', 'XB', '2', 1, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:28', '2', 'U001', 'MMQAE', '2017/2018', 1, '', '', ''),
(19, 8, 8, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 1, 'MMQAE', 1, 2, 3, 4, 5, 'C', '', '', 'XC', '3', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:31', '4', 'U001', 'MMQAE', '2017/2018', 1, '', '', ''),
(20, 9, 9, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 1, 'MMQAE', 5, 4, 1, 2, 3, 'D', '', '', 'XD', '2', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:37', '4', 'U001', 'MMQAE', '2017/2018', 1, '', '', ''),
(21, 10, 10, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 1, 'MMQAE', 1, 2, 3, 4, 5, 'B', '', '', 'XB', '2', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:42', '4', 'U001', 'MMQAE', '2017/2018', 1, '', '', ''),
(22, 11, 54, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 2, 'MMQAE', 0, 0, 0, 0, 0, '', '11', 'Aku', '', '', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:32:55', '', 'U001', '', '2017/2018', 1, '', '', ''),
(23, 12, 55, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 2, 'MMQAE', 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '00:00:00', '', 'U001', '', '2017/2018', 1, '', '', ''),
(24, 13, 56, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 2, 'MMQAE', 0, 0, 0, 0, 0, '', '13', 'QQ', '', '', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:33:03', '', 'U001', '', '2017/2018', 1, '', '', ''),
(25, 14, 57, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 2, 'MMQAE', 0, 0, 0, 0, 0, '', '14', 'indonesia, malaysia', '', '', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:33:08', '', 'U001', '', '2017/2018', 1, '', '', ''),
(26, 15, 58, 'UTS', 'IPA1', 'IPA', 'XGAL1', 'UTS', 2, 'MMQAE', 0, 0, 0, 0, 0, '', '15', 'asd', '', '', 0, 0, '', 0, 0, 0, 0, '2017-11-09', '02:33:13', '', 'U001', '', '2017/2018', 1, '', '', ''),
(27, 1, 1, 'UAS', 'IPA1', 'IPA', 'XGAL1', 'UAS_BHS_ID', 1, 'AHKLI', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2017-12-01', '22:58:38', '2', 'U001', 'AHKLI', '2017/2018', 1, '', '', ''),
(28, 2, 2, 'UAS', 'IPA1', 'IPA', 'XGAL1', 'UAS_BHS_ID', 1, 'AHKLI', 1, 2, 3, 4, 5, 'B', '', '', 'XB', '2', 0, 0, '', 0, 0, 0, 0, '2017-12-01', '22:58:42', '4', 'U001', 'AHKLI', '2017/2018', 1, '', '', ''),
(29, 3, 3, 'UAS', 'IPA1', 'IPA', 'XGAL1', 'UAS_BHS_ID', 1, 'AHKLI', 3, 1, 5, 2, 4, 'B', '', '', 'XB', '1', 0, 0, '', 0, 0, 0, 0, '2017-12-01', '22:58:46', '4', 'U001', 'AHKLI', '2017/2018', 1, '', '', ''),
(30, 4, 6, 'UAS', 'IPA1', 'IPA', 'XGAL1', 'UAS_BHS_ID', 1, 'AHKLI', 1, 2, 3, 4, 5, 'E', '', '', 'XE', '5', 0, 0, '', 0, 0, 0, 0, '2017-12-01', '22:58:48', '2', 'U001', 'AHKLI', '2017/2018', 1, '', '', ''),
(31, 5, 4, 'UAS', 'IPA1', 'IPA', 'XGAL1', 'UAS_BHS_ID', 1, 'AHKLI', 1, 2, 3, 4, 5, 'A', '', '', 'XA', '1', 0, 0, '', 0, 0, 0, 0, '2017-12-01', '22:58:52', '4', 'U001', 'AHKLI', '2017/2018', 1, '', '', ''),
(32, 6, 58, 'UAS', 'IPA1', 'IPA', 'XGAL1', 'UAS_BHS_ID', 2, 'AHKLI', 0, 0, 0, 0, 0, '', '6', 's', '', '', 0, 0, '', 0, 0, 0, 0, '2017-12-01', '22:58:59', '', 'U001', '', '2017/2018', 1, '', '', ''),
(33, 7, 60, 'UAS', 'IPA1', 'IPA', 'XGAL1', 'UAS_BHS_ID', 2, 'AHKLI', 0, 0, 0, 0, 0, '', '7', 's', '', '', 0, 0, '', 0, 0, 0, 0, '2017-12-01', '22:59:01', '', 'U001', '', '2017/2018', 1, '', '', ''),
(34, 8, 57, 'UAS', 'IPA1', 'IPA', 'XGAL1', 'UAS_BHS_ID', 2, 'AHKLI', 0, 0, 0, 0, 0, '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, '2017-12-01', '00:00:00', '', 'U001', '', '2017/2018', 1, '', '', ''),
(35, 9, 59, 'UAS', 'IPA1', 'IPA', 'XGAL1', 'UAS_BHS_ID', 2, 'AHKLI', 0, 0, 0, 0, 0, '', '9', 's', '', '', 0, 0, '', 0, 0, 0, 0, '2017-12-01', '22:59:06', '', 'U001', '', '2017/2018', 1, '', '', ''),
(36, 10, 56, 'UAS', 'IPA1', 'IPA', 'XGAL1', 'UAS_BHS_ID', 2, 'AHKLI', 0, 0, 0, 0, 0, '', '10', 's', '', '', 0, 0, '', 0, 0, 0, 0, '2017-12-01', '22:59:09', '', 'U001', '', '2017/2018', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_kelas`
--

CREATE TABLE `cbt_kelas` (
  `Urut` int(11) NOT NULL,
  `XKodeLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatusKelas` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_kelas`
--

INSERT INTO `cbt_kelas` (`Urut`, `XKodeLevel`, `XNamaKelas`, `XKodeJurusan`, `XKodeKelas`, `XStatusKelas`, `XKodeSekolah`) VALUES
(1, 'XI ', 'XI-IPA 1', 'IPA ', 'IPA1', '1', ''),
(2, 'XI ', 'XI-IPA 2', 'IPA ', 'IPA2', '1', ''),
(3, 'XI ', 'XI-IPS 1', 'IPS', 'IPS1', '1', ''),
(4, 'XI ', 'XI-IPS 2', 'IPS', 'IPS2', '1', ''),
(5, 'XI ', 'XI-IPA 1', 'IPA ', 'IPA3', '1', ''),
(6, 'XI ', 'XI-IPA 2', 'IPA ', 'IPS3', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_mapel`
--

CREATE TABLE `cbt_mapel` (
  `Urut` int(11) NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaMapel` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XTglBuat` date NOT NULL,
  `XPersenUH` int(11) NOT NULL,
  `XPersenUTS` int(11) NOT NULL,
  `XPersenUAS` int(11) NOT NULL,
  `XKKM` float NOT NULL,
  `XMapelAgama` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_mapel`
--

INSERT INTO `cbt_mapel` (`Urut`, `XKodeKelas`, `XKodeMapel`, `XNamaMapel`, `XTglBuat`, `XPersenUH`, `XPersenUTS`, `XPersenUAS`, `XKKM`, `XMapelAgama`, `XKodeSekolah`) VALUES
(1, '', 'XGAL1', 'BAHASA INDONESIA', '0000-00-00', 70, 50, 50, 80, 'N', ''),
(2, '', 'XGAL2 ', 'IPA', '0000-00-00', 60, 20, 20, 70, 'N', ''),
(3, '', 'XGAL3', 'BAHASA INGGRIS', '0000-00-00', 70, 10, 20, 80, 'N', ''),
(4, '', 'XGAL4', 'MATEMATIKA', '0000-00-00', 60, 20, 20, 70, 'N', ''),
(5, '', 'XGAL5', 'IPS', '0000-00-00', 70, 10, 20, 80, 'N', ''),
(6, '', 'XGAL6', 'KONSENTRASI', '0000-00-00', 70, 10, 20, 80, 'Y', ''),
(7, '', 'XGAL7', 'AGAMA', '0000-00-00', 70, 10, 20, 80, 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_nilai`
--

CREATE TABLE `cbt_nilai` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(20) NOT NULL,
  `XNIK` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XKodeUjian` varchar(10) NOT NULL,
  `XTokenUjian` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XTgl` date NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XBenar` int(11) NOT NULL,
  `XSalah` int(11) NOT NULL,
  `XNilai` int(11) NOT NULL,
  `XPersenPil` float NOT NULL,
  `XPersenEsai` float NOT NULL,
  `XEsai` float NOT NULL,
  `XTotalNilai` float NOT NULL,
  `XKodeMapel` varchar(10) NOT NULL,
  `XKodeKelas` varchar(10) NOT NULL,
  `XKodeSoal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) NOT NULL,
  `XSemester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_nilai`
--

INSERT INTO `cbt_nilai` (`Urut`, `XNomerUjian`, `XNIK`, `XKodeUjian`, `XTokenUjian`, `XTgl`, `XJumSoal`, `XBenar`, `XSalah`, `XNilai`, `XPersenPil`, `XPersenEsai`, `XEsai`, `XTotalNilai`, `XKodeMapel`, `XKodeKelas`, `XKodeSoal`, `XSetId`, `XSemester`) VALUES
(1, 'U001', '001', 'TO4', 'ZQKTE', '2017-11-08', 11, 1, 9, 10, 50, 50, 40, 25, 'XGAL3', 'IPA1', 'TryOut', '2016/2017', 1),
(2, 'U001', '001', 'UTS', 'MMQAE', '2017-11-09', 15, 2, 8, 70, 30, 70, 0, 6, 'XGAL1', 'IPA1', 'UTS', '2016/2017', 1),
(3, 'U001', '001', 'UAS', 'AHKLI', '2017-12-01', 11, 0, 5, 80, 50, 50, 0, 0, 'XGAL1', 'IPA1', 'UAS_BHS_ID', '2016/2017', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_paketsoal`
--

CREATE TABLE `cbt_paketsoal` (
  `Urut` int(11) NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XLevel` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XPaketSoal` text COLLATE latin1_general_ci NOT NULL,
  `XSesi` int(11) NOT NULL DEFAULT '1',
  `XJenisSoal` int(11) NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XPersenPil` int(11) NOT NULL,
  `XPersenEsai` int(11) NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XJumPilihan` int(11) NOT NULL DEFAULT '5',
  `XJumSoal` int(11) NOT NULL,
  `JumUjian` int(11) NOT NULL,
  `XAcakSoal` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `XGuru` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSemua` enum('Y','T') COLLATE latin1_general_ci NOT NULL DEFAULT 'T',
  `XStatusSoal` varchar(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `XTglBuat` date NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_paketsoal`
--

INSERT INTO `cbt_paketsoal` (`Urut`, `XKodeKelas`, `XLevel`, `XKodeJurusan`, `XKodeMapel`, `XPaketSoal`, `XSesi`, `XJenisSoal`, `XPilGanda`, `XEsai`, `XPersenPil`, `XPersenEsai`, `XKodeSoal`, `XJumPilihan`, `XJumSoal`, `JumUjian`, `XAcakSoal`, `XGuru`, `XSetId`, `XSemua`, `XStatusSoal`, `XTglBuat`, `XKodeSekolah`) VALUES
(1, 'ALL', 'SMU', 'IPA ', 'XGAL3', '', 0, 0, 10, 10, 50, 50, 'TryOut', 4, 20, 0, '', 'admin', '', 'T', 'Y', '2017-11-08', ''),
(2, 'IPA1', 'SMU', 'ALL', 'XGAL1', '', 0, 0, 10, 5, 30, 70, 'UTS', 5, 15, 0, '', 'admin', '', 'T', 'Y', '2017-11-09', ''),
(3, 'IPA1', 'SMU', 'IPA ', 'XGAL1', '', 0, 0, 5, 10, 50, 50, 'UAS_BHS_ID', 5, 15, 0, '', 'admin', '', 'T', 'Y', '2017-12-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_setid`
--

CREATE TABLE `cbt_setid` (
  `Urut` int(11) NOT NULL,
  `XKodeAY` varchar(10) NOT NULL,
  `XNamaAY` varchar(100) NOT NULL,
  `XStatus` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_setid`
--

INSERT INTO `cbt_setid` (`Urut`, `XKodeAY`, `XNamaAY`, `XStatus`) VALUES
(1, 'BEE2015/16', 'Tahun Ajaran 2015/2016', '0'),
(2, 'BEE2016/17', 'Tahun Ajaran 2016/2017', '1'),
(4, '2017/2018', 'Tahun Ajaran 2017/2018', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_siswa`
--

CREATE TABLE `cbt_siswa` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XNIK` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaSiswa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJenisKelamin` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XPassword` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `XFoto` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XAgama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSesi` int(11) NOT NULL,
  `XRuang` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XPilihan` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_siswa`
--

INSERT INTO `cbt_siswa` (`Urut`, `XNomerUjian`, `XNIK`, `XKodeJurusan`, `XNamaSiswa`, `XKodeKelas`, `XKodeLevel`, `XJenisKelamin`, `XPassword`, `XFoto`, `XAgama`, `XSetId`, `XSesi`, `XRuang`, `XKodeSekolah`, `XPilihan`) VALUES
(1, 'U001', '001', 'IPA', 'SOKRAN', 'IPA1', 'XI', 'L', 'A1', '', 'ISLAM', '2017/2018', 1, 'LABKOM1', 'P9999991', 'BIOLOGI'),
(2, 'U002', '002', 'IPA', 'KARTOLO', 'IPA2', 'XI', 'P', 'A2', '', 'HINDU', '2017/2018', 2, 'LABKOM1', 'P9999991', 'BIOLOGI'),
(3, 'U003', '003', 'IPA', 'BASMAN', 'IPA1', 'XI', 'L', 'A3', '', 'KRISTEN', '2017/2018', 1, 'LABKOM2', 'P9999991', 'KIMIA'),
(4, 'U004', '004', 'IPA', 'SAPARI', 'IPA2', 'XI', 'P', 'A4', '', 'BUDHA', '2017/2018', 2, 'LABKOM2', 'P9999991', 'KIMIA'),
(5, 'U005', '005', 'IPA', 'TINI', 'IPA1', 'XI', 'P', 'A5', '', 'KATOLIK', '2017/2018', 1, 'LABKOM1', 'P9999991', 'FISIKA'),
(6, 'U006', '006', 'IPA', 'KASPARI', 'IPA2', 'XI', 'P', 'A6', '', 'ISLAM', '2017/2018', 2, 'LABKOM1', 'P9999991', 'FISIKA'),
(7, 'U007', '007', 'IPA', 'BAMBANG GENTOLET', 'IPA1', 'XI', 'P', 'A7', '', 'HINDU', '2017/2018', 1, 'LABKOM2', 'P9999991', 'BIOLOGI'),
(8, 'U008', '008', 'IPA', 'SHOLEH', 'IPA2', 'XI', 'P', 'A8', '', 'KRISTEN', '2017/2018', 2, 'LABKOM2', 'P9999991', 'BIOLOGI'),
(9, 'U009', '009', 'IPA', 'WONOKAIRUN', 'IPA1', 'XI', 'P', 'A9', '', 'BUDHA', '2017/2018', 1, 'LABKOM1', 'P9999991', 'KIMIA'),
(10, 'U010', '010', 'IPA', 'BRODIN', 'IPA2', 'XI', 'P', 'A10', '', 'KATOLIK', '2017/2018', 2, 'LABKOM1', 'P9999991', 'KIMIA'),
(11, 'U011', '011', 'IPA', 'LUMUT', 'IPA1', 'XI', 'P', 'A11', '', 'ISLAM', '2017/2018', 1, 'LABKOM2', 'P9999991', 'FISIKA'),
(12, 'U012', '012', 'IPA', 'KIRUN', 'IPA2', 'XI', 'L', 'A12', '', 'HINDU', '2017/2018', 2, 'LABKOM2', 'P9999991', 'FISIKA'),
(13, 'U013', '013', 'IPA', 'SIDIK', 'IPA1', 'XI', 'L', 'A13', '', 'KRISTEN', '2017/2018', 1, 'LABKOM1', 'P9999991', 'BIOLOGI'),
(14, 'U014', '014', 'IPA', 'WAKIDI', 'IPA2', 'XI', 'L', 'A14', '', 'BUDHA', '2017/2018', 2, 'LABKOM1', 'P9999991', 'BIOLOGI'),
(15, 'U015', '015', 'IPA', 'MUKIDI', 'IPA1', 'XI', 'L', 'A15', '', 'KATOLIK', '2017/2018', 1, 'LABKOM2', 'P9999991', 'KIMIA'),
(16, 'U016', '016', 'IPA', 'GUNDALA PUTRAPETIR', 'IPA2', 'XI', 'L', 'A16', '', 'ISLAM', '2017/2018', 2, 'LABKOM2', 'P9999991', 'KIMIA'),
(17, 'U017', '017', 'IPS', 'MATBUKRI', 'IPS1', 'XI', 'P', 'A17', '', 'HINDU', '2017/2018', 1, 'LABKOM1', 'P9999991', 'FISIKA'),
(18, 'U018', '018', 'IPS', 'BUNALI', 'IPS2', 'XI', 'P', 'A18', '', 'KRISTEN', '2017/2018', 2, 'LABKOM1', 'P9999991', 'FISIKA'),
(19, 'U019', '019', 'IPA', 'EKO LONDHO', 'IPS1', 'XI', 'P', 'A19', '', 'BUDHA', '2017/2018', 1, 'LABKOM2', 'P9999991', 'BIOLOGI'),
(20, 'U020', '020', 'IPA', 'DIDIK MANGKUPROJO', 'IPS2', 'XI', 'P', 'A20', '', 'KATOLIK', '2017/2018', 2, 'LABKOM2', 'P9999991', 'BIOLOGI'),
(21, 'U021', '021', 'IPA', 'PARTO', 'IPS1', 'XI', 'P', 'A21', '', 'ISLAM', '2017/2018', 1, 'LABKOM1', 'P9999991', 'KIMIA'),
(22, 'U022', '022', 'IPA', 'DONO', 'IPS2', 'XI', 'P', 'A22', '', 'HINDU', '2017/2018', 2, 'LABKOM1', 'P9999991', 'KIMIA'),
(23, 'U023', '023', 'IPA', 'KASINO', 'IPS1', 'XI', 'P', 'A23', '', 'KRISTEN', '2017/2018', 1, 'LABKOM2', 'P9999991', 'FISIKA'),
(24, 'U024', '024', 'IPA', 'INDRO', 'IPS2', 'XI', 'P', 'A24', '', 'BUDHA', '2017/2018', 2, 'LABKOM2', 'P9999991', 'FISIKA'),
(25, 'U025', '025', 'IPA', 'TESSY RIWAYATI', 'IPS1', 'XI', 'P', 'A25', '', 'KATOLIK', '2017/2018', 1, 'LABKOM1', 'P9999991', 'BIOLOGI'),
(26, 'U026', '026', 'IPA', 'SUSSY', 'IPS2', 'XI', 'P', 'A26', '', 'ISLAM', '2017/2018', 2, 'LABKOM1', 'P9999991', 'BIOLOGI'),
(27, 'U027', '027', 'IPA', 'ISYE', 'IPS1', 'XI', 'P', 'A27', '', 'HINDU', '2017/2018', 1, 'LABKOM2', 'P9999991', 'KIMIA'),
(28, 'U028', '028', 'IPA', 'BOGEL', 'IPS2', 'XI', 'P', 'A28', '', 'KRISTEN', '2017/2018', 2, 'LABKOM2', 'P9999991', 'KIMIA'),
(29, 'U029', '029', 'IPA', 'KUCRIT', 'IPS1', 'XI', 'P', 'A29', '', 'BUDHA', '2017/2018', 1, 'LABKOM1', 'P9999991', 'FISIKA'),
(30, 'U030', '030', 'IPA', 'GEBOL', 'IPS2', 'XI', 'P', 'A30', '', 'KATOLIK', '2017/2018', 2, 'LABKOM1', 'P9999991', 'FISIKA');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_siswa_ujian`
--

CREATE TABLE `cbt_siswa_ujian` (
  `Urut` int(11) NOT NULL,
  `XNomerUjian` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XNISN` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XTglUjian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `XJamUjian` time NOT NULL,
  `XMulaiUjian` time NOT NULL,
  `XLastUpdate` time NOT NULL,
  `XSisaWaktu` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XTargetUjian` time NOT NULL,
  `XTokenUjian` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `XSelesaiUjian` time NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeUjian` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSesi` int(11) NOT NULL,
  `XStatusUjian` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XGetIP` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_siswa_ujian`
--

INSERT INTO `cbt_siswa_ujian` (`Urut`, `XNomerUjian`, `XNISN`, `XKodeKelas`, `XKodeMapel`, `XKodeSoal`, `XPilGanda`, `XEsai`, `XJumSoal`, `XTglUjian`, `XJamUjian`, `XMulaiUjian`, `XLastUpdate`, `XSisaWaktu`, `XLamaUjian`, `XTargetUjian`, `XTokenUjian`, `XSelesaiUjian`, `XSetId`, `XKodeUjian`, `XSesi`, `XStatusUjian`, `XKodeSekolah`, `XGetIP`) VALUES
(1, 'U001', '', 'IPA1', 'XGAL3', 'TryOut', 10, 10, 11, '2017-11-08 14:52:05', '21:49:00', '21:51:11', '21:51:59', '', '01:57:49', '00:00:00', 'ZQKTE', '00:00:00', '', '', 1, '9', '', '::1'),
(2, 'U001', '', 'IPA1', 'XGAL1', 'UTS', 10, 5, 15, '2017-11-08 19:33:17', '02:31:00', '02:31:51', '02:33:13', '', '01:59:9', '00:00:00', 'MMQAE', '00:00:00', '', '', 1, '9', '', '::1'),
(3, 'U001', '', 'IPA1', 'XGAL1', 'UAS_BHS_ID', 5, 10, 11, '2017-12-08 12:05:42', '22:58:00', '22:58:34', '22:59:09', '', '01:59:26', '00:00:00', 'AHKLI', '00:00:00', '', '', 1, '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_soal`
--

CREATE TABLE `cbt_soal` (
  `Urut` int(11) NOT NULL,
  `XKodeMapel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKodeSoal` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `XJenisSoal` int(11) NOT NULL DEFAULT '1',
  `XKodeKelas` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XLevel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XNomerSoal` int(11) NOT NULL,
  `XRagu` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XTanya` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XAudioTanya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XVideoTanya` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarTanya` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab2` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab3` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab4` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XJawab5` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XGambarJawab5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKunciJawaban` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKategori` int(11) NOT NULL DEFAULT '1',
  `XAcakSoal` enum('A','T') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `XAcakOpsi` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XAgama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cbt_soal`
--

INSERT INTO `cbt_soal` (`Urut`, `XKodeMapel`, `XKodeSoal`, `XJenisSoal`, `XKodeKelas`, `XLevel`, `XNomerSoal`, `XRagu`, `XTanya`, `XAudioTanya`, `XVideoTanya`, `XGambarTanya`, `XJawab1`, `XJawab2`, `XJawab3`, `XJawab4`, `XJawab5`, `XGambarJawab1`, `XGambarJawab2`, `XGambarJawab3`, `XGambarJawab4`, `XGambarJawab5`, `XKunciJawaban`, `XKategori`, `XAcakSoal`, `XAcakOpsi`, `XAgama`, `XKodeSekolah`) VALUES
(1, 'XGAL3', 'TryOut', 1, '', '', 1, '', 'Where did Ifa and her mother plan to go?', '', '', 'soal1.jpg', 'Bandung', 'Bunaken', 'Surabaya', 'Kupang', '', '', '', '', '', '', '2', 1, 'T', 'T', '', ''),
(2, 'XGAL3', 'TryOut', 1, '', '', 2, '', '\"Sorry that we have to cancel our trip to Bunaken next month.\" The underlined word is closest in meaning to ....', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', '', ''),
(3, 'XGAL3', 'TryOut', 1, '', '', 3, '', 'Visitors will possibly choose IKONYO Grand Hotel because ....', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', '', ''),
(4, 'XGAL3', 'TryOut', 1, '', '', 4, '', 'What is the conclusion taken from the advertisement?', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'A', 'T', '', ''),
(5, 'XGAL3', 'TryOut', 1, '', '', 5, '', 'G According to the text, 23 March is commemorated`s', '', '', 'soal1.jpg', 'Choir Day anniversary', 'the school`s principal birthday', 'the school anniversary', 'Ms. Andini`s special day', '', '', '', '', '', '', '3', 2, 'A', 'Y', '', ''),
(6, 'XGAL3', 'TryOut', 1, '', '', 6, '', 'To whom  should we meet to get the detailed  information?', '', '', '', 'The principal', 'Ms. Andini', 'The winning team', 'The students of SMP Bintang Kejora', '', '', '', '', '', '', '2', 3, 'A', 'T', '', ''),
(7, 'XGAL3', 'TryOut', 2, '', '', 56, '', 'Soal Esai 1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sa', 4, 'A', '', '', ''),
(8, 'XGAL3', 'TryOut', 2, '', '', 57, '', 'Soal Esai 2', '', '', '', '', '', '', '', '', '', '', '', '', '', 'indonesia, malaysia', 5, 'A', '', '', ''),
(9, 'XGAL3', 'TryOut', 2, '', '', 58, '', 'Soal Esai 3', '', '', '', '', '', '', '', '', '', '', '', '', '', 'indonesia, malaysia', 6, 'A', '', '', ''),
(10, 'XGAL3', 'TryOut', 2, '', '', 59, '', 'Soal Esai 4', '', '', '', '', '', '', '', '', '', '', '', '', '', 'indonesia, malaysia', 7, 'A', '', '', ''),
(11, 'XGAL3', 'TryOut', 2, '', '', 60, '', 'Soal Esai 5', '', '', '', '', '', '', '', '', '', '', '', '', '', 'indonesia, malaysia', 8, 'A', '', '', ''),
(12, 'XGAL1', 'UTS', 1, '', '', 1, '', 'SOAL BIOLOGi1', '', '', 'soal1.jpg', 'Bandung', 'Bunaken', 'Surabaya', 'Kupang', '', '', '', '', '', '', '2', 1, 'T', 'T', 'BIOLOGi', ''),
(13, 'XGAL1', 'UTS', 1, '', '', 2, '', 'SOAL FISIKA2', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(14, 'XGAL1', 'UTS', 1, '', '', 3, '', 'SOAL KIMIA3', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(15, 'XGAL1', 'UTS', 1, '', '', 4, '', 'SOAL BIOLOGi4', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'T', 'T', 'BIOLOGi', ''),
(16, 'XGAL1', 'UTS', 1, '', '', 5, '', 'SOAL FISIKA5', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(17, 'XGAL1', 'UTS', 1, '', '', 6, '', 'SOAL KIMIA6', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(18, 'XGAL1', 'UTS', 1, '', '', 7, '', 'SOAL BIOLOGi7', '', '', 'soal1.jpg', 'Bandung', 'Bunaken', 'Surabaya', 'Kupang', '', '', '', '', '', '', '2', 1, 'T', 'T', 'BIOLOGi', ''),
(19, 'XGAL1', 'UTS', 1, '', '', 8, '', 'SOAL FISIKA8', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(20, 'XGAL1', 'UTS', 1, '', '', 9, '', 'SOAL KIMIA9', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(21, 'XGAL1', 'UTS', 1, '', '', 10, '', 'SOAL BIOLOGi10', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'T', 'T', 'BIOLOGi', ''),
(22, 'XGAL1', 'UTS', 1, '', '', 11, '', 'SOAL FISIKA11', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(23, 'XGAL1', 'UTS', 1, '', '', 12, '', 'SOAL KIMIA12', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(24, 'XGAL1', 'UTS', 1, '', '', 13, '', 'SOAL BIOLOGi13', '', '', 'soal1.jpg', 'Bandung', 'Bunaken', 'Surabaya', 'Kupang', '', '', '', '', '', '', '2', 1, 'T', 'T', 'BIOLOGi', ''),
(25, 'XGAL1', 'UTS', 1, '', '', 14, '', 'SOAL FISIKA14', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(26, 'XGAL1', 'UTS', 1, '', '', 15, '', 'SOAL KIMIA15', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(27, 'XGAL1', 'UTS', 1, '', '', 16, '', 'SOAL BIOLOGi16', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'T', 'T', 'BIOLOGi', ''),
(28, 'XGAL1', 'UTS', 1, '', '', 17, '', 'SOAL FISIKA17', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(29, 'XGAL1', 'UTS', 1, '', '', 18, '', 'SOAL KIMIA18', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(30, 'XGAL1', 'UTS', 1, '', '', 19, '', 'SOAL BIOLOGi19', '', '', 'soal1.jpg', 'Bandung', 'Bunaken', 'Surabaya', 'Kupang', '', '', '', '', '', '', '2', 1, 'T', 'T', 'BIOLOGi', ''),
(31, 'XGAL1', 'UTS', 1, '', '', 20, '', 'SOAL FISIKA20', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(32, 'XGAL1', 'UTS', 1, '', '', 21, '', 'SOAL KIMIA21', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(33, 'XGAL1', 'UTS', 1, '', '', 22, '', 'SOAL BIOLOGi22', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'T', 'T', 'BIOLOGi', ''),
(34, 'XGAL1', 'UTS', 1, '', '', 23, '', 'SOAL FISIKA23', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(35, 'XGAL1', 'UTS', 1, '', '', 24, '', 'SOAL KIMIA24', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(36, 'XGAL1', 'UTS', 1, '', '', 25, '', 'SOAL BIOLOGi25', '', '', 'soal1.jpg', 'Bandung', 'Bunaken', 'Surabaya', 'Kupang', '', '', '', '', '', '', '2', 1, 'T', 'T', 'BIOLOGi', ''),
(37, 'XGAL1', 'UTS', 1, '', '', 26, '', 'SOAL FISIKA26', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(38, 'XGAL1', 'UTS', 1, '', '', 27, '', 'SOAL KIMIA27', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(39, 'XGAL1', 'UTS', 1, '', '', 28, '', 'SOAL BIOLOGi28', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'T', 'T', 'BIOLOGi', ''),
(40, 'XGAL1', 'UTS', 1, '', '', 29, '', 'SOAL FISIKA29', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(41, 'XGAL1', 'UTS', 1, '', '', 30, '', 'SOAL KIMIA30', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(42, 'XGAL1', 'UTS', 1, '', '', 31, '', 'SOAL BIOLOGi31', '', '', 'soal1.jpg', 'Bandung', 'Bunaken', 'Surabaya', 'Kupang', '', '', '', '', '', '', '2', 1, 'T', 'T', 'BIOLOGi', ''),
(43, 'XGAL1', 'UTS', 1, '', '', 32, '', 'SOAL FISIKA32', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(44, 'XGAL1', 'UTS', 1, '', '', 33, '', 'SOAL KIMIA33', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(45, 'XGAL1', 'UTS', 1, '', '', 34, '', 'SOAL BIOLOGi34', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'T', 'T', 'BIOLOGi', ''),
(46, 'XGAL1', 'UTS', 1, '', '', 35, '', 'SOAL FISIKA35', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(47, 'XGAL1', 'UTS', 1, '', '', 36, '', 'SOAL KIMIA36', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(48, 'XGAL1', 'UTS', 1, '', '', 37, '', 'SOAL BIOLOGi37', '', '', 'soal1.jpg', 'Bandung', 'Bunaken', 'Surabaya', 'Kupang', '', '', '', '', '', '', '2', 1, 'T', 'T', 'BIOLOGi', ''),
(49, 'XGAL1', 'UTS', 1, '', '', 38, '', 'SOAL FISIKA38', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(50, 'XGAL1', 'UTS', 1, '', '', 39, '', 'SOAL KIMIA39', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(51, 'XGAL1', 'UTS', 1, '', '', 40, '', 'SOAL BIOLOGi40', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'T', 'T', 'BIOLOGi', ''),
(52, 'XGAL1', 'UTS', 1, '', '', 41, '', 'SOAL FISIKA41', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(53, 'XGAL1', 'UTS', 1, '', '', 42, '', 'SOAL KIMIA42', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(54, 'XGAL1', 'UTS', 1, '', '', 43, '', 'SOAL BIOLOGi43', '', '', 'soal1.jpg', 'Bandung', 'Bunaken', 'Surabaya', 'Kupang', '', '', '', '', '', '', '2', 1, 'T', 'T', 'BIOLOGi', ''),
(55, 'XGAL1', 'UTS', 1, '', '', 44, '', 'SOAL FISIKA44', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(56, 'XGAL1', 'UTS', 1, '', '', 45, '', 'SOAL KIMIA45', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(57, 'XGAL1', 'UTS', 1, '', '', 46, '', 'SOAL BIOLOGi46', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'T', 'T', 'BIOLOGi', ''),
(58, 'XGAL1', 'UTS', 1, '', '', 47, '', 'SOAL FISIKA47', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(59, 'XGAL1', 'UTS', 1, '', '', 48, '', 'SOAL KIMIA48', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(60, 'XGAL1', 'UTS', 1, '', '', 49, '', 'SOAL FISIKA49', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(61, 'XGAL1', 'UTS', 1, '', '', 50, '', 'SOAL KIMIA50', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(62, 'XGAL1', 'UTS', 1, '', '', 51, '', 'SOAL BIOLOGi51', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'T', 'T', 'BIOLOGi', ''),
(63, 'XGAL1', 'UTS', 1, '', '', 52, '', 'SOAL FISIKA52', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', 'FISIKA', ''),
(64, 'XGAL1', 'UTS', 1, '', '', 53, '', 'SOAL KIMIA53', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', 'KIMIA', ''),
(65, 'XGAL1', 'UTS', 2, '', '', 54, '', 'SOAL KIMIA54', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 'T', '', 'KIMIA', ''),
(66, 'XGAL1', 'UTS', 2, '', '', 55, '', 'SOAL BIOLOGi55', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 'T', '', 'BIOLOGi', ''),
(67, 'XGAL1', 'UTS', 2, '', '', 56, '', 'SOAL FISIKA56', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 'T', '', 'FISIKA', ''),
(68, 'XGAL1', 'UTS', 2, '', '', 57, '', 'SOAL KIMIA57', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 'T', '', 'KIMIA', ''),
(69, 'XGAL1', 'UTS', 2, '', '', 58, '', 'SOAL FISIKA58', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 'T', '', 'FISIKA', ''),
(70, 'XGAL3', 'TryOut', 2, '', '', 61, '', 'Apa nama ibu kota di Indonesia?', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jakarta', 1, 'A', '', '', ''),
(71, 'XGAL3', 'TryOut', 2, '', '', 62, '', '<p>Pada tahun berapakah Indonesia merdeka?</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '1945', 1, 'A', '', '', ''),
(72, 'XGAL1', 'UAS_BHS_ID', 1, '', '', 1, '', 'Where did Ifa and her mother plan to go?', '', '', 'soal1.jpg', 'Bandung', 'Bunaken', 'Surabaya', 'Kupang', '', '', '', '', '', '', '2', 1, 'T', 'T', '', ''),
(73, 'XGAL1', 'UAS_BHS_ID', 1, '', '', 2, '', '\"Sorry that we have to cancel our trip to Bunaken next month.\" The underlined word is closest in meaning to ....', '', 'angrybirds.mp4', '', 'Expedition', 'Adventure', 'Cruise', 'Tour', '', '', '', '', '', '', '4', 2, 'T', 'T', '', ''),
(74, 'XGAL1', 'UAS_BHS_ID', 1, '', '', 3, '', 'Visitors will possibly choose IKONYO Grand Hotel because ....', '', '', 'soal1.png', 'it gives them airline ticket discount', 'it is the only hotel down town', 'it is promoted on the Internet', 'it offers good facilities', '', '', '', '', '', '', '4', 3, 'T', 'Y', '', ''),
(75, 'XGAL1', 'UAS_BHS_ID', 1, '', '', 4, '', 'What is the conclusion taken from the advertisement?', 'smalistening.mp3', '', '', 'there is a minimarket at the hotel', 'parents with small children should pay more', 'we can hold a wedding party at IKONYO Hotel', 'certain food are available in the restaurants', '', '', '', '', '', '', '4', 1, 'A', 'T', '', ''),
(76, 'XGAL1', 'UAS_BHS_ID', 1, '', '', 5, '', 'G According to the text, 23 March is commemorated`s', '', '', 'soal1.jpg', 'Choir Day anniversary', 'the school`s principal birthday', 'the school anniversary', 'Ms. Andini`s special day', '', '', '', '', '', '', '3', 2, 'A', 'Y', '', ''),
(77, 'XGAL1', 'UAS_BHS_ID', 1, '', '', 6, '', 'To whom  should we meet to get the detailed  information?', '', '', '', 'The principal', 'Ms. Andini', 'The winning team', 'The students of SMP Bintang Kejora', '', '', '', '', '', '', '2', 3, 'A', 'T', '', ''),
(78, 'XGAL1', 'UAS_BHS_ID', 2, '', '', 56, '', 'Soal Esai 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 'A', '', '', ''),
(79, 'XGAL1', 'UAS_BHS_ID', 2, '', '', 57, '', 'Soal Esai 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, 'A', '', '', ''),
(80, 'XGAL1', 'UAS_BHS_ID', 2, '', '', 58, '', 'Soal Esai 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 'A', '', '', ''),
(81, 'XGAL1', 'UAS_BHS_ID', 2, '', '', 59, '', 'Soal Esai 4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 7, 'A', '', '', ''),
(82, 'XGAL1', 'UAS_BHS_ID', 2, '', '', 60, '', 'Soal Esai 5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 8, 'A', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes`
--

CREATE TABLE `cbt_tes` (
  `Urut` int(11) NOT NULL,
  `XKodeUjian` varchar(5) NOT NULL,
  `XNamaUjian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_tes`
--

INSERT INTO `cbt_tes` (`Urut`, `XKodeUjian`, `XNamaUjian`) VALUES
(1, 'UH', 'Ulangan Harian'),
(2, 'UTS', 'Ujian Tengah Semester'),
(3, 'UAS', 'Ujian Akhir Semester'),
(4, 'TO1', 'Try Out I'),
(5, 'TO2', 'Try Out II'),
(6, 'TO3', 'Try Out III'),
(7, 'TO4', 'Try Out IV'),
(8, 'TO5', 'Try Out V');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tugas`
--

CREATE TABLE `cbt_tugas` (
  `Urut` int(11) NOT NULL,
  `XLevel` varchar(10) NOT NULL,
  `XNIK` varchar(10) NOT NULL,
  `XKodeMapel` varchar(10) NOT NULL,
  `XKodeKelas` varchar(10) NOT NULL,
  `XKodeJurusan` varchar(10) NOT NULL,
  `XSemester` int(11) NOT NULL,
  `XSetId` varchar(10) NOT NULL,
  `XNilaiTugas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_ujian`
--

CREATE TABLE `cbt_ujian` (
  `Urut` int(11) NOT NULL,
  `XKodeUjian` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSemester` int(11) NOT NULL,
  `XLevel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeJurusan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `XLambat` enum('0','1') COLLATE latin1_general_ci NOT NULL,
  `XJumPilihan` int(11) NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XPilGanda` int(11) NOT NULL,
  `XEsai` int(11) NOT NULL,
  `XAcakSoal` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XTglUjian` date NOT NULL,
  `XJamUjian` time NOT NULL,
  `XBatasMasuk` time NOT NULL,
  `XSisaWaktu` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XIdleTime` int(11) NOT NULL,
  `XTokenUjian` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `XGuru` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XTglBuat` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XSetId` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatusUjian` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XPengawas` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `XNIPPengawas` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XSesi` int(11) NOT NULL,
  `XKodeSekolah` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cbt_ujian`
--

INSERT INTO `cbt_ujian` (`Urut`, `XKodeUjian`, `XSemester`, `XLevel`, `XKodeKelas`, `XKodeJurusan`, `XKodeMapel`, `XKodeSoal`, `XLambat`, `XJumPilihan`, `XJumSoal`, `XPilGanda`, `XEsai`, `XAcakSoal`, `XTglUjian`, `XJamUjian`, `XBatasMasuk`, `XSisaWaktu`, `XLamaUjian`, `XIdleTime`, `XTokenUjian`, `XGuru`, `XTglBuat`, `XSetId`, `XStatusUjian`, `XPengawas`, `XNIPPengawas`, `XSesi`, `XKodeSekolah`) VALUES
(1, 'TO4', 1, '', 'ALL', 'IPA ', 'XGAL3', 'TryOut', '1', 4, 11, 10, 10, '', '2017-11-08', '21:49:00', '21:59:00', '', '02:00:00', 0, 'ZQKTE', 'admin', '', '2017/2018', '9', '', '', 1, ''),
(2, 'UTS', 1, '', 'IPA1', 'ALL', 'XGAL1', 'UTS', '1', 5, 15, 10, 5, '', '2017-11-09', '02:31:00', '02:41:00', '', '02:00:00', 0, 'MMQAE', 'admin', '', '2017/2018', '9', '', '', 1, ''),
(3, 'UAS', 1, '', 'IPA1', 'IPA ', 'XGAL1', 'UAS_BHS_ID', '1', 5, 11, 5, 10, '', '2017-12-01', '22:58:00', '23:08:00', '', '02:00:00', 0, 'AHKLI', 'admin', '', '2016/2017', '1', '', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_upload_file`
--

CREATE TABLE `cbt_upload_file` (
  `Urut` int(11) NOT NULL,
  `XNamaFile` varchar(250) NOT NULL,
  `XFolder` varchar(250) NOT NULL,
  `XKeterangan` varchar(255) NOT NULL,
  `XCreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_upload_file`
--

INSERT INTO `cbt_upload_file` (`Urut`, `XNamaFile`, `XFolder`, `XKeterangan`, `XCreated`) VALUES
(1, 'Audio-1.wav', 'audio', 'Listening Bahasa Inggris', '2017-11-14'),
(2, 'Document-1.doc', 'document', 'Soal UTS Bahasa Indonesia Semester Ganjil 2017/2018', '2017-11-14'),
(3, 'Video-1.mp4', 'video', 'Debat Gubernur dan Calon Gubernur Tahun 2017', '2017-11-14'),
(4, 'Document-2.doc', 'document', 'Soal UTS Matematika Semester Ganjil 2017/2018', '2017-11-14'),
(6, 'IMG_20171113_085404.jpg', 'document', '2017-11-14', '2017-11-14'),
(7, 'IMG_20171113_085424.jpg', 'document', '2017-11-15', '2017-11-14'),
(8, 'IMG_20171113_085221.jpg', 'video', 'Soal UTS IPA 2017', '2017-11-14'),
(9, 'IMG_20171113_085804.jpg', 'video', 'Soal UTS IPA 2016', '2017-11-14'),
(10, 'jadwal ujian.htm', 'document', 'Jadwal Ujian', '2017-11-14'),
(11, 'HasilUjian.zip', 'document', 'Zip', '2017-11-23'),
(12, 'Jadwal Ujian.xlsx', 'jadwal-tes', 'Jadwal Tes', '2017-11-23'),
(13, 'Jadwal Ujian (3).xlsx', 'jadwal-tes', 'Try Out Kelas X IPA 1', '2017-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user`
--

CREATE TABLE `cbt_user` (
  `Urut` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `NIP` varchar(30) NOT NULL,
  `Nama` varchar(200) NOT NULL,
  `HP` varchar(20) NOT NULL,
  `FacebookID` varchar(100) NOT NULL,
  `login` int(11) NOT NULL,
  `Status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_user`
--

INSERT INTO `cbt_user` (`Urut`, `Username`, `Password`, `NIP`, `Nama`, `HP`, `FacebookID`, `login`, `Status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', '', '', 1, '1'),
(2, 'guru', '77e69c137812518e359196bb2f5e9bb9', '', '', '', '', 0, '1'),
(3, 'waka', '7187f8a707b74d0aceeff15769393052', '0101', 'galih', '0101', 'waka@ipiems.com', 1, '0'),
(4, 'wakel', '21d4cfa6c49e0bfad4b3b7484d9cd50c', '', 'budi', '', '', 0, '0'),
(5, 'kepsek', '8561863b55faf85b9ad67c52b3b851ac', '001', 'ryo', '01', '1a@gmail.com', 0, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cbt_admin`
--
ALTER TABLE `cbt_admin`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_audio`
--
ALTER TABLE `cbt_audio`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD PRIMARY KEY (`Urutan`);

--
-- Indexes for table `cbt_kelas`
--
ALTER TABLE `cbt_kelas`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_mapel`
--
ALTER TABLE `cbt_mapel`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_nilai`
--
ALTER TABLE `cbt_nilai`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_paketsoal`
--
ALTER TABLE `cbt_paketsoal`
  ADD PRIMARY KEY (`Urut`),
  ADD KEY `Urut` (`Urut`);

--
-- Indexes for table `cbt_setid`
--
ALTER TABLE `cbt_setid`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_siswa`
--
ALTER TABLE `cbt_siswa`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_siswa_ujian`
--
ALTER TABLE `cbt_siswa_ujian`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_tugas`
--
ALTER TABLE `cbt_tugas`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_ujian`
--
ALTER TABLE `cbt_ujian`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_upload_file`
--
ALTER TABLE `cbt_upload_file`
  ADD PRIMARY KEY (`Urut`);

--
-- Indexes for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD PRIMARY KEY (`Urut`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cbt_admin`
--
ALTER TABLE `cbt_admin`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cbt_audio`
--
ALTER TABLE `cbt_audio`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  MODIFY `Urutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `cbt_kelas`
--
ALTER TABLE `cbt_kelas`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cbt_mapel`
--
ALTER TABLE `cbt_mapel`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cbt_nilai`
--
ALTER TABLE `cbt_nilai`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cbt_paketsoal`
--
ALTER TABLE `cbt_paketsoal`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cbt_setid`
--
ALTER TABLE `cbt_setid`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cbt_siswa`
--
ALTER TABLE `cbt_siswa`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `cbt_siswa_ujian`
--
ALTER TABLE `cbt_siswa_ujian`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cbt_tugas`
--
ALTER TABLE `cbt_tugas`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cbt_ujian`
--
ALTER TABLE `cbt_ujian`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cbt_upload_file`
--
ALTER TABLE `cbt_upload_file`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cbt_user`
--
ALTER TABLE `cbt_user`
  MODIFY `Urut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
