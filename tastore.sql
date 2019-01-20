-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.30-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for tastore
DROP DATABASE IF EXISTS `tastore`;
CREATE DATABASE IF NOT EXISTS `tastore` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tastore`;

-- Dumping structure for table tastore.admins
DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) DEFAULT NULL,
  `password` text,
  `nama` varchar(100) DEFAULT NULL,
  `telp` varchar(25) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.admins: ~6 rows (approximately)
DELETE FROM `admins`;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `username`, `password`, `nama`, `telp`, `email`, `level`) VALUES
	(10, 'devasatrio', '$2y$10$7d6KjJtH/GfK.45S1R9JAefDZgcCF3CW0DiW68a4FoTjiyGM/yUBS', 'deva satrio damara', '023934820948', 'satriosuklun@gmail.com', 'programer'),
	(11, 'diansetiawan', '$2y$10$CpKmLECL3v8nVnL37Tb20ugH8QMjugXapUyuTpEhuXxziVvqddiWm', 'dian ade setiawan', '085623497800', 'dianade@gmail.com', 'programer'),
	(12, 'adminsatu', '$2y$10$./4I24ToWf90yexH24nNr.C.hUtaTewshvVENi9d8bvHYxxNY/rsq', 'admin ke satu', '08529487289333', 'admin1@gmail.com', 'admin'),
	(13, 'abiihsan', '$2y$10$HtZx6PUklxwaaFntiHqV5.4BZiXNEXdF1eA/J.ce701M5Thi7RLki', 'abi ihsan fadli', '2093482903480', 'abi@gmail.com', 'programer'),
	(14, 'taufiqperdana', '$2y$10$734GwOfWOeNB6gdtZqR7ZutUB8FzjPaupBypdRsFjypj3RFnQMKFa', 'M. taufiq perdana', '023984290380', 'taufiq@gmail.com', 'programer'),
	(15, 'admindua', '$2y$10$0/s.qgxDCDscTqNc42wdseaI.CaHYuv4z2gqYkG7xMLRxPTO.KVt6', 'admin ke dua', '20348239048902', 'admin@gmail.com', 'admin');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Dumping structure for table tastore.detail_cancel
DROP TABLE IF EXISTS `detail_cancel`;
CREATE TABLE IF NOT EXISTS `detail_cancel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idwarna` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `kode` text,
  `tgl` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `barang` varchar(100) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.detail_cancel: ~0 rows (approximately)
DELETE FROM `detail_cancel`;
/*!40000 ALTER TABLE `detail_cancel` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_cancel` ENABLE KEYS */;

