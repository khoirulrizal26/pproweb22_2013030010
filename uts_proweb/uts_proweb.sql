-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2022 pada 16.04
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_proweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `id` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_grp_id` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `barcode` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `satuan_id` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `hpp` double(12,2) NOT NULL DEFAULT 0.00,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '2::blom acc',
  `crt` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `crt_date` timestamp NULL DEFAULT NULL,
  `upd` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `upd_date` timestamp NULL DEFAULT NULL,
  `hargajual` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `supllier` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `item`
--

INSERT INTO `item` (`id`, `item_grp_id`, `barcode`, `nama`, `satuan_id`, `hpp`, `aktif`, `crt`, `crt_date`, `upd`, `upd_date`, `hargajual`, `supllier`) VALUES
('000118', '0113', '89795643219', 'Bangau20', 'BTL', 20.00, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', ''),
('0101000', '0101', '749921040350', 'Mochammad Khoirul Rizal', 'PCS', 13200.00, 1, '', '2022-04-24 16:51:52', '', '2022-04-25 10:58:29', '', ''),
('0101001', '0138', '8992753102204', 'ff skm 385g coklat ', 'PCS', 10696.33, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101002', '0138', '8992753102006', 'FF SKM 40G COKLAT', 'PCS', 1190.11, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101003', '0101', '8992753120208', 'ff 200g full cream', 'PCS', 33237.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101004', '0101', '8992753120307', 'ff 400g full cream', 'PCS', 38338.30, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101005', '0101', '8992753150205', 'ff 200g sb instant', 'PCS', 16892.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101006', '0101', '8992753150304', 'ff 400g sb instant plain', 'PCS', 37826.33, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101007', '0101', '8992753152803', 'FF 800G INST CHOCO', 'PCS', 63647.10, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101009', '0101', '8992753281503', 'ff jelajah suprima 1-3 400g van', 'PCS', 45585.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('01010100', '0101', '9415007052814', 'ANMUM MATERNA VNL 400G', 'PCS', 74909.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('01010101', '0101', '749921040374', 'WRP EVDRY LOWFAT MILK VNL 30G', 'PCS', 13200.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('01010102', '0101', '749921009135', 'WRP MR MOCHA GREENTEA 324G', 'PCS', 108900.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('01010103', '0101', '749921030795', 'HILO ACT ES TELER 175G', 'PCS', 25300.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('01010104', '0101', '8992696522688', 'NESTLE IDEAL SCH 20G', 'PCS', 1569.80, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101016', '0101', '8992753881406', 'ff456300gvan*', 'PCS', 21423.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101017', '0101', '8992753881505', 'ff karya suprima 4-6 400g van', 'PCS', 43190.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101019', '0101', '8992753882403', 'ff456300gcho*', 'PCS', 21138.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('01010200', '0101', '749921030832', 'HILO SCHOOL STRW CHEESECAKE 500GR', 'PCS', 73700.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('01010201', '0101', '8997011923027', 'MILKO VANILA 27G', 'PCS', 0.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('01010202', '0101', '8997011923010', 'MILKO COKLAT 27G', 'PCS', 0.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101023', '0138', '8992702000018', 'indomilk skm 375g putih', 'PCS', 9687.50, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101024', '0138', '8992702000063', 'indomilk skm 375g coklat', 'PCS', 9687.50, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101025', '0138', '8992702000179', 'kremer skm 375g', 'PCS', 7469.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101026', '0156', '8992753012480', 'yesmut-mutvanilla*', 'PCS', 416.06, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101027', '0182', '8992702005945', 'indomilk 190ml cho btl', 'BTL', 3350.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101028', '0156', '8992753012497', 'YES MUT-MUT CHOCO', 'PCS', 416.06, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101029', '0101', '8992702006171', 'indomilk1000gsbinstant*', 'PCS', 55182.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101030', '0101', '8992702006294', 'indomilk200gintsfullcream*', 'PCS', 12290.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101031', '0101', '8992702006416', 'indomilk200gfullcream*', 'PCS', 11836.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101032', '0101', '8992702006553', 'indomilk1000gsbcoklat*', 'PCS', 52562.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101033', '0101', '8992702006645', 'indomilk200gcho*', 'PCS', 10929.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101034', '0101', '8992702006928', 'Indomilk400gCalciSkim*', 'PCS', 27586.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101035', '0101', '8992702007529', 'SBI 400g Bio Kids 4*', 'BOX', 23962.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101036', '0101', '8992696421288', 'danc 150g batita vanila', 'PCS', 11857.65, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101037', '0101', '8710428019677', 'PediaSure400gCompleteVanila*', 'PCS', 75437.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101038', '0101', '8992696421301', 'danc 500g batita vanila', 'PCS', 41116.00, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101039', '0101', '8992753030392', 'ff 400g energo cklt', 'PCS', 35773.10, 1, NULL, '2022-04-24 16:51:52', NULL, '2022-04-25 10:58:29', '', ''),
('0101040', '0185', '8992775717110', 'clevo 70ml aneka buah', 'PCS', 862.00, 1, '', '2022-04-24 16:51:52', '', '2022-04-25 10:58:29', '', ''),
('502', 'xyz', '897956432169', '2013030010', 'BIJI', 50000.00, 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', ''),
('SDN', 'xyz', '1234567122', 'Kursi', 'BIJI', 0.00, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'napoli'),
('ZXC', '0103', '1234', 'biasa', 'KILO', 20.00, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'khoirul');

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_grp`
--

