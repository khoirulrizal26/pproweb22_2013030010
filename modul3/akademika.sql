-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2022 pada 09.17
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
-- Database: `akademika`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id` int(11) NOT NULL,
  `mhs_npm` varchar(20) NOT NULL,
  `mk_kode` varchar(20) NOT NULL,
  `sem` enum('GANJIL','GENAP') NOT NULL,
  `ta_id` varchar(20) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id`, `mhs_npm`, `mk_kode`, `sem`, `ta_id`, `nilai`) VALUES
(1, '2013030010', '01', 'GENAP', '20', 100),
(2, '2013030007', '01', 'GENAP', '21', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `institusi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhss`
--

CREATE TABLE `mhss` (
  `npm` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mhss`
--

INSERT INTO `mhss` (`npm`, `nama`, `alamat`) VALUES
('2013030007', 'Marcel W', 'Nganjuk'),
('2013030010', 'Moch Khoirul Rizal', 'Kab. Nganjuk Jawa Timur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mk`
--

CREATE TABLE `mk` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mk`
--

INSERT INTO `mk` (`kode`, `nama`) VALUES
('01', 'Pemrograman Basis Data'),
('02', 'Pemrograman Web'),
('03', 'Inovasi Teknologi'),
('04', 'Riset Operasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ta`
--

CREATE TABLE `ta` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ta`
--

INSERT INTO `ta` (`id`, `nama`) VALUES
('18', '2018'),
('19', '2019'),
('20', '2020'),
('21', '2021');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mhs_npm` (`mhs_npm`,`mk_kode`,`ta_id`),
  ADD KEY `mk_kode` (`mk_kode`),
  ADD KEY `ta_id` (`ta_id`);

--
-- Indeks untuk tabel `mhss`
--
ALTER TABLE `mhss`
  ADD PRIMARY KEY (`npm`);

--
-- Indeks untuk tabel `mk`
--
ALTER TABLE `mk`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `ta`
--
ALTER TABLE `ta`
  ADD PRIMARY KEY (`id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`mhs_npm`) REFERENCES `mhss` (`npm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`mk_kode`) REFERENCES `mk` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_3` FOREIGN KEY (`ta_id`) REFERENCES `ta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
