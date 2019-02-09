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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.admins: ~7 rows (approximately)
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT IGNORE INTO `admins` (`id`, `username`, `password`, `nama`, `telp`, `email`, `level`) VALUES
	(10, 'devasatrio', '$2y$10$7d6KjJtH/GfK.45S1R9JAefDZgcCF3CW0DiW68a4FoTjiyGM/yUBS', 'deva satrio damara', '023934820948', 'satriosuklun@gmail.com', 'programer'),
	(11, 'diansetiawan', '$2y$10$CpKmLECL3v8nVnL37Tb20ugH8QMjugXapUyuTpEhuXxziVvqddiWm', 'dian ade setiawan', '085623497800', 'dianade@gmail.com', 'programer'),
	(12, 'adminsatu', '$2y$10$./4I24ToWf90yexH24nNr.C.hUtaTewshvVENi9d8bvHYxxNY/rsq', 'admin ke satu', '08529487289333', 'admin1@gmail.com', 'admin'),
	(13, 'abiihsan', '$2y$10$HtZx6PUklxwaaFntiHqV5.4BZiXNEXdF1eA/J.ce701M5Thi7RLki', 'abi ihsan fadli', '2093482903480', 'abi@gmail.com', 'programer'),
	(14, 'taufiqperdana', '$2y$10$734GwOfWOeNB6gdtZqR7ZutUB8FzjPaupBypdRsFjypj3RFnQMKFa', 'M. taufiq perdana', '023984290380', 'taufiq@gmail.com', 'programer'),
	(15, 'admindua', '$2y$10$0/s.qgxDCDscTqNc42wdseaI.CaHYuv4z2gqYkG7xMLRxPTO.KVt6', 'admin ke dua', '20348239048902', 'admin@gmail.com', 'admin'),
	(16, 'ownerdvina', '$2y$10$NZWab.XYXn68MTBJTIpIGexNwzOhwDQtcUV5NM/P2SeHwI0DTkrY6', 'owner dvina', '28937892898', 'owner@gmail.com', 'super_admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.detail_cancel: ~0 rows (approximately)
/*!40000 ALTER TABLE `detail_cancel` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_cancel` ENABLE KEYS */;

-- Dumping structure for table tastore.gambar
DROP TABLE IF EXISTS `gambar`;
CREATE TABLE IF NOT EXISTS `gambar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(30) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.gambar: ~14 rows (approximately)
/*!40000 ALTER TABLE `gambar` DISABLE KEYS */;
INSERT IGNORE INTO `gambar` (`id`, `kode_barang`, `nama`) VALUES
	(32, 'BRG00001', '1548762578-kaos3.jpg'),
	(33, 'BRG00001', '1548762578-kaos4.jpg'),
	(34, 'BRG00001', '1548762579-kaos5.jpg'),
	(35, 'BRG00002', '1548762726-kaos1.jpeg'),
	(36, 'BRG00002', '1548762726-kaos2.jpg'),
	(37, 'BRG00003', '1548762927-kemeja4.jpg'),
	(38, 'BRG00003', '1548762928-kemeja5.jpg'),
	(39, 'BRG00003', '1548762928-kemeja6.jpg'),
	(40, 'BRG00004', '1548763063-kemeja1.jpg'),
	(41, 'BRG00004', '1548763063-kemeja2.jpg'),
	(42, 'BRG00004', '1548763063-kemeja3.jpg'),
	(43, 'BRG00005', '1548763152-jaket1.jpg'),
	(44, 'BRG00005', '1548763152-jaket2.jpg'),
	(45, 'BRG00006', '1548763272-hah.jpeg'),
	(46, 'BRG00006', '1548763272-heyy.jpg'),
	(47, 'BRG00006', '1548763273-images-(1).jpg');
/*!40000 ALTER TABLE `gambar` ENABLE KEYS */;

-- Dumping structure for table tastore.keranjang_cancel
DROP TABLE IF EXISTS `keranjang_cancel`;
CREATE TABLE IF NOT EXISTS `keranjang_cancel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` date DEFAULT NULL,
  `idbarang` int(11) NOT NULL DEFAULT '0',
  `jumlah` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.keranjang_cancel: ~0 rows (approximately)
/*!40000 ALTER TABLE `keranjang_cancel` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.log_cancel: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_cancel` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table tastore.omset
DROP TABLE IF EXISTS `omset`;
CREATE TABLE IF NOT EXISTS `omset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemasukan_online` int(11) NOT NULL DEFAULT '0',
  `pemasukan_offline` int(11) NOT NULL DEFAULT '0',
  `pemasukan_lain` int(11) NOT NULL DEFAULT '0',
  `pengeluaran` int(11) NOT NULL DEFAULT '0',
  `omset` int(11) NOT NULL DEFAULT '0',
  `bulan` int(11) NOT NULL DEFAULT '0',
  `tahun` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.omset: ~1 rows (approximately)
/*!40000 ALTER TABLE `omset` DISABLE KEYS */;
/*!40000 ALTER TABLE `omset` ENABLE KEYS */;

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
  `bulansistem` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsettings`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT IGNORE INTO `settings` (`idsettings`, `webName`, `kontak1`, `kontak2`, `kontak3`, `email`, `ico`, `meta`, `logo`, `keterangan`, `alamat`, `nama_toko`, `max_tgl`, `peraturan`, `bulansistem`) VALUES
	(1, 'Store Tulungagung', '085604556777', '089456817354', '085601473652', 'satriosuklun@gmail.com', '1547722245-dvinafavicon.png', 'toko pakaian murah meriah', '1543717647-logo-dvina.png', 'store tulungagung adalah toko ecer / grosir yang telah terbukti memiliki harga dan kwalitas terbaik se karisidenan Tulungagung', 'tulungagung, gurah kediri, jln pga no 1', NULL, 2, '<p>1. pastikan telah menjadi member StoreTulungagung</p><p>2. jangan lupa bayar setelah beli produk</p><p>3. setiap barang yang telah di masukan keranjang akan hilang secara otomatis apabila tidak di beli dalam jangka waktu 3 hari</p><p>4. Happy Shopping gengs</p>', 1);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table tastore.sliders
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.sliders: ~3 rows (approximately)
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT IGNORE INTO `sliders` (`id`, `judul`, `foto`) VALUES
	(1, 'ini slide 1', '1548724725-tabanner2.jpg'),
	(2, 'ini slide 2', '1548724768-tabanner3.jpg'),
	(3, 'ini slide 3', '1548724999-tabanner1.gif');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_bank
DROP TABLE IF EXISTS `tb_bank`;
CREATE TABLE IF NOT EXISTS `tb_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(40) DEFAULT NULL,
  `rekening` varchar(40) DEFAULT NULL,
  `atasnama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_bank: ~4 rows (approximately)
/*!40000 ALTER TABLE `tb_bank` DISABLE KEYS */;
INSERT IGNORE INTO `tb_bank` (`id`, `nama_bank`, `rekening`, `atasnama`) VALUES
	(1, 'bayar ditoko\r\n', '-', '-'),
	(2, 'mandiri Syariah', '09737897890', 'storeta'),
	(3, 'BRI', '902890890', 'storeta'),
	(4, 'bank jatim', '09890890890', 'storeta');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_barangs: ~11 rows (approximately)
/*!40000 ALTER TABLE `tb_barangs` DISABLE KEYS */;
INSERT IGNORE INTO `tb_barangs` (`idbarang`, `kode`, `stok`, `warna`, `barang_jenis`) VALUES
	(21, 'BRG00001', 10, 'xl', 'kaos putih polos xl'),
	(22, 'BRG00001', 10, 'l', 'kaos putih polos l'),
	(23, 'BRG00002', 10, 'm', 'kaos hitam polos m'),
	(24, 'BRG00002', 10, 's', 'kaos hitam polos s'),
	(25, 'BRG00003', 10, 'xl', 'kemeja gelap xl'),
	(26, 'BRG00003', 10, 'l', 'kemeja gelap l'),
	(27, 'BRG00004', 10, 'm', 'kemeja putih polos m'),
	(28, 'BRG00004', 10, 'xl', 'kemeja putih polos xl'),
	(29, 'BRG00005', 10, 'xl', 'jaket flava xl'),
	(30, 'BRG00005', 9, 'xl luar negri', 'jaket flava xl luar negri'),
	(31, 'BRG00006', 19, 's', 'hijab instant lily s');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_details: ~5 rows (approximately)
/*!40000 ALTER TABLE `tb_details` DISABLE KEYS */;
INSERT IGNORE INTO `tb_details` (`id`, `idwarna`, `iduser`, `faktur`, `tgl`, `tgl_kadaluarsa`, `kode_barang`, `barang`, `harga`, `jumlah`, `total_a`, `diskon`, `total`, `admin`, `metode`) VALUES
	(7, 10, 5, 'DVINA20011900005', '2019-01-21', '2019-01-23', 'BRG00004', 'instan salwa sherin', 25000, 2, 50000, 0, 50000, NULL, 'pesan'),
	(19, 20, NULL, 'STA290119-10-000001', '2019-01-29', '2019-01-31', 'BRG00007', 'kaos hitam polos', 20000, 1, 20000, 10, 18000, '10', 'langsung'),
	(20, 18, NULL, 'STA290119-10-000001', '2019-01-29', '2019-01-31', 'BRG00008', 'jaket flece', 30000, 1, 30000, 5, 28500, '10', 'langsung'),
	(21, 30, 5, 'ST29011900001', '2019-01-29', '2019-01-31', 'BRG00005', 'jaket flava', 50000, 1, 50000, 10, 45000, NULL, 'pesan'),
	(22, 31, 5, 'ST29011900002', '2019-01-29', '2019-01-31', 'BRG00006', 'hijab instant lily', 20000, 1, 20000, 0, 20000, NULL, 'pesan');
/*!40000 ALTER TABLE `tb_details` ENABLE KEYS */;

-- Dumping structure for table tastore.tb_kategoris
DROP TABLE IF EXISTS `tb_kategoris`;
CREATE TABLE IF NOT EXISTS `tb_kategoris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_kategoris: ~3 rows (approximately)
/*!40000 ALTER TABLE `tb_kategoris` DISABLE KEYS */;
INSERT IGNORE INTO `tb_kategoris` (`id`, `kategori`, `gambar`) VALUES
	(4, 'kaos', '1548761115-kaos4.jpg'),
	(5, 'kemeja', '1548761327-kemeja3.jpg'),
	(6, 'hijab', '1548761371-heyy.jpg'),
	(7, 'jaket', '1548761641-jaket1.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_kodes: ~5 rows (approximately)
/*!40000 ALTER TABLE `tb_kodes` DISABLE KEYS */;
INSERT IGNORE INTO `tb_kodes` (`id`, `id_kategori`, `kode_barang`, `barang`, `harga_beli`, `harga_barang`, `deskripsi`, `diskon`) VALUES
	(10, 4, 'BRG00001', 'kaos putih polos', NULL, 25000, '<p><strong>Lorem Ipsum</strong> adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</p>', 10),
	(11, 4, 'BRG00002', 'kaos hitam polos', 20000, 25000, '<h1>Lorem Ipsum </h1><p>adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</p>', 0),
	(12, 5, 'BRG00003', 'kemeja gelap', 45000, 50000, '<p>Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</p>', 0),
	(13, 5, 'BRG00004', 'kemeja putih polos', 45000, 50000, '<p>Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</p>', 10),
	(14, 7, 'BRG00005', 'jaket flava', 45000, 50000, '<p>Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</p>', 10),
	(15, 6, 'BRG00006', 'hijab instant lily', 15000, 20000, '<p>Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</p>', 0);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_tambahstoks: ~33 rows (approximately)
/*!40000 ALTER TABLE `tb_tambahstoks` DISABLE KEYS */;
INSERT IGNORE INTO `tb_tambahstoks` (`id`, `idwarna`, `idadmin`, `kode_barang`, `jumlah`, `total`, `tgl`, `keterangan`, `aksi`) VALUES
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
	(17, 14, 10, 'BRG00006', 5, 110000, '2019-01-22', 'menambah pertama kali', 'tambah'),
	(18, 15, 10, 'BRG00007', 10, 180000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(19, 16, 10, 'BRG00007', 15, 270000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(20, 17, 10, 'BRG00008', 15, 420000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(21, 18, 10, 'BRG00008', 20, 560000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(22, 19, 10, 'BRG00008', 20, 560000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(23, 20, 10, 'BRG00007', 5, 90000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(24, 21, 12, 'BRG00001', 10, 200000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(25, 22, 12, 'BRG00001', 10, 200000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(26, 23, 12, 'BRG00002', 10, 200000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(27, 24, 12, 'BRG00002', 10, 200000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(28, 25, 12, 'BRG00003', 10, 450000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(29, 26, 12, 'BRG00003', 10, 450000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(30, 27, 12, 'BRG00004', 10, 450000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(31, 28, 12, 'BRG00004', 10, 450000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(32, 29, 12, 'BRG00005', 10, 450000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(33, 30, 12, 'BRG00005', 10, 450000, '2019-01-29', 'menambah pertama kali', 'tambah'),
	(34, 31, 12, 'BRG00006', 20, 300000, '2019-01-29', 'menambah pertama kali', 'tambah');
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
  `metode` enum('pesan','langsung') DEFAULT 'pesan',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table tastore.tb_transaksis: ~3 rows (approximately)
/*!40000 ALTER TABLE `tb_transaksis` DISABLE KEYS */;
INSERT IGNORE INTO `tb_transaksis` (`id`, `iduser`, `faktur`, `tgl`, `total`, `status`, `alamat_tujuan`, `admin`, `ongkir`, `total_akhir`, `pembayaran`, `keterangan`, `metode`) VALUES
	(15, NULL, 'STA290119-10-000001', '2019-01-29', NULL, NULL, NULL, '10', 0, 46500, NULL, NULL, 'langsung'),
	(16, 5, 'ST29011900001', '2019-01-29', 45000, 'sukses', 'babatan, JLN iwak enak no 1', NULL, 0, 45000, '1', 'cepet ya gan', 'pesan'),
	(17, 5, 'ST29011900002', '2019-01-29', 20000, 'sukses', 'babatan, JLN iwak enak no 1', NULL, 2000, 22000, '2', 'cepet ya min', 'pesan');
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
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT IGNORE INTO `tb_users` (`id`, `username`, `password`, `email`, `telp`, `nama`, `alamat`, `kota`, `provinsi`, `kodepos`, `ktp_gmb`, `cancel`) VALUES
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