CREATE TABLE `item_grp` (
  `id` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `upline` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  `crt` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `crt_date` timestamp NULL DEFAULT NULL,
  `upd` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `upd_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `item_grp`
--

INSERT INTO `item_grp` (`id`, `upline`, `level`, `nama`, `keterangan`, `aktif`, `crt`, `crt_date`, `upd`, `upd_date`) VALUES
('', '', 0, 'ALL', '', 1, NULL, '2013-01-29 14:20:46', NULL, '2013-03-27 08:38:22'),
('0101', '01', 1, 'SUSU BUBUK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0102', '01', 1, 'KOPI BUBUK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0103', '01', 1, 'SEREAL', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0104', '01', 1, 'BERAS', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0105', '01', 1, 'MINYAK GORENG', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0106', '01', 1, '*PALAWIJA', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0107', '01', 1, 'AIR MINERAL', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0108', '01', 1, '*LIQUID JUICE', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0109', '01', 1, '*FLAVOURED WATER', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0110', '01', 1, 'MIE INSTANT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0111', '01', 1, 'MIE KERING', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0112', '01', 1, '*STOCK SOUP,MSG', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0113', '01', 1, 'KECAP', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0114', '01', 1, 'SIRUP', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0115', '01', 1, '*BISCUIT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0116', '01', 1, '*ROTI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0117', '01', 1, '*SALT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0118', '01', 1, '*SNACK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0119', '01', 1, 'AGAR-AGAR', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0120', '01', 1, '*RTD TEA', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0121', '01', 1, 'ES KRIM', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0122', '01', 1, '*TOTAL CANDIES', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0123', '01', 1, 'BUBUR BAYI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0124', '01', 1, '*COUGH SYRUP (OBAT BATUK CAIR)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0125', '01', 1, '*APRHODISIAC(FOOD SUPLEMENT)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0126', '01', 1, 'SARDINES', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0127', '01', 1, 'KRECEK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0129', '01', 1, '*TERASI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0130', '01', 1, '*CHOCOLATE', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0131', '01', 1, 'MARGARIN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0132', '01', 1, 'TEPUNG', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0133', '01', 1, 'MINUMAN SERBUK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0134', '01', 1, '*COFFE CREAMER', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0135', '01', 1, 'MADU', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0136', '01', 1, '*HAMPERS/PARCEL', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0137', '01', 1, '*FRESH FRUITS', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0138', '01', 1, 'SKM ', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0139', '01', 1, '*DIARRHEA(OBAT MENCRET)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0140', '01', 1, '*ANALGESICS&COLD REMEDIES', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0141', '01', 1, '*ANTACID (OBAT MAAG)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0142', '01', 1, '*ANTHELMINTIC (OBAT CACING)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0144', '01', 1, '*BREAD SPREAD(OLESAN ROTI)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0146', '01', 1, '*CARBONATED SOFT DRINK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0147', '01', 1, 'KEJU', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0148', '01', 1, 'SOSIS', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0149', '01', 1, 'SAOS & SAMBAL', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0150', '01', 1, '*COFFE RTD(KOPI SIAP SAJI)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0151', '01', 1, '*COUGH TABLET(OBAT BTK TABLET)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0152', '01', 1, 'TELUR', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0153', '01', 1, '*ENERGY DRINK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0154', '01', 1, '*FRESH FISH', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0156', '01', 1, '*FRESH MEAT/POULTRY', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0157', '01', 1, '*FRESH VEGETABLE', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0158', '01', 1, '*FROZEN FISH&MEAT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0159', '01', 1, '*FUNCTIONAL DRINK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0160', '01', 1, 'GALON', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0161', '01', 1, '*GUM (PERMEN KARET)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0162', '01', 1, '*LIQUID MILK (SUSU CAIR)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0163', '01', 1, '*NUTS (KACANG)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0164', '01', 1, 'TEH KEMASAN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0165', '01', 1, '*PET FOOD', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0167', '01', 1, '*REMEDY DRINK (LARUTAN)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0170', '01', 1, '*SEASONING FLOUR (TP BUMBU)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0171', '01', 1, '*SEASONING LIQUID (BUMBU CAIR)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0172', '01', 1, 'GULA', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0173', '01', 1, '*TOMATO SAUCE', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0174', '01', 1, '*VITAMIN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0175', '01', 1, '*YOGHURT DRINK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0176', '01', 1, '*SNACK 2', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0177', '01', 1, 'KONSINYASI FOOD', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0178', '01', 1, 'KONSINYASI NON FOOD', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0179', '01', 1, 'BISCUIT 2', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0180', '01', 1, 'BISCUIT KALENG', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0181', '01', 1, 'BUMBU DAPUR', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0182', '01', 1, 'MINUMAN BOTOL', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0183', '01', 1, 'MINUMAN CUP', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0184', '01', 1, 'MINUMAN KALENG', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0185', '01', 1, 'MINUMAN TETRAPACK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0186', '01', 1, 'OBAT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0187', '01', 1, 'PERMEN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0189', '01', 1, 'SELEI & MESES', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0190', '01', 1, 'SNACK BANTAL', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0191', '01', 1, 'JELLY', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('02', '', 0, 'NON FOOD', '', 1, NULL, '2022-04-24 16:48:01', NULL, '2022-04-24 16:48:09'),
('0201', '02', 1, 'SABUN MANDI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0202', '02', 1, 'SABUN CUCI PIRING', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0203', '02', 1, 'DETERJENT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0204', '02', 1, 'PASTA GIGI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0205', '02', 1, 'SIKAT GIGI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0206', '02', 1, 'PARFUM', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0207', '02', 1, '*NOSE PACK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0208', '02', 1, 'SAMPO', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0209', '02', 1, 'OBAT SERANGGA', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0210', '02', 1, 'BEDAK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0211', '02', 1, 'PEMBALUT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0212', '02', 1, 'PEMUTIH PAKAIAN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0213', '02', 1, 'SEMIR RAMBUT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0214', '02', 1, 'SEMIR SEPATU', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0215', '02', 1, 'TISSU KERING', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0216', '02', 1, 'KAPAS', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0217', '02', 1, 'KONDISIONER', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0218', '02', 1, 'POPOK BAYI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0219', '02', 1, 'ALAT TULIS', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0220', '02', 1, 'PENGHARUM RUANGAN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0221', '02', 1, 'PEWANGI PELEMBUT PAKAIAN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0222', '02', 1, '*HAIR TONIC', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0223', '02', 1, 'BOTOL BAYI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0224', '02', 1, '*FOUNDATION', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0225', '02', 1, '*TALCUM POWDER', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0226', '02', 1, '*SKIN CARE (PRWTN KULIT)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0227', '02', 1, 'OBAT KUMUR', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0228', '02', 1, 'PEMBERSIH LANTAI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0229', '02', 1, 'ALAT DAPUR+SIKAT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0230', '02', 1, 'PISAU CUKUR', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0231', '02', 1, 'PEMBERSIH KACA', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0232', '02', 1, '*BABY GIFT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0233', '02', 1, 'LULUR MANDI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0234', '02', 1, 'FEMININE WASH', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0235', '02', 1, '*KAMPER', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0236', '02', 1, '*FOOTWEAR (KAOS KAKI)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0237', '02', 1, '*SISIR+ACCESSORIS', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0238', '02', 1, '*OTHER ORAL CARE', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0239', '02', 1, '*PLASTER', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0240', '02', 1, 'BATERAI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0241', '02', 1, '*PENGKILAP', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0242', '02', 1, '*COSMETIC', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0243', '02', 1, 'SANDAL', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0244', '02', 1, 'LAIN-LAIN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0245', '02', 1, 'ROKOK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0246', '02', 1, '*PERLENGKAPAN HAJATAN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0247', '02', 1, '*ACCECORIS HP', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0248', '02', 1, '*CLOTHING', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0249', '02', 1, 'HADIAH', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0250', '02', 1, '*KOREK API', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0251', '02', 1, '*BANDED PACK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0252', '02', 1, '*EYE DROP', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0254', '02', 1, 'MINYAK RAMBUT', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0255', '02', 1, 'POPOK DEWASA', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0256', '02', 1, '*HOUSEHOLD TISSUE (TISSU RT)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0257', '02', 1, 'PELICIN PAKAIAN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0258', '02', 1, 'BOLA LAMPU', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0259', '02', 1, '*LIQUID ANTISEPTIC', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0260', '02', 1, '*LIQUID HAND SOAP', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0261', '02', 1, '*PLASTER', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0262', '02', 1, 'SABUN COLEK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0263', '02', 1, '*BABY CARE+COTTON BUD', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0267', '02', 1, '*FUNGICIDES (OBAT JAMUR)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0268', '02', 1, '*COLD RUBS (OBAT GOSOK/BALSEM)', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0269', '02', 1, '*FACE POWDER', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0270', '02', 1, 'BEDAK BAYI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0271', '02', 1, 'COLOGNE BAYI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0272', '02', 1, 'COTTON BUD', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0273', '02', 1, 'FACIAL FOAM', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0274', '02', 1, 'HBL', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0275', '02', 1, 'KOSMETIK LAINNYA', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0276', '02', 1, 'LIPSTICK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0277', '02', 1, 'OBAT GOSOK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0278', '02', 1, 'PARFUM PREMIUM', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0279', '02', 1, 'PELEMBAB/FOUNDATION', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0280', '02', 1, 'PERAWATAN BAYI ', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0281', '02', 1, 'SABUN MANDI BAYI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0282', '02', 1, 'SAMPO BAYI', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0283', '02', 1, 'TISSU BASAH', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('0401', '04', 1, 'PEMBAYARAN ONLINE', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('1251', '02', 1, '*KEMEJA COWOK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('1252', '02', 1, 'PERLENGKAPAN CUCI MOBIL&MOTOR', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('1253', '02', 1, 'PERLENGKAPAN HUJAN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('1254', '02', 1, 'GERABAH', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('1255', '01', 1, 'MAKANAN HEWAN', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('1256', '02', 1, '*KRESEK', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('1257', '02', 1, 'PULSA', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('1258', '02', 1, 'GERABAH 2', '', 1, NULL, '2022-04-24 16:50:35', NULL, NULL),
('xyz', '', 1, 'barang langka', '', 1, NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  `crt` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `crt_date` timestamp NULL DEFAULT NULL,
  `upd` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `upd_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id`, `nama`, `keterangan`, `aktif`, `crt`, `crt_date`, `upd`, `upd_date`) VALUES
('', '-', '', 1, NULL, '2022-04-24 16:29:16', NULL, NULL),
('ASGF', 'KARUNG', '', 1, NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00'),
('BAG', 'BAG', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('BAL', 'BAL', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('BANDED', 'BANDED', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('BIJI', 'ABC', '', 1, NULL, '2022-05-30 06:16:22', NULL, NULL),
('BOS', 'BOS', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('BOX', 'BOX', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('BTL', 'BTL', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('CRT', 'CRT', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('CUP', 'CUP', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('DOZEN', 'DOZEN', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('GRAM', 'GRAM', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('HGR', 'HGR', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('IKAT', 'IKAT', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('JAR', 'JAR', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('KILO', 'KILO', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('KODI', 'KODI', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('KRAT', 'KRAT', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('NO', '---', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('ONS', 'ONS', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('PACK', 'PACK', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('PCS', 'PCS', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('PRES', 'PRES', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('RIM', 'RIM', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('RTG', 'RTG', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('SACHET', 'SACHET', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('SLOP', 'SLOP', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('STRIP', 'STRIP', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('TIMBA', 'TIMBA', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('TRAY', 'TRAY', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('UNIT', 'UNIT', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL),
('ZAK', 'ZAK', '', 1, NULL, '2022-04-24 16:30:05', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fk_item_barcode` (`barcode`),
  ADD KEY `fk_item_item_grp1_idx` (`item_grp_id`),
  ADD KEY `fk_item_satuan1_idx` (`satuan_id`);

--
-- Indeks untuk tabel `item_grp`
--
ALTER TABLE `item_grp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_grp_id`) REFERENCES `item_grp` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