-- Dumping structure for table tastore.gambar
DROP TABLE IF EXISTS `gambar`;
CREATE TABLE IF NOT EXISTS `gambar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(30) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.gambar: ~2 rows (approximately)
DELETE FROM `gambar`;
/*!40000 ALTER TABLE `gambar` DISABLE KEYS */;
INSERT INTO `gambar` (`id`, `kode_barang`, `nama`) VALUES
	(17, 'BRG00001', '1547943974-kaos1.jpeg'),
	(18, 'BRG00001', '1547943974-kaos2.jpg'),
	(19, 'BRG00002', '1547946228-kaos3.jpg'),
	(20, 'BRG00002', '1547946228-kaos4.jpg'),
	(21, 'BRG00002', '1547946228-kaos5.jpg'),
	(22, 'BRG00003', '1547947255-jaket1.jpg'),
	(23, 'BRG00003', '1547947255-jaket2.jpg'),
	(25, 'BRG00004', '1547947628-kemeja1.jpg'),
	(26, 'BRG00004', '1547947628-kemeja2.jpg'),
	(27, 'BRG00004', '1547947628-kemeja3.jpg'),
	(29, 'BRG00005', '1547947962-kemeja5.jpg'),
	(30, 'BRG00005', '1547947962-kemeja6.jpg');
/*!40000 ALTER TABLE `gambar` ENABLE KEYS */;

-- Dumping structure for table tastore.keranjang_cancel
DROP TABLE IF EXISTS `keranjang_cancel`;
CREATE TABLE IF NOT EXISTS `keranjang_cancel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` date DEFAULT NULL,
  `idbarang` int(11) NOT NULL DEFAULT '0',
  `jumlah` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.keranjang_cancel: ~2 rows (approximately)
DELETE FROM `keranjang_cancel`;
/*!40000 ALTER TABLE `keranjang_cancel` DISABLE KEYS */;
INSERT INTO `keranjang_cancel` (`id`, `tgl`, `idbarang`, `jumlah`) VALUES
	(1, '2019-01-18', 7, 9),
	(2, '2019-01-18', 7, 5);
/*!40000 ALTER TABLE `keranjang_cancel` ENABLE KEYS */;

-- Dumping structure for table tastore.log_cancel
DROP TABLE IF EXISTS `log_cancel`;
CREATE TABLE IF NOT EXISTS `log_cancel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faktur` varchar(300) DEFAULT NULL,
  `total_akhir` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `bulan` int(5) DEFAULT NULL,
  `status` enum('dicancel','ditolak') DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.log_cancel: ~1 rows (approximately)
DELETE FROM `log_cancel`;
/*!40000 ALTER TABLE `log_cancel` DISABLE KEYS */;
INSERT INTO `log_cancel` (`id`, `faktur`, `total_akhir`, `tgl`, `bulan`, `status`, `id_user`, `id_admin`, `keterangan`) VALUES
	(1, 'Cancel00001', 75000, '2019-01-18', 1, 'dicancel', 5, NULL, NULL);
/*!40000 ALTER TABLE `log_cancel` ENABLE KEYS */;

-- Dumping structure for table tastore.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tastore.migrations: ~0 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table tastore.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `idsettings` int(11) NOT NULL AUTO_INCREMENT,
  `webName` varchar(100) DEFAULT NULL,
  `kontak1` varchar(45) DEFAULT NULL,
  `kontak2` varchar(45) DEFAULT NULL,
  `kontak3` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ico` varchar(45) DEFAULT NULL,
  `meta` text,
  `logo` varchar(50) DEFAULT NULL,
  `keterangan` text,
  `alamat` text,
  `nama_toko` int(11) DEFAULT NULL,
  `max_tgl` int(5) DEFAULT NULL,
  `peraturan` text,
  PRIMARY KEY (`idsettings`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.settings: ~1 rows (approximately)
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`idsettings`, `webName`, `kontak1`, `kontak2`, `kontak3`, `email`, `ico`, `meta`, `logo`, `keterangan`, `alamat`, `nama_toko`, `max_tgl`, `peraturan`) VALUES
	(1, 'Store Tulungagung', '085604556777', '089456817354', '085601473652', 'satriosuklun@gmail.com', '1547722245-dvinafavicon.png', 'toko pakaian murah meriah', '1543717647-logo-dvina.png', 'dvina adalah toko hijab grosir yang telah terbukti memiliki harga dan kwalitas terbaik se karisidenan kediri', 'magersari, gurah kediri, jln pga no 1', NULL, 2, '<p>1. pastikan telah menjadi member store tulungagung </p><p>2. jangan lupa bayar setelah beli produk</p><p>3. setiap barang yang telah di masukan keranjang akan hilang secara otomatis apabila tidak di beli dalam jangka waktu 3 hari</p><p>4. Happy Shopping gengs</p>');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table tastore.sliders
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.sliders: ~3 rows (approximately)
DELETE FROM `sliders`;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` (`id`, `judul`, `foto`) VALUES
	(4, 'slider 1', '1547832558-tabanner1.gif'),
	(5, 'slider 2', '1547832677-tabanner2.jpg'),
	(6, 'slider 3', '1547832697-tabanner3.jpg');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_bank
DROP TABLE IF EXISTS `tb_bank`;
CREATE TABLE IF NOT EXISTS `tb_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(40) DEFAULT NULL,
  `rekening` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_bank: ~4 rows (approximately)
DELETE FROM `tb_bank`;
/*!40000 ALTER TABLE `tb_bank` DISABLE KEYS */;
INSERT INTO `tb_bank` (`id`, `nama_bank`, `rekening`) VALUES
	(1, 'bayar ditoko\r\n', '-'),
	(2, 'mandiri Syariah', '09737897890'),
	(3, 'BRI', '902890890'),
	(4, 'bank jatim', '09890890890');
