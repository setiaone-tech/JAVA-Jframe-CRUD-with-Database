-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 01:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_vaksinasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `tgl_vaksinasi` date NOT NULL,
  `NIK` varchar(30) NOT NULL,
  `id_vaksin` int(11) NOT NULL,
  `id_pos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `tgl_vaksinasi`, `NIK`, `id_vaksin`, `id_pos`) VALUES
(1, '2021-06-06', '3371155000303', 1, 1),
(2, '2021-06-12', '3371155000304', 2, 2),
(5, '2021-06-21', '3371155000303', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_vaksin`
--

CREATE TABLE `jenis_vaksin` (
  `id_vaksin` int(11) NOT NULL,
  `nama_vaksin` varchar(255) NOT NULL,
  `tgl_expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_vaksin`
--

INSERT INTO `jenis_vaksin` (`id_vaksin`, `nama_vaksin`, `tgl_expired`) VALUES
(1, 'COV_J5', '2021-06-25'),
(2, 'COV_J6', '2021-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `kartu_vaksin`
--

CREATE TABLE `kartu_vaksin` (
  `no_kartu` int(11) NOT NULL,
  `NIK` varchar(30) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` int(1) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `dusun` varchar(255) NOT NULL,
  `jenis_vaksin` varchar(10) NOT NULL,
  `tgl_vaksin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kartu_vaksin`
--

INSERT INTO `kartu_vaksin` (`no_kartu`, `NIK`, `nama`, `jenis_kelamin`, `kelurahan`, `dusun`, `jenis_vaksin`, `tgl_vaksin`) VALUES
(1332626037, '3371155000303', 'Wahidin Satu', 0, 'Adohtenan', 'Tenanemas', 'COV_J6', '2021-06-09'),
(1869831252, '3371155000304', 'Wahyuni', 1, 'Jobojobo', 'Jerodeso', 'COV_J5', '2021-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `penerima`
--

CREATE TABLE `penerima` (
  `NIK` varchar(30) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_pos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerima`
--

INSERT INTO `penerima` (`NIK`, `nama`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `id_pos`) VALUES
('3371155000303', 'Wahidin Satu', '1980-03-13', 0, 'Jalan Walurejo, Rt1, Rw5', 1),
('3371155000304', 'Wahyuni', '1985-06-10', 1, 'Jalan Wajuni, Rt5, Rw1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pos_vaksinasi`
--

CREATE TABLE `pos_vaksinasi` (
  `id_pos` int(11) NOT NULL,
  `nama_pos` varchar(255) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `dusun` varchar(255) NOT NULL,
  `penanggung_jawab` varchar(255) NOT NULL,
  `no_telp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos_vaksinasi`
--

INSERT INTO `pos_vaksinasi` (`id_pos`, `nama_pos`, `kelurahan`, `dusun`, `penanggung_jawab`, `no_telp`) VALUES
(1, 'Pos Vaksin Jobojero', 'Jobojero', 'Jerodeso', 'Waluyo', '085512334432'),
(2, 'Pos Vaksin Adohtenan', 'Adohtenan', 'Tenanemas', 'Jumadi', '086641235522');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `user` varchar(255) NOT NULL,
  `pasword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`user`, `pasword`) VALUES
('wahid123', '1234'),
('wahyu123', '1224');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `jenis_vaksin`
--
ALTER TABLE `jenis_vaksin`
  ADD PRIMARY KEY (`id_vaksin`);

--
-- Indexes for table `kartu_vaksin`
--
ALTER TABLE `kartu_vaksin`
  ADD PRIMARY KEY (`no_kartu`);

--
-- Indexes for table `penerima`
--
ALTER TABLE `penerima`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `pos_vaksinasi`
--
ALTER TABLE `pos_vaksinasi`
  ADD PRIMARY KEY (`id_pos`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jenis_vaksin`
--
ALTER TABLE `jenis_vaksin`
  MODIFY `id_vaksin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kartu_vaksin`
--
ALTER TABLE `kartu_vaksin`
  MODIFY `no_kartu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1869831254;

--
-- AUTO_INCREMENT for table `pos_vaksinasi`
--
ALTER TABLE `pos_vaksinasi`
  MODIFY `id_pos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
