-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 05:38 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

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
  `avatar` text,
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
  `id_lokasi` int(10) NOT NULL,
  `id_cabang` int(10) DEFAULT NULL,
  `nama_lokasi` varchar(30) DEFAULT NULL,
  `lpgn` int(10) DEFAULT NULL
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
  `id_pelanggan` int(10) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `no_hp`) VALUES
(1, 'saber', '081915776303'),
(2, 'cyclops', '082454676004'),
(3, 'jhonson', '083637846280'),
(4, 'rafaela', '081917456608'),
(5, 'layla', '082635746660'),
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
(16, 'carmelo', '2147483647'),
(17, 'carmelo', '2147483647'),
(18, 'karlan', '2147483647'),
(19, 'karlan', '2147483647'),
(20, 'karlan', '2147483647'),
(21, 'karlan', '2147483647'),
(22, 'karlan', '2147483647'),
(23, 'karlan', '2147483647'),
(24, 'karlan', '2147483647'),
(25, 'karlan', '2147483647'),
(26, '', '0'),
(27, '', '0'),
(28, '', '0'),
(29, '', '0'),
(30, '', '0'),
(31, '', '0'),
(32, 'karlan', '12345'),
(33, 'karlan', '12345'),
(34, 'fafa', '123123'),
(35, 'fafa', '123123'),
(36, 'fafa', '123123'),
(37, 'fafa', '123123'),
(38, 'y', '876'),
(39, 'y', '876'),
(40, 'y', '876'),
(41, 'y', '876'),
(42, 'gona', '675'),
(43, 'gona', '675'),
(44, '', '0'),
(45, '', '0'),
(46, 'dimas', '2147483647'),
(47, 'dimas', '2147483647'),
(48, 'dimas', '2147483647'),
(49, 'dimas', '2147483647'),
(50, 'dimas', '2147483647'),
(51, 'dimas', '2147483647'),
(52, 'dimas', '2147483647'),
(53, 'dimas', '2147483647'),
(54, 'dimas', '2147483647'),
(55, 'dimas', '2147483647'),
(56, 'dimas', '2147483647'),
(57, 'dimas', '2147483647'),
(58, 'ovan', '34'),
(59, 'ovan', '34'),
(60, 'kae', '1'),
(61, 'kae', '1'),
(62, 'gum', '345'),
(63, 'gum', '345'),
(64, 'amin', '1234'),
(65, 'amin', '1234'),
(66, 'y', '2'),
(67, 'y', '2'),
(68, 'black', '34'),
(69, 'black', '34'),
(70, 'n', '2'),
(71, 'n', '2'),
(72, 'y', '2147483647'),
(73, 'carmelo', '876'),
(74, 'Johan', '2147483647'),
(75, '', '0'),
(76, '', '0'),
(77, 'quik', '2147483647'),
(78, 'saiful', '89657'),
(79, 'jaipong', '897777'),
(80, 'jin', '676'),
(81, 'jin', '676'),
(82, 'jin', '6770'),
(83, 'jyn', '677090'),
(84, 'jyn', '67709083'),
(85, 'hery', '97'),
(86, 'Johan', '98'),
(87, 'yuyu', '567'),
(88, 'fafa', '2147483647'),
(89, 're', '7'),
(90, 'ret', '455'),
(91, 'baru', '11184'),
(92, 'ui', '980'),
(93, 'ty', '5'),
(94, 'hu', '8989'),
(95, 'jhg', '1234'),
(96, 'asd', '123'),
(97, 'asd', '123'),
(98, 'asd', '123'),
(99, 'asd', '123'),
(100, 'asd', '123'),
(101, 'asd', '675'),
(102, 'asd', '675'),
(103, 'asd', '675'),
(104, 'asd', '675'),
(105, 'asd', '675'),
(106, 'toyib64', '2147483647'),
(107, 'yg', '765'),
(108, 'hg', '87'),
(109, 'hery', '12345'),
(110, 'gery', '656'),
(111, 'ty', '456'),
(112, 'hud', '081915776303'),
(113, 'hery', '081915776303'),
(114, 'agil', '666'),
(115, 'y', '567'),
(116, 'u', '09'),
(117, 'hery', '2817'),
(118, 'Adc', '232'),
(119, 'tesh', '5636'),
(120, 'yolo', '9374'),
(121, 'khf', '1234'),
(122, 'toyib64', '081913654876'),
(123, 'carmelo', '675'),
(124, 'fdl', '789'),
(125, 'gona', '567'),
(126, 'lego', '485'),
(127, 'lego', '485'),
(128, 'lego', '485'),
(129, 'lego', '485'),
(130, 'lego', '485'),
(131, 'house', '12345'),
(132, 'house', '12345'),
(133, 'house', '12345'),
(134, 'house', '12345'),
(135, 'tyle', '980'),
(136, 'yum', '435'),
(137, 'yosal005', '823662884'),
(138, 'hakim89', '081962544567'),
(139, 'putra', '089765432124'),
(140, 'yogi', '082321456765'),
(141, 'yudan', '083245765222'),
(142, 'black', '987365'),
(143, 'yannu', '986868'),
(144, 'yannu ', '081915776456'),
(145, 'yannu', '089768546555'),
(146, 'yudan', '0836526273'),
(147, 'yg', '87'),
(148, 'xxx', '12345asdf'),
(149, 'ew', '456'),
(150, 'Rizal', '081915776303'),
(151, 'geri', '030487348784'),
(152, 'alex', '86586');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(10) NOT NULL,
  `id_pelanggan` int(10) DEFAULT NULL,
  `id_lokasi` int(10) DEFAULT NULL,
  `lpgn` varchar(10) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `jam_pesan` time DEFAULT NULL,
  `jam_main` text,
  `durasi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_pelanggan`, `id_lokasi`, `lpgn`, `tgl_pesan`, `jam_pesan`, `jam_main`, `durasi`) VALUES