/*!40000 ALTER TABLE `tb_bank` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_barangs
DROP TABLE IF EXISTS `tb_barangs`;
CREATE TABLE IF NOT EXISTS `tb_barangs` (
  `idbarang` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(100) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `warna` varchar(45) DEFAULT NULL,
  `barang_jenis` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`idbarang`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_barangs: ~2 rows (approximately)
DELETE FROM `tb_barangs`;
/*!40000 ALTER TABLE `tb_barangs` DISABLE KEYS */;
INSERT INTO `tb_barangs` (`idbarang`, `kode`, `stok`, `warna`, `barang_jenis`) VALUES
	(14, 'BRG00001', 10, 'M', 'kaos hitam polos M'),
	(15, 'BRG00001', 15, 'XL', 'kaos hitam polos XL'),
	(16, 'BRG00002', 10, 'M', 'kaos putih polos M'),
	(17, 'BRG00002', 15, 'XL', 'kaos putih polos XL'),
	(18, 'BRG00003', 20, 'M', 'jaket flava pink M'),
	(19, 'BRG00003', 15, 'XL', 'jaket flava pink XL'),
	(20, 'BRG00004', 20, 'M', 'kemeja putih M'),
	(21, 'BRG00004', 20, 'S', 'kemeja putih S'),
	(22, 'BRG00005', 20, 'XL', 'kemeja cewek hitam XL'),
	(23, 'BRG00005', 20, 'M', 'kemeja cewek hitam M');
/*!40000 ALTER TABLE `tb_barangs` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_details
DROP TABLE IF EXISTS `tb_details`;
CREATE TABLE IF NOT EXISTS `tb_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idwarna` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `faktur` varchar(100) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `tgl_kadaluarsa` date DEFAULT NULL,
  `kode_barang` varchar(100) DEFAULT NULL,
  `barang` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_a` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `metode` enum('langsung','pesan') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_details: ~3 rows (approximately)
DELETE FROM `tb_details`;
/*!40000 ALTER TABLE `tb_details` DISABLE KEYS */;
INSERT INTO `tb_details` (`id`, `idwarna`, `iduser`, `faktur`, `tgl`, `tgl_kadaluarsa`, `kode_barang`, `barang`, `harga`, `jumlah`, `total_a`, `diskon`, `total`, `admin`, `metode`) VALUES
	(1, 8, 5, 'DVINA00001', '2019-01-18', '2019-01-20', 'BRG00003', 'instan minipad moonflower', 35000, 2, 70000, 0, 70000, NULL, 'pesan'),
	(2, 2, 5, 'DVINA00001', '2019-01-18', '2019-01-20', 'BRG00001', 'bella square', 23000, 2, 46000, 10, 41400, NULL, 'pesan'),
	(4, 5, 5, 'DVINA00001', '2019-01-18', '2019-01-20', 'BRG00002', 'Syar\'I khimar hilwa', 40000, 1, 40000, 0, 40000, NULL, 'pesan');
/*!40000 ALTER TABLE `tb_details` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_kategoris
DROP TABLE IF EXISTS `tb_kategoris`;
CREATE TABLE IF NOT EXISTS `tb_kategoris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_kategoris: ~3 rows (approximately)
DELETE FROM `tb_kategoris`;
/*!40000 ALTER TABLE `tb_kategoris` DISABLE KEYS */;
INSERT INTO `tb_kategoris` (`id`, `kategori`, `gambar`) VALUES
	(1, 'Kaos', '1547686700-v1.jpg'),
	(2, 'kemeja', '1547686744-heyy.jpg'),
	(3, 'jaket', '1547686901-hah.jpeg');
