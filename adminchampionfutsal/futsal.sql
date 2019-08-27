-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2018 at 04:35 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `id_cabang` int(255) NOT NULL,
  `nama_cabang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id_cabang`, `nama_cabang`) VALUES
(2, 'Champion Futsal Matos'),
(1, 'Champion Futsal Suhat'),
(3, 'Champion Futsal Tlogomas');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(255) NOT NULL,
  `id_cabang` int(255) DEFAULT NULL,
  `id_lokasi` int(255) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `avatar` blob,
  `no_hp` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `id_cabang`, `id_lokasi`, `nama`, `avatar`, `no_hp`, `alamat`) VALUES
(1, 2, 2, 'Gord', NULL, '089763875981', 'Sidodadi');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(255) NOT NULL,
  `id_cabang` int(255) DEFAULT NULL,
  `nama_lokasi` varchar(255) DEFAULT NULL,
  `lpgn` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `id_cabang`, `nama_lokasi`, `lpgn`) VALUES
(1, 1, 'Soekarno Hatta', 2),
(2, 2, 'Malang Town Square', 2),
(3, 3, 'Tlogomas', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(255) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_hp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `no_hp`) VALUES
(1, 'Ms Bay', '0876'),
(2, 'antok', '12345'),
(3, 'antok', '12345'),
(4, 'antok', '12345'),
(5, 'antok', '12345'),
(6, 'antok', '12345'),
(7, 'antok', '12345'),
(8, 'po', '12346758'),
(9, 'po', '12346758'),
(10, 'po', '12346758'),
(11, 'po', '12346758'),
(12, 'po', '12346758'),
(13, 'po', '12346758'),
(14, 'po', '12346758'),
(15, 'po', '12346758'),
(16, 'carmelo', '081913654876'),
(17, 'carmelo', '081913654876'),
(18, 'karlan', '089768546555'),
(19, 'karlan', '089768546555'),
(20, 'karlan', '089768546555'),
(21, 'karlan', '089768546555'),
(22, 'karlan', '089768546555'),
(23, 'karlan', '089768546555'),
(24, 'karlan', '089768546555'),
(25, 'karlan', '089768546555'),
(26, '', ''),
(27, '', ''),
(28, '', ''),
(29, '', ''),
(30, '', ''),
(31, '', ''),
(32, 'karlan', '12345'),
(33, 'karlan', '12345'),
(34, 'fafa', '123123'),
(35, 'fafa', '123123'),
(36, 'fafa', '123123'),
(37, 'fafa', '123123'),
(38, 'y', '0876'),
(39, 'y', '0876'),
(40, 'y', '0876'),
(41, 'y', '0876'),
(42, 'gona', '675'),
(43, 'gona', '675'),
(44, '', ''),
(45, '', ''),
(46, 'dimas', '123111111111'),
(47, 'dimas', '123111111111'),
(48, 'dimas', '123111111111'),
(49, 'dimas', '123111111111'),
(50, 'dimas', '123111111111'),
(51, 'dimas', '123111111111'),
(52, 'dimas', '123111111111'),
(53, 'dimas', '123111111111'),
(54, 'dimas', '123111111111'),
(55, 'dimas', '123111111111'),
(56, 'dimas', '123111111111'),
(57, 'dimas', '123111111111'),
(58, 'ovan', '34'),
(59, 'ovan', '34'),
(60, 'kae', '1'),
(61, 'kae', '1'),
(62, 'gum', '345'),
(63, 'gum', '345'),
(64, 'amin', '1234'),
(65, 'amin', '1234'),
(66, 'y', '2'),
(67, 'y', '2');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(255) NOT NULL,
  `id_pelanggan` int(255) DEFAULT NULL,
  `id_lokasi` int(255) DEFAULT NULL,
  `lpgn` varchar(255) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `jam_pesan` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_pelanggan`, `id_lokasi`, `lpgn`, `tgl_pesan`, `jam_pesan`) VALUES
(1, 1, 3, '3', '2018-11-16', '08:00:00'),
(4, 6, 1, '2', '2018-11-15', '09:00:00'),
(5, 8, 3, '2', '2018-11-23', '10:00:00'),
(6, 10, 3, '2', '2018-11-23', '10:00:00'),
(7, 12, 3, '2', '2018-11-23', '10:00:00'),
(8, 14, 3, '2', '2018-11-23', '10:00:00'),
(9, 16, 1, '1', '2018-11-08', '00:00:00'),
(10, 18, 1, '1', '2018-11-09', '11:00:00'),
(11, 20, 1, '1', '2018-11-09', '11:00:00'),
(12, 22, 3, '3', '2018-11-10', '02:00:00'),
(13, 24, 3, '3', '2018-11-10', '02:00:00'),
(14, 26, 1, 'satu', '0000-00-00', '00:00:00'),
(15, 28, 1, 'satu', '0000-00-00', '00:00:00'),
(16, 30, 1, 'satu', '0000-00-00', '00:00:00'),
(18, 34, 1, '1', '2018-11-27', '16:00:00'),
(20, 38, 2, '2', '2018-11-03', '21:00:00'),
(21, 40, 2, '2', '2018-11-03', '21:00:00'),
(22, 42, 3, '3', '2018-11-24', '13:40:00'),
(23, 44, 1, 'satu', '0000-00-00', '00:00:00'),
(24, 47, 1, '2', '2018-11-30', '02:00:00'),
(25, 49, 1, '2', '2018-11-30', '02:00:00'),
(26, 51, 1, '2', '2018-11-30', '02:00:00'),
(27, 53, 1, '2', '2018-11-30', '02:00:00'),
(28, 55, 1, '2', '2018-11-30', '02:00:00'),
(29, 57, 1, '2', '2018-11-30', '02:00:00'),
(30, 59, 2, '1', '2018-01-02', '02:04:00'),
(32, 63, 1, '2', '2018-11-03', '20:00:00'),
(33, 65, 2, '2', '2018-11-03', '08:09:00'),
(34, 67, 3, '2', '2018-11-03', '00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id_cabang`),
  ADD KEY `nama_cabang` (`nama_cabang`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `fkcabang` (`id_cabang`),
  ADD KEY `fklokasi` (`id_lokasi`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`),
  ADD KEY `fk_cabang` (`id_cabang`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `fk_lokasi` (`id_lokasi`),
  ADD KEY `fk_pelanggan` (`id_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id_cabang` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `fkcabang` FOREIGN KEY (`id_cabang`) REFERENCES `cabang` (`id_cabang`),
  ADD CONSTRAINT `fklokasi` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`);

--
-- Constraints for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD CONSTRAINT `fk_cabang` FOREIGN KEY (`id_cabang`) REFERENCES `cabang` (`id_cabang`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `fk_lokasi` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`),
  ADD CONSTRAINT `fk_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
