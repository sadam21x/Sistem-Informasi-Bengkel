-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 10:00 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sibengkel2019`
--

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang`
--

CREATE TABLE `detail_barang` (
  `NO_PELAYANAN` char(5) NOT NULL,
  `ID_SPAREPART` char(7) NOT NULL,
  `HARGA_SUB` int(11) NOT NULL,
  `JUMLAH_SPAREPART` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_barang`
--

INSERT INTO `detail_barang` (`NO_PELAYANAN`, `ID_SPAREPART`, `HARGA_SUB`, `JUMLAH_SPAREPART`) VALUES
('N0001', 'sp00001', 15000, 2),
('N0002', 'sp00002', 20000, 3),
('N0003', 'sp00003', 20000, 3),
('N0004', 'sp00004', 22000, 3),
('N0005', 'sp00005', 30000, 2),
('N0006', 'sp00006', 40000, 1),
('N0007', 'sp00007', 34000, 2),
('N0008', 'sp00008', 43000, 1),
('N0009', 'sp00009', 10000, 5),
('N0010', 'sp00010', 30000, 2),
('N0011', 'sp00011', 50000, 1),
('N0012', 'sp00012', 43000, 1),
('N0013', 'sp00013', 50000, 2),
('N0014', 'sp00014', 46000, 1),
('N0015', 'sp00015', 42000, 1),
('N0016', 'sp00016', 41500, 2),
('N0017', 'sp00017', 42000, 2),
('N0018', 'sp00018', 42000, 2),
('N0019', 'sp00019', 50000, 1),
('N0020', 'sp00020', 41000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_layanan`
--

CREATE TABLE `detail_layanan` (
  `NO_PELAYANAN` char(5) NOT NULL,
  `NO_JENIS` char(3) NOT NULL,
  `HARGA_LAYANAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_layanan`
--

INSERT INTO `detail_layanan` (`NO_PELAYANAN`, `NO_JENIS`, `HARGA_LAYANAN`) VALUES
('N0001', 'L01', 1000000),
('N0002', 'L02', 50000),
('N0003', 'L03', 500000),
('N0004', 'L04', 600000),
('N0005', 'L05', 300000),
('N0006', 'L06', 200000),
('N0007', 'L07', 60000),
('N0008', 'L08', 500000),
('N0009', 'L09', 1200000),
('N0010', 'L10', 150000),
('N0011', 'L01', 1000000),
('N0012', 'L02', 50000),
('N0013', 'L03', 500000),
('N0014', 'L04', 600000),
('N0015', 'L05', 300000),
('N0016', 'L06', 200000),
('N0017', 'L07', 60000),
('N0018', 'L08', 500000),
('N0019', 'L09', 1200000),
('N0020', 'L10', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `ID_PEMBELIAN` char(5) NOT NULL,
  `ID_SPAREPART` char(7) NOT NULL,
  `JUMLAH_SPAREPART` int(11) NOT NULL,
  `HARGA_SUB` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`ID_PEMBELIAN`, `ID_SPAREPART`, `JUMLAH_SPAREPART`, `HARGA_SUB`) VALUES
('00111', 'sp00004', 10, 10000),
('00222', 'sp00005', 20, 10000),
('1', 'sp00001', 1, 20000),
('10', 'sp00010', 1, 20000),
('11', 'sp00011', 1, 20000),
('12', 'sp00012', 1, 20000),
('13', 'sp00013', 1, 20000),
('14', 'sp00014', 1, 20000),
('15', 'sp00015', 1, 30000),
('16', 'sp00016', 1, 30000),
('17', 'sp00017', 1, 30000),
('18', 'sp00018', 1, 30000),
('19', 'sp00019', 1, 30000),
('2', 'sp00002', 1, 20000),
('20', 'sp00020', 2, 30000),
('21', 'sp00021', 2, 30000),
('22', 'sp00022', 2, 30000),
('23', 'sp00023', 2, 30000),
('24', 'sp00024', 2, 30000),
('25', 'sp00025', 2, 30000),
('26', 'sp00026', 2, 30000),
('27', 'sp00027', 2, 30000),
('28', 'sp00028', 2, 30000),
('29', 'sp00029', 2, 30000),
('3', 'sp00003', 1, 20000),
('30', 'sp00030', 2, 30000),
('31', 'sp00031', 2, 40000),
('32', 'sp00032', 2, 40000),
('33', 'sp00033', 2, 40000),
('34', 'sp00034', 2, 40000),
('35', 'sp00035', 2, 40000),
('36', 'sp00036', 1, 40000),
('37', 'sp00037', 1, 40000),
('38', 'sp00038', 1, 40000),
('39', 'sp00039', 1, 40000),
('4', 'sp00004', 1, 20000),
('40', 'sp00040', 2, 40000),
('5', 'sp00005', 1, 20000),
('6', 'sp00006', 1, 20000),
('7', 'sp00007', 1, 20000),
('8', 'sp00008', 1, 20000),
('9', 'sp00009', 1, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pemesanan`
--

CREATE TABLE `detail_pemesanan` (
  `ID_PEMESANAN` char(5) NOT NULL,
  `ID_SPAREPART` char(7) NOT NULL,
  `HARGA_SUB` int(11) NOT NULL,
  `JUMLAH_SPAREPART` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pemesanan`
--

INSERT INTO `detail_pemesanan` (`ID_PEMESANAN`, `ID_SPAREPART`, `HARGA_SUB`, `JUMLAH_SPAREPART`) VALUES
('PM001', 'sp00015', 12000, 14),
('PM002', 'sp00016', 12000, 11),
('PM003', 'sp00017', 10000, 8),
('PM005', 'sp00013', 13000, 3),
('PM005', 'sp00023', 15000, 1),
('PM007', 'sp00001', 10000, 4),
('PM007', 'sp00003', 12000, 2),
('PM008', 'sp00002', 16000, 1),
('PM009', 'sp00003', 20000, 2),
('PM010', 'sp00004', 20000, 1),
('PM011', 'sp00005', 20000, 9),
('PM012', 'sp00006', 20000, 6),
('PM013', 'sp00007', 11000, 5),
('PM014', 'sp00008', 10000, 7),
('PM015', 'sp00009', 10000, 6),
('PM016', 'sp00010', 10000, 9),
('PM017', 'sp00011', 10000, 6),
('PM018', 'sp00012', 15000, 6),
('PM019', 'sp00013', 17000, 10),
('PM020', 'sp00014', 17000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `detail_supplai`
--

CREATE TABLE `detail_supplai` (
  `ID_SPAREPART` char(7) NOT NULL,
  `NO_PENYUPLAIAN` char(5) NOT NULL,
  `HARGA_SUB` int(11) NOT NULL,
  `JUMLAH_SUPPLAI` int(11) NOT NULL,
  `TGL_SUPPLAI` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_supplai`
--

INSERT INTO `detail_supplai` (`ID_SPAREPART`, `NO_PENYUPLAIAN`, `HARGA_SUB`, `JUMLAH_SUPPLAI`, `TGL_SUPPLAI`) VALUES
('sp00001', 'sup01', 32, 3, '2019-01-17'),
('sp00005', 'sup08', 35, 3, '2019-02-02'),
('sp00007', 'sup07', 25, 5, '2019-02-02'),
('sp00008', 'sup06', 7, 10, '2019-02-01'),
('sp00009', 'sup02', 20, 4, '2019-01-17'),
('sp00012', 'sup03', 60, 3, '2019-01-18'),
('sp00015', 'sup04', 110, 2, '2019-01-20'),
('sp00017', 'sup05', 120, 3, '2019-01-20'),
('sp00019', 'sup09', 420, 2, '2019-02-05'),
('sp00022', 'sup10', 322, 10, '2019-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `ID_GAJI` char(4) NOT NULL,
  `ID_JABATAN` char(4) NOT NULL,
  `JENIS_GAJI` varchar(15) NOT NULL,
  `JUMLAH_GAJI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`ID_GAJI`, `ID_JABATAN`, `JENIS_GAJI`, `JUMLAH_GAJI`) VALUES
('G001', 'J001', 'bulanan', 10000000),
('G002', 'J002', 'bulanan', 8000000),
('G003', 'J003', 'bulanan', 7000000),
('G004', 'J004', 'bulanan', 7500000),
('G005', 'J005', 'bulanan', 3500000),
('G006', 'J006', 'bulanan', 4000000),
('G007', 'J007', 'bulanan', 6500000),
('G008', 'J008', 'bulanan', 3500000),
('G009', 'J009', 'bulanan', 4000000),
('G010', 'J010', 'bulanan', 5500000);

-- --------------------------------------------------------

--
-- Table structure for table `hist_mobil`
--

CREATE TABLE `hist_mobil` (
  `plat` varchar(10) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hist_mobil`
--

INSERT INTO `hist_mobil` (`plat`, `waktu`) VALUES
('B 2 VU', '2019-12-16 23:00:40'),
('DK 1 VU', '2019-12-17 00:08:38'),
('LK 1000 AB', '2019-12-17 00:46:11'),
('DK 2987 CS', '2019-12-17 01:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `ID_JABATAN` char(4) NOT NULL,
  `NAMA_JABATAN` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`ID_JABATAN`, `NAMA_JABATAN`) VALUES
('J001', 'Kepala Cabang'),
('J002', 'Kepala bengkel'),
('J003', 'Instruksi Sevis'),
('J004', 'Service Advisor'),
('J005', 'Partman'),
('J006', 'Gudang Bahan'),
('J007', 'Kepala Gudang'),
('J008', 'Administrasi'),
('J009', 'Mekanik'),
('J010', 'Kepala Mekanik');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_layanan`
--

CREATE TABLE `jenis_layanan` (
  `NO_JENIS` char(3) NOT NULL,
  `NAMA_JENIS` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_layanan`
--

INSERT INTO `jenis_layanan` (`NO_JENIS`, `NAMA_JENIS`) VALUES
('L01', 'Tune Up'),
('L02', 'Ganti Oli'),
('L03', 'Pasang / Service AC Mobil'),
('L04', 'Pasang / Service Audio Mobil'),
('L05', 'Pemasangan Kaca Film Mobil'),
('L06', 'Overhoule / Turun Mesin'),
('L07', 'Penjualan Sparepart, dan Oli'),
('L08', 'Las, Ketok, dan Cat Mobil'),
('L09', 'Electrical Engine'),
('L10', 'Car Wash');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_sparepart`
--

CREATE TABLE `jenis_sparepart` (
  `ID_JENIS_SP` char(5) NOT NULL,
  `NAMA_JENIS_SP` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_sparepart`
--

INSERT INTO `jenis_sparepart` (`ID_JENIS_SP`, `NAMA_JENIS_SP`) VALUES
('js001', 'BAUT'),
('js002', 'OLI'),
('js003', 'BUMPERS'),
('js004', 'BAN'),
('js005', 'BUSI');

-- --------------------------------------------------------

--
-- Table structure for table `komunitas`
--

CREATE TABLE `komunitas` (
  `ID_KOMUNITAS` char(4) NOT NULL,
  `NAMA_KOMUNITAS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komunitas`
--

INSERT INTO `komunitas` (`ID_KOMUNITAS`, `NAMA_KOMUNITAS`) VALUES
('k001', 'Tidak berkomunitas'),
('k002', 'Gojek'),
('k003', 'Grab'),
('k004', 'SDC'),
('k005', 'Uber'),
('k006', 'GDC'),
('k007', 'TimorEr'),
('k008', 'Metic'),
('k009', 'Metic sport'),
('k010', 'Pajero'),
('k011', 'Yaris club'),
('k012', 'GGS'),
('k013', 'Red car'),
('k014', 'Civic GS'),
('k015', 'Mercy club'),
('k016', 'Ferrari sport'),
('k017', 'Lambo sport'),
('k018', 'Xpander sport'),
('k019', 'Ayla club'),
('k020', 'Black car');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `ID_KOTA` char(4) NOT NULL,
  `NAMA_KOTA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`ID_KOTA`, `NAMA_KOTA`) VALUES
('0001', 'Surabaya'),
('0002', 'Sidoarjo'),
('0003', 'Gresik'),
('0004', 'Lamongan'),
('0005', 'Ponorogo'),
('0006', 'Kediri'),
('0007', 'Malang'),
('0008', 'Batu'),
('0009', 'Madiun'),
('0010', 'Trenggalek'),
('0011', 'Pasuruan'),
('0012', 'Bojonegoro'),
('0013', 'Jember'),
('0014', 'Banyuwangi'),
('0015', 'Situbondo'),
('0016', 'Bondowoso'),
('0017', 'Denpasar'),
('0018', 'Singaraja'),
('0019', 'Kintamani'),
('0020', 'Karangasem'),
('0021', 'Bandung'),
('0022', 'Indramayu'),
('0023', 'Sukabumi'),
('0024', 'Bogor'),
('0025', 'Depok'),
('0026', 'Kota Yogyakarta'),
('0027', 'Semarang'),
('0028', 'Surakarta'),
('0029', 'Purwokerto'),
('0030', 'Tegal'),
('0031', 'Palangkaraya');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `PLAT_MOBIL` varchar(10) NOT NULL,
  `NO_PELANGGAN` char(11) NOT NULL,
  `NAMA_MOBIL` varchar(20) NOT NULL,
  `MERK_MOBIL` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`PLAT_MOBIL`, `NO_PELANGGAN`, `NAMA_MOBIL`, `MERK_MOBIL`) VALUES
('A 2588 US', 'P0000000028', 'Vanquish', 'Aston M'),
('A 2675 US', 'P0000000029', 'Vanquish', 'Aston M'),
('A 6547 US', 'P0000000037', 'Colarado', 'Chevrolet'),
('A 6800 US', 'P0000000033', 'Trax', 'Chevrolet'),
('A 6808 US', 'P0000000035', 'Trailblazer', 'Chevrolet'),
('A 6868 US', 'P0000000036', 'Trax', 'Chevrolet'),
('A 7680 US', 'P0000000034', 'Spark', 'Chevrolet'),
('A 8777 US', 'P0000000030', 'Vanquish', 'Aston M'),
('A 8908 US', 'P0000000032', 'Colarado', 'Chevrolet'),
('A 9890 US', 'P0000000031', 'Rapide S', 'Aston M'),
('AE 2876 EU', 'P0000000006', 'Avanza', 'Honda'),
('AG 7162 MU', 'P0000000005', 'Rush', 'Honda'),
('B 1 VU', 'P0000000002', 'Bugatti Hero', 'Bugatti In'),
('B 1234 XE', 'P0000000001', 'Avanza', 'Honda'),
('B 2 VU', 'P0000000002', 'Ducatti', 'Ducatti In'),
('B 2345 DE', 'P0000000002', 'Innova', 'Honda'),
('D 0999 YT', 'P0000000027', 'Vanquish', 'Aston M'),
('D 1238 YT', 'P0000000026', 'Vantage', 'Aston M'),
('D 2123 YT', 'P0000000021', 'Lancer', 'Daihatsu'),
('D 2484 YT', 'P0000000022', 'Vantage', 'Aston M'),
('D 2548 YT', 'P0000000016', 'Delica', 'Mitsubishi'),
('D 2676 YT', 'P0000000024', 'Vantage', 'Aston M'),
('D 2838 YT', 'P0000000017', 'Mirage', 'Mitsubishi'),
('D 3456 YT', 'P0000000023', 'Vantage', 'Aston M'),
('D 5353 YT', 'P0000000019', 'BMW X6M', 'BMW'),
('D 6676  YT', 'P0000000025', 'Vantage', 'Aston M'),
('D 8383 YT', 'P0000000018', 'Triton', 'Mitsubishi'),
('D 8669 YT', 'P0000000020', 'Terios', 'Suzuki'),
('DK 2987 CS', 'P0000000028', 'Innova', 'Toyotatoyo'),
('G 0857 GS', 'P0000000040', 'GTC 4 Lusso T', 'Ferarri'),
('G 0976 GS', 'P0000000045', 'Starex', 'Hyundai'),
('G 4893 GS', 'P0000000049', 'Aventador J', 'Lambo'),
('G 5987 GS', 'P0000000048', 'Veneno', 'Lambo'),
('G 6893 GS', 'P0000000047', 'Tucson', 'Hyundai'),
('G 7689 GS', 'P0000000044', 'Starex', 'Hyundai'),
('G 7963 GS', 'P0000000038', '488 Spider', 'Ferarri'),
('G 8575 GS', 'P0000000042', 'GTC 4 Lusso T', 'Ferarri'),
('G 8595 GS', 'P0000000043', 'Starex', 'Hyundai'),
('G 9590 GS', 'P0000000041', 'GTC 4 Lusso T', 'Ferarri'),
('G 9686 GS', 'P0000000039', '489 Spider', 'Ferarri'),
('G 9977 GS', 'P0000000046', 'Grand i10', 'Hyundai'),
('L 0142 SV', 'P0000000010', 'BMW M5', 'BMW'),
('L 0154 SV', 'P0000000014', 'Pajero Sport', 'Mitsubishi'),
('L 0192 SV', 'P0000000007', 'CRV', 'Honda'),
('L 0342 SV', 'P0000000008', 'CRV', 'Honda'),
('L 0458 SY', 'P0000000015', 'Xpander', 'Mitsubishi'),
('L 0563 SV', 'P0000000009', 'Ertiga', 'Suzuki'),
('L 1234 SV', 'P0000000011', 'APV', 'Suzuki'),
('L 2333 SV', 'P0000000013', 'Lancer', 'Mitsubishi'),
('L 2341 SV', 'P0000000012', 'Terios', 'Daihatsu'),
('LK 1000 AB', 'P0000000002', 'Bugatti', 'BuG'),
('W 2897 DE', 'P0000000003', 'Innova', 'Honda'),
('W 7668 X', 'P0000000004', 'Innova', 'Honda');

--
-- Triggers `mobil`
--
DELIMITER $$
CREATE TRIGGER `trg_ins_mobil` BEFORE INSERT ON `mobil` FOR EACH ROW INSERT INTO hist_mobil VALUES(new.PLAT_MOBIL, CURRENT_TIMESTAMP())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `ID_PEGAWAI` char(9) NOT NULL,
  `ID_KOTA` char(4) NOT NULL,
  `ID_JABATAN` char(4) DEFAULT NULL,
  `NAMA_PEG` varchar(30) NOT NULL,
  `JK_PEGAWAI` char(1) NOT NULL,
  `ALAMAT_PEG` varchar(50) NOT NULL,
  `TELEPON_PEG` varchar(13) DEFAULT NULL,
  `STATUS_PEG` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`ID_PEGAWAI`, `ID_KOTA`, `ID_JABATAN`, `NAMA_PEG`, `JK_PEGAWAI`, `ALAMAT_PEG`, `TELEPON_PEG`, `STATUS_PEG`) VALUES
('P00000001', '0001', 'J001', 'Alexander Hermas', 'L', 'Jalan Tanggulangin No 12 Surabaya', '081234587951', 0),
('P00000002', '0001', 'J002', 'Albert Sugianto', 'L', 'Jalan Mendut No 7 Surabaya', '085645890765', 0),
('P00000003', '0001', 'J003', 'Amy Delia', 'P', 'Jalan Mawar No 11 Surabaya', '081333548970', 0),
('P00000004', '0001', 'J004', 'Angie Christina', 'P', 'Jalan Melati No 9 surabaya ', '085766890765', 0),
('P00000005', '0001', 'J005', 'Arta Satria', 'L', 'JalanSoekarno Hatta No 34 Surabaya', '089890765431', 0),
('P00000006', '0001', 'J006', 'Ary Surya', 'L', 'Jalan Gresik No 49 Surabaya', '081367865490', 0),
('P00000007', '0001', 'J007', 'Benny Setiawan', 'L', 'Jalan Sultan Iskandar Muda No 16 Surabaya', '085678954008', 0),
('P00000008', '0001', 'J008', 'Christian Sugiarto', 'L', 'Jalan Teluk Sampit No 2-A Surabaya', '087654321456', 0),
('P00000009', '0001', 'J009', 'Darwin Sutanto', 'L', 'Jalan Anjasmara No 3 Surabaya ', '087890764320', 0),
('P00000010', '0001', 'J010', 'David Kristian', 'L', 'Jalan Dharmawangsa No 90 Surabaya', '089621890753', 0),
('P00000011', '0001', 'J001', 'Denny Rahardja', 'L', 'Jalan Rungkut Asri Utara No 1 Surabaya', '085689096543', 0),
('P00000012', '0001', 'J002', 'Devi Tri Asmarasari', 'P', 'Jalan Arwana No 4 Surabaya', '081378965408', 0),
('P00000013', '0001', 'J003', 'Diana Sastrajaya', 'P', 'Jalan Kedung Cowek No 350 Surabaya', '085646230867', 1),
('P00000014', '0001', 'J004', 'Eddy Winata', 'L', 'Jalan Prapen Indah I Surabaya', '089780689054', 0),
('P00000015', '0001', 'J005', 'Eko Suharto', 'L', 'Jalan Raya Djuanda No 5 Surabaya', '081345690876', 1),
('P00000016', '0001', 'J006', 'Erlina Ongoredjo', 'P', 'Jalan Karangrejo No 67 Surabaya', '089543789054', 1),
('P00000017', '0001', 'J007', 'Fensa Sofyan', 'L', 'Jalan Kalianyar No 55 Surabaya ', '081333980653', 1),
('P00000018', '0001', 'J008', 'Glenn Timothy', 'L', 'Jalan Manggis No 8 Surabaya ', '089750951257', 0),
('P00000019', '0001', 'J009', 'Hadi Gunawan', 'L', 'Jalan Raya Rungkut No 78 Surabaya ', '081690743278', 1),
('P00000020', '0001', 'J010', 'Harris Lasmana', 'L', 'Jalan Apel No 90 Surabaya', '087145890735', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `NO_PELANGGAN` char(11) NOT NULL,
  `ID_KOTA` char(4) NOT NULL,
  `ID_KOMUNITAS` char(4) DEFAULT NULL,
  `NAMA_PLG` varchar(30) NOT NULL,
  `ALAMAT_PLG` varchar(40) NOT NULL,
  `TELEPON_PLG` varchar(13) NOT NULL,
  `TGL_REGIS` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`NO_PELANGGAN`, `ID_KOTA`, `ID_KOMUNITAS`, `NAMA_PLG`, `ALAMAT_PLG`, `TELEPON_PLG`, `TGL_REGIS`) VALUES
('P0000000001', '0001', 'K001', 'Raynard Denziloe', '29 Hansons Terrace', '(742) 1115233', '2018-08-29 00:00:00'),
('P0000000002', '0002', 'K001', 'Daisy Justham', '90480 Gale Place', '(547) 4764612', '2018-09-28 00:00:00'),
('P0000000003', '0003', 'K001', 'Elladine Beven', '12 Graedel Center', '(167) 2100639', '2018-11-20 00:00:00'),
('P0000000004', '0004', 'K001', 'Gayleen Mushawe', '04676 7th Plaza', '(751) 4579860', '2019-01-04 00:00:00'),
('P0000000005', '0005', 'K001', 'Devland Maas', '3 Stephen Drive', '(418) 6438187', '2018-09-21 00:00:00'),
('P0000000006', '0006', 'K001', 'Garrick Elmes', '87703 Ohio Street', '(777) 1770136', '2018-12-27 00:00:00'),
('P0000000007', '0007', 'K001', 'Neala Danielot', '71110 5th Avenue', '(722) 1145493', '2018-10-20 00:00:00'),
('P0000000008', '0008', 'K001', 'Humfrid Holtom', '620 Sherman Point', '(474) 2507884', '2019-03-21 00:00:00'),
('P0000000009', '0009', 'K001', 'Tymon Fruchter', '48 Nelson Way', '(923) 7817819', '2019-02-07 00:00:00'),
('P0000000010', '0009', 'K001', 'Dunstan Hayfield', '150 Manufacturers Lane', '(695) 1664810', '2018-12-27 00:00:00'),
('P0000000011', '0009', 'K001', 'Odell Steedman', '13 Pennsylvania Drive', '(770) 3655345', '2019-03-27 00:00:00'),
('P0000000012', '0009', 'K001', 'Adriena Longcake', '4446 Marquette Pass', '(407) 1111887', '2019-01-13 00:00:00'),
('P0000000013', '0009', 'K001', 'Hughie Muddiman', '86330 Cascade Parkway', '(951) 5113811', '2019-03-05 00:00:00'),
('P0000000014', '0009', 'K001', 'Donal Sabater', '42818 Melvin Hill', '(763) 2765563', '2018-11-30 00:00:00'),
('P0000000015', '0009', 'K001', 'Dita Bullivant', '37658 Dovetail Avenue', '(293) 2635884', '2018-10-16 00:00:00'),
('P0000000016', '0009', 'K001', 'Ailyn Baroux', '6877 International Alley', '(440) 4881392', '2018-12-09 00:00:00'),
('P0000000017', '0009', 'K001', 'Lauraine Couvet', '38370 Havey Street', '(904) 2376769', '2018-09-11 00:00:00'),
('P0000000018', '0009', 'K001', 'Ricard Osler', '10060 Stone Corner Street', '(883) 6547209', '2019-03-28 00:00:00'),
('P0000000019', '0009', 'K001', 'Olivia Pallaske', '8 Clarendon Park', '(127) 6385729', '2018-12-18 00:00:00'),
('P0000000020', '0009', 'K001', 'Redd Daley', '38 Declaration Point', '(195) 9869435', '2018-12-02 00:00:00'),
('P0000000021', '0009', 'K001', 'Norma Boame', '314 Judy Crossing', '(115) 3250486', '2018-11-27 00:00:00'),
('P0000000022', '0009', 'K001', 'Samuele Veltmann', '67 Sheridan Pass', '(374) 5169469', '2019-03-05 00:00:00'),
('P0000000023', '0009', 'K001', 'Ax Grigolon', '88 2nd Pass', '(188) 2526717', '2018-08-29 00:00:00'),
('P0000000024', '0009', 'K001', 'Trudie Goreisr', '60081 Waywood Junction', '(798) 3039555', '2018-10-08 00:00:00'),
('P0000000025', '0009', 'K001', 'Filberte Charity', '5881 Northland Circle', '(673) 3090716', '2018-10-25 00:00:00'),
('P0000000026', '0009', 'K001', 'Lancelot Ludgate', '32 Bonner Parkway', '(939) 2684786', '2019-01-14 00:00:00'),
('P0000000027', '0009', 'K001', 'Hayden Ashbey', '63387 Maple Wood Pass', '(490) 4452730', '2019-02-27 00:00:00'),
('P0000000028', '0009', 'K001', 'Adela McNamee', '396 Stang Pass', '(229) 1490298', '2019-03-02 00:00:00'),
('P0000000029', '0009', 'K001', 'Ramona Jarred', '2138 1st Parkway', '(915) 4591652', '2019-01-23 00:00:00'),
('P0000000030', '0009', 'K001', 'Lars Elsip', '003 Truax Hill', '(567) 3616318', '2018-11-21 00:00:00'),
('P0000000031', '0009', 'K001', 'Wynny Feldmark', '25 Ohio Crossing', '(360) 8653546', '2019-03-07 00:00:00'),
('P0000000032', '0009', 'K001', 'Keenan Gascone', '77 Parkside Place', '(321) 2807635', '2019-04-01 00:00:00'),
('P0000000033', '0009', 'K001', 'Otho Delouch', '7 Little Fleur Circle', '(856) 8164992', '2019-03-31 00:00:00'),
('P0000000034', '0009', 'K001', 'Romy Hearon', '3 Basil Lane', '(721) 4777666', '2018-09-04 00:00:00'),
('P0000000035', '0009', 'K001', 'Shem Burrells', '009 Pine View Parkway', '(667) 6291153', '2019-01-21 00:00:00'),
('P0000000036', '0009', 'K001', 'Trescha Seabrocke', '9 Clyde Gallagher Crossing', '(620) 5579696', '2018-12-13 00:00:00'),
('P0000000037', '0009', 'K001', 'Enrico Heeron', '60848 Homewood Plaza', '(225) 7865847', '2018-09-01 00:00:00'),
('P0000000038', '0009', 'K001', 'Sonnie Spenclay', '399 Jackson Road', '(357) 4794568', '2019-02-15 00:00:00'),
('P0000000039', '0009', 'K001', 'Lanna Yansons', '05 Johnson Alley', '(614) 3185685', '2018-11-30 00:00:00'),
('P0000000040', '0009', 'K001', 'Nomi Lilie', '33 David Road', '(716) 7923759', '2019-02-16 00:00:00'),
('P0000000041', '0009', 'K001', 'Lee MacMechan', '99825 Canary Road', '(292) 9117672', '2019-02-03 00:00:00'),
('P0000000042', '0009', 'K001', 'Conney Whetnall', '82276 Green Ridge Junction', '(887) 2963490', '2018-09-10 00:00:00'),
('P0000000043', '0009', 'K001', 'Harald Siggs', '42391 Stang Drive', '(764) 6736505', '2019-03-23 00:00:00'),
('P0000000044', '0009', 'K001', 'Steffen Ellens', '67277 Mariners Cove Place', '(446) 7881576', '2018-10-10 00:00:00'),
('P0000000045', '0009', 'K001', 'Darn Glanville', '934 Kropf Way', '(354) 1277232', '2018-11-20 00:00:00'),
('P0000000046', '0009', 'K001', 'Tobi Garett', '4917 Meadow Ridge Pass', '(766) 4270012', '2018-09-26 00:00:00'),
('P0000000047', '0009', 'K001', 'Claudio Magowan', '265 Schiller Court', '(739) 5984998', '2018-10-09 00:00:00'),
('P0000000048', '0009', 'K001', 'Andree Greenlees', '4916 Atwood Way', '(657) 7447715', '2019-01-21 00:00:00'),
('P0000000049', '0009', 'K001', 'Barry Moralis', '7385 Carberry Place', '(591) 4434830', '2019-03-29 00:00:00'),
('P0000000050', '0009', 'K001', 'Sigismundo Lortzing', '06 Veith Junction', '(942) 3591557', '2018-08-29 00:00:00'),
('P0000000051', '0009', 'K001', 'Rod Hanstock', '7858 Hagan Point', '(517) 5752411', '2018-08-31 00:00:00'),
('P0000000052', '0009', 'K001', 'Lorenza Cicero', '046 Elmside Trail', '(658) 6919580', '2018-10-24 00:00:00'),
('P0000000053', '0009', 'K001', 'Marylee Reynault', '84 Park Meadow Plaza', '(988) 4742308', '2018-10-19 00:00:00'),
('P0000000054', '0009', 'K001', 'Adams Titterrell', '42049 Straubel Alley', '(718) 8112224', '2019-03-02 00:00:00'),
('P0000000055', '0009', 'K001', 'Beverly Polglase', '643 Mitchell Road', '(720) 6679228', '2018-10-20 00:00:00'),
('P0000000056', '0009', 'K001', 'Clari Wing', '28 Division Alley', '(380) 9956014', '2019-02-05 00:00:00'),
('P0000000057', '0009', 'K001', 'Walden Dorricott', '913 Spenser Trail', '(194) 6872399', '2018-10-08 00:00:00'),
('P0000000058', '0009', 'K001', 'Nester Leap', '326 Gerald Circle', '(466) 8172812', '2018-09-29 00:00:00'),
('P0000000059', '0009', 'K001', 'Tripp Forrest', '830 Cascade Terrace', '(222) 8942660', '2019-03-20 00:00:00'),
('P0000000060', '0009', 'K001', 'Delcine Nind', '46 Londonderry Pass', '(645) 3192378', '2019-03-29 00:00:00'),
('P0000000061', '0009', 'K001', 'Ariadne Barnwille', '0 Morningstar Trail', '(617) 7444312', '2019-01-30 00:00:00'),
('P0000000062', '0009', 'K001', 'Hildegaard Barnicott', '7 Burrows Crossing', '(762) 2552330', '2019-02-22 00:00:00'),
('P0000000063', '0009', 'K001', 'Iorgo Deekes', '3587 Dottie Hill', '(379) 4496020', '2019-03-18 00:00:00'),
('P0000000064', '0009', 'K001', 'Leonerd Tabard', '79 Utah Drive', '(548) 6608405', '2019-04-10 00:00:00'),
('P0000000065', '0009', 'K001', 'Morissa Mordue', '2 Stang Court', '(250) 2114482', '2019-02-11 00:00:00'),
('P0000000066', '0009', 'K001', 'Chuck McAline', '684 Saint Paul Center', '(686) 3186779', '2019-02-10 00:00:00'),
('P0000000067', '0009', 'K001', 'Ebony Santarelli', '310 Boyd Way', '(258) 8309012', '2019-03-02 00:00:00'),
('P0000000068', '0009', 'K001', 'Benny Powlesland', '5 Crownhardt Hill', '(281) 7163610', '2018-09-12 00:00:00'),
('P0000000069', '0009', 'K001', 'Kurtis Rosborough', '40052 Messerschmidt Crossing', '(583) 2033008', '2018-11-09 00:00:00'),
('P0000000070', '0009', 'K001', 'Elden Tacon', '0 Truax Lane', '(290) 7619426', '2018-10-19 00:00:00'),
('P0000000071', '0009', 'K001', 'Cletis McClaren', '276 Sycamore Parkway', '(573) 5991186', '2018-12-26 00:00:00'),
('P0000000072', '0009', 'K001', 'Toby Malatalant', '83 Crest Line Place', '(114) 4647868', '2019-03-03 00:00:00'),
('P0000000073', '0009', 'K001', 'Erasmus Schulter', '0 Fuller Way', '(281) 7415296', '2018-10-05 00:00:00'),
('P0000000074', '0009', 'K001', 'Valaree Stetson', '48 Pine View Place', '(244) 2920118', '2019-02-10 00:00:00'),
('P0000000075', '0009', 'K001', 'Agneta Haydon', '92 Reindahl Way', '(521) 1604571', '2019-01-24 00:00:00'),
('P0000000076', '0009', 'K001', 'Aguie Bowcock', '3 Blackbird Park', '(715) 3658513', '2018-11-11 00:00:00'),
('P0000000077', '0009', 'K001', 'Nicol Hunnicutt', '08 Dakota Pass', '(349) 8638237', '2019-01-09 00:00:00'),
('P0000000078', '0009', 'K001', 'Corrinne Van Saltsberg', '0370 Scofield Hill', '(438) 1235002', '2019-01-11 00:00:00'),
('P0000000079', '0009', 'K001', 'Dalt Vibert', '3 Lukken Alley', '(311) 7266053', '2019-04-14 00:00:00'),
('P0000000080', '0009', 'K001', 'Martie Bussey', '8087 Morningstar Street', '(152) 1955904', '2018-10-19 00:00:00'),
('P0000000081', '0009', 'K001', 'Grier Hunnicutt', '44 Canary Pass', '(545) 6621247', '2019-02-10 00:00:00'),
('P0000000082', '0009', 'K001', 'Ximenez Davey', '9370 Pawling Plaza', '(616) 2737357', '2019-02-27 00:00:00'),
('P0000000083', '0009', 'K001', 'Susanetta Civitillo', '8091 Hoard Junction', '(161) 2474957', '2019-01-27 00:00:00'),
('P0000000084', '0009', 'K001', 'Haleigh McBrier', '11519 Daystar Street', '(395) 9754271', '2019-03-31 00:00:00'),
('P0000000085', '0009', 'K001', 'Rutter Metheringham', '516 East Street', '(675) 1037632', '2018-09-03 00:00:00'),
('P0000000086', '0009', 'K001', 'Chucho Morican', '46415 Garrison Alley', '(935) 6948504', '2019-04-01 00:00:00'),
('P0000000087', '0009', 'K001', 'Jervis Bullers', '07 Gulseth Parkway', '(424) 8245147', '2018-11-16 00:00:00'),
('P0000000088', '0009', 'K001', 'Roderic Statter', '913 Marcy Circle', '(510) 5988537', '2019-04-05 00:00:00'),
('P0000000089', '0009', 'K001', 'Rena Burrows', '858 Marcy Pass', '(578) 5811716', '2019-03-03 00:00:00'),
('P0000000090', '0009', 'K001', 'Rickey Hanratty', '00376 Cambridge Park', '(520) 4113941', '2019-03-07 00:00:00'),
('P0000000091', '0009', 'K001', 'Dion Pye', '02003 Grover Point', '(673) 1332077', '2019-04-08 00:00:00'),
('P0000000092', '0009', 'K001', 'Kirk Snooks', '585 Village Avenue', '(682) 6713302', '2018-10-09 00:00:00'),
('P0000000093', '0009', 'K001', 'Sigismond Learie', '64 Florence Place', '(706) 7564043', '2018-09-27 00:00:00'),
('P0000000094', '0009', 'K001', 'Buddy Elgood', '8 Jana Court', '(767) 6207417', '2019-02-22 00:00:00'),
('P0000000095', '0009', 'K001', 'Jaquith Pirie', '81 Pawling Drive', '(522) 7491205', '2018-10-14 00:00:00'),
('P0000000096', '0009', 'K001', 'Esme McIlhone', '7 Toban Avenue', '(804) 4203028', '2018-12-23 00:00:00'),
('P0000000097', '0009', 'K001', 'Olivette Shingler', '17 Shopko Crossing', '(920) 7986355', '2019-02-21 00:00:00'),
('P0000000098', '0009', 'K001', 'Cristy Hunnawill', '03 Sunbrook Alley', '(518) 9792644', '2018-11-12 00:00:00'),
('P0000000099', '0009', 'K001', 'Mignon Birkmyre', '752 Dennis Pass', '(210) 2647917', '2019-03-09 00:00:00'),
('P0000000100', '0009', 'K001', 'Ashlie Rubinsztein', '0828 David Avenue', '(926) 4357020', '2018-11-24 00:00:00'),
('P0000000101', '0009', 'K001', 'Morgana McAlindon', '57 Sloan Trail', '(906) 8313118', '2018-12-31 00:00:00'),
('P0000000102', '0009', 'K001', 'Lu Pheasey', '44 Canary Plaza', '(925) 6363505', '2019-01-07 00:00:00'),
('P0000000103', '0009', 'K001', 'Lyndsey Schimaschke', '6 Redwing Circle', '(321) 1905352', '2018-11-27 00:00:00'),
('P0000000104', '0009', 'K001', 'Kerr Cundict', '6192 Springview Center', '(709) 8744369', '2018-12-07 00:00:00'),
('P0000000105', '0009', 'K001', 'Eloise Jaszczak', '5703 Gulseth Circle', '(433) 5968011', '2018-11-03 00:00:00'),
('P0000000106', '0009', 'K001', 'Wilton Defont', '9 Carberry Trail', '(532) 7038188', '2018-08-31 00:00:00'),
('P0000000107', '0009', 'K001', 'Legra Coote', '2212 Talisman Avenue', '(790) 5237311', '2018-10-27 00:00:00'),
('P0000000108', '0009', 'K001', 'Penni Craft', '6890 Fulton Trail', '(100) 6255710', '2018-12-27 00:00:00'),
('P0000000109', '0009', 'K001', 'Alexandra Petty', '781 Esker Circle', '(261) 2174489', '2018-10-03 00:00:00'),
('P0000000110', '0009', 'K001', 'Heddi Josskovitz', '8323 Bayside Hill', '(402) 8965077', '2018-09-15 00:00:00'),
('P0000000111', '0009', 'K001', 'Mariel Bambrugh', '0 Roth Terrace', '(718) 4628875', '2019-02-20 00:00:00'),
('P0000000112', '0009', 'K001', 'Marj McKall', '9 Straubel Drive', '(434) 3821998', '2018-11-01 00:00:00'),
('P0000000113', '0009', 'K001', 'Jacquette Fotitt', '201 Westerfield Crossing', '(780) 2535637', '2019-01-13 00:00:00'),
('P0000000114', '0009', 'K001', 'Albert Degenhardt', '58418 Summer Ridge Crossing', '(364) 1842947', '2018-11-27 00:00:00'),
('P0000000115', '0009', 'K001', 'Tate Ellingworth', '8 Hovde Terrace', '(864) 1723609', '2018-11-04 00:00:00'),
('P0000000116', '0009', 'K001', 'Rosemaria Skeermer', '88335 Prairie Rose Park', '(325) 8532312', '2019-01-17 00:00:00'),
('P0000000117', '0009', 'K001', 'Daphene Dwyer', '3 Rutledge Street', '(762) 6116113', '2018-11-13 00:00:00'),
('P0000000118', '0009', 'K001', 'Martie Nickoles', '68 Helena Plaza', '(505) 2594795', '2018-12-17 00:00:00'),
('P0000000119', '0009', 'K001', 'Dominik Toffler', '0 Nancy Point', '(687) 9024846', '2019-01-30 00:00:00'),
('P0000000120', '0009', 'K001', 'Carita Dast', '5561 Kim Circle', '(914) 1254167', '2018-10-09 00:00:00'),
('P0000000121', '0009', 'K001', 'Fairleigh Relph', '688 Badeau Road', '(732) 3885397', '2019-01-18 00:00:00'),
('P0000000122', '0009', 'K001', 'Porty Gruszecki', '5740 Forest Center', '(519) 4887808', '2019-01-26 00:00:00'),
('P0000000123', '0009', 'K001', 'Borden Phebee', '13 Elmside Street', '(135) 9780644', '2019-03-25 00:00:00'),
('P0000000124', '0009', 'K001', 'Rosabella Verring', '930 Mockingbird Circle', '(210) 2880711', '2018-12-20 00:00:00'),
('P0000000125', '0009', 'K001', 'Staffard Pugsley', '5748 Thompson Trail', '(918) 6497007', '2019-02-25 00:00:00'),
('P0000000126', '0009', 'K001', 'Jaye Dorward', '9712 Michigan Parkway', '(423) 4509075', '2019-02-24 00:00:00'),
('P0000000127', '0009', 'K001', 'Barth Cowoppe', '593 Stuart Crossing', '(317) 7337823', '2018-11-09 00:00:00'),
('P0000000128', '0009', 'K001', 'Dasha Reap', '4 Mosinee Point', '(784) 6208254', '2019-03-25 00:00:00'),
('P0000000129', '0009', 'K001', 'Giralda Jantzen', '51 Sycamore Trail', '(487) 4646732', '2018-10-25 00:00:00'),
('P0000000130', '0009', 'K001', 'Robinet Reis', '6 Trailsway Hill', '(225) 6204704', '2019-01-19 00:00:00'),
('P0000000131', '0009', 'K001', 'Ainsley Tuffey', '104 Mifflin Way', '(439) 9026357', '2018-12-18 00:00:00'),
('P0000000132', '0009', 'K001', 'Shae Twitchett', '5650 Lakewood Plaza', '(828) 4548834', '2019-03-10 00:00:00'),
('P0000000133', '0009', 'K001', 'Tarah Lorkins', '8106 Express Way', '(815) 2190116', '2019-03-06 00:00:00'),
('P0000000134', '0009', 'K001', 'Ingra Kobsch', '704 Pond Way', '(407) 2384581', '2018-10-30 00:00:00'),
('P0000000135', '0009', 'K001', 'Gustie Favill', '0 Beilfuss Plaza', '(829) 3933913', '2019-03-04 00:00:00'),
('P0000000136', '0009', 'K001', 'Filia Chalfain', '16 Hintze Avenue', '(721) 1706371', '2019-02-21 00:00:00'),
('P0000000137', '0009', 'K001', 'Alia McNeill', '9905 Holy Cross Hill', '(198) 6856402', '2018-10-08 00:00:00'),
('P0000000138', '0009', 'K001', 'Ertha Blinerman', '22900 Norway Maple Junction', '(281) 8653659', '2019-02-12 00:00:00'),
('P0000000139', '0009', 'K001', 'Bree MacNally', '94 Twin Pines Center', '(809) 7095999', '2018-11-07 00:00:00'),
('P0000000140', '0009', 'K001', 'Huntington Windus', '10333 Commercial Center', '(712) 6156690', '2018-09-28 00:00:00'),
('P0000000141', '0009', 'K001', 'Gwendolen Thewys', '13820 Manley Point', '(986) 6496334', '2019-02-07 00:00:00'),
('P0000000142', '0009', 'K001', 'Lynde MacArthur', '04 Jay Terrace', '(596) 5259846', '2019-01-15 00:00:00'),
('P0000000143', '0009', 'K001', 'Al Lamdin', '99763 Schurz Court', '(454) 3516703', '2019-03-30 00:00:00'),
('P0000000144', '0009', 'K001', 'Roana Kellie', '63335 Old Gate Way', '(308) 9750724', '2019-03-19 00:00:00'),
('P0000000145', '0009', 'K001', 'Kippy Shevlan', '023 Leroy Plaza', '(325) 5731678', '2018-11-27 00:00:00'),
('P0000000146', '0009', 'K001', 'Chrissy Hannaway', '725 Claremont Hill', '(738) 1625453', '2019-02-02 00:00:00'),
('P0000000147', '0009', 'K001', 'Dyane Askey', '2710 Esch Drive', '(192) 8055747', '2018-10-04 00:00:00'),
('P0000000148', '0009', 'K001', 'Regan Duffy', '1167 Veith Court', '(702) 5866733', '2018-09-23 00:00:00'),
('P0000000149', '0009', 'K001', 'Frankie Cadlock', '5494 East Plaza', '(674) 6575856', '2019-01-01 00:00:00'),
('P0000000150', '0009', 'K001', 'Thorny Scrymgeour', '88 Dixon Drive', '(615) 4630744', '2018-09-12 00:00:00'),
('P0000000151', '0009', 'K001', 'Jessalyn Pottell', '15 Vernon Hill', '(225) 4069398', '2018-10-07 00:00:00'),
('P0000000152', '0009', 'K001', 'Adrian Idill', '54 4th Pass', '(629) 2372473', '2018-12-24 00:00:00'),
('P0000000153', '0009', 'K001', 'Francklyn Casillas', '2637 East Terrace', '(684) 4593872', '2018-09-24 00:00:00'),
('P0000000154', '0009', 'K001', 'Hurlee Dominicacci', '83 Jay Lane', '(475) 6671556', '2019-02-04 00:00:00'),
('P0000000155', '0009', 'K001', 'Sergeant Happert', '86 Linden Way', '(515) 9156051', '2019-02-23 00:00:00'),
('P0000000156', '0009', 'K001', 'Renaud Lenard', '6 Quincy Point', '(975) 7417152', '2018-10-17 00:00:00'),
('P0000000157', '0009', 'K001', 'Giles Cherryman', '32 Glendale Lane', '(426) 5566665', '2018-09-14 00:00:00'),
('P0000000158', '0009', 'K001', 'Matty Kunzel', '09 Express Court', '(445) 4890024', '2018-09-04 00:00:00'),
('P0000000159', '0009', 'K001', 'Chastity Seif', '69621 Warner Plaza', '(869) 8661955', '2018-12-19 00:00:00'),
('P0000000160', '0009', 'K001', 'Darci Sherer', '09 Swallow Park', '(496) 1480884', '2018-11-18 00:00:00'),
('P0000000161', '0009', 'K001', 'Del Gobbett', '0 Farmco Alley', '(462) 3743454', '2018-12-24 00:00:00'),
('P0000000162', '0009', 'K001', 'Leland Langran', '2 Steensland Junction', '(235) 4644920', '2018-12-20 00:00:00'),
('P0000000163', '0009', 'K001', 'Rosalind Tankin', '209 Morrow Court', '(152) 8709666', '2018-11-27 00:00:00'),
('P0000000164', '0009', 'K001', 'Mateo Le Noir', '6 Arizona Park', '(553) 6998639', '2018-12-30 00:00:00'),
('P0000000165', '0009', 'K001', 'Jeno Leversha', '65 Farwell Place', '(769) 5427051', '2018-11-13 00:00:00'),
('P0000000166', '0009', 'K001', 'Addy Blazic', '2573 Merchant Junction', '(403) 9454662', '2018-10-04 00:00:00'),
('P0000000167', '0009', 'K001', 'Mathilda Mankor', '7953 Arkansas Street', '(905) 7371085', '2018-11-13 00:00:00'),
('P0000000168', '0009', 'K001', 'Amabel Agnolo', '03463 Roth Court', '(861) 6617511', '2019-02-06 00:00:00'),
('P0000000169', '0009', 'K001', 'Ronnica Breache', '4628 Morrow Place', '(246) 1928454', '2019-02-23 00:00:00'),
('P0000000170', '0009', 'K001', 'Jackqueline Monnoyer', '6 Tony Circle', '(565) 8666027', '2018-09-24 00:00:00'),
('P0000000171', '0009', 'K001', 'Fanechka Kaley', '5997 Hovde Terrace', '(596) 6999018', '2018-10-28 00:00:00'),
('P0000000172', '0009', 'K001', 'Carina Blackburne', '30377 Novick Alley', '(233) 3117095', '2019-01-30 00:00:00'),
('P0000000173', '0009', 'K001', 'Ximenez Brodway', '070 Corscot Pass', '(939) 2502904', '2018-12-30 00:00:00'),
('P0000000174', '0009', 'K001', 'Karylin Greim', '742 Delaware Park', '(604) 6384010', '2018-09-09 00:00:00'),
('P0000000175', '0009', 'K001', 'Joyan Elliff', '26934 Springview Place', '(950) 7452014', '2019-04-07 00:00:00'),
('P0000000176', '0009', 'K001', 'Bridget Mackinder', '7 Briar Crest Place', '(139) 2570500', '2019-01-19 00:00:00'),
('P0000000177', '0009', 'K001', 'Theresa Matthews', '05 Lerdahl Road', '(519) 6398970', '2018-09-06 00:00:00'),
('P0000000178', '0009', 'K001', 'Alley Bulteel', '297 Buena Vista Place', '(575) 5690226', '2018-11-13 00:00:00'),
('P0000000179', '0009', 'K001', 'Barnabas Garrie', '41 Mandrake Hill', '(885) 6559655', '2018-11-06 00:00:00'),
('P0000000180', '0009', 'K001', 'Mirna Tomasik', '556 Sauthoff Crossing', '(263) 8082409', '2019-01-25 00:00:00'),
('P0000000181', '0009', 'K001', 'Carie Old', '00829 Butterfield Hill', '(866) 9951778', '2019-04-06 00:00:00'),
('P0000000182', '0009', 'K001', 'Aaren Cline', '97 Amoth Hill', '(522) 4251198', '2019-03-13 00:00:00'),
('P0000000183', '0009', 'K001', 'Howie Lavery', '1 Wayridge Place', '(729) 8873538', '2018-09-11 00:00:00'),
('P0000000184', '0009', 'K001', 'Vasili O\'Dwyer', '5 Old Shore Circle', '(670) 6702120', '2018-12-11 00:00:00'),
('P0000000185', '0009', 'K001', 'Fredra Ullock', '0 Pearson Place', '(664) 7100965', '2019-01-09 00:00:00'),
('P0000000186', '0009', 'K001', 'Rice Eccleston', '8 Mitchell Park', '(385) 1321714', '2018-11-08 00:00:00'),
('P0000000187', '0009', 'K001', 'Yolanda Copestake', '9018 Myrtle Parkway', '(413) 2117007', '2019-03-23 00:00:00'),
('P0000000188', '0009', 'K001', 'Shell Soden', '0 Summerview Circle', '(487) 1797225', '2018-11-06 00:00:00'),
('P0000000189', '0009', 'K001', 'Lindy Capin', '4993 Dexter Point', '(221) 1104029', '2018-10-14 00:00:00'),
('P0000000190', '0009', 'K001', 'Stefan Dimitriades', '33687 Reindahl Pass', '(472) 6844808', '2018-09-29 00:00:00'),
('P0000000191', '0009', 'K001', 'Sharleen Evenett', '6 Namekagon Way', '(950) 5681763', '2019-02-28 00:00:00'),
('P0000000192', '0009', 'K001', 'Katine Bulluck', '20 Rutledge Park', '(411) 5085933', '2018-10-24 00:00:00'),
('P0000000193', '0009', 'K001', 'Emelen Avent', '55964 Eagan Crossing', '(852) 9642339', '2018-11-20 00:00:00'),
('P0000000194', '0009', 'K001', 'Tyne Leacy', '9582 Manitowish Point', '(897) 2600099', '2019-03-07 00:00:00'),
('P0000000195', '0009', 'K001', 'Jourdan Berzen', '97658 Del Mar Point', '(107) 1397163', '2018-10-22 00:00:00'),
('P0000000196', '0009', 'K001', 'Roselin Fozard', '565 Grim Avenue', '(402) 1444711', '2018-10-29 00:00:00'),
('P0000000197', '0009', 'K001', 'Thorny Reace', '7 Caliangt Alley', '(861) 9387896', '2019-04-18 00:00:00'),
('P0000000198', '0009', 'K001', 'Orville De Caville', '6508 Summit Pass', '(536) 1084537', '2019-01-28 00:00:00'),
('P0000000199', '0009', 'K001', 'Claude Kittel', '70737 Bowman Way', '(394) 3558388', '2018-09-22 00:00:00'),
('P0000000200', '0009', 'K001', 'Tommy Deesly', '009 Larry Parkway', '(297) 3962572', '2019-03-27 00:00:00'),
('P0000000201', '0009', 'K001', 'Lorelle Bercher', '938 Fairfield Way', '(238) 6030953', '2019-03-15 00:00:00'),
('P0000000202', '0009', 'K001', 'Xever Ghelardoni', '6 Tomscot Plaza', '(699) 2120991', '2018-10-30 00:00:00'),
('P0000000203', '0009', 'K001', 'Chadd Sinclar', '5 Blackbird Park', '(370) 1725858', '2018-12-08 00:00:00'),
('P0000000204', '0009', 'K001', 'Cleon Outerbridge', '82 Spenser Junction', '(781) 8514939', '2018-10-04 00:00:00'),
('P0000000205', '0009', 'K001', 'Caprice Willson', '51 Delaware Point', '(841) 5516857', '2018-12-09 00:00:00'),
('P0000000206', '0009', 'K001', 'Karlen Hush', '1 Colorado Lane', '(603) 5583897', '2018-10-23 00:00:00'),
('P0000000207', '0009', 'K001', 'Fara Whellans', '9547 Glendale Road', '(448) 5017589', '2019-03-28 00:00:00'),
('P0000000208', '0009', 'K001', 'Ginny Astall', '1 Colorado Place', '(309) 2254206', '2019-03-23 00:00:00'),
('P0000000209', '0009', 'K001', 'Ramsay Kharchinski', '17138 Cordelia Place', '(318) 7540494', '2018-12-27 00:00:00'),
('P0000000210', '0009', 'K001', 'Luke Olorenshaw', '11 Quincy Park', '(601) 9588184', '2018-10-21 00:00:00'),
('P0000000211', '0009', 'K001', 'Pauletta Poytheras', '35276 Springview Crossing', '(139) 7564543', '2018-10-23 00:00:00'),
('P0000000212', '0009', 'K001', 'Drud Swadlinge', '2764 Tennessee Avenue', '(711) 3853000', '2019-03-25 00:00:00'),
('P0000000213', '0009', 'K001', 'Artie Need', '445 American Ash Plaza', '(841) 5649237', '2018-11-21 00:00:00'),
('P0000000214', '0009', 'K001', 'Glynn Jillett', '929 Mandrake Place', '(493) 6640878', '2018-10-05 00:00:00'),
('P0000000215', '0009', 'K001', 'Felipa Vamplers', '1211 Mallory Place', '(248) 5172884', '2019-03-20 00:00:00'),
('P0000000216', '0009', 'K001', 'Danella Forth', '908 Grover Center', '(675) 7671992', '2019-03-22 00:00:00'),
('P0000000217', '0009', 'K001', 'Nelie Letford', '9 Beilfuss Pass', '(311) 9480645', '2018-10-04 00:00:00'),
('P0000000218', '0009', 'K001', 'Ansel Leatherland', '36 Carberry Street', '(494) 1720253', '2019-03-09 00:00:00'),
('P0000000219', '0009', 'K001', 'August Escudier', '58 Meadow Vale Circle', '(285) 6723699', '2018-11-25 00:00:00'),
('P0000000220', '0009', 'K001', 'Henrietta Grimstead', '3214 Jenifer Lane', '(491) 3397929', '2019-02-09 00:00:00'),
('P0000000221', '0009', 'K001', 'Bebe Elijah', '0428 Bultman Place', '(837) 3652964', '2019-01-03 00:00:00'),
('P0000000222', '0009', 'K001', 'Elsbeth McFater', '52114 Kenwood Center', '(147) 4775353', '2018-12-20 00:00:00'),
('P0000000223', '0009', 'K001', 'Worthington Dedmam', '3 Gerald Circle', '(414) 4446148', '2019-02-09 00:00:00'),
('P0000000224', '0009', 'K001', 'Berny Clift', '7 Fairfield Avenue', '(668) 5726631', '2019-01-10 00:00:00'),
('P0000000225', '0009', 'K001', 'Gabriella Mussared', '389 Mandrake Plaza', '(470) 8344031', '2018-09-21 00:00:00'),
('P0000000226', '0009', 'K001', 'Roderich Rediers', '9 Vahlen Point', '(384) 5842173', '2018-11-29 00:00:00'),
('P0000000227', '0009', 'K001', 'Hazel Loveridge', '05 Continental Way', '(827) 4358620', '2019-02-13 00:00:00'),
('P0000000228', '0009', 'K001', 'Hillyer Kleewein', '687 Brown Circle', '(537) 3895083', '2018-12-23 00:00:00'),
('P0000000229', '0009', 'K001', 'Chicky Gosforth', '580 Green Park', '(267) 5549701', '2018-12-11 00:00:00'),
('P0000000230', '0009', 'K001', 'Seka Loveitt', '12 Randy Lane', '(213) 6744006', '2019-02-01 00:00:00'),
('P0000000231', '0009', 'K001', 'Leyla Infante', '25344 Swallow Street', '(922) 2460961', '2019-02-12 00:00:00'),
('P0000000232', '0009', 'K001', 'Carri Cruddace', '90 Harper Park', '(370) 7748063', '2018-12-17 00:00:00'),
('P0000000233', '0009', 'K001', 'Daisi Morshead', '8613 Scott Road', '(313) 3894409', '2019-02-13 00:00:00'),
('P0000000234', '0009', 'K001', 'Keir Borkett', '35193 Prairieview Parkway', '(635) 1910784', '2019-02-24 00:00:00'),
('P0000000235', '0009', 'K001', 'Peterus Campion', '5201 Farragut Point', '(471) 8213491', '2019-03-11 00:00:00'),
('P0000000236', '0009', 'K001', 'Beverley Kubyszek', '97 Amoth Place', '(973) 7382881', '2018-10-12 00:00:00'),
('P0000000237', '0009', 'K001', 'Shermie Krebs', '04 Ridgeway Court', '(843) 7975005', '2019-04-15 00:00:00'),
('P0000000238', '0009', 'K001', 'Allis Luscott', '03718 Autumn Leaf Hill', '(235) 5334385', '2019-01-04 00:00:00'),
('P0000000239', '0009', 'K001', 'Culver Poulsum', '53163 Butterfield Road', '(940) 2826124', '2018-09-05 00:00:00'),
('P0000000240', '0009', 'K001', 'Arly Hoonahan', '00131 Anzinger Trail', '(614) 3231189', '2019-03-27 00:00:00'),
('P0000000241', '0009', 'K001', 'Bryana Dilks', '28959 East Park', '(649) 8843786', '2018-11-17 00:00:00'),
('P0000000242', '0009', 'K001', 'Evie Adame', '038 Bluejay Park', '(374) 1433437', '2018-10-24 00:00:00'),
('P0000000243', '0009', 'K001', 'Laura Tree', '6 Crest Line Court', '(334) 3649771', '2018-12-25 00:00:00'),
('P0000000244', '0009', 'K001', 'Stormie Gaskoin', '8 Huxley Park', '(316) 5677147', '2018-09-12 00:00:00'),
('P0000000245', '0009', 'K001', 'Alano Antoniewski', '55556 Straubel Road', '(847) 5604338', '2019-03-31 00:00:00'),
('P0000000246', '0009', 'K001', 'Jonis Kramer', '184 Towne Way', '(102) 5815505', '2019-02-03 00:00:00'),
('P0000000247', '0009', 'K001', 'Clo Schooley', '3782 Red Cloud Parkway', '(580) 7131711', '2019-02-14 00:00:00'),
('P0000000248', '0009', 'K001', 'Malchy Jeayes', '43830 Dexter Circle', '(206) 5246207', '2019-02-24 00:00:00'),
('P0000000249', '0009', 'K001', 'Melisa Lines', '1 Reindahl Junction', '(320) 9533241', '2019-01-17 00:00:00'),
('P0000000250', '0009', 'K001', 'Henderson Caws', '4 Quincy Point', '(245) 6999561', '2018-09-27 00:00:00'),
('P0000000251', '0009', 'K001', 'Misti Blesdill', '829 3rd Court', '(264) 5193830', '2018-12-04 00:00:00'),
('P0000000252', '0009', 'K001', 'Daniele Normavill', '444 Esch Avenue', '(577) 9389337', '2019-02-11 00:00:00'),
('P0000000253', '0009', 'K001', 'Antonetta Semkins', '25 Monica Road', '(934) 7116406', '2018-10-20 00:00:00'),
('P0000000254', '0009', 'K001', 'Jacky Romand', '352 Burning Wood Crossing', '(801) 3897977', '2018-10-25 00:00:00'),
('P0000000255', '0009', 'K001', 'Arlie De Angelo', '891 Longview Avenue', '(132) 6966509', '2019-02-23 00:00:00'),
('P0000000256', '0009', 'K001', 'Kristal Latek', '7574 Center Drive', '(578) 3090180', '2019-01-01 00:00:00'),
('P0000000257', '0009', 'K001', 'Bink Burghall', '54321 Artisan Way', '(602) 1574972', '2018-09-12 00:00:00'),
('P0000000258', '0009', 'K001', 'Fitz Antonutti', '83479 Daystar Court', '(606) 9956340', '2018-10-09 00:00:00'),
('P0000000259', '0009', 'K001', 'Eduard Boud', '7 Pennsylvania Junction', '(269) 3961149', '2018-11-28 00:00:00'),
('P0000000260', '0009', 'K001', 'Stephana Milton', '7604 Stephen Plaza', '(152) 4354546', '2018-10-07 00:00:00'),
('P0000000261', '0009', 'K001', 'Benita Raffan', '29 Waxwing Junction', '(583) 4524766', '2019-03-14 00:00:00'),
('P0000000262', '0009', 'K001', 'Walliw Fairham', '45 Sage Crossing', '(624) 6465247', '2018-09-17 00:00:00'),
('P0000000263', '0009', 'K001', 'Lavena Henkmann', '78253 Grayhawk Trail', '(808) 8474037', '2018-11-22 00:00:00'),
('P0000000264', '0009', 'K001', 'Barnard Kingsnode', '42 Toban Lane', '(478) 6594994', '2019-02-04 00:00:00'),
('P0000000265', '0009', 'K001', 'Cheston Poundsford', '42889 Fieldstone Street', '(351) 3982410', '2019-03-09 00:00:00'),
('P0000000266', '0009', 'K001', 'Fax Leeder', '1959 Northview Park', '(564) 4639191', '2018-09-09 00:00:00'),
('P0000000267', '0009', 'K001', 'Janot Conachie', '4 Pine View Point', '(866) 3513835', '2019-01-31 00:00:00'),
('P0000000268', '0009', 'K001', 'Brennen Steddall', '8088 Johnson Street', '(170) 2088871', '2019-03-09 00:00:00'),
('P0000000269', '0009', 'K001', 'Callida Grainge', '6491 Aberg Circle', '(565) 2907712', '2018-11-08 00:00:00'),
('P0000000270', '0009', 'K001', 'Ricki Crayton', '2556 Clemons Court', '(640) 1213304', '2019-03-03 00:00:00'),
('P0000000271', '0009', 'K001', 'Elsbeth Lorinez', '16961 Sommers Terrace', '(752) 4128228', '2018-10-30 00:00:00'),
('P0000000272', '0009', 'K001', 'Irita Symes', '00 Declaration Drive', '(933) 6034370', '2018-09-12 00:00:00'),
('P0000000273', '0009', 'K001', 'Carmelle Veltman', '041 Toban Junction', '(198) 4109219', '2018-10-22 00:00:00'),
('P0000000274', '0009', 'K001', 'Dorice Airdrie', '5 Hintze Lane', '(916) 3732201', '2019-01-25 00:00:00'),
('P0000000275', '0009', 'K001', 'Pattin Blezard', '093 Magdeline Trail', '(856) 6022383', '2019-01-15 00:00:00'),
('P0000000276', '0009', 'K001', 'Clara Lunge', '29088 Hintze Lane', '(567) 8023428', '2019-01-05 00:00:00'),
('P0000000277', '0009', 'K001', 'Gianina Bartlomiej', '5 Wayridge Hill', '(140) 3506040', '2018-12-13 00:00:00'),
('P0000000278', '0009', 'K001', 'Fidole Toone', '7 Buell Parkway', '(549) 5059643', '2019-03-09 00:00:00'),
('P0000000279', '0009', 'K001', 'Corrinne Monkley', '73097 Clarendon Pass', '(563) 8886335', '2019-01-28 00:00:00'),
('P0000000280', '0009', 'K001', 'Carlo Higgan', '7 School Road', '(797) 9055340', '2019-03-03 00:00:00'),
('P0000000281', '0009', 'K001', 'Roanna Schops', '69504 Killdeer Parkway', '(595) 4300704', '2019-01-06 00:00:00'),
('P0000000282', '0009', 'K001', 'Madel Liver', '9 Sauthoff Park', '(251) 4032080', '2018-11-09 00:00:00'),
('P0000000283', '0009', 'K001', 'Florenza Figge', '78 Veith Drive', '(163) 6353649', '2018-08-30 00:00:00'),
('P0000000284', '0009', 'K001', 'Gale Thistleton', '55891 Melvin Parkway', '(683) 1704504', '2018-08-30 00:00:00'),
('P0000000285', '0009', 'K001', 'Homere Corro', '7 Pond Avenue', '(753) 1811992', '2019-01-29 00:00:00'),
('P0000000286', '0009', 'K001', 'Brigg Trematick', '24143 Welch Terrace', '(331) 5105083', '2018-09-23 00:00:00'),
('P0000000287', '0009', 'K001', 'Colas Yoxall', '22667 Tony Circle', '(132) 4942080', '2018-12-25 00:00:00'),
('P0000000288', '0009', 'K001', 'Morgan Dongles', '5 Buell Terrace', '(675) 5411438', '2018-09-05 00:00:00'),
('P0000000289', '0009', 'K001', 'Jessalin Wickardt', '5 Haas Pass', '(992) 2443672', '2019-04-06 00:00:00'),
('P0000000290', '0009', 'K001', 'Verla Nettle', '2463 Northfield Hill', '(830) 2771792', '2018-09-25 00:00:00'),
('P0000000291', '0009', 'K001', 'Elbert Tinghill', '62 Larry Circle', '(282) 1161745', '2019-03-03 00:00:00'),
('P0000000292', '0009', 'K001', 'Lil Rought', '42 Packers Point', '(924) 1070588', '2018-09-14 00:00:00'),
('P0000000293', '0009', 'K001', 'Delila Hursthouse', '57625 Schurz Way', '(225) 1517851', '2019-01-06 00:00:00'),
('P0000000294', '0009', 'K001', 'Torrey Mummery', '9 Elgar Terrace', '(665) 4519268', '2019-02-26 00:00:00'),
('P0000000295', '0009', 'K001', 'Marianna Peddersen', '32 Pierstorff Point', '(689) 4767261', '2018-09-13 00:00:00'),
('P0000000296', '0009', 'K001', 'Rhys Levey', '3 Magdeline Circle', '(235) 5972581', '2019-03-27 00:00:00'),
('P0000000297', '0009', 'K001', 'Doria Delacour', '28 Annamark Crossing', '(712) 9729495', '2018-11-01 00:00:00'),
('P0000000298', '0009', 'K001', 'Marne Pimblott', '56 Independence Plaza', '(227) 2189417', '2018-09-09 00:00:00'),
('P0000000299', '0009', 'K001', 'Fredericka Gooding', '79 Continental Center', '(436) 4140473', '2018-10-20 00:00:00'),
('P0000000300', '0009', 'K001', 'Dion Stut', '0375 Vidon Alley', '(699) 7494675', '2018-10-16 00:00:00'),
('P0000000301', '0009', 'K001', 'Lew Margery', '262 Sachs Avenue', '(179) 1428578', '2018-12-28 00:00:00'),
('P0000000302', '0009', 'K001', 'Iver Viollet', '973 Toban Road', '(754) 4741569', '2018-12-31 00:00:00'),
('P0000000303', '0009', 'K001', 'Darill Redsell', '4195 Weeping Birch Avenue', '(809) 9434491', '2019-03-04 00:00:00'),
('P0000000304', '0009', 'K001', 'Meghann Ruzicka', '12 Lotheville Junction', '(989) 8512990', '2018-09-20 00:00:00'),
('P0000000305', '0009', 'K001', 'Wolf Miguet', '53 Iowa Place', '(335) 8270476', '2019-01-06 00:00:00'),
('P0000000306', '0009', 'K001', 'Anthe Pedri', '274 Utah Lane', '(201) 1175749', '2018-11-02 00:00:00'),
('P0000000307', '0009', 'K001', 'Maris Hegge', '97 Shopko Place', '(936) 3140384', '2019-03-23 00:00:00'),
('P0000000308', '0009', 'K001', 'Antoinette Wildman', '60695 Lien Point', '(562) 2782424', '2019-01-14 00:00:00'),
('P0000000309', '0009', 'K001', 'Raphael Pleat', '5482 Pankratz Way', '(616) 7375073', '2019-01-22 00:00:00'),
('P0000000310', '0009', 'K001', 'Maryjane Johnigan', '6966 Bayside Park', '(756) 2838470', '2018-12-25 00:00:00'),
('P0000000311', '0009', 'K001', 'Hobie Reedshaw', '981 Northview Park', '(329) 3598178', '2018-11-02 00:00:00'),
('P0000000312', '0009', 'K001', 'Bret Coulthard', '59128 1st Terrace', '(462) 3263874', '2018-11-15 00:00:00'),
('P0000000313', '0009', 'K001', 'Hanson Enns', '97 Eagan Hill', '(881) 4327467', '2018-10-13 00:00:00'),
('P0000000314', '0009', 'K001', 'Kit Orht', '14 Nevada Point', '(424) 7012367', '2018-09-24 00:00:00'),
('P0000000315', '0009', 'K001', 'Stacia Cawkwell', '1 Hazelcrest Parkway', '(409) 5319233', '2019-02-19 00:00:00'),
('P0000000316', '0009', 'K001', 'Antons Barthod', '5 Shelley Court', '(837) 9362557', '2019-03-08 00:00:00'),
('P0000000317', '0009', 'K001', 'Lorens Crop', '4973 Lawn Way', '(770) 9661020', '2019-03-20 00:00:00'),
('P0000000318', '0009', 'K001', 'Joby Flaunders', '9683 Schlimgen Crossing', '(276) 5330056', '2019-01-02 00:00:00'),
('P0000000319', '0009', 'K001', 'Maje Favey', '39 Warrior Street', '(369) 3527990', '2019-02-09 00:00:00'),
('P0000000320', '0009', 'K001', 'Patricia Scowcraft', '8110 Straubel Crossing', '(218) 3793029', '2018-10-26 00:00:00'),
('P0000000321', '0009', 'K001', 'Nickolai Aldous', '30 Dahle Park', '(889) 9201015', '2019-04-06 00:00:00'),
('P0000000322', '0009', 'K001', 'Carlita Lilie', '632 Acker Junction', '(823) 9731498', '2019-02-28 00:00:00'),
('P0000000323', '0009', 'K001', 'Gnni Bottrill', '146 Village Plaza', '(559) 4881518', '2018-11-04 00:00:00'),
('P0000000324', '0009', 'K001', 'Gnni Lickess', '6784 Mallory Plaza', '(335) 7261356', '2018-09-22 00:00:00'),
('P0000000325', '0009', 'K001', 'Felicle Leveridge', '9 Dovetail Alley', '(436) 9575831', '2018-10-09 00:00:00'),
('P0000000326', '0009', 'K001', 'Ewan Chipchase', '60291 Rowland Circle', '(838) 6428152', '2018-12-15 00:00:00'),
('P0000000327', '0009', 'K002', 'Minni Karlmann', '3 American Ash Avenue', '(310) 5612016', '2019-01-16 00:00:00'),
('P0000000328', '0009', 'K002', 'Ursola Avrahamoff', '4 Memorial Alley', '(649) 1602544', '2019-03-01 00:00:00'),
('P0000000329', '0009', 'K002', 'Stephenie Brockley', '677 Clove Road', '(898) 1746889', '2019-02-26 00:00:00'),
('P0000000330', '0009', 'K002', 'Marc Greatorex', '121 Comanche Road', '(254) 4974795', '2018-12-28 00:00:00'),
('P0000000331', '0009', 'K002', 'Colan Bertelet', '6 Iowa Pass', '(810) 4699467', '2019-04-16 00:00:00'),
('P0000000332', '0009', 'K002', 'Binni Scarsbrook', '5047 Pawling Place', '(440) 3245690', '2018-10-21 00:00:00'),
('P0000000333', '0009', 'K002', 'Lanae Jardein', '4 Artisan Place', '(302) 5590774', '2019-04-12 00:00:00'),
('P0000000334', '0009', 'K002', 'Gaultiero Muldowney', '55 Dennis Center', '(935) 5476479', '2019-01-06 00:00:00'),
('P0000000335', '0009', 'K002', 'Marena Stetson', '2599 Dayton Crossing', '(704) 1816672', '2019-03-23 00:00:00'),
('P0000000336', '0009', 'K002', 'Karney Muge', '69 Manitowish Way', '(336) 1994363', '2018-09-30 00:00:00'),
('P0000000337', '0009', 'K002', 'Delmar Zanre', '668 Crest Line Court', '(360) 1786458', '2018-11-24 00:00:00'),
('P0000000338', '0009', 'K002', 'Lyssa Tsar', '8 Onsgard Avenue', '(560) 3993329', '2019-01-04 00:00:00'),
('P0000000339', '0009', 'K002', 'Marty Andrini', '48 Montana Court', '(770) 6913392', '2018-10-09 00:00:00'),
('P0000000340', '0009', 'K002', 'Talia Voyce', '52785 Bellgrove Trail', '(106) 1146576', '2018-09-24 00:00:00'),
('P0000000341', '0009', 'K002', 'Niven Kleint', '0125 Goodland Trail', '(596) 1419173', '2019-02-17 00:00:00'),
('P0000000342', '0009', 'K002', 'Hermine Lamp', '751 Westport Trail', '(327) 2387539', '2018-11-21 00:00:00'),
('P0000000343', '0009', 'K002', 'Anabel Gilbee', '63135 Kim Trail', '(213) 8703203', '2018-11-06 00:00:00'),
('P0000000344', '0009', 'K002', 'Dorey Bernaert', '72626 Farragut Terrace', '(704) 8415287', '2019-03-31 00:00:00'),
('P0000000345', '0009', 'K002', 'Merill McKerley', '647 6th Point', '(381) 1136123', '2019-03-03 00:00:00'),
('P0000000346', '0009', 'K002', 'Doe Hayers', '83556 Washington Way', '(401) 6655466', '2019-03-02 00:00:00'),
('P0000000347', '0009', 'K002', 'Ofella Trippack', '45523 Mallory Parkway', '(922) 8162672', '2019-01-19 00:00:00'),
('P0000000348', '0009', 'K002', 'Marylin Aleksidze', '84233 Thierer Junction', '(418) 3930524', '2018-11-11 00:00:00'),
('P0000000349', '0009', 'K002', 'Starlin Josse', '5 Kings Alley', '(221) 1045034', '2018-09-11 00:00:00'),
('P0000000350', '0009', 'K002', 'Gertie Kless', '8664 Service Point', '(148) 9944999', '2019-01-31 00:00:00'),
('P0000000351', '0009', 'K002', 'Stacy D\'Arrigo', '6361 Towne Road', '(871) 3340789', '2018-11-20 00:00:00'),
('P0000000352', '0009', 'K002', 'Di Casini', '1482 Northland Pass', '(709) 2162858', '2018-12-25 00:00:00'),
('P0000000353', '0009', 'K002', 'Svend Huyge', '088 Ronald Regan Terrace', '(382) 2981823', '2018-11-17 00:00:00'),
('P0000000354', '0009', 'K002', 'Janel Madison', '7373 Toban Alley', '(539) 7911300', '2018-11-08 00:00:00'),
('P0000000355', '0009', 'K002', 'Teodora Cruse', '90679 Clove Avenue', '(453) 6213691', '2018-09-01 00:00:00'),
('P0000000356', '0009', 'K002', 'Sterling Dwight', '60869 Maywood Avenue', '(381) 7572583', '2019-02-07 00:00:00'),
('P0000000357', '0009', 'K002', 'Donna Bodicum', '92 Alpine Place', '(464) 2398462', '2018-10-30 00:00:00'),
('P0000000358', '0009', 'K002', 'Dorian Poundford', '440 Gerald Lane', '(380) 3211375', '2018-12-30 00:00:00'),
('P0000000359', '0009', 'K002', 'Therese Camp', '9 Hintze Junction', '(802) 3464706', '2018-09-28 00:00:00'),
('P0000000360', '0009', 'K002', 'Nikola Ziemens', '0970 Aberg Lane', '(208) 2086350', '2018-09-23 00:00:00'),
('P0000000361', '0009', 'K002', 'Easter Merner', '4 Esker Plaza', '(638) 7753035', '2018-12-01 00:00:00'),
('P0000000362', '0009', 'K002', 'Simon McGraffin', '07 Dakota Plaza', '(433) 2354369', '2019-03-06 00:00:00'),
('P0000000363', '0009', 'K002', 'Bert Desseine', '8242 Jackson Trail', '(757) 4680622', '2019-03-01 00:00:00'),
('P0000000364', '0009', 'K002', 'Irv Lenchenko', '23869 Waubesa Center', '(542) 8668054', '2018-10-17 00:00:00'),
('P0000000365', '0009', 'K002', 'Ailee Abbys', '36 Carey Center', '(398) 6568784', '2018-12-04 00:00:00'),
('P0000000366', '0009', 'K002', 'Feodor Dmitrienko', '71 Weeping Birch Plaza', '(528) 4881179', '2019-02-27 00:00:00'),
('P0000000367', '0009', 'K002', 'Gwenora Hildrew', '4 Union Avenue', '(865) 6915113', '2018-09-19 00:00:00'),
('P0000000368', '0010', 'K002', 'Holt Flahy', '25 Melvin Court', '(202) 1729018', '2019-03-10 00:00:00'),
('P0000000369', '0010', 'K002', 'Ronny McCaffery', '25 Straubel Circle', '(910) 8962432', '2018-09-17 00:00:00'),
('P0000000370', '0010', 'K002', 'Fairleigh Howroyd', '6994 Hooker Hill', '(462) 4095545', '2018-12-04 00:00:00'),
('P0000000371', '0010', 'K002', 'Andree Kitteman', '4152 Hagan Avenue', '(372) 1334068', '2019-01-25 00:00:00'),
('P0000000372', '0010', 'K002', 'Pavia Diggar', '07900 Gerald Drive', '(131) 2047038', '2019-03-07 00:00:00'),
('P0000000373', '0010', 'K002', 'Blair Causbey', '71371 Loeprich Road', '(366) 7591089', '2019-03-03 00:00:00'),
('P0000000374', '0010', 'K002', 'Baudoin Mustin', '0832 Kensington Avenue', '(608) 1147497', '2018-12-24 00:00:00'),
('P0000000375', '0010', 'K002', 'Amii Krollman', '9 Amoth Terrace', '(993) 8528214', '2018-09-12 00:00:00'),
('P0000000376', '0010', 'K002', 'Loleta Gowers', '8 Novick Terrace', '(735) 2643128', '2019-01-22 00:00:00'),
('P0000000377', '0010', 'K002', 'Perren Pinnock', '8 Marquette Terrace', '(794) 3622430', '2018-12-23 00:00:00'),
('P0000000378', '0010', 'K002', 'Arni Patkin', '6662 Grim Way', '(227) 1672311', '2018-11-04 00:00:00'),
('P0000000379', '0010', 'K002', 'Judie Dunstone', '143 Atwood Terrace', '(808) 3644759', '2018-11-10 00:00:00'),
('P0000000380', '0010', 'K002', 'Leon Richemond', '110 Maple Wood Way', '(353) 9820522', '2019-03-25 00:00:00'),
('P0000000381', '0010', 'K002', 'Dorette Hindmoor', '898 Cardinal Way', '(349) 6567719', '2019-03-01 00:00:00'),
('P0000000382', '0010', 'K002', 'Delora Whorlow', '354 Morningstar Plaza', '(821) 8764600', '2018-10-09 00:00:00'),
('P0000000383', '0010', 'K002', 'Norean Benedidick', '7642 4th Place', '(376) 2083853', '2018-09-17 00:00:00'),
('P0000000384', '0010', 'K002', 'Thacher Syers', '50379 Iowa Circle', '(222) 6677543', '2019-04-01 00:00:00'),
('P0000000385', '0010', 'K002', 'Siward Boffey', '84109 Di Loreto Junction', '(859) 6156963', '2019-01-06 00:00:00'),
('P0000000386', '0010', 'K002', 'Lisette Gladding', '2 Crowley Road', '(388) 2433384', '2018-08-28 00:00:00'),
('P0000000387', '0010', 'K002', 'Ophelie Coalburn', '9569 Lakewood Gardens Way', '(783) 3706302', '2019-02-16 00:00:00'),
('P0000000388', '0010', 'K002', 'Orsola Jouanot', '60565 Nobel Trail', '(325) 6334474', '2018-10-01 00:00:00'),
('P0000000389', '0010', 'K002', 'Geoffrey Ruos', '71738 Union Road', '(554) 4345223', '2018-11-13 00:00:00'),
('P0000000390', '0010', 'K002', 'Kelsey Gozney', '24229 Mcbride Circle', '(377) 5015697', '2018-12-06 00:00:00'),
('P0000000391', '0010', 'K002', 'Audrye Lowensohn', '82583 Twin Pines Street', '(341) 5285397', '2018-11-02 00:00:00'),
('P0000000392', '0010', 'K002', 'Liuka Kenrack', '968 Loomis Way', '(879) 4236168', '2019-02-04 00:00:00'),
('P0000000393', '0010', 'K002', 'Tabatha Moorrud', '20000 Anniversary Street', '(910) 5025346', '2019-04-13 00:00:00'),
('P0000000394', '0010', 'K002', 'Roselle Cathrae', '791 High Crossing Junction', '(856) 9786078', '2019-03-18 00:00:00'),
('P0000000395', '0010', 'K002', 'Hubert Hattam', '43553 Washington Court', '(340) 3562435', '2018-10-23 00:00:00'),
('P0000000396', '0010', 'K002', 'Billie Gervaise', '1 Farwell Point', '(358) 7955226', '2018-09-19 00:00:00'),
('P0000000397', '0010', 'K002', 'Jane Percy', '50 Annamark Plaza', '(869) 7564416', '2019-03-29 00:00:00'),
('P0000000398', '0010', 'K002', 'Marie-ann Barsham', '16 Carey Pass', '(152) 7292815', '2018-12-30 00:00:00'),
('P0000000399', '0010', 'K002', 'Cal Olkowicz', '564 Hauk Street', '(492) 5354178', '2019-02-19 00:00:00'),
('P0000000400', '0010', 'K002', 'Dorisa Mallinar', '88 Carberry Junction', '(918) 2056082', '2019-01-29 00:00:00'),
('P0000000401', '0010', 'K002', 'Felicdad Obert', '697 Springs Pass', '(890) 1908350', '2019-01-27 00:00:00'),
('P0000000402', '0010', 'K002', 'Ruben Cheetham', '54929 Homewood Point', '(172) 3168053', '2018-10-20 00:00:00'),
('P0000000403', '0010', 'K002', 'Rog Casford', '31 Hallows Park', '(648) 6937039', '2018-10-05 00:00:00'),
('P0000000404', '0010', 'K002', 'Carena Suermeiers', '92952 Duke Point', '(600) 9853110', '2019-03-09 00:00:00'),
('P0000000405', '0010', 'K002', 'Sharlene McMichan', '38 Annamark Road', '(531) 1937777', '2018-09-04 00:00:00'),
('P0000000406', '0010', 'K002', 'Celie Arson', '63 Forest Point', '(291) 4126198', '2019-03-15 00:00:00'),
('P0000000407', '0010', 'K002', 'Lanny Petrello', '2 Fisk Place', '(234) 9674807', '2019-02-20 00:00:00'),
('P0000000408', '0010', 'K002', 'Willette Bucke', '7 Twin Pines Court', '(694) 5924291', '2018-11-27 00:00:00'),
('P0000000409', '0010', 'K002', 'Marc Lau', '5969 American Ash Plaza', '(343) 2330901', '2019-02-21 00:00:00'),
('P0000000410', '0010', 'K002', 'Cassandra Mallabund', '1 Manitowish Drive', '(479) 9291233', '2019-02-16 00:00:00'),
('P0000000411', '0010', 'K002', 'Charmian Berre', '34 Banding Junction', '(306) 4878593', '2018-12-31 00:00:00'),
('P0000000412', '0010', 'K002', 'Claudio Arnaudot', '40 Steensland Junction', '(438) 9952308', '2019-02-28 00:00:00'),
('P0000000413', '0010', 'K002', 'Allie Pitchford', '14044 Fremont Junction', '(432) 4241870', '2018-09-15 00:00:00'),
('P0000000414', '0010', 'K002', 'Ingeborg Brunroth', '89 Fordem Pass', '(713) 2658914', '2018-11-07 00:00:00'),
('P0000000415', '0010', 'K002', 'West Pack', '6 Darwin Drive', '(705) 9215197', '2018-10-02 00:00:00'),
('P0000000416', '0010', 'K002', 'Jody Speedin', '964 Weeping Birch Pass', '(596) 8766466', '2019-04-18 00:00:00'),
('P0000000417', '0010', 'K002', 'Lidia Rosin', '368 Daystar Parkway', '(701) 9901635', '2019-01-08 00:00:00'),
('P0000000418', '0010', 'K002', 'Gayle Danilovic', '497 Ludington Terrace', '(975) 2288786', '2018-10-07 00:00:00'),
('P0000000419', '0010', 'K002', 'Zita Leechman', '189 Portage Road', '(817) 6413346', '2018-09-07 00:00:00'),
('P0000000420', '0010', 'K002', 'Willi Barizeret', '576 Spenser Lane', '(490) 2293727', '2019-03-23 00:00:00'),
('P0000000421', '0010', 'K002', 'Van Bruff', '9 Anthes Center', '(603) 3932196', '2018-11-08 00:00:00'),
('P0000000422', '0010', 'K002', 'Findley Rivel', '9094 Rockefeller Alley', '(514) 3877722', '2019-01-30 00:00:00'),
('P0000000423', '0010', 'K002', 'Alon Visick', '6524 Northridge Place', '(364) 9246530', '2018-11-19 00:00:00'),
('P0000000424', '0010', 'K002', 'Bailey Luckhurst', '17 Maple Way', '(836) 5598013', '2019-04-17 00:00:00'),
('P0000000425', '0010', 'K002', 'Janine Olsson', '05 Grover Court', '(927) 5025263', '2018-11-30 00:00:00'),
('P0000000426', '0010', 'K002', 'Loretta Polsin', '88270 Schiller Trail', '(590) 8703850', '2019-01-15 00:00:00'),
('P0000000427', '0010', 'K002', 'Isobel Domegan', '010 Fisk Street', '(640) 9848649', '2018-11-16 00:00:00'),
('P0000000428', '0010', 'K002', 'Paige Syddall', '01028 Bartillon Circle', '(931) 8437190', '2019-02-13 00:00:00'),
('P0000000429', '0010', 'K002', 'Aldous Esby', '138 Cascade Trail', '(293) 8592957', '2019-01-31 00:00:00'),
('P0000000430', '0010', 'K002', 'Enid Boarer', '82602 Fordem Avenue', '(690) 9074396', '2019-02-14 00:00:00'),
('P0000000431', '0010', 'K002', 'Mata Bremley', '98 Forster Center', '(321) 9286599', '2019-03-06 00:00:00'),
('P0000000432', '0010', 'K002', 'Michell Vallens', '94 Knutson Alley', '(241) 6935833', '2019-02-25 00:00:00'),
('P0000000433', '0010', 'K002', 'Tris Trounson', '09075 Dennis Drive', '(378) 3263219', '2019-01-02 00:00:00'),
('P0000000434', '0010', 'K002', 'Katrine Mastrantone', '63 Forest Run Alley', '(864) 8229991', '2018-12-16 00:00:00'),
('P0000000435', '0010', 'K002', 'Salomi Spurgeon', '143 Northwestern Way', '(888) 9282864', '2018-12-26 00:00:00'),
('P0000000436', '0010', 'K002', 'Dalia Laverenz', '7558 Redwing Point', '(696) 5994412', '2019-04-05 00:00:00'),
('P0000000437', '0010', 'K002', 'Alecia Avrahamof', '4 Sunnyside Center', '(507) 8203252', '2019-02-04 00:00:00'),
('P0000000438', '0010', 'K002', 'Jan Poskitt', '87 Redwing Circle', '(343) 7027793', '2019-03-05 00:00:00'),
('P0000000439', '0010', 'K002', 'Claudius Cosstick', '26 Reindahl Alley', '(755) 3616413', '2018-12-18 00:00:00'),
('P0000000440', '0010', 'K002', 'Mathian Slee', '4 Clarendon Pass', '(891) 9610105', '2019-01-03 00:00:00'),
('P0000000441', '0010', 'K002', 'Danice Clemont', '80648 Springview Avenue', '(576) 2197445', '2019-01-30 00:00:00'),
('P0000000442', '0010', 'K002', 'Devi Rigmand', '6 Beilfuss Drive', '(602) 5996697', '2019-01-12 00:00:00'),
('P0000000443', '0010', 'K002', 'Nikita Coombes', '76461 Bartillon Plaza', '(212) 2558968', '2019-04-04 00:00:00'),
('P0000000444', '0010', 'K002', 'Lorrie Shreenan', '0244 Buhler Pass', '(763) 8095590', '2019-01-22 00:00:00'),
('P0000000445', '0010', 'K002', 'Derick Zorzetti', '7767 Di Loreto Circle', '(320) 7645800', '2018-09-30 00:00:00'),
('P0000000446', '0010', 'K002', 'Violet Dedmam', '5418 Commercial Circle', '(956) 4980840', '2019-02-07 00:00:00'),
('P0000000447', '0010', 'K002', 'Barbra Emerine', '1 Lyons Street', '(826) 4444619', '2019-04-16 00:00:00'),
('P0000000448', '0010', 'K002', 'Opaline Gabbitas', '4588 Charing Cross Road', '(881) 1227911', '2019-04-18 00:00:00'),
('P0000000449', '0010', 'K002', 'Shirl Barsham', '2151 Northview Street', '(160) 9451685', '2019-02-16 00:00:00'),
('P0000000450', '0010', 'K002', 'Gothart Vallis', '1 Lakewood Gardens Court', '(111) 2036452', '2019-02-21 00:00:00'),
('P0000000451', '0010', 'K002', 'Annecorinne Sehorsch', '7128 Eagle Crest Drive', '(982) 6024178', '2019-04-14 00:00:00');
INSERT INTO `pelanggan` (`NO_PELANGGAN`, `ID_KOTA`, `ID_KOMUNITAS`, `NAMA_PLG`, `ALAMAT_PLG`, `TELEPON_PLG`, `TGL_REGIS`) VALUES
('P0000000452', '0010', 'K002', 'Padriac Angel', '60 Graceland Court', '(538) 7332106', '2018-12-18 00:00:00'),
('P0000000453', '0010', 'K002', 'Goldie Penhalurick', '6 Mayfield Junction', '(166) 2533565', '2019-04-02 00:00:00'),
('P0000000454', '0010', 'K002', 'Donovan Hainey', '3 Jenifer Parkway', '(491) 9243735', '2018-12-18 00:00:00'),
('P0000000455', '0010', 'K002', 'Ingunna Thursby', '30481 Starling Crossing', '(683) 7448627', '2019-02-02 00:00:00'),
('P0000000456', '0010', 'K002', 'Boy Meyrick', '72 Shopko Street', '(706) 7279598', '2018-11-16 00:00:00'),
('P0000000457', '0010', 'K002', 'Vinny Eastes', '18776 Lighthouse Bay Trail', '(677) 6806217', '2019-03-13 00:00:00'),
('P0000000458', '0010', 'K002', 'Leonid Featherbie', '4633 Delladonna Terrace', '(756) 5567661', '2019-02-18 00:00:00'),
('P0000000459', '0010', 'K002', 'Dore Albinson', '3 Macpherson Circle', '(948) 7882278', '2018-12-16 00:00:00'),
('P0000000460', '0010', 'K002', 'Lindsay Lestor', '71259 Victoria Park', '(420) 7749153', '2018-09-24 00:00:00'),
('P0000000461', '0010', 'K002', 'Wynn Corkish', '774 Birchwood Circle', '(797) 4038916', '2018-09-29 00:00:00'),
('P0000000462', '0010', 'K002', 'Kristian Kernocke', '6763 Macpherson Point', '(139) 3512212', '2018-10-13 00:00:00'),
('P0000000463', '0010', 'K002', 'Farley Vellacott', '177 Vermont Circle', '(709) 3240167', '2018-12-13 00:00:00'),
('P0000000464', '0010', 'K002', 'Seward Heis', '6 Grim Avenue', '(511) 2575017', '2019-02-10 00:00:00'),
('P0000000465', '0010', 'K002', 'Melisa Dominelli', '2274 Steensland Road', '(929) 9646485', '2018-12-22 00:00:00'),
('P0000000466', '0010', 'K002', 'Helen Nannetti', '6115 Melody Avenue', '(903) 3475286', '2019-02-23 00:00:00'),
('P0000000467', '0010', 'K002', 'Arel State', '13731 Fieldstone Road', '(360) 2279195', '2019-03-28 00:00:00'),
('P0000000468', '0010', 'K002', 'Tobe Sketcher', '546 South Trail', '(119) 3733045', '2018-09-16 00:00:00'),
('P0000000469', '0010', 'K002', 'Rani Maycey', '61553 Fallview Center', '(896) 6204499', '2018-10-17 00:00:00'),
('P0000000470', '0010', 'K002', 'Rufe Reisin', '987 Northport Terrace', '(775) 4606701', '2019-03-24 00:00:00'),
('P0000000471', '0010', 'K002', 'Vince Krishtopaittis', '2475 Bobwhite Trail', '(259) 6359374', '2019-02-02 00:00:00'),
('P0000000472', '0010', 'K002', 'Malchy Vaugham', '8 Holy Cross Road', '(862) 8688977', '2018-09-13 00:00:00'),
('P0000000473', '0010', 'K002', 'Robbi Lardiner', '7647 Pine View Trail', '(619) 6668836', '2018-09-20 00:00:00'),
('P0000000474', '0010', 'K002', 'Marinna Trewhella', '99 Mockingbird Point', '(325) 6765997', '2019-02-17 00:00:00'),
('P0000000475', '0010', 'K002', 'Taylor Rowberry', '45 Bultman Hill', '(810) 8250642', '2018-12-02 00:00:00'),
('P0000000476', '0010', 'K002', 'Blancha Menhenitt', '8546 Mosinee Center', '(266) 9328631', '2018-11-16 00:00:00'),
('P0000000477', '0010', 'K002', 'Estella Leyland', '3287 Waubesa Center', '(181) 2914097', '2019-02-19 00:00:00'),
('P0000000478', '0010', 'K002', 'Michaelina Buddle', '89358 Bay Hill', '(541) 9020324', '2019-01-20 00:00:00'),
('P0000000479', '0010', 'K002', 'Donny Sugden', '66343 Upham Pass', '(619) 7261138', '2019-02-09 00:00:00'),
('P0000000480', '0010', 'K002', 'Rafaela Hoogendorp', '2 Pearson Lane', '(800) 8109488', '2019-03-29 00:00:00'),
('P0000000481', '0010', 'K002', 'Josey Reynoollds', '8022 Butterfield Street', '(112) 7290995', '2018-10-12 00:00:00'),
('P0000000482', '0010', 'K002', 'Bel Lerwell', '87828 Miller Street', '(238) 5968361', '2018-12-25 00:00:00'),
('P0000000483', '0010', 'K002', 'Lauren Owens', '214 Knutson Street', '(532) 2069588', '2019-01-14 00:00:00'),
('P0000000484', '0010', 'K002', 'Jocelyne Castagneto', '99442 Coolidge Drive', '(406) 3302791', '2019-02-07 00:00:00'),
('P0000000485', '0010', 'K002', 'Juana Blunsen', '413 Waxwing Lane', '(439) 3413007', '2018-10-31 00:00:00'),
('P0000000486', '0010', 'K002', 'Darb Lardeux', '1353 Delladonna Avenue', '(989) 7897732', '2018-12-16 00:00:00'),
('P0000000487', '0010', 'K002', 'Peterus Thinn', '7 Kipling Trail', '(545) 8647180', '2018-10-27 00:00:00'),
('P0000000488', '0010', 'K002', 'Tabatha Billham', '5 Crescent Oaks Hill', '(620) 6984532', '2018-10-02 00:00:00'),
('P0000000489', '0010', 'K002', 'Mendie Goldsberry', '01812 Sachtjen Road', '(666) 1385691', '2019-03-28 00:00:00'),
('P0000000490', '0010', 'K002', 'Giusto Cribbin', '0412 Cascade Avenue', '(546) 8002731', '2018-12-01 00:00:00'),
('P0000000491', '0010', 'K002', 'Rebekkah Tipperton', '7 Center Drive', '(375) 3289882', '2019-04-14 00:00:00'),
('P0000000492', '0010', 'K002', 'Devinne Struan', '4725 Sachs Avenue', '(302) 4601803', '2018-10-05 00:00:00'),
('P0000000493', '0010', 'K002', 'Salvatore Rustidge', '3339 Meadow Ridge Park', '(741) 3706536', '2018-10-12 00:00:00'),
('P0000000494', '0010', 'K002', 'Bryn Ciraldo', '564 Vidon Terrace', '(699) 8928573', '2019-02-18 00:00:00'),
('P0000000495', '0010', 'K002', 'Casi Gaffon', '50073 Hermina Drive', '(895) 6414300', '2018-11-10 00:00:00'),
('P0000000496', '0010', 'K002', 'Berenice Shallcross', '44095 Hintze Court', '(211) 3556874', '2019-02-20 00:00:00'),
('P0000000497', '0010', 'K002', 'Amara Odney', '73 Northfield Trail', '(321) 8641245', '2019-04-05 00:00:00'),
('P0000000498', '0010', 'K002', 'Blinnie Hazeup', '2909 Pierstorff Alley', '(579) 1174734', '2018-09-10 00:00:00'),
('P0000000499', '0010', 'K002', 'Trace Nisot', '35602 Raven Trail', '(872) 9937066', '2019-02-25 00:00:00'),
('P0000000500', '0010', 'K002', 'Allie Althrope', '1108 Mccormick Drive', '(749) 3971253', '2019-04-13 00:00:00'),
('P0000000501', '0010', 'K002', 'Marin Jansik', '45 Upham Park', '(398) 6659995', '2018-09-09 00:00:00'),
('P0000000502', '0010', 'K002', 'Orville Holmyard', '648 Transport Drive', '(873) 9561977', '2019-02-27 00:00:00'),
('P0000000503', '0010', 'K002', 'Cacilie Wentworth', '75573 Dayton Hill', '(994) 6177322', '2018-10-25 00:00:00'),
('P0000000504', '0010', 'K002', 'Hector Merton', '66251 Chive Lane', '(172) 6461363', '2018-10-03 00:00:00'),
('P0000000505', '0010', 'K002', 'Allina Moodycliffe', '0 Anzinger Place', '(596) 1537206', '2018-11-09 00:00:00'),
('P0000000506', '0010', 'K002', 'Maddalena Humbert', '75 Everett Alley', '(564) 3610027', '2019-01-09 00:00:00'),
('P0000000507', '0010', 'K002', 'Katrinka Laddle', '7 Hooker Point', '(606) 2424395', '2019-04-05 00:00:00'),
('P0000000508', '0010', 'K002', 'Adah Goodreid', '441 Bellgrove Hill', '(712) 8042828', '2018-12-11 00:00:00'),
('P0000000509', '0010', 'K002', 'Ofilia Banane', '336 Division Street', '(500) 8587955', '2018-11-07 00:00:00'),
('P0000000510', '0010', 'K002', 'Ervin Liff', '158 Sauthoff Terrace', '(508) 9602638', '2018-12-10 00:00:00'),
('P0000000511', '0010', 'K002', 'Licha Uridge', '4662 Elgar Drive', '(140) 6459439', '2018-12-25 00:00:00'),
('P0000000512', '0010', 'K002', 'Yvor Swaisland', '20 Reindahl Road', '(829) 8096067', '2018-12-08 00:00:00'),
('P0000000513', '0010', 'K002', 'Keen Farrow', '217 Ramsey Pass', '(217) 9123557', '2019-02-06 00:00:00'),
('P0000000514', '0010', 'K002', 'Alexina Esland', '07518 Prentice Drive', '(398) 4601006', '2019-02-12 00:00:00'),
('P0000000515', '0010', 'K002', 'Lyell Parsisson', '3 Bowman Center', '(319) 9744073', '2018-11-23 00:00:00'),
('P0000000516', '0010', 'K002', 'Hasheem Blackett', '13 Cascade Avenue', '(179) 3717697', '2018-08-31 00:00:00'),
('P0000000517', '0010', 'K002', 'Allan Colt', '7 Roxbury Drive', '(222) 7739388', '2018-11-04 00:00:00'),
('P0000000518', '0010', 'K002', 'Jabez MacLeese', '34 Scott Road', '(610) 2407871', '2018-10-02 00:00:00'),
('P0000000519', '0010', 'K002', 'Ban Brigshaw', '5 Shoshone Court', '(283) 3272242', '2018-12-13 00:00:00'),
('P0000000520', '0010', 'K002', 'Bartholomew Darley', '001 Grayhawk Center', '(753) 3987760', '2019-04-13 00:00:00'),
('P0000000521', '0010', 'K002', 'Wilfrid Dunsire', '1 Merrick Pass', '(188) 4023045', '2018-12-13 00:00:00'),
('P0000000522', '0010', 'K002', 'Farris Crucitti', '4 Atwood Street', '(551) 4653527', '2018-11-11 00:00:00'),
('P0000000523', '0010', 'K002', 'Danila Adshede', '20 Comanche Pass', '(915) 5702897', '2019-02-17 00:00:00'),
('P0000000524', '0010', 'K002', 'Cleavland Brokenshaw', '4 Doe Crossing Avenue', '(610) 6413641', '2018-12-18 00:00:00'),
('P0000000525', '0010', 'K002', 'Willie McLugish', '4819 Mifflin Hill', '(517) 8866414', '2018-10-30 00:00:00'),
('P0000000526', '0010', 'K002', 'Gerard Pilmer', '6 Eagle Crest Point', '(236) 2221878', '2018-11-30 00:00:00'),
('P0000000527', '0010', 'K002', 'Berrie Havoc', '4527 Crest Line Terrace', '(659) 2531732', '2018-10-30 00:00:00'),
('P0000000528', '0010', 'K002', 'Terence Pinare', '97 Dwight Road', '(980) 7639722', '2018-10-09 00:00:00'),
('P0000000529', '0010', 'K002', 'Minni Worwood', '7810 Stang Road', '(854) 2682361', '2019-04-15 00:00:00'),
('P0000000530', '0010', 'K002', 'Elvera Seeks', '79 Crowley Road', '(770) 4992523', '2018-12-18 00:00:00'),
('P0000000531', '0010', 'K002', 'Nathaniel Hacquoil', '2310 Southridge Parkway', '(949) 6719242', '2018-12-05 00:00:00'),
('P0000000532', '0010', 'K002', 'Wald Pumphreys', '537 Holy Cross Hill', '(883) 5256572', '2018-09-22 00:00:00'),
('P0000000533', '0010', 'K002', 'Lonee Swetmore', '9 Sunfield Center', '(917) 4039165', '2018-12-18 00:00:00'),
('P0000000534', '0010', 'K002', 'Angela Gillbe', '1 Claremont Crossing', '(742) 1557772', '2018-09-30 00:00:00'),
('P0000000535', '0010', 'K002', 'Mozelle Gresswell', '9 Union Park', '(418) 9863257', '2018-09-08 00:00:00'),
('P0000000536', '0010', 'K002', 'Antoine Gerrell', '2 Tomscot Road', '(119) 7397811', '2018-10-21 00:00:00'),
('P0000000537', '0010', 'K002', 'Odille Kirwin', '96186 Russell Road', '(119) 5319266', '2018-12-30 00:00:00'),
('P0000000538', '0010', 'K002', 'Robert Chandler', '230 Hermina Circle', '(187) 1180498', '2018-10-06 00:00:00'),
('P0000000539', '0010', 'K002', 'Gae Fitzhenry', '778 Sherman Street', '(217) 1839100', '2019-02-12 00:00:00'),
('P0000000540', '0010', 'K002', 'Riane Daudray', '9 Forest Court', '(881) 8028658', '2018-11-25 00:00:00'),
('P0000000541', '0010', 'K002', 'Marji Maliphant', '44137 Lakewood Lane', '(456) 5361538', '2018-09-11 00:00:00'),
('P0000000542', '0010', 'K002', 'Madelaine Mantha', '913 Mcguire Street', '(297) 5749948', '2018-09-18 00:00:00'),
('P0000000543', '0010', 'K002', 'Garvy Martinovsky', '812 Manitowish Park', '(510) 7144085', '2019-03-25 00:00:00'),
('P0000000544', '0010', 'K002', 'Celene Bazely', '436 Blackbird Parkway', '(806) 3132542', '2018-10-15 00:00:00'),
('P0000000545', '0010', 'K002', 'Garvy Lidgley', '62 Beilfuss Alley', '(300) 2735288', '2018-11-29 00:00:00'),
('P0000000546', '0010', 'K002', 'Josey Calafato', '384 Hoffman Lane', '(306) 6058187', '2018-10-05 00:00:00'),
('P0000000547', '0010', 'K002', 'Glendon Dalgetty', '965 Thackeray Center', '(300) 3342239', '2019-02-10 00:00:00'),
('P0000000548', '0010', 'K002', 'Hill Aristide', '491 Mesta Crossing', '(959) 4959990', '2019-02-28 00:00:00'),
('P0000000549', '0010', 'K002', 'Haskell Breacher', '8 Ramsey Road', '(806) 2488993', '2019-03-02 00:00:00'),
('P0000000550', '0010', 'K002', 'Roma Mailes', '8 Kenwood Plaza', '(790) 5026012', '2018-08-28 00:00:00'),
('P0000000551', '0010', 'K002', 'Forster Downer', '587 Pepper Wood Parkway', '(960) 3834903', '2019-02-01 00:00:00'),
('P0000000552', '0010', 'K002', 'Randi Norbury', '2 Bunting Place', '(296) 2555075', '2019-01-02 00:00:00'),
('P0000000553', '0010', 'K002', 'Melodie Purcell', '58 Prairie Rose Avenue', '(748) 5345066', '2018-11-29 00:00:00'),
('P0000000554', '0010', 'K002', 'Carny Antonio', '19932 Rowland Crossing', '(992) 8755356', '2018-09-17 00:00:00'),
('P0000000555', '0010', 'K002', 'Jaquelyn Barringer', '7278 Dorton Drive', '(556) 2914397', '2019-01-21 00:00:00'),
('P0000000556', '0010', 'K002', 'Mechelle Caseley', '43287 Knutson Lane', '(688) 6305570', '2019-03-01 00:00:00'),
('P0000000557', '0010', 'K002', 'Lionello Doud', '1 Sachs Place', '(764) 6181779', '2019-02-27 00:00:00'),
('P0000000558', '0010', 'K002', 'Bernadina Cluet', '07687 Eagle Crest Alley', '(600) 8764434', '2019-01-06 00:00:00'),
('P0000000559', '0010', 'K002', 'Lanae Demangeon', '58 Mosinee Avenue', '(289) 9798027', '2018-10-11 00:00:00'),
('P0000000560', '0010', 'K002', 'Marion Crowdace', '5 Hovde Place', '(557) 6376030', '2018-09-22 00:00:00'),
('P0000000561', '0010', 'K002', 'Stanly Housiaux', '19638 Walton Crossing', '(570) 2180901', '2019-01-14 00:00:00'),
('P0000000562', '0010', 'K002', 'Livvie Hulett', '55 Drewry Circle', '(592) 3342536', '2019-04-17 00:00:00'),
('P0000000563', '0010', 'K002', 'Tiena Filochov', '6922 Reinke Parkway', '(489) 5102314', '2018-11-21 00:00:00'),
('P0000000564', '0010', 'K002', 'Kati Newport', '592 Emmet Way', '(221) 5009763', '2018-10-06 00:00:00'),
('P0000000565', '0010', 'K002', 'Maribelle Causer', '40 Sunnyside Alley', '(812) 1265967', '2018-12-28 00:00:00'),
('P0000000566', '0010', 'K002', 'Kathi Mayberry', '0 Weeping Birch Trail', '(468) 1934993', '2018-11-08 00:00:00'),
('P0000000567', '0010', 'K002', 'Kristina McGraffin', '3 Cascade Court', '(579) 1494599', '2018-11-05 00:00:00'),
('P0000000568', '0010', 'K002', 'Etienne Caso', '100 Elgar Park', '(922) 1868559', '2018-10-25 00:00:00'),
('P0000000569', '0010', 'K002', 'Emmaline Masham', '2 Nobel Alley', '(229) 7725350', '2019-01-24 00:00:00'),
('P0000000570', '0010', 'K002', 'Aurora Chasles', '3361 Nova Pass', '(231) 3753935', '2019-02-10 00:00:00'),
('P0000000571', '0010', 'K002', 'Lian Tweedell', '6 Linden Way', '(508) 7752984', '2018-12-27 00:00:00'),
('P0000000572', '0010', 'K002', 'Wain Castlake', '6762 Delladonna Terrace', '(702) 5236686', '2018-11-02 00:00:00'),
('P0000000573', '0010', 'K002', 'Davina Bellows', '8 Center Plaza', '(741) 6219383', '2018-10-16 00:00:00'),
('P0000000574', '0010', 'K002', 'Shalna Tomblin', '2000 Amoth Drive', '(804) 6616411', '2019-02-26 00:00:00'),
('P0000000575', '0010', 'K002', 'Humphrey Weeden', '553 Fair Oaks Point', '(210) 1951842', '2018-10-15 00:00:00'),
('P0000000576', '0010', 'K002', 'Donni Munro', '85 Continental Pass', '(139) 9147081', '2018-10-04 00:00:00'),
('P0000000577', '0010', 'K002', 'Heidie Cruickshanks', '19 Clarendon Alley', '(970) 9516108', '2019-02-03 00:00:00'),
('P0000000578', '0010', 'K002', 'Cleve McHarry', '4921 Hanson Street', '(281) 2611661', '2018-12-31 00:00:00'),
('P0000000579', '0010', 'K002', 'Patton Heinemann', '67 Sugar Way', '(607) 4610527', '2019-01-28 00:00:00'),
('P0000000580', '0010', 'K002', 'Willa Murby', '0412 American Ash Hill', '(327) 3827304', '2019-02-24 00:00:00'),
('P0000000581', '0010', 'K002', 'Annalise Becket', '8 Muir Point', '(358) 7349475', '2018-11-27 00:00:00'),
('P0000000582', '0010', 'K002', 'Alf Matschuk', '55281 Florence Drive', '(308) 5329321', '2018-11-04 00:00:00'),
('P0000000583', '0010', 'K002', 'Rosa Catteroll', '84 Fuller Drive', '(300) 4632911', '2019-01-29 00:00:00'),
('P0000000584', '0010', 'K002', 'Vikky Raphael', '298 Union Alley', '(560) 6114909', '2019-03-29 00:00:00'),
('P0000000585', '0010', 'K002', 'Foss Sharrier', '28 Old Shore Parkway', '(613) 8361533', '2019-03-12 00:00:00'),
('P0000000586', '0010', 'K002', 'Shaine Housden', '31772 Bartillon Lane', '(472) 9941251', '2019-02-18 00:00:00'),
('P0000000587', '0010', 'K002', 'Charis Phidgin', '5 Del Sol Place', '(941) 9049945', '2018-11-13 00:00:00'),
('P0000000588', '0010', 'K002', 'Cornelius Crews', '1 La Follette Street', '(789) 8344030', '2018-11-30 00:00:00'),
('P0000000589', '0010', 'K002', 'Kaitlynn Benard', '28441 Lindbergh Center', '(841) 5468979', '2019-04-13 00:00:00'),
('P0000000590', '0010', 'K002', 'Les Grelka', '60 Clyde Gallagher Road', '(796) 9853139', '2019-01-10 00:00:00'),
('P0000000591', '0010', 'K002', 'Kerk Charon', '99 Anzinger Terrace', '(652) 1106337', '2018-11-05 00:00:00'),
('P0000000592', '0010', 'K002', 'Beverlie Tasker', '06 Hayes Way', '(374) 8044605', '2018-09-03 00:00:00'),
('P0000000593', '0010', 'K002', 'Edeline Smurthwaite', '811 Vidon Plaza', '(454) 6628471', '2018-12-20 00:00:00'),
('P0000000594', '0010', 'K002', 'Aubert Snoad', '2701 Grover Junction', '(503) 2574768', '2018-11-17 00:00:00'),
('P0000000595', '0010', 'K002', 'Silas Vallentin', '631 Troy Court', '(372) 7738189', '2018-11-05 00:00:00'),
('P0000000596', '0010', 'K002', 'Maitilde Cawsey', '9 Garrison Circle', '(924) 6662944', '2018-12-24 00:00:00'),
('P0000000597', '0010', 'K002', 'Hiram McFeate', '043 Dapin Crossing', '(721) 4372222', '2019-03-25 00:00:00'),
('P0000000598', '0010', 'K002', 'Salomon Rochford', '2098 East Parkway', '(721) 8548142', '2018-11-11 00:00:00'),
('P0000000599', '0010', 'K002', 'Waite Ferfulle', '799 5th Lane', '(311) 9653126', '2018-10-27 00:00:00'),
('P0000000600', '0010', 'K002', 'Wendie Kimmitt', '6521 Lillian Court', '(372) 9787404', '2018-12-04 00:00:00'),
('P0000000601', '0010', 'K002', 'Daffi Cunnane', '92656 Bultman Pass', '(710) 3200352', '2019-03-30 00:00:00'),
('P0000000602', '0010', 'K002', 'Balduin Batho', '685 Fordem Junction', '(692) 4353350', '2018-10-08 00:00:00'),
('P0000000603', '0010', 'K002', 'Estel Winham', '59320 Forest Dale Junction', '(598) 5224493', '2019-01-29 00:00:00'),
('P0000000604', '0010', 'K002', 'Timmie Benkhe', '5 Stuart Pass', '(776) 5136667', '2018-10-30 00:00:00'),
('P0000000605', '0010', 'K002', 'Brandy Bayston', '584 Loeprich Circle', '(144) 6365255', '2018-12-13 00:00:00'),
('P0000000606', '0010', 'K002', 'Niel Fockes', '6522 Warbler Terrace', '(342) 1207912', '2019-03-26 00:00:00'),
('P0000000607', '0010', 'K002', 'Corie Pastor', '9488 Graedel Plaza', '(862) 2679862', '2018-10-03 00:00:00'),
('P0000000608', '0010', 'K002', 'Karlik Glasscoe', '619 Oriole Hill', '(170) 1619592', '2018-11-18 00:00:00'),
('P0000000609', '0010', 'K003', 'Cole Oxton', '48 Heath Drive', '(847) 4189509', '2018-12-29 00:00:00'),
('P0000000610', '0001', 'K003', 'Consuelo Jennick', '483 Kedzie Parkway', '(376) 3570463', '2019-01-23 00:00:00'),
('P0000000611', '0001', 'K003', 'Benedetto Gallacher', '55228 Springview Plaza', '(204) 6434524', '2019-03-24 00:00:00'),
('P0000000612', '0001', 'K003', 'Othello Liepins', '1 Delaware Avenue', '(345) 5325437', '2019-01-26 00:00:00'),
('P0000000613', '0001', 'K003', 'Elizabet Helbeck', '5 Towne Parkway', '(477) 5932999', '2018-10-30 00:00:00'),
('P0000000614', '0001', 'K003', 'Ive Eyeington', '753 Briar Crest Avenue', '(822) 9397395', '2019-02-22 00:00:00'),
('P0000000615', '0001', 'K003', 'Meryl Buret', '1421 Forest Run Center', '(581) 3193663', '2018-10-16 00:00:00'),
('P0000000616', '0001', 'K003', 'Lindsey Bernardotte', '23790 Hermina Way', '(150) 2280588', '2019-01-17 00:00:00'),
('P0000000617', '0001', 'K003', 'Nolly Ledbetter', '132 Autumn Leaf Park', '(396) 7346066', '2018-11-27 00:00:00'),
('P0000000618', '0001', 'K003', 'Ezri Ateggart', '9 Summer Ridge Lane', '(449) 4930771', '2018-10-17 00:00:00'),
('P0000000619', '0001', 'K003', 'Griz Fairney', '7455 Forest Dale Hill', '(550) 7284594', '2018-12-08 00:00:00'),
('P0000000620', '0001', 'K003', 'Mei Myall', '13271 Dawn Pass', '(368) 9417173', '2018-12-28 00:00:00'),
('P0000000621', '0001', 'K003', 'Humfrid Dyzart', '116 Maywood Alley', '(482) 9442778', '2018-09-07 00:00:00'),
('P0000000622', '0001', 'K003', 'Chuck Bowditch', '7 Fordem Trail', '(224) 8112960', '2019-04-16 00:00:00'),
('P0000000623', '0001', 'K003', 'Hardy Yankeev', '1 8th Lane', '(775) 4911630', '2019-02-03 00:00:00'),
('P0000000624', '0001', 'K003', 'Hermann Streat', '456 Butterfield Avenue', '(635) 9020370', '2018-11-30 00:00:00'),
('P0000000625', '0001', 'K003', 'Sheridan Duggleby', '9554 Iowa Park', '(759) 9661504', '2019-01-14 00:00:00'),
('P0000000626', '0001', 'K003', 'Mabelle Gotecliffe', '03809 Mesta Hill', '(774) 9055686', '2018-09-01 00:00:00'),
('P0000000627', '0001', 'K003', 'Elston Axleby', '9113 Milwaukee Hill', '(255) 3840167', '2018-08-28 00:00:00'),
('P0000000628', '0001', 'K003', 'Jackelyn Clericoates', '99561 Vernon Hill', '(892) 7601748', '2018-12-24 00:00:00'),
('P0000000629', '0001', 'K003', 'Michaela Dowman', '66893 Amoth Center', '(102) 7615257', '2019-02-10 00:00:00'),
('P0000000630', '0001', 'K003', 'Nola Speares', '953 Corscot Avenue', '(492) 4096020', '2019-01-12 00:00:00'),
('P0000000631', '0001', 'K003', 'Kelsi Radborn', '3 Arrowood Plaza', '(351) 6995238', '2018-12-26 00:00:00'),
('P0000000632', '0001', 'K003', 'Binky Fiennes', '92 Ridgeview Circle', '(145) 2293324', '2018-10-31 00:00:00'),
('P0000000633', '0001', 'K003', 'Lazarus Waylen', '281 Service Terrace', '(327) 3122349', '2018-10-27 00:00:00'),
('P0000000634', '0001', 'K003', 'Gustie Ordemann', '43503 Graedel Hill', '(359) 1114083', '2019-01-25 00:00:00'),
('P0000000635', '0001', 'K003', 'Wadsworth Sanford', '02 Eastwood Court', '(502) 6799732', '2018-09-30 00:00:00'),
('P0000000636', '0001', 'K003', 'Arnaldo Holttom', '2 Maywood Terrace', '(961) 6217602', '2018-09-10 00:00:00'),
('P0000000637', '0001', 'K003', 'Ricki Fosserd', '41 Westridge Parkway', '(848) 6938538', '2018-08-31 00:00:00'),
('P0000000638', '0001', 'K003', 'Alic Ravenscraft', '29564 Scott Road', '(504) 3494978', '2018-11-27 00:00:00'),
('P0000000639', '0001', 'K003', 'Giffard Carayol', '2922 Express Center', '(683) 9150218', '2018-12-05 00:00:00'),
('P0000000640', '0001', 'K003', 'Gasparo McIlmurray', '8 Hollow Ridge Hill', '(824) 9601609', '2018-10-07 00:00:00'),
('P0000000641', '0001', 'K003', 'Karlik Ranyard', '169 Sauthoff Trail', '(519) 5423074', '2019-02-15 00:00:00'),
('P0000000642', '0001', 'K003', 'Emlyn Hysom', '42896 Hovde Hill', '(372) 3491988', '2019-03-09 00:00:00'),
('P0000000643', '0001', 'K003', 'Rubetta Spary', '3 Jenifer Plaza', '(628) 5240281', '2018-08-28 00:00:00'),
('P0000000644', '0001', 'K003', 'Josee Mc Trusty', '5815 Messerschmidt Court', '(601) 9135350', '2018-11-18 00:00:00'),
('P0000000645', '0001', 'K003', 'Webster Rutherforth', '94416 Nelson Avenue', '(734) 3413067', '2018-09-29 00:00:00'),
('P0000000646', '0001', 'K003', 'Lyndell Faivre', '1649 Amoth Hill', '(983) 6470853', '2019-01-29 00:00:00'),
('P0000000647', '0001', 'K003', 'Sheila-kathryn Gregorio', '9266 Tennyson Terrace', '(939) 2421912', '2018-09-20 00:00:00'),
('P0000000648', '0001', 'K003', 'Mahala Marczyk', '86 Gateway Place', '(152) 2459211', '2018-09-23 00:00:00'),
('P0000000649', '0001', 'K003', 'Godfree Couling', '5 High Crossing Pass', '(454) 9250744', '2018-09-24 00:00:00'),
('P0000000650', '0001', 'K003', 'Adiana Sewall', '9 Mallory Junction', '(103) 7706819', '2018-09-23 00:00:00'),
('P0000000651', '0001', 'K003', 'Vilma Glancy', '110 Judy Point', '(506) 5567564', '2019-03-26 00:00:00'),
('P0000000652', '0001', 'K003', 'Ingamar Nano', '51702 Barby Place', '(560) 5618606', '2018-08-31 00:00:00'),
('P0000000653', '0001', 'K003', 'Roarke Biernacki', '605 South Pass', '(961) 2746816', '2019-02-26 00:00:00'),
('P0000000654', '0001', 'K003', 'Nesta Holsey', '0179 Cottonwood Court', '(251) 8481644', '2018-10-26 00:00:00'),
('P0000000655', '0001', 'K003', 'Delmar Roller', '71309 Londonderry Center', '(939) 8992935', '2018-11-21 00:00:00'),
('P0000000656', '0001', 'K003', 'Isaiah Jeggo', '3 Susan Parkway', '(624) 1171241', '2018-12-27 00:00:00'),
('P0000000657', '0001', 'K003', 'Emyle Sweetland', '920 Vahlen Lane', '(742) 3161755', '2019-02-16 00:00:00'),
('P0000000658', '0001', 'K003', 'Rorke McNern', '34041 Leroy Point', '(925) 3231343', '2019-02-26 00:00:00'),
('P0000000659', '0001', 'K003', 'Levy Roumier', '556 Pierstorff Drive', '(200) 7871929', '2018-12-31 00:00:00'),
('P0000000660', '0001', 'K003', 'Feodora Pittendreigh', '7800 Oak Court', '(446) 9862799', '2018-12-24 00:00:00'),
('P0000000661', '0001', 'K003', 'Alisa Blader', '31916 Warbler Avenue', '(473) 3881625', '2019-04-11 00:00:00'),
('P0000000662', '0001', 'K003', 'Scott Dyter', '0 Montana Hill', '(765) 4245897', '2019-03-07 00:00:00'),
('P0000000663', '0001', 'K003', 'Sharity Tummond', '1 Doe Crossing Center', '(136) 9547557', '2019-03-21 00:00:00'),
('P0000000664', '0001', 'K003', 'Olly Scarffe', '2 Crowley Center', '(874) 8051839', '2018-12-18 00:00:00'),
('P0000000665', '0001', 'K003', 'Bibbye Lamey', '48 Gina Street', '(652) 6033358', '2018-12-28 00:00:00'),
('P0000000666', '0001', 'K003', 'Tobi Pappi', '8 Anderson Point', '(220) 7205935', '2018-11-09 00:00:00'),
('P0000000667', '0001', 'K003', 'Konrad Baddeley', '51 Prentice Parkway', '(720) 8313068', '2019-02-24 00:00:00'),
('P0000000668', '0001', 'K003', 'Meggy Barnish', '502 Arkansas Terrace', '(302) 7046567', '2018-09-04 00:00:00'),
('P0000000669', '0001', 'K003', 'Renate Billingsly', '2 Kropf Avenue', '(830) 8410991', '2019-01-28 00:00:00'),
('P0000000670', '0001', 'K003', 'Angeli Abatelli', '798 Esch Alley', '(675) 1351641', '2018-10-14 00:00:00'),
('P0000000671', '0001', 'K003', 'Lorraine Stoffler', '8677 Eagan Road', '(949) 2319758', '2018-11-25 00:00:00'),
('P0000000672', '0001', 'K003', 'Mohandis Jacobowicz', '52 Bayside Street', '(617) 1083708', '2019-04-08 00:00:00'),
('P0000000673', '0001', 'K003', 'Sergei Netting', '23258 Packers Road', '(484) 2506561', '2019-02-13 00:00:00'),
('P0000000674', '0001', 'K003', 'Aldis Galloway', '29 Evergreen Street', '(215) 6099744', '2018-12-27 00:00:00'),
('P0000000675', '0001', 'K003', 'Jabez Basezzi', '97 Sundown Place', '(304) 3291243', '2019-03-16 00:00:00'),
('P0000000676', '0001', 'K003', 'Erskine Paskins', '04519 Debs Center', '(404) 6454824', '2019-03-08 00:00:00'),
('P0000000677', '0001', 'K003', 'Raye Sedworth', '5920 Elgar Junction', '(797) 4062588', '2018-11-03 00:00:00'),
('P0000000678', '0001', 'K003', 'Marve Powell', '162 Tennessee Trail', '(794) 7199327', '2019-01-16 00:00:00'),
('P0000000679', '0001', 'K003', 'Mariellen MacLaughlin', '86 Fair Oaks Crossing', '(396) 4159250', '2019-01-10 00:00:00'),
('P0000000680', '0001', 'K003', 'Ben Clackers', '80 Darwin Place', '(593) 1562380', '2018-11-18 00:00:00'),
('P0000000681', '0001', 'K003', 'Karney Give', '8 Oak Way', '(149) 9261054', '2018-09-20 00:00:00'),
('P0000000682', '0001', 'K003', 'Yvonne Kaman', '29604 Northland Court', '(847) 9912951', '2019-02-05 00:00:00'),
('P0000000683', '0001', 'K003', 'Britte Girault', '11 Riverside Point', '(370) 4216927', '2019-03-31 00:00:00'),
('P0000000684', '0001', 'K003', 'Belinda Sunderland', '1204 Algoma Point', '(276) 3526980', '2019-01-29 00:00:00'),
('P0000000685', '0001', 'K003', 'Vernen Melvin', '995 Erie Avenue', '(134) 9264822', '2018-10-28 00:00:00'),
('P0000000686', '0001', 'K003', 'Arlina Henkens', '9 Paget Street', '(955) 7422567', '2018-12-24 00:00:00'),
('P0000000687', '0001', 'K003', 'Gwendolin Water', '3441 Mayfield Park', '(913) 6530420', '2018-12-19 00:00:00'),
('P0000000688', '0001', 'K003', 'Clareta Smitton', '35 Fuller Center', '(406) 6304999', '2018-09-27 00:00:00'),
('P0000000689', '0001', 'K003', 'Shela Frankcomb', '67075 Bunting Drive', '(369) 8436675', '2018-12-03 00:00:00'),
('P0000000690', '0001', 'K003', 'Elladine End', '85 Elgar Crossing', '(425) 2425548', '2019-02-01 00:00:00'),
('P0000000691', '0001', 'K003', 'Liliane Inett', '0 Hanover Road', '(279) 9229329', '2018-12-05 00:00:00'),
('P0000000692', '0001', 'K003', 'Terza Abramov', '4 Lake View Lane', '(460) 6007861', '2018-09-07 00:00:00'),
('P0000000693', '0001', 'K003', 'Sharla Hadigate', '8 Old Shore Place', '(219) 9132705', '2018-10-13 00:00:00'),
('P0000000694', '0001', 'K003', 'Jody Haydn', '04705 Pond Street', '(642) 9586896', '2019-04-06 00:00:00'),
('P0000000695', '0001', 'K003', 'Colan Dallan', '17961 Mitchell Park', '(549) 9870734', '2019-03-25 00:00:00'),
('P0000000696', '0001', 'K003', 'Felicia Reinbach', '9 Cardinal Circle', '(698) 8496818', '2019-03-21 00:00:00'),
('P0000000697', '0001', 'K003', 'Eddie Lowder', '92 Dwight Plaza', '(658) 5940104', '2018-12-08 00:00:00'),
('P0000000698', '0001', 'K003', 'Bertina Becerro', '2 Harbort Road', '(252) 1433240', '2018-12-06 00:00:00'),
('P0000000699', '0001', 'K003', 'Lelia Panketh', '0301 Judy Road', '(274) 7622577', '2019-01-01 00:00:00'),
('P0000000700', '0001', 'K003', 'Germain Birkmyr', '4162 Farwell Road', '(426) 7673185', '2019-03-03 00:00:00'),
('P0000000701', '0001', 'K003', 'Hanan Laughrey', '961 Summit Court', '(741) 4695728', '2018-11-04 00:00:00'),
('P0000000702', '0001', 'K003', 'Dore Grand', '35047 Debs Terrace', '(235) 9834988', '2018-10-12 00:00:00'),
('P0000000703', '0001', 'K003', 'Waldemar Willcot', '63 Alpine Hill', '(584) 2360111', '2019-03-21 00:00:00'),
('P0000000704', '0001', 'K003', 'Ancell McCorrie', '4761 Arizona Place', '(541) 1492864', '2019-04-10 00:00:00'),
('P0000000705', '0001', 'K003', 'Jacquette Yglesia', '2097 Superior Parkway', '(951) 5677149', '2018-10-28 00:00:00'),
('P0000000706', '0001', 'K003', 'Trey Moulson', '4 Bayside Junction', '(623) 2501237', '2018-10-23 00:00:00'),
('P0000000707', '0001', 'K003', 'Erwin Lawrenson', '2 Lawn Drive', '(487) 9058926', '2018-10-20 00:00:00'),
('P0000000708', '0001', 'K003', 'Herta Brighty', '6837 Village Parkway', '(526) 3466021', '2018-10-30 00:00:00'),
('P0000000709', '0001', 'K003', 'Giffer MacGibbon', '55 Ilene Parkway', '(896) 4470197', '2018-10-23 00:00:00'),
('P0000000710', '0001', 'K003', 'Hannis Lanbertoni', '899 Anzinger Point', '(710) 3994393', '2018-10-10 00:00:00'),
('P0000000711', '0001', 'K003', 'Neill Endley', '1252 Merrick Place', '(202) 6020626', '2019-03-21 00:00:00'),
('P0000000712', '0001', 'K003', 'Gian Sorensen', '65 Mallory Point', '(198) 2718519', '2019-03-17 00:00:00'),
('P0000000713', '0001', 'K003', 'Eddi Castellani', '83 Truax Pass', '(316) 5243030', '2018-10-16 00:00:00'),
('P0000000714', '0001', 'K003', 'Borg Moxson', '0 Scott Street', '(405) 8340853', '2018-11-08 00:00:00'),
('P0000000715', '0001', 'K003', 'Stern Skerrett', '59861 Bellgrove Court', '(677) 6489861', '2018-12-16 00:00:00'),
('P0000000716', '0001', 'K003', 'Daryn Trencher', '576 Oak Road', '(166) 6714509', '2018-12-11 00:00:00'),
('P0000000717', '0001', 'K003', 'Shamus Crucetti', '002 Village Alley', '(741) 4852336', '2018-09-15 00:00:00'),
('P0000000718', '0001', 'K003', 'Lana Ridgeway', '120 Troy Alley', '(373) 7587308', '2018-10-31 00:00:00'),
('P0000000719', '0001', 'K003', 'Rinaldo Bottoms', '687 Bellgrove Terrace', '(824) 4801637', '2019-01-10 00:00:00'),
('P0000000720', '0001', 'K003', 'Helene Lossman', '632 American Terrace', '(632) 2540844', '2019-01-11 00:00:00'),
('P0000000721', '0001', 'K003', 'Doris Hartill', '74 North Alley', '(860) 1088766', '2019-03-15 00:00:00'),
('P0000000722', '0001', 'K003', 'Karita Dawltrey', '877 Graedel Terrace', '(807) 9050976', '2018-10-01 00:00:00'),
('P0000000723', '0001', 'K003', 'Felice Keegan', '7863 Warner Parkway', '(831) 6308470', '2018-09-13 00:00:00'),
('P0000000724', '0001', 'K003', 'Farris Wain', '5 Buena Vista Pass', '(918) 3498698', '2019-01-29 00:00:00'),
('P0000000725', '0001', 'K003', 'Shane Mullan', '0676 Carberry Place', '(226) 7187199', '2018-11-18 00:00:00'),
('P0000000726', '0001', 'K003', 'Jilleen Pethrick', '68191 Dwight Alley', '(412) 4315742', '2018-12-21 00:00:00'),
('P0000000727', '0001', 'K003', 'Fernandina Botwood', '2 Elgar Lane', '(700) 1086151', '2018-12-28 00:00:00'),
('P0000000728', '0001', 'K003', 'Fulvia Pesek', '455 Warbler Center', '(990) 8800792', '2019-02-23 00:00:00'),
('P0000000729', '0001', 'K003', 'Audry Brinded', '3 Farwell Junction', '(189) 2372724', '2018-12-27 00:00:00'),
('P0000000730', '0001', 'K003', 'Antonietta Spavins', '7762 Vermont Street', '(401) 4664397', '2019-03-18 00:00:00'),
('P0000000731', '0001', 'K003', 'Carie Hiers', '2 Forest Alley', '(535) 9480272', '2018-10-28 00:00:00'),
('P0000000732', '0001', 'K003', 'Robinette Banishevitz', '83 Dayton Park', '(269) 5493253', '2019-03-19 00:00:00'),
('P0000000733', '0001', 'K003', 'Dal Appleby', '537 Northridge Parkway', '(601) 3640800', '2018-09-05 00:00:00'),
('P0000000734', '0001', 'K003', 'Jase Creak', '404 Merry Park', '(739) 3953064', '2018-10-27 00:00:00'),
('P0000000735', '0001', 'K003', 'Mufinella Wellsman', '9302 Briar Crest Way', '(520) 2633681', '2019-04-05 00:00:00'),
('P0000000736', '0001', 'K003', 'Bessy Maycey', '03311 Carioca Pass', '(750) 4760141', '2018-11-30 00:00:00'),
('P0000000737', '0001', 'K003', 'Candi Macbeth', '6 Melby Point', '(212) 7835939', '2019-03-11 00:00:00'),
('P0000000738', '0001', 'K003', 'Marquita Gallego', '926 Mcguire Hill', '(192) 5716457', '2018-11-30 00:00:00'),
('P0000000739', '0001', 'K003', 'Worthy Vinnick', '36010 Huxley Circle', '(678) 5922085', '2019-01-04 00:00:00'),
('P0000000740', '0001', 'K003', 'Ricardo Castelletti', '2534 Lawn Parkway', '(101) 6734367', '2019-03-18 00:00:00'),
('P0000000741', '0001', 'K003', 'Dev Belfrage', '39049 Melody Junction', '(805) 1481982', '2018-09-08 00:00:00'),
('P0000000742', '0001', 'K003', 'Bellanca Caldwell', '9872 Rutledge Court', '(548) 4891572', '2019-03-02 00:00:00'),
('P0000000743', '0001', 'K003', 'Gal Walster', '3 Kings Lane', '(954) 1906821', '2018-10-08 00:00:00'),
('P0000000744', '0001', 'K003', 'Elena Shayler', '6185 Coleman Trail', '(864) 3375782', '2018-10-29 00:00:00'),
('P0000000745', '0001', 'K003', 'Barton Stallibrass', '20 Judy Lane', '(239) 9526957', '2018-12-16 00:00:00'),
('P0000000746', '0001', 'K003', 'Salmon Chanter', '10 Walton Crossing', '(244) 5947254', '2019-02-05 00:00:00'),
('P0000000747', '0001', 'K003', 'Lorna Trevethan', '77 Lakeland Plaza', '(659) 6691113', '2019-01-30 00:00:00'),
('P0000000748', '0001', 'K003', 'Brant Ilbert', '37 Huxley Parkway', '(133) 4508779', '2018-09-19 00:00:00'),
('P0000000749', '0001', 'K003', 'Deerdre O\'Connell', '02013 Prairie Rose Trail', '(790) 6469644', '2018-10-03 00:00:00'),
('P0000000750', '0001', 'K003', 'Flory Stourton', '406 La Follette Drive', '(700) 3898906', '2018-10-17 00:00:00'),
('P0000000751', '0001', 'K003', 'Guthrie Pickthorne', '510 Eastlawn Lane', '(669) 9161971', '2018-10-24 00:00:00'),
('P0000000752', '0001', 'K003', 'Meredith Hallas', '1 Mandrake Trail', '(533) 3199180', '2019-01-12 00:00:00'),
('P0000000753', '0001', 'K003', 'Kevyn Sorton', '28 Rusk Trail', '(360) 2216586', '2018-08-28 00:00:00'),
('P0000000754', '0001', 'K003', 'Pedro Lukas', '595 Judy Road', '(941) 1428604', '2018-10-01 00:00:00'),
('P0000000755', '0001', 'K003', 'Egan Souter', '54229 Monterey Pass', '(842) 5653839', '2019-01-18 00:00:00'),
('P0000000756', '0001', 'K003', 'Wildon Faccini', '760 Mendota Avenue', '(952) 9009908', '2018-11-14 00:00:00'),
('P0000000757', '0001', 'K003', 'Olive Ferebee', '217 Saint Paul Court', '(107) 3767846', '2018-10-23 00:00:00'),
('P0000000758', '0001', 'K003', 'Amelia Headan', '71 Claremont Court', '(170) 5158327', '2018-10-25 00:00:00'),
('P0000000759', '0001', 'K003', 'Shaw Marjanski', '88381 Pennsylvania Circle', '(877) 4568655', '2019-02-27 00:00:00'),
('P0000000760', '0001', 'K003', 'Aime Cloute', '1 Rieder Crossing', '(572) 9420757', '2019-03-01 00:00:00'),
('P0000000761', '0001', 'K003', 'Gallard Boulton', '10795 Ludington Lane', '(986) 4726025', '2019-02-11 00:00:00'),
('P0000000762', '0001', 'K003', 'Donielle Hallan', '5324 Corben Center', '(202) 4820905', '2018-10-01 00:00:00'),
('P0000000763', '0001', 'K003', 'Daisy Beauchop', '73881 Washington Junction', '(675) 3662503', '2018-10-07 00:00:00'),
('P0000000764', '0001', 'K003', 'Ealasaid O\'Crowley', '31304 1st Lane', '(748) 7515113', '2019-01-07 00:00:00'),
('P0000000765', '0001', 'K003', 'Georgie Cockshut', '44792 Linden Terrace', '(635) 4707958', '2019-04-14 00:00:00'),
('P0000000766', '0001', 'K003', 'Pembroke Birkhead', '595 Charing Cross Alley', '(109) 6616448', '2019-04-10 00:00:00'),
('P0000000767', '0001', 'K003', 'Cally Littrell', '22978 Veith Alley', '(807) 6352311', '2019-01-16 00:00:00'),
('P0000000768', '0001', 'K003', 'Janifer Rosellini', '3879 Scott Street', '(692) 3842531', '2019-04-11 00:00:00'),
('P0000000769', '0001', 'K003', 'Cosetta Itzkovwich', '1929 Dayton Park', '(794) 9922064', '2019-02-03 00:00:00'),
('P0000000770', '0001', 'K003', 'Lianne Piddock', '91 Alpine Plaza', '(916) 8962605', '2018-09-05 00:00:00'),
('P0000000771', '0001', 'K003', 'Felicio Bachanski', '81 Northport Pass', '(216) 7700935', '2018-09-26 00:00:00'),
('P0000000772', '0001', 'K003', 'Allistir Eayrs', '3 Loeprich Pass', '(763) 5195525', '2019-03-01 00:00:00'),
('P0000000773', '0001', 'K003', 'Cameron Murford', '18 Farragut Plaza', '(641) 8355395', '2019-02-27 00:00:00'),
('P0000000774', '0001', 'K003', 'Lorne Garlick', '0 Moose Center', '(172) 7674738', '2018-10-12 00:00:00'),
('P0000000775', '0001', 'K003', 'Randie Laroux', '17980 Mendota Park', '(260) 3409941', '2019-04-06 00:00:00'),
('P0000000776', '0001', 'K003', 'Thorn Ierland', '423 Michigan Road', '(630) 1436510', '2018-10-12 00:00:00'),
('P0000000777', '0001', 'K003', 'Ramsey Kenvin', '713 Northview Pass', '(938) 5016414', '2019-03-19 00:00:00'),
('P0000000778', '0001', 'K003', 'Evvy Danelut', '0842 Sycamore Circle', '(818) 8023517', '2018-10-10 00:00:00'),
('P0000000779', '0001', 'K003', 'Dynah Gathercole', '7614 Coleman Way', '(151) 7457685', '2018-11-20 00:00:00'),
('P0000000780', '0001', 'K003', 'Jeana Beedie', '267 Mockingbird Trail', '(455) 3719988', '2019-04-03 00:00:00'),
('P0000000781', '0001', 'K003', 'Andrej Cantopher', '10 Kinsman Drive', '(743) 1609619', '2019-03-17 00:00:00'),
('P0000000782', '0001', 'K003', 'Jody Perigeaux', '5 Starling Drive', '(915) 5299226', '2018-10-08 00:00:00'),
('P0000000783', '0001', 'K003', 'Lucky McBayne', '4934 Straubel Terrace', '(534) 3159349', '2019-02-14 00:00:00'),
('P0000000784', '0001', 'K003', 'Cayla Gulland', '17647 South Lane', '(188) 9071303', '2019-01-09 00:00:00'),
('P0000000785', '0001', 'K003', 'Sauncho Hanmer', '5 Reindahl Junction', '(538) 7048202', '2018-12-26 00:00:00'),
('P0000000786', '0001', 'K003', 'Coleman Howard', '422 Lyons Crossing', '(507) 1907833', '2019-01-17 00:00:00'),
('P0000000787', '0001', 'K003', 'Del Chesher', '57 La Follette Drive', '(674) 7123694', '2019-04-17 00:00:00'),
('P0000000788', '0001', 'K003', 'Shaylynn Tollemache', '6368 Holmberg Parkway', '(677) 8458345', '2019-03-23 00:00:00'),
('P0000000789', '0001', 'K003', 'Therine Gasticke', '102 Elka Point', '(225) 6035910', '2019-04-03 00:00:00'),
('P0000000790', '0001', 'K003', 'Chickie Philimore', '4 Truax Plaza', '(322) 3216167', '2019-03-20 00:00:00'),
('P0000000791', '0001', 'K003', 'Dov Gurwood', '471 Sage Center', '(540) 1722466', '2018-10-18 00:00:00'),
('P0000000792', '0001', 'K003', 'Austina Slark', '1 Susan Point', '(561) 3391955', '2018-11-03 00:00:00'),
('P0000000793', '0001', 'K003', 'Mari Maps', '797 Becker Circle', '(311) 9310275', '2018-10-17 00:00:00'),
('P0000000794', '0001', 'K003', 'Thurstan Pigot', '937 Myrtle Hill', '(664) 9527948', '2019-01-12 00:00:00'),
('P0000000795', '0001', 'K003', 'Marys Cossington', '2 Grover Street', '(257) 9132545', '2019-01-15 00:00:00'),
('P0000000796', '0001', 'K003', 'Brion O\'Hallihane', '7900 Lighthouse Bay Plaza', '(723) 6309315', '2018-08-30 00:00:00'),
('P0000000797', '0001', 'K003', 'Bastien Hankard', '081 Del Sol Terrace', '(757) 6339222', '2018-10-06 00:00:00'),
('P0000000798', '0001', 'K003', 'Kendre Surgeoner', '9548 Scott Center', '(871) 1417989', '2018-09-02 00:00:00'),
('P0000000799', '0001', 'K003', 'Neysa Demange', '5 Donald Pass', '(866) 9250218', '2018-12-14 00:00:00'),
('P0000000800', '0001', 'K003', 'Othella Bottell', '6 Harbort Street', '(662) 7955585', '2018-11-03 00:00:00'),
('P0000000801', '0001', 'K003', 'Ethyl Carslaw', '8 Orin Way', '(218) 6475784', '2018-09-21 00:00:00'),
('P0000000802', '0001', 'K003', 'Culley Planks', '334 Parkside Avenue', '(196) 7454485', '2019-01-18 00:00:00'),
('P0000000803', '0001', 'K003', 'Thomasine Gunter', '106 Montana Place', '(219) 1194768', '2018-11-03 00:00:00'),
('P0000000804', '0001', 'K003', 'Silvana Laterza', '312 Tomscot Way', '(883) 9539612', '2018-10-11 00:00:00'),
('P0000000805', '0001', 'K003', 'Gustaf Henstone', '5855 Goodland Trail', '(726) 8746784', '2018-11-09 00:00:00'),
('P0000000806', '0001', 'K003', 'Delores Twiddell', '40 Village Green Street', '(760) 6467595', '2018-09-29 00:00:00'),
('P0000000807', '0001', 'K003', 'Eartha Berlin', '2 Hollow Ridge Street', '(171) 7060210', '2018-11-27 00:00:00'),
('P0000000808', '0001', 'K003', 'Panchito Beebee', '79 Harper Court', '(831) 5851913', '2019-01-29 00:00:00'),
('P0000000809', '0001', 'K003', 'Briana Willerson', '42 John Wall Place', '(803) 2943423', '2019-02-24 00:00:00'),
('P0000000810', '0001', 'K003', 'Nessie Giraldon', '0 Sunnyside Parkway', '(248) 7605209', '2018-09-10 00:00:00'),
('P0000000811', '0001', 'K003', 'Riane Balkwill', '2 Pankratz Lane', '(796) 7519269', '2018-11-30 00:00:00'),
('P0000000812', '0001', 'K003', 'Inigo Feeney', '02 Texas Plaza', '(604) 1279515', '2018-12-28 00:00:00'),
('P0000000813', '0001', 'K003', 'Dorena Muggleston', '40 Cody Way', '(363) 2751235', '2019-03-18 00:00:00'),
('P0000000814', '0001', 'K003', 'Anthia Iannazzi', '31 Twin Pines Pass', '(747) 4740143', '2018-12-19 00:00:00'),
('P0000000815', '0001', 'K003', 'Ricki Adie', '588 Hoepker Point', '(455) 2780045', '2019-03-28 00:00:00'),
('P0000000816', '0001', 'K003', 'Kellby Gypson', '4 Chive Street', '(603) 2051829', '2018-09-11 00:00:00'),
('P0000000817', '0001', 'K003', 'Avigdor Kesley', '04 Tennyson Junction', '(115) 2484232', '2019-02-06 00:00:00'),
('P0000000818', '0001', 'K003', 'Betteann Earpe', '0116 Chinook Center', '(569) 6669343', '2019-03-09 00:00:00'),
('P0000000819', '0001', 'K003', 'Gan Ximenez', '0 Trailsway Place', '(947) 2367113', '2019-03-31 00:00:00'),
('P0000000820', '0001', 'K003', 'Yuma Nardrup', '17445 Tennessee Circle', '(524) 9267380', '2019-02-14 00:00:00'),
('P0000000821', '0001', 'K003', 'Tessie Giacoppo', '14 Lake View Junction', '(971) 8903541', '2018-09-04 00:00:00'),
('P0000000822', '0001', 'K003', 'Henrie Dundon', '0861 2nd Avenue', '(865) 4746264', '2019-03-18 00:00:00'),
('P0000000823', '0001', 'K003', 'Hildegaard Bale', '57340 Bultman Parkway', '(117) 1733055', '2019-03-30 00:00:00'),
('P0000000824', '0001', 'K003', 'Tyne Grioli', '89009 Mesta Street', '(856) 3217779', '2018-11-25 00:00:00'),
('P0000000825', '0001', 'K003', 'Minerva Cruden', '0137 Karstens Junction', '(889) 8037027', '2019-02-09 00:00:00'),
('P0000000826', '0001', 'K003', 'Bernardina Kalf', '21213 Dovetail Trail', '(513) 2782506', '2019-01-06 00:00:00'),
('P0000000827', '0001', 'K003', 'Louisette Semorad', '89 Forster Point', '(349) 1804567', '2018-12-26 00:00:00'),
('P0000000828', '0001', 'K003', 'Huntington Folomin', '54 Gerald Park', '(850) 8281993', '2018-11-02 00:00:00'),
('P0000000829', '0001', 'K003', 'Dallas Raden', '2 Doe Crossing Circle', '(154) 7436987', '2019-02-16 00:00:00'),
('P0000000830', '0001', 'K003', 'Karylin Elderkin', '5348 Comanche Crossing', '(343) 7928368', '2018-12-28 00:00:00'),
('P0000000831', '0001', 'K003', 'Rhonda Haggidon', '8658 Bayside Court', '(780) 6040846', '2019-01-05 00:00:00'),
('P0000000832', '0001', 'K003', 'Marney Cadwaladr', '7328 Northfield Circle', '(825) 8561744', '2019-02-10 00:00:00'),
('P0000000833', '0001', 'K003', 'Humfried Habbert', '58671 Dryden Place', '(745) 4995672', '2019-04-09 00:00:00'),
('P0000000834', '0001', 'K003', 'Gar Ormesher', '05209 Anzinger Junction', '(729) 6766659', '2019-02-07 00:00:00'),
('P0000000835', '0001', 'K003', 'Franchot Tixall', '9192 Dakota Hill', '(467) 6070999', '2019-03-19 00:00:00'),
('P0000000836', '0001', 'K003', 'Ardeen Pinchbeck', '5 Stone Corner Place', '(311) 1180447', '2019-01-03 00:00:00'),
('P0000000837', '0001', 'K003', 'Effie Geggus', '36 High Crossing Lane', '(104) 4043069', '2019-01-24 00:00:00'),
('P0000000838', '0001', 'K003', 'Vanda Lamas', '817 Westerfield Alley', '(319) 7789167', '2018-11-16 00:00:00'),
('P0000000839', '0001', 'K003', 'Adriana Enga', '14 Dwight Terrace', '(181) 6171543', '2019-02-19 00:00:00'),
('P0000000840', '0001', 'K003', 'Sunny Ralling', '715 Chinook Trail', '(565) 5328567', '2019-02-16 00:00:00'),
('P0000000841', '0001', 'K003', 'Aveline Steuhlmeyer', '26 Lyons Drive', '(386) 5116560', '2019-03-07 00:00:00'),
('P0000000842', '0001', 'K003', 'Vinnie Normanvell', '3 Dorton Point', '(388) 4655472', '2018-10-24 00:00:00'),
('P0000000843', '0001', 'K003', 'Gene Arnli', '3761 Fuller Terrace', '(895) 2013503', '2019-04-08 00:00:00'),
('P0000000844', '0001', 'K003', 'Tomas Redwood', '3 Caliangt Circle', '(105) 7160800', '2019-01-28 00:00:00'),
('P0000000845', '0001', 'K003', 'Amby Hailston', '27183 Hollow Ridge Avenue', '(520) 5338068', '2018-11-30 00:00:00'),
('P0000000846', '0001', 'K003', 'Gerardo Keuneke', '3679 Arkansas Way', '(347) 7340417', '2019-04-16 00:00:00'),
('P0000000847', '0001', 'K003', 'Rupert Maddox', '3526 Northland Junction', '(718) 5085598', '2018-11-10 00:00:00'),
('P0000000848', '0001', 'K003', 'Salaidh Menere', '4 Vermont Hill', '(412) 6036063', '2018-11-04 00:00:00'),
('P0000000849', '0001', 'K003', 'Kalinda Costan', '220 Di Loreto Junction', '(322) 4693591', '2019-02-10 00:00:00'),
('P0000000850', '0001', 'K003', 'Dolores McGavin', '80783 Shoshone Court', '(277) 9175906', '2018-10-25 00:00:00'),
('P0000000851', '0001', 'K003', 'Eula Bucklan', '52 Eastwood Parkway', '(329) 3324700', '2019-04-12 00:00:00'),
('P0000000852', '0001', 'K003', 'Sandie Rapps', '65052 Clyde Gallagher Drive', '(631) 8353505', '2019-01-10 00:00:00'),
('P0000000853', '0001', 'K003', 'Willem Dana', '76891 Village Green Alley', '(487) 8767532', '2018-12-18 00:00:00'),
('P0000000854', '0001', 'K003', 'Merilyn Kunrad', '547 Clove Street', '(640) 9171716', '2018-10-15 00:00:00'),
('P0000000855', '0001', 'K003', 'Peadar Dudney', '502 Swallow Hill', '(835) 8248121', '2018-11-26 00:00:00'),
('P0000000856', '0001', 'K003', 'Alvera Trelease', '08401 Red Cloud Park', '(235) 1544863', '2018-10-31 00:00:00'),
('P0000000857', '0001', 'K003', 'Sandy Ausiello', '7 Ridge Oak Circle', '(215) 4341614', '2019-01-02 00:00:00'),
('P0000000858', '0001', 'K003', 'Vally Skottle', '3 Sachs Trail', '(212) 4414307', '2019-01-18 00:00:00'),
('P0000000859', '0001', 'K003', 'Belinda Toller', '4512 Rockefeller Terrace', '(939) 3887323', '2018-10-14 00:00:00'),
('P0000000860', '0001', 'K003', 'Debera Mumbray', '53 Mifflin Drive', '(421) 3788223', '2018-11-29 00:00:00'),
('P0000000861', '0001', 'K003', 'Roma Wyllcock', '7 Melby Park', '(991) 1816552', '2019-02-19 00:00:00'),
('P0000000862', '0001', 'K003', 'Tally Duplain', '13923 7th Point', '(709) 5485626', '2018-09-22 00:00:00'),
('P0000000863', '0001', 'K003', 'Robbi Bitterton', '997 Elmside Circle', '(877) 7592587', '2019-02-22 00:00:00'),
('P0000000864', '0001', 'K003', 'Culver Cabel', '67265 Esker Junction', '(843) 2740449', '2018-11-13 00:00:00'),
('P0000000865', '0001', 'K003', 'Hamid Fletcher', '6 Fieldstone Center', '(713) 4306795', '2018-11-07 00:00:00'),
('P0000000866', '0001', 'K003', 'Nigel Shepheard', '2 Messerschmidt Lane', '(743) 4349136', '2019-03-27 00:00:00'),
('P0000000867', '0001', 'K003', 'Fanny Hanlin', '310 Forest Street', '(608) 2876735', '2018-09-20 00:00:00'),
('P0000000868', '0001', 'K003', 'Linzy Ubsdale', '253 Main Place', '(615) 4278476', '2018-10-10 00:00:00'),
('P0000000869', '0001', 'K003', 'Morris Vasyuchov', '831 Mcguire Way', '(680) 2087622', '2019-03-31 00:00:00'),
('P0000000870', '0001', 'K003', 'Violet Kirstein', '050 Barby Crossing', '(744) 6339791', '2018-10-03 00:00:00'),
('P0000000871', '0001', 'K003', 'Mattie Francombe', '339 Straubel Alley', '(678) 3212697', '2019-02-02 00:00:00'),
('P0000000872', '0001', 'K003', 'Marcelle Rosone', '4624 Glendale Junction', '(953) 3198438', '2018-08-31 00:00:00'),
('P0000000873', '0001', 'K003', 'Katya Ponten', '487 Riverside Center', '(117) 5893586', '2018-10-23 00:00:00'),
('P0000000874', '0001', 'K003', 'Kerby Jakeman', '17 Golf Parkway', '(539) 7243603', '2018-12-23 00:00:00'),
('P0000000875', '0001', 'K003', 'Joan Swinburne', '138 Lien Plaza', '(846) 6604158', '2019-04-15 00:00:00'),
('P0000000876', '0001', 'K003', 'Moise Aslie', '152 Prentice Parkway', '(438) 1845076', '2018-12-11 00:00:00'),
('P0000000877', '0001', 'K003', 'Nerte Hannabus', '27 Hanson Drive', '(678) 1932857', '2019-01-23 00:00:00'),
('P0000000878', '0001', 'K003', 'Melli Andre', '070 Alpine Court', '(807) 3427377', '2019-03-28 00:00:00'),
('P0000000879', '0001', 'K003', 'Bard Stair', '2576 Loeprich Drive', '(421) 4593192', '2018-11-03 00:00:00'),
('P0000000880', '0001', 'K003', 'Brenn Nasey', '996 Pawling Plaza', '(649) 3891123', '2018-09-29 00:00:00'),
('P0000000881', '0001', 'K003', 'Derick Smitham', '508 Morning Avenue', '(790) 5937237', '2018-10-06 00:00:00'),
('P0000000882', '0001', 'K003', 'Gawain Leeman', '8573 Welch Place', '(646) 8527283', '2018-09-17 00:00:00'),
('P0000000883', '0001', 'K003', 'Kevina Snasdell', '3 Mandrake Terrace', '(401) 7581155', '2018-09-20 00:00:00'),
('P0000000884', '0001', 'K003', 'Angelle Swannell', '75542 Carberry Crossing', '(637) 4464628', '2019-02-24 00:00:00'),
('P0000000885', '0001', 'K003', 'Irena Bazek', '26670 Meadow Ridge Road', '(182) 9364443', '2018-09-11 00:00:00'),
('P0000000886', '0001', 'K003', 'Artie Ealles', '557 Garrison Alley', '(921) 2378474', '2018-12-02 00:00:00'),
('P0000000887', '0001', 'K003', 'Alberto Priddie', '776 Carberry Trail', '(183) 5940865', '2019-01-24 00:00:00'),
('P0000000888', '0001', 'K003', 'Jorie Saynor', '1038 Mccormick Park', '(279) 2031243', '2019-03-09 00:00:00'),
('P0000000889', '0001', 'K003', 'Sheree Forth', '80463 Little Fleur Center', '(627) 2625595', '2019-02-15 00:00:00'),
('P0000000890', '0001', 'K003', 'Edmund Kearton', '67036 Katie Pass', '(217) 1840208', '2019-02-17 00:00:00'),
('P0000000891', '0001', 'K003', 'Dniren Biddleston', '67118 Petterle Terrace', '(727) 7239880', '2018-10-08 00:00:00'),
('P0000000892', '0001', 'K003', 'Allene Verson', '0543 Elka Park', '(710) 5221611', '2018-10-30 00:00:00'),
('P0000000893', '0001', 'K003', 'Melvyn Schubuser', '946 Warrior Junction', '(543) 9608053', '2019-03-01 00:00:00'),
('P0000000894', '0001', 'K003', 'Winifred Mobberley', '5 Esker Lane', '(817) 9862910', '2018-12-21 00:00:00'),
('P0000000895', '0001', 'K003', 'Penni Sleightholme', '618 Lakeland Court', '(122) 4226436', '2018-10-07 00:00:00'),
('P0000000896', '0001', 'K003', 'Genovera Hovie', '58 Hoepker Center', '(209) 9258647', '2018-10-15 00:00:00'),
('P0000000897', '0001', 'K003', 'George Seifert', '536 Bellgrove Point', '(164) 8560959', '2019-01-05 00:00:00'),
('P0000000898', '0001', 'K003', 'Kaitlynn MacDearmid', '48773 Barnett Avenue', '(454) 8500180', '2018-11-30 00:00:00'),
('P0000000899', '0001', 'K003', 'Vick Josse', '2939 Morrow Alley', '(371) 7587254', '2018-10-17 00:00:00'),
('P0000000900', '0001', 'K003', 'Traci Rymill', '962 Express Parkway', '(252) 2797805', '2019-04-04 00:00:00'),
('P0000000901', '0001', 'K003', 'Grata Minto', '7446 Lakewood Gardens Court', '(432) 8974402', '2019-02-25 00:00:00');
INSERT INTO `pelanggan` (`NO_PELANGGAN`, `ID_KOTA`, `ID_KOMUNITAS`, `NAMA_PLG`, `ALAMAT_PLG`, `TELEPON_PLG`, `TGL_REGIS`) VALUES
('P0000000902', '0001', 'K003', 'Brittne Crayden', '157 Truax Avenue', '(478) 3783800', '2018-10-23 00:00:00'),
('P0000000903', '0001', 'K003', 'Shellysheldon Deeks', '725 Bartillon Road', '(902) 9022242', '2019-02-01 00:00:00'),
('P0000000904', '0001', 'K003', 'Duke Ennals', '11903 Miller Trail', '(421) 2331912', '2018-11-07 00:00:00'),
('P0000000905', '0001', 'K003', 'Gerry Addams', '51504 Judy Junction', '(605) 5458208', '2019-04-07 00:00:00'),
('P0000000906', '0001', 'K003', 'Fredric Earry', '81 Crescent Oaks Road', '(659) 6017857', '2018-12-06 00:00:00'),
('P0000000907', '0001', 'K003', 'Joseito Poile', '2296 Welch Circle', '(745) 5229136', '2018-12-06 00:00:00'),
('P0000000908', '0001', 'K003', 'Quinta Muckian', '11 Forest Plaza', '(274) 9129858', '2019-04-08 00:00:00'),
('P0000000909', '0001', 'K003', 'Florenza Wagg', '037 Namekagon Lane', '(972) 9635671', '2018-10-03 00:00:00'),
('P0000000910', '0001', 'K003', 'Christiano Loble', '67602 Reindahl Center', '(554) 5799925', '2018-09-06 00:00:00'),
('P0000000911', '0001', 'K003', 'Farand Rizzotto', '1275 Charing Cross Place', '(127) 1769819', '2018-11-12 00:00:00'),
('P0000000912', '0001', 'K003', 'Noreen Geake', '19 Westport Trail', '(295) 4793754', '2018-11-13 00:00:00'),
('P0000000913', '0001', 'K003', 'Sande Lamberton', '1845 Express Lane', '(937) 5637814', '2018-09-25 00:00:00'),
('P0000000914', '0001', 'K003', 'Linet Neville', '6198 Badeau Circle', '(406) 4368288', '2018-10-14 00:00:00'),
('P0000000915', '0001', 'K003', 'Konrad Gretham', '1059 Sunbrook Plaza', '(239) 6684502', '2019-01-05 00:00:00'),
('P0000000916', '0001', 'K003', 'Jude Bryer', '79 Lerdahl Lane', '(380) 3745524', '2019-01-30 00:00:00'),
('P0000000917', '0001', 'K003', 'Jeannine Minty', '605 Oneill Terrace', '(220) 8572614', '2018-10-20 00:00:00'),
('P0000000918', '0001', 'K003', 'Ellen Soreau', '4041 Debra Alley', '(913) 9541182', '2019-01-26 00:00:00'),
('P0000000919', '0001', 'K003', 'Paige Jerdein', '0 Moulton Drive', '(203) 4564938', '2019-02-07 00:00:00'),
('P0000000920', '0001', 'K003', 'Donn Ethridge', '12329 Autumn Leaf Point', '(940) 3999384', '2018-12-26 00:00:00'),
('P0000000921', '0001', 'K003', 'Webb Callander', '9 Anniversary Hill', '(679) 4500396', '2018-11-29 00:00:00'),
('P0000000922', '0001', 'K003', 'Willi Barrim', '37 Dawn Place', '(541) 9788740', '2019-02-25 00:00:00'),
('P0000000923', '0001', 'K003', 'Jaymie Ryland', '99 Dexter Parkway', '(840) 4389212', '2018-09-16 00:00:00'),
('P0000000924', '0001', 'K003', 'Doloritas Blune', '42742 Crownhardt Drive', '(667) 5251940', '2018-10-20 00:00:00'),
('P0000000925', '0001', 'K003', 'Roth Schottli', '5445 Calypso Trail', '(790) 1949778', '2018-11-17 00:00:00'),
('P0000000926', '0001', 'K003', 'Isiahi Cosin', '27 Arkansas Hill', '(792) 5269464', '2018-11-03 00:00:00'),
('P0000000927', '0001', 'K003', 'Lexie Lettson', '79 Eastlawn Crossing', '(169) 9682444', '2019-02-17 00:00:00'),
('P0000000928', '0001', 'K003', 'Richmond Brucker', '223 Hooker Center', '(737) 8446752', '2019-03-28 00:00:00'),
('P0000000929', '0001', 'K003', 'Kristopher Leask', '95 Debra Alley', '(842) 8320157', '2019-03-11 00:00:00'),
('P0000000930', '0001', 'K003', 'Idelle Gilmore', '12 American Circle', '(337) 3322468', '2018-10-02 00:00:00'),
('P0000000931', '0001', 'K003', 'Gregorio Gaishson', '94355 American Ash Center', '(706) 4283059', '2019-03-24 00:00:00'),
('P0000000932', '0001', 'K003', 'Dasya Nestoruk', '85662 Prairieview Hill', '(812) 1992765', '2019-01-10 00:00:00'),
('P0000000933', '0001', 'K003', 'Brenden Jagg', '7209 Redwing Point', '(284) 7688887', '2019-01-17 00:00:00'),
('P0000000934', '0001', 'K003', 'Janeczka Malthouse', '89 Lighthouse Bay Crossing', '(302) 1783013', '2018-10-13 00:00:00'),
('P0000000935', '0001', 'K003', 'Dee dee Van de Vlies', '4 Bobwhite Avenue', '(336) 1478784', '2019-04-05 00:00:00'),
('P0000000936', '0001', 'K003', 'Orrin Gravatt', '91707 Drewry Court', '(447) 8329462', '2019-04-06 00:00:00'),
('P0000000937', '0001', 'K003', 'Fenelia Struys', '6432 Trailsway Way', '(692) 7363256', '2018-09-25 00:00:00'),
('P0000000938', '0001', 'K003', 'Emeline Broggelli', '9908 Duke Junction', '(795) 3209877', '2018-12-04 00:00:00'),
('P0000000939', '0001', 'K003', 'Dorry Peeke', '045 Annamark Parkway', '(260) 5422857', '2019-01-26 00:00:00'),
('P0000000940', '0001', 'K003', 'Tomlin Wickling', '12202 Chive Park', '(582) 9707428', '2018-10-15 00:00:00'),
('P0000000941', '0001', 'K003', 'Ginger Oldall', '01317 Prentice Junction', '(554) 8570742', '2018-09-13 00:00:00'),
('P0000000942', '0001', 'K003', 'Carmel Brennenstuhl', '748 Jenna Road', '(777) 7159933', '2019-02-18 00:00:00'),
('P0000000943', '0001', 'K003', 'Paolina Readwin', '6 Warner Drive', '(812) 9081388', '2018-12-11 00:00:00'),
('P0000000944', '0001', 'K003', 'Chelsy Crowder', '39 Moose Road', '(831) 3332041', '2019-03-19 00:00:00'),
('P0000000945', '0001', 'K003', 'Viola Castle', '3 Rigney Way', '(897) 7032765', '2019-03-16 00:00:00'),
('P0000000946', '0001', 'K003', 'Felecia Lambourne', '7 8th Circle', '(585) 9676615', '2019-04-12 00:00:00'),
('P0000000947', '0001', 'K003', 'Hillary Whistlecroft', '976 Brown Terrace', '(843) 4244908', '2018-09-03 00:00:00'),
('P0000000948', '0001', 'K003', 'Webster Cressingham', '23 Commercial Plaza', '(948) 5919069', '2018-12-11 00:00:00'),
('P0000000949', '0001', 'K003', 'Gaylor Brandacci', '4509 Magdeline Place', '(147) 5823730', '2019-01-08 00:00:00'),
('P0000000950', '0001', 'K003', 'Aurea Eglaise', '15496 Scofield Avenue', '(366) 4122276', '2018-10-05 00:00:00'),
('P0000000951', '0001', 'K003', 'Kelly Wasselin', '80 Londonderry Street', '(606) 9030609', '2018-12-04 00:00:00'),
('P0000000952', '0001', 'K003', 'Malissa Pelosi', '9 Bonner Parkway', '(895) 2404179', '2019-01-13 00:00:00'),
('P0000000953', '0001', 'K003', 'Lenard Hatherleigh', '896 Fieldstone Way', '(679) 8168410', '2019-01-06 00:00:00'),
('P0000000954', '0001', 'K003', 'Jerrylee Haug', '0412 Londonderry Avenue', '(183) 6039261', '2018-11-21 00:00:00'),
('P0000000955', '0001', 'K003', 'Dulcia Mocquer', '85638 Artisan Court', '(822) 4892382', '2018-11-02 00:00:00'),
('P0000000956', '0001', 'K003', 'Cory Biggin', '61734 Hayes Place', '(526) 1563774', '2019-02-27 00:00:00'),
('P0000000957', '0001', 'K003', 'Yale Kendal', '2 Maple Park', '(552) 9114576', '2019-03-15 00:00:00'),
('P0000000958', '0001', 'K003', 'Paquito Covelle', '4 Shoshone Pass', '(209) 9085592', '2018-10-15 00:00:00'),
('P0000000959', '0001', 'K003', 'Skyler Kleinberer', '645 Graedel Parkway', '(709) 9321514', '2018-10-08 00:00:00'),
('P0000000960', '0001', 'K003', 'Herminia Wickmann', '1 Center Court', '(730) 1227493', '2018-12-31 00:00:00'),
('P0000000961', '0001', 'K003', 'Millicent Churchley', '294 Melrose Way', '(481) 4881463', '2019-03-18 00:00:00'),
('P0000000962', '0001', 'K003', 'Olly Sparshott', '04958 Loomis Plaza', '(387) 7194468', '2018-11-12 00:00:00'),
('P0000000963', '0001', 'K003', 'Dianna Jankiewicz', '92575 Sycamore Parkway', '(684) 4540126', '2019-02-12 00:00:00'),
('P0000000964', '0001', 'K003', 'Marven Sebire', '1065 Bellgrove Road', '(602) 3858667', '2018-10-03 00:00:00'),
('P0000000965', '0001', 'K003', 'Graham Sidon', '3 Corben Park', '(212) 5855175', '2019-03-10 00:00:00'),
('P0000000966', '0001', 'K003', 'Franzen Halesworth', '614 Duke Hill', '(444) 7168674', '2018-12-29 00:00:00'),
('P0000000967', '0001', 'K003', 'Redford Bicknell', '6 Weeping Birch Park', '(378) 3872823', '2018-10-14 00:00:00'),
('P0000000968', '0001', 'K003', 'Raymond Yellep', '9533 Debs Center', '(447) 4295617', '2019-03-19 00:00:00'),
('P0000000969', '0001', 'K003', 'Bran Bolzmann', '84716 Bultman Way', '(187) 9737914', '2018-12-06 00:00:00'),
('P0000000970', '0001', 'K003', 'Felicia Boal', '70 Nobel Circle', '(662) 8833568', '2018-10-13 00:00:00'),
('P0000000971', '0001', 'K003', 'Marcos Clemenceau', '602 Memorial Crossing', '(547) 3079968', '2018-11-24 00:00:00'),
('P0000000972', '0001', 'K003', 'Annice Cunniam', '41 Walton Court', '(299) 3747428', '2018-09-13 00:00:00'),
('P0000000973', '0001', 'K003', 'Karyl Jupp', '36364 Fordem Lane', '(189) 1009244', '2018-09-29 00:00:00'),
('P0000000974', '0001', 'K003', 'Bidget Weir', '88 Lotheville Trail', '(763) 2770577', '2018-10-14 00:00:00'),
('P0000000975', '0001', 'K003', 'Aryn Ferrao', '526 Anthes Parkway', '(939) 7063624', '2018-09-09 00:00:00'),
('P0000000976', '0001', 'K003', 'Lockwood Wretham', '12482 Jay Circle', '(649) 6176335', '2019-02-23 00:00:00'),
('P0000000977', '0001', 'K003', 'Darby Janos', '3 Butternut Street', '(876) 5766850', '2018-09-06 00:00:00'),
('P0000000978', '0001', 'K003', 'Dodi Weatherhogg', '73842 Reindahl Parkway', '(435) 6476316', '2018-12-05 00:00:00'),
('P0000000979', '0001', 'K003', 'Marylou Hearle', '8 Jenna Point', '(675) 1919465', '2018-12-30 00:00:00'),
('P0000000980', '0001', 'K003', 'Riki Mix', '68481 Johnson Pass', '(500) 8412061', '2019-04-07 00:00:00'),
('P0000000981', '0001', 'K003', 'Vidovic Albisser', '32 Boyd Plaza', '(359) 1580481', '2018-09-23 00:00:00'),
('P0000000982', '0001', 'K003', 'Cathleen Forrestor', '0 Lakeland Parkway', '(356) 5648071', '2018-10-12 00:00:00'),
('P0000000983', '0001', 'K003', 'Harriett Crossthwaite', '71 Blackbird Drive', '(206) 5806053', '2018-10-19 00:00:00'),
('P0000000984', '0001', 'K003', 'Buddy Peake', '0 Spaight Circle', '(619) 4600120', '2018-08-31 00:00:00'),
('P0000000985', '0001', 'K003', 'Paxon Speirs', '96 Pennsylvania Terrace', '(385) 1429317', '2018-09-27 00:00:00'),
('P0000000986', '0001', 'K004', 'Sascha Waters', '3776 8th Junction', '(396) 3847007', '2019-04-03 00:00:00'),
('P0000000987', '0001', 'K005', 'Clim Beggin', '6416 7th Pass', '(448) 8810648', '2019-02-02 00:00:00'),
('P0000000988', '0001', 'K006', 'Montague Aubert', '9263 Crownhardt Hill', '(763) 6232077', '2019-04-12 00:00:00'),
('P0000000989', '0001', 'K007', 'Guy Pover', '5 Springs Alley', '(288) 9711808', '2019-04-15 00:00:00'),
('P0000000990', '0001', 'K008', 'Gene Hickin', '0872 Macpherson Crossing', '(410) 4549786', '2018-11-23 00:00:00'),
('P0000000991', '0001', 'K009', 'Shurlocke Redgrove', '15 Sycamore Drive', '(145) 3111135', '2018-11-03 00:00:00'),
('P0000000992', '0001', 'K010', 'Gabriela Sprott', '991 Marcy Alley', '(106) 9773699', '2019-04-01 00:00:00'),
('P0000000993', '0001', 'K011', 'Yvon Molyneux', '92 Melvin Place', '(612) 8183041', '2018-12-22 00:00:00'),
('P0000000994', '0001', 'K012', 'Pepito Brockway', '67 Fairfield Pass', '(339) 4748707', '2019-04-16 00:00:00'),
('P0000000995', '0001', 'K013', 'Rowena O\'Monahan', '5416 Farwell Plaza', '(109) 7258094', '2018-12-17 00:00:00'),
('P0000000996', '0001', 'K014', 'Shaylynn Le Noury', '82959 Arizona Lane', '(197) 2454602', '2019-02-21 00:00:00'),
('P0000000997', '0001', 'K015', 'Ron Cutridge', '567 Glendale Terrace', '(525) 1214486', '2018-11-15 00:00:00'),
('P0000000998', '0001', 'K016', 'Libbie Wilcox', '166 Vermont Crossing', '(327) 4231275', '2019-01-03 00:00:00'),
('P0000000999', '0001', 'K017', 'Bran Metham', '300 Fallview Parkway', '(392) 3163451', '2019-01-12 00:00:00'),
('P0000001000', '0001', 'K018', 'Roldan Angliss', '7737 Larry Junction', '(564) 6708080', '2018-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pelayanan`
--

CREATE TABLE `pelayanan` (
  `NO_PELAYANAN` char(5) NOT NULL,
  `PLAT_MOBIL` varchar(10) NOT NULL,
  `ID_PEGAWAI` char(9) NOT NULL,
  `TGL_TRANSAKSI` datetime NOT NULL,
  `TOTAL_HARGA` int(11) NOT NULL,
  `JUMLAH_BARANG` int(11) DEFAULT NULL,
  `DISKON_LAYANAN` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelayanan`
--

INSERT INTO `pelayanan` (`NO_PELAYANAN`, `PLAT_MOBIL`, `ID_PEGAWAI`, `TGL_TRANSAKSI`, `TOTAL_HARGA`, `JUMLAH_BARANG`, `DISKON_LAYANAN`) VALUES
('N0001', 'B 1234 XE', 'P00000001', '2019-05-05 00:00:00', 1000000, 1, 0),
('N0002', 'B 2345 DE', 'P00000002', '2019-03-02 00:00:00', 50000, 1, 0),
('N0003', 'W 2897 DE', 'P00000003', '2019-01-04 00:00:00', 500000, 1, 0),
('N0004', 'W 7668 X', 'P00000004', '2019-07-06 00:00:00', 600000, 1, 0),
('N0005', 'AG 7162 MU', 'P00000005', '2019-02-05 00:00:00', 300000, 1, 0),
('N0006', 'AE 2876 EU', 'P00000006', '2019-01-02 00:00:00', 200000, 1, 0),
('N0007', 'L 0192 SV', 'P00000007', '2019-07-04 00:00:00', 60000, 1, 0),
('N0008', 'L 0342 SV', 'P00000008', '2019-01-06 00:00:00', 500000, 1, 0),
('N0009', 'L 0563 SV', 'P00000009', '2019-07-05 00:00:00', 1200000, 1, 0),
('N0010', 'L 0142 SV', 'P00000010', '2019-06-02 00:00:00', 150000, 1, 0),
('N0011', 'L 1234 SV', 'P00000011', '2019-05-04 00:00:00', 1000000, 1, 0),
('N0012', 'L 2341 SV', 'P00000012', '2019-02-06 00:00:00', 50000, 1, 0),
('N0013', 'L 2333 SV', 'P00000013', '2019-03-05 00:00:00', 500000, 1, 0),
('N0014', 'L 0154 SV', 'P00000014', '2019-08-02 00:00:00', 600000, 1, 0),
('N0015', 'L 0458 SY', 'P00000015', '2019-03-04 00:00:00', 300000, 1, 0),
('N0016', 'D 2548 YT', 'P00000016', '2019-01-06 00:00:00', 200000, 1, 0),
('N0017', 'D 2838 YT', 'P00000017', '2019-02-05 00:00:00', 60000, 1, 0),
('N0018', 'D 8383 YT', 'P00000018', '2019-01-02 00:00:00', 500000, 1, 0),
('N0019', 'D 5353 YT', 'P00000019', '2019-04-04 00:00:00', 1200000, 1, 0),
('N0020', 'D 8669 YT', 'P00000020', '2019-02-06 00:00:00', 150000, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `ID_BAYAR` char(5) NOT NULL,
  `ID_PEMBELIAN` char(5) NOT NULL,
  `ID_PEGAWAI` char(9) NOT NULL,
  `TANGGAL_BAYAR` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`ID_BAYAR`, `ID_PEMBELIAN`, `ID_PEGAWAI`, `TANGGAL_BAYAR`) VALUES
('r0001', '1', 'P00000001', '2019-02-03 00:00:00'),
('r0002', '2', 'P00000002', '2019-05-09 00:00:00'),
('r0003', '3', 'P00000003', '2019-04-01 00:00:00'),
('r0004', '4', 'P00000004', '2019-06-08 00:00:00'),
('r0005', '5', 'P00000005', '2019-09-01 00:00:00'),
('r0006', '6', 'P00000006', '2019-03-07 00:00:00'),
('r0007', '7', 'P00000007', '2019-03-07 00:00:00'),
('r0008', '8', 'P00000008', '2019-05-06 00:00:00'),
('r0009', '9', 'P00000009', '2019-07-08 00:00:00'),
('r0010', '10', 'P00000010', '2019-08-08 00:00:00'),
('r0011', '11', 'P00000011', '2019-02-02 00:00:00'),
('r0012', '12', 'P00000012', '2019-01-01 00:00:00'),
('r0013', '13', 'P00000013', '2019-02-03 00:00:00'),
('r0014', '14', 'P00000014', '2019-05-09 00:00:00'),
('r0015', '15', 'P00000015', '2019-04-01 00:00:00'),
('r0016', '16', 'P00000016', '2019-06-08 00:00:00'),
('r0017', '17', 'P00000017', '2019-09-01 00:00:00'),
('r0018', '18', 'P00000018', '2019-03-07 00:00:00'),
('r0019', '19', 'P00000019', '2019-03-07 00:00:00'),
('r0020', '20', 'P00000020', '2019-05-06 00:00:00'),
('r0021', '21', 'P00000001', '2019-07-08 00:00:00'),
('r0022', '22', 'P00000002', '2019-08-08 00:00:00'),
('r0023', '23', 'P00000003', '2019-02-02 00:00:00'),
('r0024', '24', 'P00000004', '2019-01-01 00:00:00'),
('r0025', '25', 'P00000005', '2019-02-03 00:00:00'),
('r0026', '26', 'P00000006', '2019-05-09 00:00:00'),
('r0027', '27', 'P00000007', '2019-04-01 00:00:00'),
('r0028', '28', 'P00000008', '2019-06-08 00:00:00'),
('r0029', '29', 'P00000009', '2019-09-01 00:00:00'),
('r0030', '30', 'P00000010', '2019-03-07 00:00:00'),
('r0031', '31', 'P00000011', '2019-03-07 00:00:00'),
('r0032', '32', 'P00000012', '2019-05-06 00:00:00'),
('r0033', '33', 'P00000013', '2019-07-08 00:00:00'),
('r0034', '34', 'P00000014', '2019-08-08 00:00:00'),
('r0035', '35', 'P00000015', '2019-02-02 00:00:00'),
('r0036', '36', 'P00000016', '2019-01-01 00:00:00'),
('r0037', '37', 'P00000017', '2019-05-06 00:00:00'),
('r0038', '38', 'P00000018', '2019-07-08 00:00:00'),
('r0039', '39', 'P00000019', '2019-08-08 00:00:00'),
('r0040', '40', 'P00000020', '2019-02-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `ID_PEMBELIAN` char(5) NOT NULL,
  `NO_PELANGGAN` char(11) NOT NULL,
  `ID_PEGAWAI` char(9) NOT NULL,
  `TGL_PEMBELIAN` datetime NOT NULL,
  `TOTAL_HARGA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`ID_PEMBELIAN`, `NO_PELANGGAN`, `ID_PEGAWAI`, `TGL_PEMBELIAN`, `TOTAL_HARGA`) VALUES
('00111', 'P0000000010', 'P00000008', '2019-09-09 00:00:00', 100000),
('00222', 'P0000000006', 'P00000008', '2019-09-09 00:00:00', 200000),
('1', 'P0000000001', 'P00000008', '2019-08-01 00:00:00', 230000),
('10', 'P0000000008', 'P00000008', '2019-08-01 00:00:00', 50000),
('10001', 'P0000000002', 'P00000001', '2019-11-04 00:00:00', 30000),
('11', 'P0000000026', 'P00000018', '2019-08-02 00:00:00', 600000),
('12', 'P0000000027', 'P00000018', '2019-08-02 00:00:00', 122000),
('13', 'P0000000028', 'P00000018', '2019-08-02 00:00:00', 90000),
('14', 'P0000000029', 'P00000018', '2019-08-02 00:00:00', 780000),
('15', 'P0000000030', 'P00000018', '2019-08-02 00:00:00', 2300000),
('16', 'P0000000031', 'P00000018', '2019-08-02 00:00:00', 770000),
('17', 'P0000000032', 'P00000018', '2019-08-02 00:00:00', 330000),
('18', 'P0000000033', 'P00000018', '2019-08-02 00:00:00', 50000),
('19', 'P0000000034', 'P00000018', '2019-08-02 00:00:00', 875000),
('2', 'P0000000002', 'P00000008', '2019-08-01 00:00:00', 132000),
('20', 'P0000000035', 'P00000018', '2019-08-02 00:00:00', 975000),
('21', 'P0000000036', 'P00000008', '2019-08-03 00:00:00', 550000),
('22', 'P0000000037', 'P00000008', '2019-08-03 00:00:00', 995000),
('23', 'P0000000038', 'P00000008', '2019-08-03 00:00:00', 1250000),
('24', 'P0000000039', 'P00000008', '2019-08-03 00:00:00', 1750000),
('25', 'P0000000040', 'P00000008', '2019-08-03 00:00:00', 700000),
('26', 'P0000000041', 'P00000008', '2019-08-03 00:00:00', 435000),
('27', 'P0000000042', 'P00000008', '2019-08-03 00:00:00', 680000),
('28', 'P0000000043', 'P00000008', '2019-08-03 00:00:00', 815000),
('29', 'P0000000044', 'P00000008', '2019-08-03 00:00:00', 75000),
('3', 'P0000000003', 'P00000008', '2019-08-01 00:00:00', 450000),
('30', 'P0000000045', 'P00000008', '2019-08-03 00:00:00', 75000),
('31', 'P0000000051', 'P00000018', '2019-08-04 00:00:00', 435000),
('32', 'P0000000052', 'P00000018', '2019-08-04 00:00:00', 210000),
('33', 'P0000000053', 'P00000018', '2019-08-04 00:00:00', 150000),
('34', 'P0000000054', 'P00000018', '2019-08-04 00:00:00', 810000),
('35', 'P0000000055', 'P00000018', '2019-08-04 00:00:00', 225000),
('36', 'P0000000056', 'P00000018', '2019-08-04 00:00:00', 125000),
('37', 'P0000000057', 'P00000018', '2019-08-04 00:00:00', 670000),
('38', 'P0000000058', 'P00000018', '2019-08-04 00:00:00', 445000),
('39', 'P0000000059', 'P00000018', '2019-08-04 00:00:00', 990000),
('4', 'P0000000010', 'P00000008', '2019-08-01 00:00:00', 122000),
('40', 'P0000000060', 'P00000018', '2019-08-04 00:00:00', 975000),
('5', 'P0000000009', 'P00000008', '2019-08-01 00:00:00', 90000),
('6', 'P0000000019', 'P00000008', '2019-08-01 00:00:00', 780000),
('7', 'P0000000022', 'P00000008', '2019-08-01 00:00:00', 2300000),
('8', 'P0000000002', 'P00000008', '2019-08-01 00:00:00', 770000),
('9', 'P0000000023', 'P00000006', '2019-08-01 00:00:00', 330000);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `ID_PEMESANAN` char(5) NOT NULL,
  `ID_PEGAWAI` char(9) NOT NULL,
  `ID_SUPPLIER` char(5) NOT NULL,
  `TGL_PEMESANAN` date NOT NULL,
  `JUMLAH_PEMESANAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`ID_PEMESANAN`, `ID_PEGAWAI`, `ID_SUPPLIER`, `TGL_PEMESANAN`, `JUMLAH_PEMESANAN`) VALUES
('PM001', 'P00000008', 'sp009', '2019-01-18', 2),
('PM002', 'P00000008', 'sp010', '2019-02-10', 1),
('PM003', 'P00000008', 'sp011', '2019-02-11', 2),
('PM004', 'P00000008', 'sp012', '2019-03-12', 3),
('PM005', 'P00000018', 'sp001', '2019-04-13', 1),
('PM006', 'P00000018', 'sp002', '2019-03-14', 4),
('PM007', 'P00000018', 'sp003', '2019-04-15', 3),
('PM008', 'P00000018', 'sp004', '2019-04-16', 2),
('PM009', 'P00000018', 'sp005', '2019-05-17', 3),
('PM010', 'P00000008', 'sp006', '2019-10-18', 4),
('PM011', 'P00000008', 'sp007', '2019-08-19', 5),
('PM012', 'P00000008', 'sp008', '2019-09-20', 4),
('PM013', 'P00000008', 'sp020', '2019-03-21', 5),
('PM014', 'P00000008', 'sp019', '2019-07-22', 5),
('PM015', 'P00000018', 'sp018', '2019-12-23', 2),
('PM016', 'P00000008', 'sp017', '2019-11-24', 4),
('PM017', 'P00000018', 'sp013', '2019-12-25', 5),
('PM018', 'P00000008', 'sp014', '2019-06-26', 4),
('PM019', 'P00000018', 'sp015', '2019-05-27', 5),
('PM020', 'P00000018', 'sp016', '2019-05-28', 4);

-- --------------------------------------------------------

--
-- Table structure for table `penyuplaian`
--

CREATE TABLE `penyuplaian` (
  `NO_PENYUPLAIAN` char(5) NOT NULL,
  `TOTAL_HARGA` int(11) NOT NULL,
  `JUMLAH_BARANG` int(11) NOT NULL,
  `TGL_SUPPLAI` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyuplaian`
--

INSERT INTO `penyuplaian` (`NO_PENYUPLAIAN`, `TOTAL_HARGA`, `JUMLAH_BARANG`, `TGL_SUPPLAI`) VALUES
('sup01', 96, 3, '2019-01-17'),
('sup02', 80, 4, '2019-01-17'),
('sup03', 180, 3, '2019-01-18'),
('sup04', 220, 2, '2019-01-20'),
('sup05', 360, 3, '2019-01-20'),
('sup06', 70, 10, '2019-02-01'),
('sup07', 125, 5, '2019-02-02'),
('sup08', 105, 3, '2019-02-02'),
('sup09', 840, 2, '2019-02-05'),
('sup10', 3220, 10, '2019-02-07');

-- --------------------------------------------------------

--
-- Stand-in structure for view `pmb`
-- (See below for the actual view)
--
CREATE TABLE `pmb` (
`NAMA_PEG` varchar(30)
,`ID_PEMBELIAN` char(5)
,`TGL_PEMBELIAN` datetime
,`TOTAL_HARGA` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pmb_s`
-- (See below for the actual view)
--
CREATE TABLE `pmb_s` (
`NAMA_SPAREPART` varchar(35)
,`TGL_PEMBELIAN` datetime
,`ID_PEMBELIAN` char(5)
,`jumlah` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `sparepart`
--

CREATE TABLE `sparepart` (
  `ID_SPAREPART` char(7) NOT NULL,
  `ID_JENIS_SP` char(5) NOT NULL,
  `NAMA_SPAREPART` varchar(35) NOT NULL,
  `HARGA_SPAREPART` int(11) NOT NULL,
  `STOCK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sparepart`
--

INSERT INTO `sparepart` (`ID_SPAREPART`, `ID_JENIS_SP`, `NAMA_SPAREPART`, `HARGA_SPAREPART`, `STOCK`) VALUES
('sp00001', 'js001', 'Honda Jazz Idsi Busi ', 32, 100),
('sp00002', 'js002', 'Honda Jazz Idsi Filter Bensin ', 37, 56),
('sp00003', 'js003', 'Honda Jazz Idsi Filter Oli', 26, 45),
('sp00004', 'js004', 'Honda Jazz Idsi Filter Udara', 65, 58),
('sp00005', 'js005', 'Honda Jazz Idsi Kampas Rem Belakang', 35, 12),
('sp00006', 'js001', 'Honda Jazz Idsi Kampas Rem Depan', 63, 11),
('sp00007', 'js002', 'Honda Jazz Idsi Kopling Set Bearing', 25, 17),
('sp00008', 'js003', 'Honda Jazz Idsi Kopling Set Cover', 7, 18),
('sp00009', 'js004', 'Honda Jazz Idsi Kopling Set Disc ', 20, 38),
('sp00010', 'js005', 'Honda Jazz Vtec Belt Fan Ac ', 148, 65),
('sp00011', 'js001', 'Honda Jazz Vtec Busi', 38, 82),
('sp00012', 'js002', 'Honda Jazz Vtec Filter Bensin', 60, 12),
('sp00013', 'js003', 'Honda Jazz Vtec Filter Oli', 41, 120),
('sp00014', 'js004', 'Honda Jazz Vtec Filter Udara', 63, 39),
('sp00015', 'js005', 'Honda Jazz Vtec Kampas Rem Belakang', 110, 12),
('sp00016', 'js001', 'Honda Jazz Vtec Kampas Rem Depan', 43, 16),
('sp00017', 'js002', 'Honda Jazz Vtec Kopling Set Bearing', 120, 39),
('sp00018', 'js003', 'Honda Jazz Vtec Kopling Set Cover', 380, 67),
('sp00019', 'js004', 'Honda Jazz Vtec Kopling Set Disc', 420, 45),
('sp00020', 'js005', 'Honda New Accord 2.4 Belt Fan Ac ', 296, 36),
('sp00021', 'js001', 'Honda New Accord 2.4 Busi', 271, 35),
('sp00022', 'js002', 'Honda New Accord 2.4 Filter Bensin ', 322, 6),
('sp00023', 'js003', 'Honda New Accord 2.4 Filter Oli', 27, 5),
('sp00024', 'js004', 'Honda New Accord 2.4 Filter Udara', 155, 45),
('sp00025', 'js005', 'Honda New Accord 2.4 Kampas Rem Bel', 684, 76),
('sp00026', 'js001', 'Honda New Accord 2.4 Kampas Rem Dep', 610, 86),
('sp00027', 'js002', 'Honda New Accord 2.4 Kopling Set Be', 175, 75),
('sp00028', 'js003', 'Honda New Accord 2.4 Kopling Set Co', 590, 45),
('sp00029', 'js004', 'Honda New Accord 2.4 Kopling Set Di', 688, 34),
('sp00030', 'js005', 'Honda Stream 1.7 Belt Fan Ac ', 31, 23),
('sp00031', 'js001', 'Honda Stream 1.7 Busi ', 18, 13),
('sp00032', 'js002', 'Honda Stream 1.7 Filter Bensin ', 241, 75),
('sp00033', 'js003', 'Honda Stream 1.7 Filter Oli', 40, 18),
('sp00034', 'js004', 'Honda Stream 1.7 Filter Udara ', 100, 4),
('sp00035', 'js005', 'Honda Stream 1.7 Kampas Rem Belakan', 284, 75),
('sp00036', 'js001', 'Honda Stream 1.7 Kampas Rem Depan', 362, 53),
('sp00037', 'js002', 'Honda Stream 1.7 Kopling Set Bearin', 140, 23),
('sp00038', 'js003', 'Honda Stream 1.7 Kopling Set Cover ', 418, 45),
('sp00039', 'js004', 'Honda Stream 1.7 Kopling Set Disc =', 480, 65),
('sp00040', 'js005', 'Honda Stream 2.0 Belt Fan Ac ', 114, 76),
('sp00041', 'js001', 'Honda Stream 2.0 Busi', 18, 87),
('sp00042', 'js002', 'Honda Stream 2.0 Filter Bensin', 221, 56),
('sp00043', 'js003', 'Honda Stream 2.0 Filter Oli ', 28, 45),
('sp00044', 'js004', 'Honda Stream 2.0 Filter Udara ', 127, 65),
('sp00045', 'js005', 'Honda Stream 2.0 Kampas Rem Belakan', 280, 65),
('sp00046', 'js001', 'Honda Stream 2.0 Kampas Rem Depan ', 357, 34),
('sp00047', 'js002', 'Daihatsu Gran Max 1.3 Filter Bensin', 600, 23),
('sp00048', 'js003', 'Daihatsu Gran Max 1.3 Filter Oli ', 75, 54),
('sp00049', 'js004', 'Daihatsu Gran Max 1.3 Filter Udara ', 45, 4),
('sp00050', 'js005', 'Daihatsu Gran Max 1.3 Kampas Rem Be', 135, 45);

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `STOCK` int(11) NOT NULL,
  `NO` int(11) NOT NULL,
  `ID_SPAREPART` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`STOCK`, `NO`, `ID_SPAREPART`) VALUES
(100, 1, 'sp00001'),
(100, 2, 'sp00002'),
(100, 3, 'sp00003'),
(100, 4, 'sp00004'),
(100, 5, 'sp00005'),
(100, 6, 'sp00006'),
(100, 7, 'sp00007'),
(100, 8, 'sp00008'),
(100, 9, 'sp00009'),
(100, 10, 'sp00010'),
(100, 11, 'sp00011'),
(100, 12, 'sp00012'),
(100, 13, 'sp00013'),
(100, 14, 'sp00014'),
(100, 15, 'sp00015'),
(100, 16, 'sp00016'),
(100, 17, 'sp00017'),
(100, 18, 'sp00018'),
(100, 19, 'sp00019'),
(100, 20, 'sp00020'),
(100, 21, 'sp00021'),
(100, 22, 'sp00022'),
(100, 23, 'sp00023'),
(100, 24, 'sp00024'),
(100, 25, 'sp00025'),
(100, 26, 'sp00026'),
(100, 27, 'sp00027'),
(100, 28, 'sp00028'),
(100, 29, 'sp00029'),
(100, 30, 'sp00030'),
(100, 31, 'sp00031'),
(100, 32, 'sp00032'),
(100, 33, 'sp00033'),
(100, 34, 'sp00034'),
(100, 35, 'sp00035'),
(100, 36, 'sp00036'),
(100, 37, 'sp00037'),
(100, 38, 'sp00038'),
(100, 39, 'sp00039'),
(100, 40, 'sp00040'),
(100, 41, 'sp00041'),
(100, 42, 'sp00042'),
(100, 43, 'sp00043'),
(100, 44, 'sp00044'),
(100, 45, 'sp00045'),
(100, 46, 'sp00046'),
(100, 47, 'sp00047'),
(100, 48, 'sp00048'),
(100, 49, 'sp00049'),
(100, 50, 'sp00050');

-- --------------------------------------------------------

--
-- Table structure for table `suplai`
--

CREATE TABLE `suplai` (
  `ID_SUPPLIER` char(5) NOT NULL,
  `NO_PENYUPLAIAN` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suplai`
--

INSERT INTO `suplai` (`ID_SUPPLIER`, `NO_PENYUPLAIAN`) VALUES
('sp001', 'sup01'),
('sp002', 'sup02'),
('sp003', 'sup03'),
('sp004', 'sup04'),
('sp005', 'sup05'),
('sp006', 'sup06'),
('sp007', 'sup07'),
('sp008', 'sup08'),
('sp009', 'sup09'),
('sp010', 'sup10'),
('sp011', 'sup01'),
('sp012', 'sup02'),
('sp013', 'sup03'),
('sp014', 'sup04'),
('sp015', 'sup05'),
('sp016', 'sup06'),
('sp017', 'sup07'),
('sp018', 'sup08'),
('sp019', 'sup09'),
('sp020', 'sup10');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `ID_SUPPLIER` char(5) NOT NULL,
  `NAMA_SPULLIER` varchar(25) NOT NULL,
  `TLP_SUPPLIER` varchar(13) DEFAULT NULL,
  `ALAMAT_SUPPLIER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`ID_SUPPLIER`, `NAMA_SPULLIER`, `TLP_SUPPLIER`, `ALAMAT_SUPPLIER`) VALUES
('sp001', 'Lupromax Oil', '0315934407', 'Ruko Klampis Square, Gg. Masjid'),
('sp002', 'TOP X Grosir Oli', '085707876215', 'Jl. Bratang Gede VI G, Ngagelrejo, Wonokromo'),
('sp003', 'Sumber Agung Variasi', '0318491412', 'Jl. Raya Jemursari No.11'),
('sp004', 'Onderdil Karang Empat', '0313815621', ' Jl. Karang Empat Besar No.152, Ploso'),
('sp005', 'Trya Automotive', '081337047590', 'Jalan Pulau Enggano, Dauh Puri Kauh'),
('sp006', 'Karya Bersama Variasi Sur', '081333425505', 'Jl Ahmad Yani No.73, Giant Maspion Square Blok POT'),
('sp007', 'Maju Jaya Variasi', '0315317777', 'Jl. Kedung Doro No.149A - 151, Kedungdoro, Tegalsa'),
('sp008', 'HG Audiophile Car Audio', '0315013600', 'Jl. Ngagel Jaya Utara No.132, Baratajaya'),
('sp009', 'Dunia Ban Variasi', '0315477888', 'Jalan Kedungsari 002, 01, Wonorejo'),
('sp010', 'Arya Ban Dunlop Shop', '0312756754', 'Jl. Kapasari No.92, Kapasan, Kec. Simokerto'),
('sp011', 'Authorised Distributor MO', '0313718489', 'Jl. Gembong No.18, Kapasan, Kec. Simokerto'),
('sp012', 'INVALTECH SYSTEM INDONESI', '02165300461', 'Jl. Danau Sunter Utara No.29, Papanggo, Tj. Priok'),
('sp013', 'OTOaksesoris.com', '02133798345', 'Jl. Angkasa MGK Glodok Kemayoran Lt. 6 Blok G 02 N'),
('sp014', 'One Stop GPS', '081298818005', 'WTC Mangga dua , lantai G blok A no.123'),
('sp015', 'PT. Rajawali Otomotif Tir', '02162317350', 'Jl. Sukarjo Wiryopranoto No.71 A - B, Maphar, Tama'),
('sp016', 'Raflinatama', '0214801098', 'Jl. Dr. Sumarno No.19, Penggilingan, Cakun'),
('sp017', 'PT. Genta Fajar Aksesoris', '02129032167', 'Ruko Hawaii Blok A No.1, RT.7/RW.14, Cengkareng Ti'),
('sp018', 'Sarana Auto Spareparts', '08170700805', 'Jl. Pekan Raya, RT.3/RW.10, Danau Sunter Dll, Pade'),
('sp019', 'CHAMPION MOTOR NISSAN', '0213518522', ' KREKOT JAYA MOLEK BLOK AE NO 8, RT.3/RW.7, Ps. Ba'),
('sp020', 'Vini Vidi Vici Accessorie', '08122341922', 'Jl. Terusan Cimuncang No.1, Sukapada');

-- --------------------------------------------------------

--
-- Table structure for table `tindakan_sequence`
--

CREATE TABLE `tindakan_sequence` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `pmb`
--
DROP TABLE IF EXISTS `pmb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pmb`  AS  select `pegawai`.`NAMA_PEG` AS `NAMA_PEG`,`pembelian`.`ID_PEMBELIAN` AS `ID_PEMBELIAN`,`pembelian`.`TGL_PEMBELIAN` AS `TGL_PEMBELIAN`,`pembelian`.`TOTAL_HARGA` AS `TOTAL_HARGA` from (`pegawai` join `pembelian` on((`pegawai`.`ID_PEGAWAI` = `pembelian`.`ID_PEGAWAI`))) where (`pegawai`.`ID_PEGAWAI` = 'P00000008') order by `pembelian`.`TOTAL_HARGA` desc ;

-- --------------------------------------------------------

--
-- Structure for view `pmb_s`
--
DROP TABLE IF EXISTS `pmb_s`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pmb_s`  AS  select `sparepart`.`NAMA_SPAREPART` AS `NAMA_SPAREPART`,`pembelian`.`TGL_PEMBELIAN` AS `TGL_PEMBELIAN`,`pembelian`.`ID_PEMBELIAN` AS `ID_PEMBELIAN`,`detail_pembelian`.`JUMLAH_SPAREPART` AS `jumlah` from ((`sparepart` join `detail_pembelian` on((`sparepart`.`ID_SPAREPART` = `detail_pembelian`.`ID_SPAREPART`))) join `pembelian` on((`detail_pembelian`.`ID_PEMBELIAN` = `pembelian`.`ID_PEMBELIAN`))) order by `detail_pembelian`.`JUMLAH_SPAREPART` desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD PRIMARY KEY (`NO_PELAYANAN`,`ID_SPAREPART`),
  ADD KEY `FK_RELATIONSHIP_30` (`ID_SPAREPART`);

--
-- Indexes for table `detail_layanan`
--
ALTER TABLE `detail_layanan`
  ADD PRIMARY KEY (`NO_PELAYANAN`,`NO_JENIS`),
  ADD KEY `FK_DIMILIKI1` (`NO_JENIS`);

--
-- Indexes for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD PRIMARY KEY (`ID_PEMBELIAN`,`ID_SPAREPART`),
  ADD KEY `FK_DIMILIKI` (`ID_SPAREPART`);

--
-- Indexes for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD PRIMARY KEY (`ID_PEMESANAN`,`ID_SPAREPART`),
  ADD KEY `FK_MENDAPATKAN3` (`ID_SPAREPART`);

--
-- Indexes for table `detail_supplai`
--
ALTER TABLE `detail_supplai`
  ADD PRIMARY KEY (`ID_SPAREPART`,`NO_PENYUPLAIAN`),
  ADD KEY `FK_MENYUPLAI` (`NO_PENYUPLAIAN`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`ID_GAJI`),
  ADD KEY `FK_MENDAPATKAN` (`ID_JABATAN`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`ID_JABATAN`);

--
-- Indexes for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  ADD PRIMARY KEY (`NO_JENIS`);

--
-- Indexes for table `jenis_sparepart`
--
ALTER TABLE `jenis_sparepart`
  ADD PRIMARY KEY (`ID_JENIS_SP`);

--
-- Indexes for table `komunitas`
--
ALTER TABLE `komunitas`
  ADD PRIMARY KEY (`ID_KOMUNITAS`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`ID_KOTA`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`PLAT_MOBIL`),
  ADD KEY `FK_MEMILIKI1` (`NO_PELANGGAN`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`ID_PEGAWAI`),
  ADD KEY `FK_DIHUNI` (`ID_KOTA`),
  ADD KEY `FK_MEMILIKI` (`ID_JABATAN`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`NO_PELANGGAN`),
  ADD KEY `FK_BERGABUNG` (`ID_KOMUNITAS`),
  ADD KEY `FK_MENEMPATI` (`ID_KOTA`);

--
-- Indexes for table `pelayanan`
--
ALTER TABLE `pelayanan`
  ADD PRIMARY KEY (`NO_PELAYANAN`),
  ADD KEY `FK_MELAYANI1` (`ID_PEGAWAI`),
  ADD KEY `FK_MENDAPATKAN1` (`PLAT_MOBIL`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`ID_BAYAR`),
  ADD KEY `FK_MEMBAYAR` (`ID_PEMBELIAN`),
  ADD KEY `FK_MENGHANDLE` (`ID_PEGAWAI`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`ID_PEMBELIAN`),
  ADD KEY `FK_MELAYANI` (`ID_PEGAWAI`),
  ADD KEY `FK_MEMBELI` (`NO_PELANGGAN`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`ID_PEMESANAN`),
  ADD KEY `FK_DILAYANI` (`ID_SUPPLIER`),
  ADD KEY `FK_MELAKUKAN` (`ID_PEGAWAI`);

--
-- Indexes for table `penyuplaian`
--
ALTER TABLE `penyuplaian`
  ADD PRIMARY KEY (`NO_PENYUPLAIAN`);

--
-- Indexes for table `sparepart`
--
ALTER TABLE `sparepart`
  ADD PRIMARY KEY (`ID_SPAREPART`),
  ADD KEY `FK_TERSEDIA` (`ID_JENIS_SP`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`NO`),
  ADD KEY `FK_MEMILIKI5` (`ID_SPAREPART`);

--
-- Indexes for table `suplai`
--
ALTER TABLE `suplai`
  ADD PRIMARY KEY (`ID_SUPPLIER`,`NO_PENYUPLAIAN`),
  ADD KEY `FK_MELAKUKAN3` (`NO_PENYUPLAIAN`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`ID_SUPPLIER`);

--
-- Indexes for table `tindakan_sequence`
--
ALTER TABLE `tindakan_sequence`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tindakan_sequence`
--
ALTER TABLE `tindakan_sequence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD CONSTRAINT `FK_RELATIONSHIP_29` FOREIGN KEY (`NO_PELAYANAN`) REFERENCES `pelayanan` (`NO_PELAYANAN`),
  ADD CONSTRAINT `FK_RELATIONSHIP_30` FOREIGN KEY (`ID_SPAREPART`) REFERENCES `sparepart` (`ID_SPAREPART`);

--
-- Constraints for table `detail_layanan`
--
ALTER TABLE `detail_layanan`
  ADD CONSTRAINT `FK_DIMILIKI1` FOREIGN KEY (`NO_JENIS`) REFERENCES `jenis_layanan` (`NO_JENIS`),
  ADD CONSTRAINT `FK_MEMILIKI4` FOREIGN KEY (`NO_PELAYANAN`) REFERENCES `pelayanan` (`NO_PELAYANAN`);

--
-- Constraints for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD CONSTRAINT `FK_DIMILIKI` FOREIGN KEY (`ID_SPAREPART`) REFERENCES `sparepart` (`ID_SPAREPART`),
  ADD CONSTRAINT `FK_TERDAPAT` FOREIGN KEY (`ID_PEMBELIAN`) REFERENCES `pembelian` (`ID_PEMBELIAN`);

--
-- Constraints for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD CONSTRAINT `FK_DIDAPATKAN` FOREIGN KEY (`ID_PEMESANAN`) REFERENCES `pemesanan` (`ID_PEMESANAN`),
  ADD CONSTRAINT `FK_MENDAPATKAN3` FOREIGN KEY (`ID_SPAREPART`) REFERENCES `sparepart` (`ID_SPAREPART`);

--
-- Constraints for table `detail_supplai`
--
ALTER TABLE `detail_supplai`
  ADD CONSTRAINT `FK_DISUPPLAI` FOREIGN KEY (`ID_SPAREPART`) REFERENCES `sparepart` (`ID_SPAREPART`),
  ADD CONSTRAINT `FK_MENYUPLAI` FOREIGN KEY (`NO_PENYUPLAIAN`) REFERENCES `penyuplaian` (`NO_PENYUPLAIAN`);

--
-- Constraints for table `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `FK_MENDAPATKAN` FOREIGN KEY (`ID_JABATAN`) REFERENCES `jabatan` (`ID_JABATAN`);

--
-- Constraints for table `mobil`
--
ALTER TABLE `mobil`
  ADD CONSTRAINT `FK_MEMILIKI1` FOREIGN KEY (`NO_PELANGGAN`) REFERENCES `pelanggan` (`NO_PELANGGAN`);

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `FK_DIHUNI` FOREIGN KEY (`ID_KOTA`) REFERENCES `kota` (`ID_KOTA`),
  ADD CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`ID_JABATAN`) REFERENCES `jabatan` (`ID_JABATAN`);

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `FK_BERGABUNG` FOREIGN KEY (`ID_KOMUNITAS`) REFERENCES `komunitas` (`ID_KOMUNITAS`),
  ADD CONSTRAINT `FK_MENEMPATI` FOREIGN KEY (`ID_KOTA`) REFERENCES `kota` (`ID_KOTA`);

--
-- Constraints for table `pelayanan`
--
ALTER TABLE `pelayanan`
  ADD CONSTRAINT `FK_MELAYANI1` FOREIGN KEY (`ID_PEGAWAI`) REFERENCES `pegawai` (`ID_PEGAWAI`),
  ADD CONSTRAINT `FK_MENDAPATKAN1` FOREIGN KEY (`PLAT_MOBIL`) REFERENCES `mobil` (`PLAT_MOBIL`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `FK_MEMBAYAR` FOREIGN KEY (`ID_PEMBELIAN`) REFERENCES `pembelian` (`ID_PEMBELIAN`),
  ADD CONSTRAINT `FK_MENGHANDLE` FOREIGN KEY (`ID_PEGAWAI`) REFERENCES `pegawai` (`ID_PEGAWAI`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `FK_MELAYANI` FOREIGN KEY (`ID_PEGAWAI`) REFERENCES `pegawai` (`ID_PEGAWAI`),
  ADD CONSTRAINT `FK_MEMBELI` FOREIGN KEY (`NO_PELANGGAN`) REFERENCES `pelanggan` (`NO_PELANGGAN`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `FK_DILAYANI` FOREIGN KEY (`ID_SUPPLIER`) REFERENCES `supplier` (`ID_SUPPLIER`),
  ADD CONSTRAINT `FK_MELAKUKAN` FOREIGN KEY (`ID_PEGAWAI`) REFERENCES `pegawai` (`ID_PEGAWAI`);

--
-- Constraints for table `sparepart`
--
ALTER TABLE `sparepart`
  ADD CONSTRAINT `FK_TERSEDIA` FOREIGN KEY (`ID_JENIS_SP`) REFERENCES `jenis_sparepart` (`ID_JENIS_SP`);

--
-- Constraints for table `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `FK_MEMILIKI5` FOREIGN KEY (`ID_SPAREPART`) REFERENCES `sparepart` (`ID_SPAREPART`);

--
-- Constraints for table `suplai`
--
ALTER TABLE `suplai`
  ADD CONSTRAINT `FK_MELAKUKAN2` FOREIGN KEY (`ID_SUPPLIER`) REFERENCES `supplier` (`ID_SUPPLIER`),
  ADD CONSTRAINT `FK_MELAKUKAN3` FOREIGN KEY (`NO_PENYUPLAIAN`) REFERENCES `penyuplaian` (`NO_PENYUPLAIAN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
