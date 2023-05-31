-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 01:17 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `harga` float NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode`, `judul`, `penulis`, `genre`, `penerbit`, `harga`, `stok`) VALUES
(1, 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 'Fantasi', 'Gramedia Pustaka Utama', 150000, 10),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiksi', 'Gramedia Pustaka Utama', 120000, 5),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Klasik', 'Gramedia Pustaka Utama', 100000, 7),
(4, 'Pride and Prejudice', 'Jane Austen', 'Klasik', 'Gramedia Pustaka Utama', 95000, 3),
(5, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasi', 'Gramedia Pustaka Utama', 135000, 8);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `nama_pelanggan`, `tanggal_pembelian`, `id_buku`, `jumlah`) VALUES
(1, 'John Doe', '2022-01-15', 1, 2),
(2, 'Jane Smith', '2022-02-28', 3, 1),
(3, 'Michael Johnson', '2022-03-10', 2, 3),
(4, 'Sarah Williams', '2022-04-05', 5, 2),
(5, 'David Brown', '2022-05-20', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `daftarbelanja` text NOT NULL,
  `total` float NOT NULL,
  `jumlah` float NOT NULL,
  `kembalian` float NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `kode` (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `kode_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
