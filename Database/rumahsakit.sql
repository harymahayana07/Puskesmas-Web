-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2021 at 08:53 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL,
  `nama_dokter` varchar(80) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_telp`) VALUES
('2ad9151d-4661-48ef-b60a-ffb7462298a3', 'Dr. Bambang', 'Penyakit Jantung', 'Pajang barat', '087889334532'),
('6c683453-036e-46cc-b40f-8bc2db92f999', 'Dr. Ni luh putu', 'Penyakit Luar', 'Udayana', '087123121122'),
('b8821c9d-0ef6-48d9-8e85-ecf67fff5497', 'Dr. Putu mega', 'Penyakit Dalam', 'Jl. Pemuda  No.20A Sweta', '08782321123'),
('d80f799b-3944-4587-9a19-c5aac53bc8e8', 'Dr. Haryanto', 'Gizi', 'Jl.Cakarmas No.2 Pagesangan', '087823457213');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` varchar(50) NOT NULL,
  `nama_obat` varchar(200) NOT NULL,
  `ket_obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `ket_obat`) VALUES
('0b99d735-5c3a-11eb-add2-04d4c47885ff', 'Bodrex', 'Obat Sakit Kepala'),
('0b99fc2b-5c3a-11eb-add2-04d4c47885ff', 'Komix Herbal', 'Obat Batuk & Sakit tenggorokan'),
('3f11464b-5bea-11eb-a239-04d4c47885ff', 'Paracetamol', 'Obat Panas & Demam'),
('f11faa05-5c3a-11eb-add2-04d4c47885ff', 'Amoxicillin', 'Obat Antibiotik'),
('f11fcb29-5c3a-11eb-add2-04d4c47885ff', 'Clobetasol', 'Obat Anti Radang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL,
  `nomor_identitas` varchar(30) NOT NULL,
  `nama_pasien` varchar(80) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nomor_identitas`, `nama_pasien`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
('4d5f9d1a-53fb-4d0d-81ac-d13a019ef998', '4542732', 'yanti', 'P', 'btn sweta', '0876341212'),
('4ddf8f61-174a-43b9-995c-f3726ed2eb4a', '56753634', 'Sandiaga', 'L', 'pagesangan', '08761231212'),
('5a5f4b9f-34e0-4004-a1b6-2f6507d423b1', '1201231231', 'Sri', 'P', 'Btn Sweta', '08732423234'),
('631eef98-37b6-4bd5-be3f-0133a3ec42a8', '343523123', 'made', 'L', 'taliwang', '0876762312'),
('6b57687a-4b67-4ec8-8c69-988281fdbc9c', '120123121', 'Ni luh', 'P', 'Btn Sweta', '08712312312'),
('738808be-f886-4e0b-9a38-90f8ea61442a', '1201010000', 'MadeAri', 'L', 'Dasan Cermen', '087851441001'),
('810eda79-3830-4d06-b5f2-e88394e84625', '1901293123', 'haryanto', 'L', 'mataram', '0823472328'),
('85cd1ad5-b12b-4283-b01f-45874dc46152', '432432523', 'astiti', 'P', 'taliwang', '0877638712'),
('c387a2e4-95ea-4471-91fe-115efdc8ed06', '1200102121', 'putu', 'P', 'Btn sweta', '087234123123'),
('d35a558f-8fbe-47af-804e-c73a743cbb51', '4632723172', 'ahmad', 'L', 'mataram', '08761722312');

-- --------------------------------------------------------

--
-- Table structure for table `tb_poliklinik`
--

CREATE TABLE `tb_poliklinik` (
  `id_poli` varchar(50) NOT NULL,
  `nama_poli` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_poliklinik`
--

INSERT INTO `tb_poliklinik` (`id_poli`, `nama_poli`, `gedung`) VALUES
('0c09a2e5-5c6c-11eb-add2-04d4c47885ff', 'Poli Jantung', 'A.lt.1'),
('0c09c3fe-5c6c-11eb-add2-04d4c47885ff', 'Poli Paru-Paru', 'A.lt.2'),
('9a41555e-46ba-4a4a-9272-544ef08de3b5', 'Poli Dalam', 'A.lt.3'),
('d25dbd8b-5c6b-11eb-add2-04d4c47885ff', 'Poli Mata', 'C.lt.2'),
('d25dddee-5c6b-11eb-add2-04d4c47885ff', 'Poli Syaraf', 'F.Lt.2'),
('e4827afa-c4b8-45e4-8ab2-512932f507b5', 'Poli THT', 'D.lt.1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekammedis`
--

CREATE TABLE `tb_rekammedis` (
  `id_rm` varchar(50) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `keluhan` text NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `diagnosa` text NOT NULL,
  `id_poli` varchar(50) NOT NULL,
  `tgl_periksa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rekammedis`
--

INSERT INTO `tb_rekammedis` (`id_rm`, `id_pasien`, `keluhan`, `id_dokter`, `diagnosa`, `id_poli`, `tgl_periksa`) VALUES
('19f14ad8-a708-49da-838d-a05c0638be94', '631eef98-37b6-4bd5-be3f-0133a3ec42a8', 'gatal-gatal dan bercak merah', 'b8821c9d-0ef6-48d9-8e85-ecf67fff5497', 'Alergi', '9a41555e-46ba-4a4a-9272-544ef08de3b5', '2021-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rm_obat`
--

CREATE TABLE `tb_rm_obat` (
  `id` int(8) NOT NULL,
  `id_rm` varchar(50) NOT NULL,
  `id_obat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rm_obat`
--

INSERT INTO `tb_rm_obat` (`id`, `id_rm`, `id_obat`) VALUES
(3, '19f14ad8-a708-49da-838d-a05c0638be94', '3f11464b-5bea-11eb-a239-04d4c47885ff'),
(4, '19f14ad8-a708-49da-838d-a05c0638be94', 'f11faa05-5c3a-11eb-add2-04d4c47885ff'),
(5, '19f14ad8-a708-49da-838d-a05c0638be94', 'f11fcb29-5c3a-11eb-add2-04d4c47885ff');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(80) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
('01248e34-5bcb-11eb-a239-04d4c47885ff', 'Putumega', 'mega', '4228bcdf50c6e34891539ff43a30ba6fed011ca5', '1'),
('6f974d94-5bb7-11eb-a239-04d4c47885ff', 'Ni Luh Putu Sri Astiti', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tb_poliklinik`
--
ALTER TABLE `tb_poliklinik`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD PRIMARY KEY (`id_rm`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_poli` (`id_poli`);

--
-- Indexes for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rm` (`id_rm`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_rekammedis`
--
ALTER TABLE `tb_rekammedis`
  ADD CONSTRAINT `tb_rekammedis_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `tb_dokter` (`id_dokter`),
  ADD CONSTRAINT `tb_rekammedis_ibfk_3` FOREIGN KEY (`id_poli`) REFERENCES `tb_poliklinik` (`id_poli`);

--
-- Constraints for table `tb_rm_obat`
--
ALTER TABLE `tb_rm_obat`
  ADD CONSTRAINT `tb_rm_obat_ibfk_1` FOREIGN KEY (`id_rm`) REFERENCES `tb_rekammedis` (`id_rm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rm_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `tb_obat` (`id_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
