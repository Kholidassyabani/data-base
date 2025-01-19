-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 07:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airport`
--

-- --------------------------------------------------------

--
-- Table structure for table `kargo`
--

CREATE TABLE `kargo` (
  `id_kargo` int(11) NOT NULL,
  `jenis_kargo` varchar(255) DEFAULT NULL,
  `berat` decimal(10,2) DEFAULT NULL,
  `volume` decimal(10,2) DEFAULT NULL,
  `asal` varchar(255) DEFAULT NULL,
  `tujuan` varchar(255) DEFAULT NULL,
  `tanggal_pengiriman` date DEFAULT NULL,
  `id_user` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kargo`
--

INSERT INTO `kargo` (`id_kargo`, `jenis_kargo`, `berat`, `volume`, `asal`, `tujuan`, `tanggal_pengiriman`, `id_user`) VALUES
(1, 'Peralatan Medis', 200.50, 100.25, 'Jakarta', 'Makassar', '2025-01-02', 3),
(2, 'Mebel', 500.00, 300.00, 'Semarang', 'Denpasar', '2025-01-05', 3),
(3, 'Elektronik', 5.50, 0.03, 'Jakarta', 'Bali', '2024-12-29', 5),
(4, 'Pakaian', 10.20, 0.15, 'Surabaya', 'Medan', '2024-12-30', 6),
(5, 'Makanan', 7.80, 0.25, 'Bandung', 'Makassar', '2024-12-29', 9),
(6, 'Barang Pecah Belah', 3.20, 0.05, 'Yogyakarta', 'Semarang', '2024-12-31', 4),
(7, 'Perabotan Rumah Tangga', 15.50, 0.40, 'Medan', 'Palembang', '2024-12-30', 9),
(8, 'Alat Berat', 500.00, 8.00, 'Jakarta', 'Surabaya', '2024-12-31', 10),
(9, 'Kendaraan', 1200.00, 20.00, 'Bandung', 'Bali', '2024-12-29', 10),
(10, 'Obat-obatan', 2.00, 0.01, 'Semarang', 'Jakarta', '2024-12-30', 4),
(11, 'Buku dan Majalah', 3.00, 0.10, 'Makassar', 'Yogyakarta', '2024-12-29', 5),
(12, 'Alat Kesehatan', 8.00, 0.25, 'Surabaya', 'Medan', '2024-12-31', 6);

-- --------------------------------------------------------

--
-- Table structure for table `logistik`
--

CREATE TABLE `logistik` (
  `id_logistik` int(11) NOT NULL,
  `jenis_logistik` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `asal` varchar(255) DEFAULT NULL,
  `tujuan` varchar(255) DEFAULT NULL,
  `tanggal_pengiriman` date DEFAULT NULL,
  `id_user` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logistik`
--

INSERT INTO `logistik` (`id_logistik`, `jenis_logistik`, `jumlah`, `asal`, `tujuan`, `tanggal_pengiriman`, `id_user`) VALUES
(1, 'Paket Elektronik', 100, 'Jakarta', 'Surabaya', '2025-01-01', 3),
(2, 'Dokumen Penting', 50, 'Bandung', 'Medan', '2025-01-03', 3);

-- --------------------------------------------------------

--
-- Table structure for table `penerbangan`
--

CREATE TABLE `penerbangan` (
  `id_penerbangan` int(11) NOT NULL,
  `maskapai` varchar(255) DEFAULT NULL,
  `penerbangan` varchar(255) DEFAULT NULL,
  `tujuan` varchar(255) DEFAULT NULL,
  `jam_berangkat` time DEFAULT NULL,
  `status` enum('On Time','Delayed','Cancelled') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerbangan`
--

INSERT INTO `penerbangan` (`id_penerbangan`, `maskapai`, `penerbangan`, `tujuan`, `jam_berangkat`, `status`) VALUES
(1, 'Garuda Indonesia', 'GA123', 'Surabaya', '08:00:00', 'On Time'),
(2, 'Lion Air', 'JT456', 'Medan', '10:30:00', 'Delayed'),
(3, 'AirAsia', 'QZ789', 'Bali', '14:15:00', 'On Time'),
(4, 'AirAsia', 'AK452', 'Medan', '14:00:00', 'Cancelled'),
(5, 'Citilink', 'QG505', 'Medan', '15:15:00', 'On Time'),
(6, 'Lion Air', 'JT225', 'Medan', '11:45:00', 'On Time'),
(7, 'AirAsia', 'AK434', 'Surabaya', '15:00:00', 'On Time'),
(8, 'Sriwijaya Air', 'SJ338', 'Balikpapan', '12:30:00', 'Delayed'),
(9, 'Garuda Indonesia', 'GA115', 'Semarang', '07:00:00', 'Cancelled'),
(10, 'Lion Air', 'JT212', 'Surabaya', '09:45:00', 'On Time'),
(11, 'AirAsia', 'AK465', 'Yogyakarta', '13:45:00', 'On Time'),
(12, 'Garuda Indonesia', 'GA109', 'Medan', '08:30:00', 'Delayed'),
(13, 'Sriwijaya Air', 'SJ312', 'Balikpapan', '14:00:00', 'Cancelled'),
(14, 'Lion Air', 'JT240', 'Jakarta', '10:30:00', 'Delayed'),
(15, 'Citilink', 'QG550', 'Bandung', '14:45:00', 'Cancelled'),
(16, 'Sriwijaya Air', 'SJ303', 'Surabaya', '10:45:00', 'On Time'),
(17, 'Garuda Indonesia', 'GA120', 'Palembang', '07:30:00', 'Delayed'),
(18, 'AirAsia', 'AK440', 'Yogyakarta', '13:00:00', 'On Time'),
(19, 'Garuda Indonesia', 'GA101', 'Jakarta', '08:00:00', 'On Time'),
(20, 'Citilink', 'QG540', 'Denpasar', '18:00:00', 'On Time'),
(21, 'Lion Air', 'JT230', 'Palembang', '08:15:00', 'On Time'),
(22, 'Sriwijaya Air', 'SJ360', 'Surabaya', '12:00:00', 'Delayed'),
(23, 'Citilink', 'QG570', 'Bandung', '16:00:00', 'Cancelled'),
(24, 'AirAsia', 'AK465', 'Yogyakarta', '13:45:00', 'On Time'),
(25, 'Lion Air', 'JT208', 'Denpasar', '11:00:00', 'On Time'),
(26, 'Garuda Indonesia', 'GA118', 'Surabaya', '09:00:00', 'On Time'),
(27, 'Sriwijaya Air', 'SJ321', 'Yogyakarta', '12:15:00', 'Delayed'),
(28, 'AirAsia', 'AK423', 'Bandung', '13:45:00', 'On Time'),
(29, 'Citilink', 'QG560', 'Makassar', '16:45:00', 'On Time'),
(30, 'Lion Air', 'JT202', 'Bali', '09:30:00', 'Delayed'),
(31, 'Garuda Indonesia', 'GA112', 'Bali', '10:00:00', 'On Time'),
(32, 'Sriwijaya Air', 'SJ350', 'Bali', '11:15:00', 'On Time'),
(33, 'AirAsia', 'AK404', 'Yogyakarta', '12:00:00', 'Cancelled'),
(34, 'Lion Air', 'JT245', 'Semarang', '09:00:00', 'On Time'),
(35, 'Garuda Indonesia', 'GA106', 'Makassar', '07:45:00', 'Delayed');

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `id_penumpang` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `id_penerbangan` int(11) DEFAULT NULL,
  `id_user` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`id_penumpang`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `id_penerbangan`, `id_user`) VALUES
