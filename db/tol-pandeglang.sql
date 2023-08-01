-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2020 at 04:50 AM
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
-- Database: `tol-pandeglang`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id_invoice` int(11) NOT NULL,
  `tanggal_pesan` date NOT NULL,
  `batas_bayar` date NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id_invoice`, `tanggal_pesan`, `batas_bayar`, `status`) VALUES
(46, '2020-07-27', '2020-07-28', 'pending'),
(47, '2020-07-27', '2020-07-28', 'pending'),
(48, '2020-07-27', '2020-07-28', 'pending'),
(49, '2020-08-02', '2020-08-03', 'pending'),
(50, '2020-08-02', '2020-08-03', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Batik pandeglang '),
(2, 'Jajanan khas pandeglang'),
(3, 'souvenir'),
(4, 'Oleh oleh khas pandeglang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `keterangan` varchar(128) NOT NULL,
  `harga` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `stok` int(100) NOT NULL,
  `gambar` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `keterangan`, `harga`, `id_kategori`, `stok`, `gambar`) VALUES
(7, 'Batik Couple', 'Baju batik couple pria wanita kekinian', '150000', 1, 4, 'batik-6.jpg'),
(9, 'Batik Pria', 'Batik Pria keren banget looh', '100000', 1, 6, 'batik-4.jpg'),
(13, 'Emping melinjo khas banten', 'Emping Melinjo khas banten dari pandeglang', '5000', 4, 97, 'Emping-Melinjo-Khas-Banten.jpg'),
(14, 'Gantungan kunci', 'Gantungan kunci tulisan arab', '2000', 3, 117, 'gantungankayu1-1.jpg'),
(15, 'Gunting kuku', 'Gunting kuku bentuk oval', '3000', 3, 200, 'guntingkuku-opal.jpg'),
(16, 'Cemilan', 'Cemilan khas pandeglang gurih', '5000', 4, 300, 'cemilan-2.jpg'),
(17, 'Kue cucur', 'Kue cucur khas pandeglang banten', '1000', 2, 100, 'Kue-Cucur-Khas-Banten.jpg'),
(18, 'Lepet', 'Lepet ketan khas banten ', '2000', 2, 100, 'Lepet-Khas-Banten.jpg'),
(19, 'Opak', 'Opak singkong khas banten ', '15000', 4, 100, 'Opak-Khas-Banten.jpg'),
(20, 'Rangginang', 'Rangginang gurih khas banten', '5000', 4, 100, 'Rengginang-Khas-Banten.jpg'),
(21, 'Gantungan kunci', 'Gantungan kunci sandal', '1000', 3, 400, 'sandal.jpg'),
(22, 'Sate bandeng', 'sate bandeng nikmat khas banten', '30000', 2, 20, 'sate-bandeng.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `telepon` varchar(128) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `provinsi` varchar(128) NOT NULL,
  `distrik` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `kodepos` int(11) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id_pesanan`, `id_invoice`, `id_user`, `id_transaksi`, `nama_penerima`, `telepon`, `alamat`, `provinsi`, `distrik`, `type`, `kodepos`, `catatan`) VALUES
(46, 46, 1, 30, 'Dodi irawan', '083812109887', 'jl. xxx, xxx', 'Banten', 'Serang', 'Kota', 42111, 'Ukuran Baju L warna biru'),
(47, 47, 1, 31, 'Dodi jancuk', '087812348907', 'jl. xxx, xxx', 'DKI Jakarta', 'Jakarta Barat', 'Kota', 11220, 'Jangan rusak, kalau rusak tak gabukin'),
(48, 48, 1, 32, 'Dodi wkwk', '089087651234', 'jl. xxx, xxx', 'Bali', 'Buleleng', 'Kabupaten', 81111, 'Ukuran Baju L warna biru'),
(49, 49, 1, 33, 'siti nurfarizah', '08980213123', 'jl. xxx, xxx', 'Kalimantan Selatan', 'Tanah Laut', 'Kabupaten', 70811, 'asdasd'),
(50, 50, 1, 34, 'Ahmad', '123', 'jl. xxx, xxx', 'Kalimantan Timur', 'Berau', 'Kabupaten', 77311, 'Ukuran Baju L warna biru');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan_detail`
--

CREATE TABLE `tb_pesanan_detail` (
  `id_pesanan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `kurir` varchar(12) NOT NULL,
  `paket` varchar(12) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `estimasi_pengiriman` varchar(20) NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesanan_detail`
--

INSERT INTO `tb_pesanan_detail` (`id_pesanan`, `id_barang`, `id_invoice`, `qty`, `price`, `berat`, `kurir`, `paket`, `ongkir`, `estimasi_pengiriman`, `total_bayar`) VALUES
(46, 7, 46, 1, 150000, 1200, 'jne', 'YES', 13000, '1-1', 263000),
(46, 9, 46, 1, 100000, 1200, 'jne', 'YES', 13000, '1-1', 263000),
(47, 14, 47, 1, 2000, 1200, 'pos', 'Express Next', 19000, '1 HARI', 21000),
(48, 10, 48, 1, 300000, 1200, 'tiki', 'REG', 38000, '3', 338000),
(49, 14, 49, 2, 2000, 1200, 'pos', 'Paket Kilat ', 51500, '6-7 HARI', 70500),
(49, 13, 49, 3, 5000, 1200, 'pos', 'Paket Kilat ', 51500, '6-7 HARI', 70500),
(50, 10, 50, 1, 300000, 1200, 'tiki', 'REG', 79000, '3', 379000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `status_code` int(11) NOT NULL,
  `status_message` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `order_id` int(255) NOT NULL,
  `gross_amount` int(255) NOT NULL,
  `payment_type` varchar(155) NOT NULL,
  `payment_code` int(255) NOT NULL,
  `transaction_time` varchar(255) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `fraud_status` varchar(100) NOT NULL,
  `bill_key` varchar(255) NOT NULL,
  `biller_code` varchar(255) NOT NULL,
  `pdf_url` text NOT NULL,
  `finish_redirect_url` text NOT NULL,
  `bank` varchar(100) NOT NULL,
  `va_number` varchar(100) NOT NULL,
  `bca_va_number` varchar(100) NOT NULL,
  `permata_va_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `status_code`, `status_message`, `transaction_id`, `order_id`, `gross_amount`, `payment_type`, `payment_code`, `transaction_time`, `transaction_status`, `fraud_status`, `bill_key`, `biller_code`, `pdf_url`, `finish_redirect_url`, `bank`, `va_number`, `bca_va_number`, `permata_va_number`) VALUES
(30, 200, 'Success, transaction is found', '19e216a2-c102-4b5f-8972-ec603a63a12d', 343404949, 263000, 'bank_transfer', 0, '2020-07-27 14:46:53', 'Barang Telah di Terima', 'accept', '-', '-', 'https://app.sandbox.midtrans.com/snap/v1/transactions/f063bc6b-8c73-4538-b47d-6c3f64fae85e/pdf', 'http://example.com?order_id=343404949&status_code=201&transaction_status=pending', 'bca', '15731857396', '15731857396', '-'),
(31, 407, 'Success, transaction is found', '0d14e526-93bf-4b32-bbb3-d659895d882f', 446294329, 21000, 'echannel', 0, '2020-07-27 14:50:53', 'expire', 'accept', '490229432020', '70012', 'https://app.sandbox.midtrans.com/snap/v1/transactions/1d425faa-baea-45c4-a333-51858d15ad15/pdf', 'http://example.com?order_id=446294329&status_code=201&transaction_status=pending', '-', '-', '-', '-'),
(32, 200, 'Success, transaction is found', '4d4dfd72-eeaa-42a4-bfe0-f2cdead7b760', 1452680724, 338000, 'bank_transfer', 0, '2020-07-27 21:04:54', 'settlement', 'accept', '-', '-', 'https://app.sandbox.midtrans.com/snap/v1/transactions/125a07c7-326f-4655-96fb-b9557f039c97/pdf', 'http://example.com?order_id=1452680724&status_code=201&transaction_status=pending', 'bca', '15731147430', '15731147430', '-'),
(33, 200, 'Success, transaction is found', '4b953d0a-55e3-4c30-bc0f-0d7fe452bda0', 1991232459, 70500, 'bank_transfer', 0, '2020-08-02 09:28:57', 'settlement', 'accept', '-', '-', 'https://app.sandbox.midtrans.com/snap/v1/transactions/70c00a55-067e-43e9-8a26-3082e0cf0a3e/pdf', 'http://example.com?order_id=1991232459&status_code=201&transaction_status=pending', 'bca', '15731626635', '15731626635', '-'),
(34, 202, 'Success, transaction is found', 'f0a82985-bcf2-4e2e-95db-c933df9be09b', 1894134197, 379000, 'bank_transfer', 0, '2020-08-02 09:43:13', 'deny', 'accept', '-', '-', 'https://app.sandbox.midtrans.com/snap/v1/transactions/abf581d6-b879-432f-b818-1cc5e30dda23/pdf', 'http://example.com?order_id=1894134197&status_code=201&transaction_status=pending', '-', '-', '-', '157001866686796');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `gambar`, `password`, `role_id`) VALUES
(1, 'Dodi', 'dodiwkwk@gmail.com', 'canonical_aubergine_hex.png', '$2y$10$Ir9nSql4XXLBDFJ2S8yUtuT2nx1TokAqzHklO1Z94YS1diEzZ9JWy', 1),
(4, 'Ahmad daruin', 'ahmadwkwk@gmail.com', 'default1.jpg', '$2y$10$PZ7HtKN52IjMh1Rz0GOPc.9uTut3nU20UOBA/FJSQcmWf2KgI04Pm', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id_invoice`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_invoice` (`id_invoice`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_transaksi_2` (`id_transaksi`);

--
-- Indexes for table `tb_pesanan_detail`
--
ALTER TABLE `tb_pesanan_detail`
  ADD KEY `id_pesanan` (`id_pesanan`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_invoice` (`id_invoice`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id_invoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
