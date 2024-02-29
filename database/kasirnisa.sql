-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 02:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirnisa`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `Subtotal`) VALUES
(6, 5, 1, 2, '35000.00'),
(7, 6, 1, 20, '35000.00'),
(8, 7, 1, 8, '35000.00'),
(8, 8, 9, 10, '20000.00'),
(8, 9, 7, 5, '10000.00'),
(10, 11, 1, 4, '35000.00'),
(11, 12, 2, 12, '25000.00'),
(12, 13, 2, 12, '25000.00'),
(14, 15, 1, 3, '35000.00'),
(14, 16, 9, 3, '20000.00'),
(15, 17, 1, 3, '35000.00'),
(15, 18, 1, 6, '35000.00'),
(15, 19, 8, 3, '20000.00'),
(16, 20, 2, 5, '25000.00'),
(16, 21, 7, 3, '10000.00'),
(16, 22, 8, 2, '20000.00'),
(17, 23, 1, 10, '35000.00'),
(17, 24, 7, 2, '10000.00'),
(18, 25, 1, 2, '35000.00'),
(18, 26, 3, 2, '35000.00'),
(18, 27, 7, 4, '10000.00'),
(19, 28, 1, 12, '35000.00');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `NoMeja` int(11) NOT NULL,
  `NomorTelpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `NoMeja`, `NomorTelpon`) VALUES
(1, 'nisa', 12, ''),
(2, 'nisa', 12, ''),
(3, 'nisa', 12, ''),
(4, 'nisa', 1, ''),
(5, 'nisa', 1, ''),
(6, 'nisa', 12, ''),
(7, 'nisa', 12, ''),
(8, 'saya', 11, ''),
(9, 'saya', 11, ''),
(10, 'saya', 2, ''),
(11, 'saya', 1, ''),
(12, 'saya', 1, ''),
(13, 'nisa', 11, ''),
(14, 'saya', 2, ''),
(15, 'saya', 2, ''),
(16, 'nisa', 2, ''),
(17, 'rawon kambing', 5, ''),
(18, 'nisaaa', 24, ''),
(19, 'saa', 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`, `PelangganID`) VALUES
(1, '2024-02-12', '0.00', 0),
(2, '2024-02-12', '0.00', 0),
(3, '2024-02-12', '0.00', 0),
(4, '2024-02-12', '0.00', 0),
(5, '2024-02-12', '0.00', 0),
(6, '2024-02-13', '0.00', 0),
(7, '2024-02-13', '0.00', 0),
(8, '2024-02-13', '0.00', 0),
(9, '2024-02-13', '0.00', 0),
(10, '2024-02-13', '0.00', 0),
(11, '2024-02-13', '0.00', 0),
(12, '2024-02-13', '0.00', 0),
(13, '2024-02-13', '0.00', 0),
(14, '2024-02-19', '0.00', 0),
(15, '2024-02-19', '0.00', 0),
(16, '2024-02-19', '0.00', 0),
(17, '2024-02-19', '0.00', 0),
(18, '2024-02-20', '0.00', 0),
(19, '2024-02-20', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  `Terjual` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`, `Terjual`, `foto`) VALUES
(1, 'sate kambing', '35000.00', 430, 70, 'sate.kambing.jpg'),
(2, 'sate ayam', '25000.00', 71, 29, 'ste.ayam.jpg'),
(3, 'gulai kambing', '35000.00', 48, 2, 'gulai.kambing.jpg'),
(7, 'es teh', '10000.00', 6, 14, '13022024073450.jpg'),
(8, 'grean tea', '20000.00', 15, 5, '13022024073616.jpg'),
(9, 'jus buah', '20000.00', 5, 25, '13022024073708.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `NamaUser` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `NamaUser`, `Password`, `level`) VALUES
(1, 'luna', 'ba8a48b0e34226a2992d871c65600a7c', 'petugas'),
(4, 'anisah', '827ccb0eea8a706c4c34a16891f84e7b', 'petugas'),
(12, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(12345, 'ica', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PenjualanID` (`PenjualanID`,`ProdukID`),
  ADD KEY `ProdukID` (`ProdukID`),
  ADD KEY `DetailID` (`DetailID`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PelangganID` (`PelangganID`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `PelangganID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD CONSTRAINT `detailpenjualan_ibfk_2` FOREIGN KEY (`ProdukID`) REFERENCES `produk` (`ProdukID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailpenjualan_ibfk_3` FOREIGN KEY (`DetailID`) REFERENCES `penjualan` (`PenjualanID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`PelangganID`) REFERENCES `penjualan` (`PenjualanID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