(1, 'Ali', 'L', '1990-05-10', 1, 3),
(2, 'Siti', 'P', '1995-07-15', 2, 3),
(3, 'Budi', 'L', '1988-12-20', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `staf_bandara`
--

CREATE TABLE `staf_bandara` (
  `id_staff` int(11) NOT NULL,
  `id_user` int(10) UNSIGNED DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `posisi` varchar(100) DEFAULT NULL,
  `departemen` varchar(100) DEFAULT NULL,
  `kontak` varchar(100) DEFAULT NULL,
  `jam_kerja` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staf_bandara`
--

INSERT INTO `staf_bandara` (`id_staff`, `id_user`, `nama`, `posisi`, `departemen`, `kontak`, `jam_kerja`) VALUES
(1, 2, 'Dava', 'Supervisor', 'Operasional', '081234567890', '08:00-16:00'),
(2, 2, 'Kholid', 'Teknisi', 'Maintenance', '081234567891', '10:00-18:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `role`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'admin'),
(2, 'staff1', 'password123', 'staff1@gmail.com', 'staff'),
(3, 'user1', 'password123', 'user1@gmail.com', 'customer'),
(4, 'agus', 'password123', 'agus@gmail.com', 'customer'),
(5, 'budi', 'password123', 'budi@gmail.com', 'customer'),
(6, 'citra', 'password123', 'citra@gmail.com', 'customer'),
(7, 'dian', 'password123', 'dian@gmail.com', 'staff'),
(8, 'eka', 'password123', 'eka@gmail.com', 'staff'),
(9, 'fajar', 'password123', 'fajar@gmail.com', 'admin'),
(10, 'gita', 'password123', 'gita@gmail.com', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kargo`
--
ALTER TABLE `kargo`
  ADD PRIMARY KEY (`id_kargo`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `logistik`
--
ALTER TABLE `logistik`
  ADD PRIMARY KEY (`id_logistik`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `penerbangan`
--
ALTER TABLE `penerbangan`
  ADD PRIMARY KEY (`id_penerbangan`);

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id_penumpang`),
  ADD KEY `id_penerbangan` (`id_penerbangan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `staf_bandara`
--
ALTER TABLE `staf_bandara`
  ADD PRIMARY KEY (`id_staff`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kargo`
--
ALTER TABLE `kargo`
  MODIFY `id_kargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `logistik`
--
ALTER TABLE `logistik`
  MODIFY `id_logistik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penerbangan`
--
ALTER TABLE `penerbangan`
  MODIFY `id_penerbangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `penumpang`
--
ALTER TABLE `penumpang`
  MODIFY `id_penumpang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staf_bandara`
--
ALTER TABLE `staf_bandara`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kargo`
--
ALTER TABLE `kargo`
  ADD CONSTRAINT `kargo_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `logistik`
--
ALTER TABLE `logistik`
  ADD CONSTRAINT `logistik_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD CONSTRAINT `penumpang_ibfk_1` FOREIGN KEY (`id_penerbangan`) REFERENCES `penerbangan` (`id_penerbangan`) ON DELETE CASCADE,
  ADD CONSTRAINT `penumpang_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `staf_bandara`
--
ALTER TABLE `staf_bandara`
  ADD CONSTRAINT `staf_bandara_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