(2, 113, 2, '2', '2018-12-05', '11:46:03', '8:00 9:00', '2'),
(4, NULL, 1, '2', '2018-12-07', '22:55:50', '8:00 9:00 10:00 ', '3'),
(5, NULL, 1, '1', '2018-12-12', '23:04:33', '10:00 11:00 ', '2'),
(6, NULL, 1, '1', '2018-12-14', '23:12:03', '14:00 15:00 ', '2'),
(7, NULL, 1, '1', '2018-12-01', '23:24:21', '8:00 9:00 ', '2'),
(8, NULL, 1, '1', '2018-12-13', '23:27:04', '12:00 13:00 ', '2'),
(9, NULL, 1, '1', '2018-12-14', '23:28:11', '17:00 ', '1'),
(10, NULL, 1, '1', '2018-12-13', '23:30:18', '15:00 ', '1'),
(12, 120, 1, '2', '2018-12-01', '08:43:11', '12:00 13:00 14:00 ', '3'),
(14, 122, 1, '1', '2018-12-01', '08:53:03', '10:00 11:00 ', '2'),
(17, 125, 1, '2', '2018-12-01', '19:24:55', '11:00 16:00 17:00 18:00 19:00 ', '5'),
(25, 138, 1, '2', '2018-12-13', '16:31:21', '10:00 ', '1'),
(27, 140, 1, '1', '2018-12-04', '16:36:00', '16:00 17:00 18:00 ', '3'),
(28, 141, 1, '1', '2018-12-08', '16:55:05', '11:00 12:00 ', '2'),
(32, 144, 2, '1', '2018-12-01', '16:27:40', '10:00 11:00 ', '2'),
(33, 145, 2, '1', '2018-12-08', '17:13:36', '13:00 ', '1'),
(34, NULL, 3, '2', '2018-12-07', '17:15:02', '13:00 14:00 15:00 ', '3'),
(35, 146, 3, '2', '2018-12-01', '17:34:52', '8:00 ', '1'),
(37, 148, 2, '3', '2018-12-02', '11:12:19', '11:00 ', '1'),
(38, NULL, 1, '1', '2018-12-07', '12:25:14', '17:00 ', '1'),
(40, 150, 1, '2', '2018-12-05', '22:07:55', '9:00 10:00 11:00 ', '3'),
(41, 151, 2, '3', '2019-01-18', '09:24:28', '8:00 9:00 10:00 11:00 ', '4'),
(42, 152, 1, '1', '2019-02-07', '02:32:05', '9:00 10:00 ', '2');

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
  MODIFY `id_lokasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
