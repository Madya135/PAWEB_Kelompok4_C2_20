-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 05:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ounime`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_admin`
--

CREATE TABLE `data_admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nim` varchar(32) NOT NULL,
  `usern` varchar(255) NOT NULL,
  `passw` varchar(255) NOT NULL,
  `psswori` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`id`, `nama`, `email`, `nim`, `usern`, `passw`, `psswori`, `gambar`) VALUES
(1, 'admin', '********@gmail.com', '**********', 'admin@', 'f8450a97cc7e38e6d109425c87b41634', 'admin@', 'admin.jpg'),
(2, 'Arsy Madya Budianto', 'arsymadyab@gmail.com', '2009106135', 'madya135', '4499a1ac531c66669fb1e3df28b30521', 'madya135', 'madya135.jpg'),
(3, 'Fanny Dita Ayunda Putri', 'fanny@gmail.com', '2009106139', 'fanny139', '2fca83c61c9a2b5177bd339eb7460386', 'fanny139', 'fanny139.jpg'),
(4, 'Milania Zahroh', 'mila@gmail.com', '2009106140', 'mila140', '70951369de37f8303a6998a3223c7cf4', 'mila140', 'mila140.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_anime`
--

CREATE TABLE `data_anime` (
  `id` int(11) NOT NULL,
  `judul_anime` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `hari` varchar(15) NOT NULL,
  `status` varchar(31) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_anime`
--

INSERT INTO `data_anime` (`id`, `judul_anime`, `rank`, `hari`, `status`, `gambar`) VALUES
(1, 'Arknights Animation Prelude to Dawn', '7.92', 'Sabtu', '4 eps / 12 eps', 'Arknights Animation Prelude to Dawn.jpg'),
(5, 'Yuusha Party wo Tsuihou', '7.03', 'Minggu', '8 eps / 13 eps', 'Yuusha Party wo Tsuihou.jpg'),
(6, 'Kage no Jitsuryokusha ni Naritakute!', '7.79', 'Rabu', '7 eps / 20 eps', 'Kage no Jitsuryokusha ni Naritakute!.jpg'),
(7, 'Mob Psycho 100 III', '8.67', 'Kamis', '7 eps / 12 eps', 'Mob Psycho 100 III.jpg'),
(8, 'Chainsaw Man', '8.88', 'Rabu', '6 eps / 12 eps', 'Chainsaw Man.jpg'),
(9, 'Bocchi the Rock!', '8.54', 'Minggu', '7 eps / 12 eps', 'Bocchi the Rock!.jpg'),
(10, 'Mairimashita! Iruma-kun 3rd Season', '8.18', 'Sabtu', '7 eps / 21 eps', 'Mairimashita! Iruma-kun 3rd Season.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_anime_movie`
--

CREATE TABLE `data_anime_movie` (
  `id` int(11) NOT NULL,
  `judul_movie` varchar(255) NOT NULL,
  `rank_movie` varchar(255) NOT NULL,
  `tanggal_rilis` varchar(255) NOT NULL,
  `durasi_movie` varchar(255) NOT NULL,
  `gambar_movie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_anime_movie`
--

INSERT INTO `data_anime_movie` (`id`, `judul_movie`, `rank_movie`, `tanggal_rilis`, `durasi_movie`, `gambar_movie`) VALUES
(1, 'Sword Art Online Progressive Movie - Kuraki Yuuyami no Scherzo', '7.59', '10-22-2022', '1 hr. 40 min.', 'Sword Art Online Progressive Movie - Kuraki Yuuyami no Scherzo.jpg'),
(3, 'Suzume no Tojimari', '7.32', '2022-11-11', '2 hr. 1 min.', 'Suzume no Tojimari.jpg'),
(5, 'Boku ga Aishita Subete no Kimi e', 'N/A', '2022-10-07', '1 hr. 42 min.', 'Boku ga Aishita Subete no Kimi e.jpg'),
(6, 'Kimi wo Aishita Hitori no Boku e', 'N/A', '2022-10-07', '1 hr. 38 min.', 'Kimi wo Aishita Hitori no Boku e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usern` varchar(255) NOT NULL,
  `passw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id`, `nama`, `email`, `usern`, `passw`) VALUES
(1, 'akun user 1', 'akunuser@gmail.com', 'user1', '24c9e15e52afc47c225b757e7bee1f9d'),
(2, 'akun user 2', 'akunuser@gmail.com', 'user2', '7e58d63b60197ceb55a1c487989a3720');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_anime`
--
ALTER TABLE `data_anime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_anime_movie`
--
ALTER TABLE `data_anime_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_anime`
--
ALTER TABLE `data_anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `data_anime_movie`
--
ALTER TABLE `data_anime_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
