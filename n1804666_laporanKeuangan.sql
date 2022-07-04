-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2022 at 07:20 PM
-- Server version: 10.5.15-MariaDB-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n1804666_laporanKeuangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_level`
--

CREATE TABLE `access_level` (
  `id_al` int(11) NOT NULL,
  `nama_al` varchar(40) NOT NULL,
  `fk_id_perusahaan` int(11) NOT NULL,
  `status_al` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_level`
--

INSERT INTO `access_level` (`id_al`, `nama_al`, `fk_id_perusahaan`, `status_al`) VALUES
(1, 'Admin PT KCI', 1, 1),
(2, 'Admin PT KMP', 2, 1),
(3, 'Admin PT KAMI', 3, 1),
(4, 'Admin CV KCI', 4, 1),
(5, 'Super Admin', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `access_menu`
--

CREATE TABLE `access_menu` (
  `id_access_menu` int(11) NOT NULL,
  `fk_id_category` int(2) NOT NULL,
  `fk_id_menu` int(2) NOT NULL,
  `fk_id_al` int(2) NOT NULL,
  `status_access_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_menu`
--

INSERT INTO `access_menu` (`id_access_menu`, `fk_id_category`, `fk_id_menu`, `fk_id_al`, `status_access_menu`) VALUES
(17, 6, 15, 5, 1),
(18, 6, 17, 5, 1),
(19, 6, 16, 5, 1),
(20, 7, 18, 5, 1),
(21, 7, 19, 5, 1),
(22, 8, 20, 5, 1),
(23, 8, 21, 5, 1),
(24, 9, 22, 5, 1),
(25, 9, 23, 5, 1),
(26, 10, 24, 5, 1),
(27, 10, 25, 5, 1),
(28, 10, 26, 5, 1),
(29, 11, 27, 5, 1),
(30, 12, 28, 5, 1),
(31, 13, 29, 5, 1),
(32, 14, 30, 5, 1),
(33, 7, 18, 1, 1),
(34, 7, 19, 1, 1),
(35, 8, 20, 2, 1),
(36, 8, 21, 2, 1),
(37, 9, 22, 3, 1),
(38, 9, 23, 3, 1),
(39, 10, 24, 4, 1),
(40, 10, 25, 4, 1),
(41, 11, 27, 1, 1),
(42, 12, 28, 2, 1),
(43, 13, 29, 3, 1),
(44, 14, 30, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_transaksi`
--

CREATE TABLE `jenis_transaksi` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(30) NOT NULL,
  `status_jenis` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_transaksi`
--

INSERT INTO `jenis_transaksi` (`id_jenis`, `nama_jenis`, `status_jenis`) VALUES
(1, 'Gaji', 1),
(2, 'Pengeluaran Harian', 1),
(3, 'Perabotan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_menu`
--

CREATE TABLE `kategori_menu` (
  `id_category` int(2) NOT NULL,
  `nama_category` varchar(30) NOT NULL,
  `status_category` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_menu`
--

INSERT INTO `kategori_menu` (`id_category`, `nama_category`, `status_category`) VALUES
(6, 'Konfigurasi', 1),
(7, 'Transaksi PT KCI', 1),
(8, 'Transaksi PT KMP', 1),
(9, 'Transaksi PT KAMI', 1),
(10, 'Transaksi CV KCI', 1),
(11, 'Laporan PT KCI', 1),
(12, 'Laporan PT KMP', 1),
(13, 'Laporan PT KAMI', 1),
(14, 'Laporan CV KCI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL,
  `status_lokasi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(2) NOT NULL,
  `nama_menu` varchar(30) NOT NULL,
  `alamat_menu` varchar(50) NOT NULL,
  `status_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `alamat_menu`, `status_menu`) VALUES
(15, 'Halaman Menu', 'menu.php', 1),
(16, 'Halaman Akses Menu', 'accessMenu.php', 1),
(17, 'Halaman Kategori', 'kategori_menu.php', 1),
(18, 'Transaksi Pemasukan', 'transaksi.php?trx=2', 1),
(19, 'Transaksi Pengeluaran', 'transaksi.php?trx=1', 1),
(20, 'Transaksi Pemasukan KMP', 'transaksiPTKMP.php?trx=2', 1),
(21, 'Transaksi Pengeluaran KMP', 'transaksiPTKMP.php?trx=1', 1),
(22, 'Transaksi Pemasukan KAMI', 'transaksiPTKAMI.php?trx=2', 1),
(23, 'Transaksi Pengeluaran KAMI', 'transaksiPTKAMI.php?trx=1', 1),
(24, 'Transaksi Pemasukan KCI', 'trasaksiCVKCI.php?trx=2', 1),
(25, 'Transaksi Pengeluaran KCI', 'trasaksiCVKCI.php?trx=1', 1),
(26, 'Data Transaksi', 'dataPengeluaran.php', 1),
(27, 'Laporan Pengeluaran', 'laporanPengeluaran.php', 1),
(28, 'Laporan Pengeluaran KMP', 'laporanPengeluaranKMP.php', 1),
(29, 'Laporan Pengeluaran KAMI', 'laporanPengeluaranKAMI.php', 1),
(30, 'Laporan Pengeluaran KCI', 'laporanPengeluaranCVKCI.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `status_perusahaan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama_perusahaan`, `status_perusahaan`) VALUES
(1, 'PT Kencana Indah Inti Sejahtera', 1),
(2, 'PT Kencana Mitra Perkasa', 1),
(3, 'PT Kencana Anugrah Mitra Indah', 1),
(4, 'CV Kencana Indah', 1),
(5, 'ALL PERUSAHAAN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id_saldo` int(11) NOT NULL,
  `fk_id_perusahaan` int(3) NOT NULL,
  `saldo` bigint(20) NOT NULL,
  `status_saldo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id_saldo`, `fk_id_perusahaan`, `saldo`, `status_saldo`) VALUES
(1, 1, 6010123, '1'),
(2, 2, 14700000, '1'),
(4, 3, 0, '1'),
(5, 4, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `stock_barang`
--

CREATE TABLE `stock_barang` (
  `id_stock_barang` int(11) NOT NULL,
  `fk_id_lokasi` int(11) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `stock` int(11) NOT NULL,
  `status_barang` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` char(20) NOT NULL,
  `fk_id_perusahaan` int(11) NOT NULL,
  `fk_id_saldo` int(11) NOT NULL,
  `fk_id_jenis_transaksi` int(11) NOT NULL,
  `nama_transaksi` varchar(30) NOT NULL,
  `nama_proyek` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `pemasukan` bigint(20) DEFAULT NULL,
  `pengeluaran` bigint(20) DEFAULT NULL,
  `saldo_before_transaction` bigint(20) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `keterangan_transaksi` varchar(100) NOT NULL,
  `status_transaksi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `fk_id_perusahaan`, `fk_id_saldo`, `fk_id_jenis_transaksi`, `nama_transaksi`, `nama_proyek`, `qty`, `satuan`, `pemasukan`, `pengeluaran`, `saldo_before_transaction`, `tanggal_transaksi`, `keterangan_transaksi`, `status_transaksi`) VALUES
('TR01062022212548', 2, 2, 2, 'Rokok', '', 100, 'dus', 6000000, NULL, 9200000, '2022-06-01', '', 1),
('TR01062022212600', 2, 2, 1, 'Pinjam Uang', '', 1, 'Lembar', NULL, 500000, 15200000, '2022-06-01', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_bbm`
--

CREATE TABLE `transaksi_bbm` (
  `id_transaksi_bbm` char(20) NOT NULL,
  `fk_id_stock_barang` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `pengeluaran_stock` bigint(20) NOT NULL,
  `pemasukan_stock` bigint(20) NOT NULL,
  `stock_sebelumnya` bigint(20) NOT NULL,
  `status_transaksi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password_user` varchar(100) NOT NULL,
  `fk_id_al` int(11) NOT NULL,
  `status_user` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password_user`, `fk_id_al`, `status_user`) VALUES
(1, 'Andre', '202cb962ac59075b964b07152d234b70', 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_level`
--
ALTER TABLE `access_level`
  ADD PRIMARY KEY (`id_al`);

--
-- Indexes for table `access_menu`
--
ALTER TABLE `access_menu`
  ADD PRIMARY KEY (`id_access_menu`);

--
-- Indexes for table `jenis_transaksi`
--
ALTER TABLE `jenis_transaksi`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `kategori_menu`
--
ALTER TABLE `kategori_menu`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id_saldo`);

--
-- Indexes for table `stock_barang`
--
ALTER TABLE `stock_barang`
  ADD PRIMARY KEY (`id_stock_barang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `transaksi_bbm`
--
ALTER TABLE `transaksi_bbm`
  ADD PRIMARY KEY (`id_transaksi_bbm`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_level`
--
ALTER TABLE `access_level`
  MODIFY `id_al` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `access_menu`
--
ALTER TABLE `access_menu`
  MODIFY `id_access_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `jenis_transaksi`
--
ALTER TABLE `jenis_transaksi`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_menu`
--
ALTER TABLE `kategori_menu`
  MODIFY `id_category` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id_saldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_barang`
--
ALTER TABLE `stock_barang`
  MODIFY `id_stock_barang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
