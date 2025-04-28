-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 06:15 PM
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
-- Database: `klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `idd` varchar(6) NOT NULL,
  `namad` varchar(25) NOT NULL,
  `jkd` varchar(20) NOT NULL,
  `notelpd` varchar(20) NOT NULL,
  `alamatd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`idd`, `namad`, `jkd`, `notelpd`, `alamatd`) VALUES
('D001', 'Ridwab', 'Laki-laki', '08950123512', 'Pekayon'),
('D0012', 'Ridwan', 'Laki-laki', '08950123512ss', 'Pekayon');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `kdo` varchar(10) NOT NULL,
  `nmo` varchar(30) NOT NULL,
  `hgo` varchar(25) NOT NULL,
  `pbo` varchar(30) NOT NULL,
  `sto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`kdo`, `nmo`, `hgo`, `pbo`, `sto`) VALUES
('O001', 'Bodrek', '2000', 'Oskadon', 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `idp` varchar(30) NOT NULL,
  `namap` varchar(100) NOT NULL,
  `jkp` varchar(20) NOT NULL,
  `almatp` varchar(200) NOT NULL,
  `goldarp` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`idp`, `namap`, `jkp`, `almatp`, `goldarp`) VALUES
('A001', 'Kodok', 'Laki-laki', 'kambing', 'A'),
('A002', 'Kiki', 'Laki-laki', 'Ps rebo', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `perawat`
--

CREATE TABLE `perawat` (
  `idpe` varchar(6) NOT NULL,
  `nmpe` varchar(25) NOT NULL,
  `jkpe` varchar(25) NOT NULL,
  `notelppe` varchar(20) NOT NULL,
  `alamatpe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perawat`
--

INSERT INTO `perawat` (`idpe`, `nmpe`, `jkpe`, `notelppe`, `alamatpe`) VALUES
('P001', 'Rojak', 'Laki-laki', '08912415123', 'Lamer Cibubur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