/*!40000 ALTER TABLE `tb_kategoris` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_kodes
DROP TABLE IF EXISTS `tb_kodes`;
CREATE TABLE IF NOT EXISTS `tb_kodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(11) DEFAULT NULL,
  `kode_barang` varchar(100) DEFAULT NULL,
  `barang` varchar(150) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_barang` int(11) DEFAULT NULL,
  `deskripsi` mediumtext,
  `diskon` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_kodes: ~1 rows (approximately)
DELETE FROM `tb_kodes`;
/*!40000 ALTER TABLE `tb_kodes` DISABLE KEYS */;
INSERT INTO `tb_kodes` (`id`, `id_kategori`, `kode_barang`, `barang`, `harga_beli`, `harga_barang`, `deskripsi`, `diskon`) VALUES
	(6, 1, 'BRG00001', 'kaos hitam polos', 15000, 20000, '<h2>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</h2><p> <strong>Lorem Ipsum has been the industry\'s</strong> standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 10),
	(7, 1, 'BRG00002', 'kaos putih polos', 25000, 30000, '<h1>Lorem Ipsum </h1><p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus <strong>PageMaker including versions of Lorem Ipsum</strong>.</p>', 0),
	(8, 3, 'BRG00003', 'jaket flava pink', 50000, 60000, '<p><strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry</strong></p><p> Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 0),
	(9, 2, 'BRG00004', 'kemeja putih', 23000, 25000, '<h2>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</h2><p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 0),
	(10, 2, 'BRG00005', 'kemeja cewek hitam', 35000, 40000, '<h1>Lorem Ipsum</h1><p> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 5);
/*!40000 ALTER TABLE `tb_kodes` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_stokawals
DROP TABLE IF EXISTS `tb_stokawals`;
CREATE TABLE IF NOT EXISTS `tb_stokawals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idbarang` int(11) DEFAULT NULL,
  `idwarna` int(11) DEFAULT NULL,
  `kode_barang` varchar(100) DEFAULT NULL,
  `barang` varchar(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `tgl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_stokawals: ~0 rows (approximately)
DELETE FROM `tb_stokawals`;
/*!40000 ALTER TABLE `tb_stokawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_stokawals` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_tambahstoks
DROP TABLE IF EXISTS `tb_tambahstoks`;
CREATE TABLE IF NOT EXISTS `tb_tambahstoks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idwarna` int(11) DEFAULT NULL,
  `idadmin` int(11) DEFAULT NULL,
  `kode_barang` varchar(150) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `aksi` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_tambahstoks: ~18 rows (approximately)
DELETE FROM `tb_tambahstoks`;
/*!40000 ALTER TABLE `tb_tambahstoks` DISABLE KEYS */;
INSERT INTO `tb_tambahstoks` (`id`, `idwarna`, `idadmin`, `kode_barang`, `jumlah`, `total`, `tgl`, `keterangan`, `aksi`) VALUES
	(1, 1, 10, 'BRG00001', 10, 200000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(2, 2, 10, 'BRG00001', 15, 300000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(3, 3, 10, 'BRG00001', 20, 400000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(4, 4, 10, 'BRG00002', 10, 380000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(5, 5, 10, 'BRG00002', 20, 760000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(6, 6, 10, 'BRG00003', 30, 960000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(7, 7, 10, 'BRG00003', 10, 320000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(8, 8, 10, 'BRG00003', 20, 640000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(9, 9, 10, 'BRG00004', 10, 220000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(10, 10, 10, 'BRG00004', 20, 440000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(11, 11, 10, 'BRG00004', 10, 220000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(12, 12, 10, 'BRG00005', 10, 200000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(13, 13, 10, 'BRG00005', 15, 300000, '2019-01-17', 'menambah pertama kali', 'tambah'),
	(14, 12, 10, 'BRG00005', 2, 40000, '2019-01-18', 'kemaren lupa di hitung', 'tambah'),
	(15, 13, 10, 'BRG00005', 2, 40000, '2019-01-18', 'di beli tetangga', 'kurangi'),
	(16, 3, 10, 'BRG00001', 3, 60000, '2019-01-18', 'di pindah ke stok offline', 'kurangi'),
	(17, 14, 10, 'BRG00001', 10, 150000, '2019-01-20', 'menambah pertama kali', 'tambah'),
	(18, 15, 10, 'BRG00001', 15, 225000, '2019-01-20', 'menambah pertama kali', 'tambah'),
	(19, 16, 10, 'BRG00002', 10, 250000, '2019-01-20', 'menambah pertama kali', 'tambah'),
	(20, 17, 10, 'BRG00002', 15, 375000, '2019-01-20', 'menambah pertama kali', 'tambah'),
	(21, 18, 10, 'BRG00003', 20, 1000000, '2019-01-20', 'menambah pertama kali', 'tambah'),
	(22, 19, 10, 'BRG00003', 15, 750000, '2019-01-20', 'menambah pertama kali', 'tambah'),
	(23, 20, 10, 'BRG00004', 20, 460000, '2019-01-20', 'menambah pertama kali', 'tambah'),
	(24, 21, 10, 'BRG00004', 20, 460000, '2019-01-20', 'menambah pertama kali', 'tambah'),
	(25, 22, 10, 'BRG00005', 20, 700000, '2019-01-20', 'menambah pertama kali', 'tambah'),
	(26, 23, 10, 'BRG00005', 20, 700000, '2019-01-20', 'menambah pertama kali', 'tambah');
/*!40000 ALTER TABLE `tb_tambahstoks` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_transaksis
DROP TABLE IF EXISTS `tb_transaksis`;
CREATE TABLE IF NOT EXISTS `tb_transaksis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) DEFAULT NULL,
  `faktur` varchar(300) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `status` enum('terkirim','dibaca','diterima','ditolak','sukses','batal') DEFAULT NULL,
  `alamat_tujuan` text,
  `admin` varchar(100) DEFAULT NULL,
  `ongkir` int(11) DEFAULT '0',
  `total_akhir` int(11) DEFAULT NULL,
  `pembayaran` varchar(50) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_transaksis: ~1 rows (approximately)
DELETE FROM `tb_transaksis`;
/*!40000 ALTER TABLE `tb_transaksis` DISABLE KEYS */;
INSERT INTO `tb_transaksis` (`id`, `iduser`, `faktur`, `tgl`, `total`, `status`, `alamat_tujuan`, `admin`, `ongkir`, `total_akhir`, `pembayaran`, `keterangan`) VALUES
	(1, 5, 'DVINA00001', '2019-01-18', 151400, 'diterima', 'babatan, JLN iwak enak no 1', NULL, 10000, 161400, '2', 'cepet ya gan');
/*!40000 ALTER TABLE `tb_transaksis` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_users
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE IF NOT EXISTS `tb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` text,
  `email` varchar(100) DEFAULT NULL,
  `telp` varchar(45) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text,
  `kota` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kodepos` varchar(45) DEFAULT NULL,
  `ktp_gmb` varchar(100) DEFAULT NULL,
  `cancel` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_users: ~4 rows (approximately)
DELETE FROM `tb_users`;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` (`id`, `username`, `password`, `email`, `telp`, `nama`, `alamat`, `kota`, `provinsi`, `kodepos`, `ktp_gmb`, `cancel`) VALUES
	(1, 'jianfitri', '$2y$10$7OFfX7UYIFIg5eZqfHEm/.kGniFHkqVE6/Avzcze7GuOfVjxB3n9e', 'jian@gmail.com', '023498290348', 'jian fitri aprilia', 'gurah kediri', 'kediri lagi', 'aceh', '09348', '1547635500-2.jpg', 0),
	(3, 'fauziahmad', '$2y$10$w/H3R1TZdbwYWAGas981seTeBK02UqvEf53lyddI92yeDxy4N7C0K', 'ahmad@gmail.com', '023899009', 'ahmad fauzi tamvan', 'loceret ngnyuk', 'loceret', 'jakarta', '00002', '1547641123-13.jpg', 0),
	(4, 'adisasmito', '$2y$10$gNTRQ2/NHO2AA.lhJ/lbu.H6Arh/RxFJyT3Tyw2Bg2QhUp8VnxNJe', 'heru@gmail.com', '0238490238', 'heru adi sasmito', 'kediri gurah', 'kediri', 'aceh', '023948', '1547646632-10.jpg', 0),
	(5, 'rinookta', '$2y$10$1fnkv00urRNJCtod6izMYuB2kj9LTScqNxWS27RmhXdiAqD6w4t7q', 'rino@gmail.com', '0859874929890', 'rino oktavian', 'babatan, JLN iwak enak no 1', 'kediri', 'jawa timur', '03498', '1547814815-contohktp.png', 1);
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;

-- Dumping structure for trigger tastore.add_stok
DROP TRIGGER IF EXISTS `add_stok`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `add_stok` AFTER INSERT ON `tb_tambahstoks` FOR EACH ROW update tb_barangs set stok=stok+new.jumlah where idbarang=new.idwarna//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger tastore.in_stok
DROP TRIGGER IF EXISTS `in_stok`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `in_stok` AFTER INSERT ON `detail_cancel` FOR EACH ROW update tb_barangs set stok=stok+new.jumlah where idbarang=new.idwarna//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger tastore.keranjang_dihapus
DROP TRIGGER IF EXISTS `keranjang_dihapus`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `keranjang_dihapus` AFTER INSERT ON `keranjang_cancel` FOR EACH ROW BEGIN
update tb_barangs set stok=stok+new.jumlah where idbarang=new.idbarang;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger tastore.min_stok
DROP TRIGGER IF EXISTS `min_stok`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `min_stok` AFTER INSERT ON `tb_details` FOR EACH ROW update tb_barangs set stok=stok-new.jumlah where idbarang=new.idwarna//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
