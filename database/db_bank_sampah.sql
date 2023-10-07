-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 04:31 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bank_sampah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_sampah`
--

CREATE TABLE `tbl_jenis_sampah` (
  `id_jenis_sampah` int(11) NOT NULL,
  `jenis_sampah` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_pengepul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jenis_sampah`
--

INSERT INTO `tbl_jenis_sampah` (`id_jenis_sampah`, `jenis_sampah`, `harga`, `deskripsi`, `id_pengepul`) VALUES
(3, 'dfsf', 1212, 'sdfsd', 3),
(4, 'organik', 1000, 'ini harga per kg sf', 4),
(5, 'botol', 1000, 'harga botol akua\r\n', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nasabah`
--

CREATE TABLE `tbl_nasabah` (
  `id_nasabah` int(11) NOT NULL,
  `nama_nasabah` varchar(100) NOT NULL,
  `alamat_nasabah` text NOT NULL,
  `no_hp_nasabah` varchar(15) NOT NULL,
  `jenis_payment` varchar(110) NOT NULL,
  `no_payment` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `id_pengepul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_nasabah`
--

INSERT INTO `tbl_nasabah` (`id_nasabah`, `nama_nasabah`, `alamat_nasabah`, `no_hp_nasabah`, `jenis_payment`, `no_payment`, `username`, `password`, `gambar`, `id_pengepul`) VALUES
(1, 'nasabah sdfsfs', 'nasabah', '4535345', 'ovo', '930248239', 'nasabah', '3021bbb509429dde8ad1fc522448d56c', '675-profile.png', 3),
(3, 'akulaku', 'akulaku', '3240823492', 'BRI', '304239324', 'akulaku', '846ba2bc8d4ca34a80ee8cf0acb77b0f', '735-caravan travel.png', 4),
(4, 'milkita', 'jalaan sini sini', '3843294', 'ovo', '3897482934', 'milkita', '3aa655aa4345e17806eff08e21f8c606', '612-back.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penarikan`
--

CREATE TABLE `tbl_penarikan` (
  `id_penarikan` int(11) NOT NULL,
  `id_nasabah` int(11) NOT NULL,
  `jumlah_penarikan` int(11) NOT NULL,
  `status_penarikan` enum('pengajuan','diterima','ditolak','acc','proses transfer') NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `bukti_tf` varchar(200) DEFAULT NULL,
  `tgl_penarikan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_penarikan`
--

INSERT INTO `tbl_penarikan` (`id_penarikan`, `id_nasabah`, `jumlah_penarikan`, `status_penarikan`, `keterangan`, `bukti_tf`, `tgl_penarikan`) VALUES
(4, 4, 500, 'diterima', 'di tunggu', '778-back.jpg', '2022-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengepul`
--

CREATE TABLE `tbl_pengepul` (
  `id_pengepul` int(11) NOT NULL,
  `nama_pengepul` varchar(100) NOT NULL,
  `no_hp_pengepul` varchar(15) NOT NULL,
  `alamat_pengepul` text NOT NULL,
  `username` varchar(110) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengepul`
--

INSERT INTO `tbl_pengepul` (`id_pengepul`, `nama_pengepul`, `no_hp_pengepul`, `alamat_pengepul`, `username`, `password`, `gambar`) VALUES
(3, 'pengepul', '90438593454', 'pengepul sdgdfgs', 'pengepul', '616ea4c1fef80b77cf24896961a5bc3b', '634-profile.png'),
(4, 'namaku', '903498023', 'namaku', 'namaku', '424eb3078f336c537462caee24751065', '727-back.jpg'),
(5, 'akusuka', '9304823094', 'jalan sini sini', 'akusuka', 'd3534061fd031b832aaaca2dc9c04563', '747-caravan travel.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saldo`
--

CREATE TABLE `tbl_saldo` (
  `id_saldo` int(11) NOT NULL,
  `jumlah_saldo` int(11) NOT NULL,
  `id_nasabah` int(11) NOT NULL,
  `id_pengepul` int(11) NOT NULL,
  `tgl_pemasukan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_saldo`
--

INSERT INTO `tbl_saldo` (`id_saldo`, `jumlah_saldo`, `id_nasabah`, `id_pengepul`, `tgl_pemasukan`) VALUES
(1, 2424, 1, 3, '2022-07-06 17:02:42'),
(2, 2000, 3, 4, '2022-07-13 20:24:53'),
(3, 500, 4, 5, '2022-07-19 20:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sampah`
--

CREATE TABLE `tbl_sampah` (
  `id_sampah` int(11) NOT NULL,
  `id_jenis_sampah` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `id_pengepul` int(11) NOT NULL,
  `id_nasabah` int(11) NOT NULL,
  `tgl_masuk` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sampah`
--

INSERT INTO `tbl_sampah` (`id_sampah`, `id_jenis_sampah`, `berat`, `total_harga`, `id_pengepul`, `id_nasabah`, `tgl_masuk`) VALUES
(11, 3, 1, 1212, 3, 1, '2022-07-11 13:45:36'),
(12, 4, 3, 3000, 4, 3, '2022-07-13 20:24:53'),
(13, 5, 1, 1000, 5, 4, '2022-07-19 20:09:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_jenis_sampah`
--
ALTER TABLE `tbl_jenis_sampah`
  ADD PRIMARY KEY (`id_jenis_sampah`),
  ADD KEY `tbl_jenis_sampah_ibfk_1` (`id_pengepul`);

--
-- Indexes for table `tbl_nasabah`
--
ALTER TABLE `tbl_nasabah`
  ADD PRIMARY KEY (`id_nasabah`),
  ADD KEY `tbl_nasabah_ibfk_1` (`id_pengepul`);

--
-- Indexes for table `tbl_penarikan`
--
ALTER TABLE `tbl_penarikan`
  ADD PRIMARY KEY (`id_penarikan`),
  ADD KEY `id_nasabah` (`id_nasabah`);

--
-- Indexes for table `tbl_pengepul`
--
ALTER TABLE `tbl_pengepul`
  ADD PRIMARY KEY (`id_pengepul`);

--
-- Indexes for table `tbl_saldo`
--
ALTER TABLE `tbl_saldo`
  ADD PRIMARY KEY (`id_saldo`),
  ADD KEY `id_pengepul` (`id_pengepul`),
  ADD KEY `id_nasabah` (`id_nasabah`);

--
-- Indexes for table `tbl_sampah`
--
ALTER TABLE `tbl_sampah`
  ADD PRIMARY KEY (`id_sampah`),
  ADD KEY `id_jenis_sampah` (`id_jenis_sampah`),
  ADD KEY `tbl_sampah_ibfk_2` (`id_nasabah`),
  ADD KEY `tbl_sampah_ibfk_3` (`id_pengepul`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_jenis_sampah`
--
ALTER TABLE `tbl_jenis_sampah`
  MODIFY `id_jenis_sampah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_nasabah`
--
ALTER TABLE `tbl_nasabah`
  MODIFY `id_nasabah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_penarikan`
--
ALTER TABLE `tbl_penarikan`
  MODIFY `id_penarikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pengepul`
--
ALTER TABLE `tbl_pengepul`
  MODIFY `id_pengepul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_saldo`
--
ALTER TABLE `tbl_saldo`
  MODIFY `id_saldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_sampah`
--
ALTER TABLE `tbl_sampah`
  MODIFY `id_sampah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_jenis_sampah`
--
ALTER TABLE `tbl_jenis_sampah`
  ADD CONSTRAINT `tbl_jenis_sampah_ibfk_1` FOREIGN KEY (`id_pengepul`) REFERENCES `tbl_pengepul` (`id_pengepul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_nasabah`
--
ALTER TABLE `tbl_nasabah`
  ADD CONSTRAINT `tbl_nasabah_ibfk_1` FOREIGN KEY (`id_pengepul`) REFERENCES `tbl_pengepul` (`id_pengepul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_penarikan`
--
ALTER TABLE `tbl_penarikan`
  ADD CONSTRAINT `tbl_penarikan_ibfk_1` FOREIGN KEY (`id_nasabah`) REFERENCES `tbl_nasabah` (`id_nasabah`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_saldo`
--
ALTER TABLE `tbl_saldo`
  ADD CONSTRAINT `tbl_saldo_ibfk_1` FOREIGN KEY (`id_pengepul`) REFERENCES `tbl_pengepul` (`id_pengepul`),
  ADD CONSTRAINT `tbl_saldo_ibfk_2` FOREIGN KEY (`id_nasabah`) REFERENCES `tbl_nasabah` (`id_nasabah`);

--
-- Constraints for table `tbl_sampah`
--
ALTER TABLE `tbl_sampah`
  ADD CONSTRAINT `tbl_sampah_ibfk_1` FOREIGN KEY (`id_jenis_sampah`) REFERENCES `tbl_jenis_sampah` (`id_jenis_sampah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_sampah_ibfk_2` FOREIGN KEY (`id_nasabah`) REFERENCES `tbl_nasabah` (`id_nasabah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_sampah_ibfk_3` FOREIGN KEY (`id_pengepul`) REFERENCES `tbl_pengepul` (`id_pengepul`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
