-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 04:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `5o5cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id_film` int(100) NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id_film`, `nama_film`, `harga`) VALUES
(1, 'Avenger', '40000'),
(2, 'Oasis : Knebworth 1996', '40000'),
(3, 'Fifty Shades of Grey', '40000'),
(4, '500 Days of Summer', '40000'),
(5, '365 Days', '40000');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `film` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `tik_dewasa` int(11) NOT NULL,
  `total_bayar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `film`, `tanggal`, `waktu`, `tik_dewasa`, `total_bayar`) VALUES
(1, 'Avenger', 'Senin, 23 Januari 2023', '19.00', 1, '40000'),
(2, 'Fifty Shades of Grey', 'Senin, 23 Januari 2023', '19.00', 7, 'Rp 285600'),
(3, 'Oasis : Knebworth 1996', 'Senin, 23 Januari 2023', '21.00', 1, 'Rp 40800'),
(13, 'Avenger', 'Senin, 23 Januari 2023', '11.00', 2, 'Rp 81600'),
(14, 'Avenger', 'Jumat, 27 Januari 2023', '11.00', 4, 'Rp 163200'),
(15, 'Avenger', 'Senin, 23 Januari 2023', '11.00', 1, 'Rp 40800'),
(16, 'Avenger', 'Senin, 23 Januari 2023', '11.00', 3, 'Rp 122400'),
(17, 'Avenger', 'Senin, 23 Januari 2023', '11.00', 2, 'Rp 81600'),
(18, 'Avenger', 'Senin, 23 Januari 2023', '11.00', 2, 'Rp 81600'),
(19, 'Avenger', 'Senin, 23 Januari 2023', '11.00', 2, 'Rp 81600'),
(20, 'Avenger', 'Senin, 23 Januari 2023', '11.00', 2, 'Rp 81600');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`) VALUES
('rajendranandana', '12345', 'Solo'),
('user', '123', 'user@gmail.com'),
('username', '123', 'username'),
('udinz', '12345', 'mana'),
('alifino', '123', 'fino@gmail.com'),
('ariyo', '123', 'Purwokerto'),
('asu', '123', 'solo@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11214;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
