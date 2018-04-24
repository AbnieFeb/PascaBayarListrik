-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2018 at 10:14 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_11505056`
--

-- --------------------------------------------------------

--
-- Table structure for table `agen`
--

CREATE TABLE `agen` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `jk` varchar(45) DEFAULT NULL,
  `telp` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agen`
--

INSERT INTO `agen` (`id`, `nama`, `jk`, `telp`, `username`, `password`) VALUES
(1, 'Shocky', 'L', '0852746395', 'shocky', 'shocky!@#'),
(2, 'Novan', 'L', '0852746396', 'novan', 'novan!@#'),
(3, 'Deka', 'L', '085267413', 'deks', 'deks!@#'),
(4, 'Syubi', 'L', '0852549666', 'syubi', 'syubi!@#'),
(5, 'Rudi', 'L', '0857963741', 'rudi', 'rudi!@#'),
(6, 'Bobby', 'L', '0852964121', 'bobby', 'bobby!@#'),
(7, 'Chika', 'P', '08574596335', 'chika', 'chika!@#'),
(8, 'Riska', 'P', '085741636341', 'riska', 'riska!@#');

-- --------------------------------------------------------

--
-- Stand-in structure for view `bbayar`
--
CREATE TABLE `bbayar` (
`kd_pelanggan` varchar(45)
,`no_meter` varchar(45)
,`nama` varchar(45)
,`alamat` text
,`kd_tarif` varchar(45)
,`tenggang_waktu` int(11)
,`kd_tagihan` varchar(45)
,`jumlah_meter` int(11)
,`total_tagihan` int(11)
,`bulan` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kd_pelanggan` varchar(45) NOT NULL,
  `no_meter` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `alamat` text,
  `kd_tarif` varchar(45) NOT NULL,
  `tenggang_waktu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kd_pelanggan`, `no_meter`, `nama`, `alamat`, `kd_tarif`, `tenggang_waktu`) VALUES
('PEL00001', '31012018145201', 'novan', 'Bogor', 'TAR00003', 19),
('PEL00002', '30012018145201', 'syubi', 'Bandung', 'TAR00003', 20),
('PEL00003', '29012018145201', 'siska', 'Tasikmalaya', 'TAR00002', 19),
('PEL00004', '28012018135201', 'defri', 'Garut', 'TAR00001', 19),
('PEL00005', '28012018125201', 'jufri', 'Jakarta', 'TAR00004', 19),
('PEL00006', '28012018095201', 'andi', 'Surabaya', 'TAR00005', 19),
('PEL00007', '30012018115201', 'vina', 'Banten', 'TAR00004', 19),
('PEL00008', '27012018115201', 'dhea', 'Yogyakarta', 'TAR00002', 19),
('PEL00009', '27012018105201', 'juminten', 'Surabaya', 'TAR00001', 19),
('PEL00010', '27012018135201', 'tata', 'Medan', 'TAR00003', 19),
('PEL00011', '26012018145201', 'firly', 'Sulawesi', 'TAR00001', 19),
('PEL00012', '25012018145201', 'tina', 'Blitar', 'TAR00006', 19),
('PEL00013', '24012018145201', 'febri', 'Bandung', 'TAR00006', 19),
('PEL00014', '23012018145201', 'feni', 'Jakarta', 'TAR00002', 19),
('PEL00015', '22012018145201', 'eva', 'Bogor', 'TAR00003', 19),
('PEL00016', '21012018145201', 'ella', 'Garut', 'TAR00004', 19),
('PEL00017', '20012018145201', 'ardi', 'Bekasi', 'TAR00003', 19),
('PEL00018', '19012018145201', 'dudi', 'Tasikmalaya', 'TAR00001', 19),
('PEL00019', '18012018145201', 'didi', 'Jakarta', 'TAR00002', 19),
('PEL00020', '17012018145201', 'budi', 'Jakarta', 'TAR00003', 19),
('PEL00021', '040218025333', 'Fauzan', 'Bogor', 'TAR00002', 4),
('PEL00022', '040218040038', 'A', 'a', 'TAR00002', 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pemasukan`
--
CREATE TABLE `pemasukan` (
`kd_tagihan` varchar(45)
,`kd_penggunaan` varchar(45)
,`kd_pelanggan` varchar(45)
,`bulan` varchar(45)
,`tahun` varchar(45)
,`jumlah_meter` int(11)
,`total_tagihan` int(11)
,`status` int(1)
,`nama` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `kd_bayar` varchar(45) NOT NULL,
  `kd_pelanggan` varchar(45) NOT NULL,
  `kd_penggunaan` varchar(45) NOT NULL,
  `tanggal` date NOT NULL,
  `bulan_bayar` varchar(45) NOT NULL,
  `biaya_admin` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `agen` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`kd_bayar`, `kd_pelanggan`, `kd_penggunaan`, `tanggal`, `bulan_bayar`, `biaya_admin`, `total`, `bayar`, `kembalian`, `agen`) VALUES
('BYR20180203024800', 'PEL00002', 'PGN00001', '2018-02-03', 'Feb', 5000, 151700, 152000, 300, 'Deka'),
('BYR20180204023214', 'PEL00010', 'PGN00010', '2018-02-04', 'Feb', 5000, 151700, 152000, 300, 'Shocky'),
('BYR20180204023312', 'PEL00010', 'PGN00025', '2018-02-04', 'Feb', 5000, 225050, 230000, 4950, 'Shocky'),
('BYR20180204024800', 'PEL00001', 'PGN00002', '2018-02-04', 'Feb', 5000, 151700, 152000, 300, 'Rudi'),
('BYR20180204024854', 'PEL00001', 'PGN00016', '2018-02-04', 'Feb', 5000, 151700, 152000, 300, 'Rudi'),
('BYR20180204025034', 'PEL00002', 'PGN00017', '2018-02-04', 'Feb', 5000, 159035, 160000, 965, 'Rudi'),
('BYR20180204025203', 'PEL00003', 'PGN00003', '2018-02-04', 'Feb', 5000, 34300, 40000, 5700, 'Rudi'),
('BYR20180204025441', 'PEL00003', 'PGN00018', '2018-02-04', 'Feb', 5000, 46020, 50000, 3980, 'Rudi'),
('BYR20180204025544', 'PEL00004', 'PGN00004', '2018-02-04', 'Feb', 5000, 25750, 30000, 4250, 'Rudi'),
('BYR20180204025731', 'PEL00004', 'PGN00019', '2018-02-04', 'Feb', 5000, 46500, 50000, 3500, 'Rudi'),
('BYR20180204030503', 'PEL00005', 'PGN00005', '2018-02-04', 'Feb', 5000, 78350, 80000, 1650, 'Rudi'),
('BYR20180204030913', 'PEL00005', 'PGN00020', '2018-02-04', 'Feb', 5000, 151700, 152000, 300, 'Rudi'),
('BYR20180204040301', 'PEL00022', 'PGN00026', '2018-02-04', 'Feb', 5000, 5586, 5586, 0, 'Bobby'),
('BYR20180204091308', 'PEL00007', 'PGN00007', '2018-02-04', 'Feb', 5000, 151700, 152000, 300, 'Rudi');

-- --------------------------------------------------------

--
-- Table structure for table `penggunaan`
--

CREATE TABLE `penggunaan` (
  `kd_penggunaan` varchar(45) NOT NULL,
  `kd_pelanggan` varchar(45) NOT NULL,
  `bulan` varchar(45) NOT NULL,
  `tahun` varchar(45) NOT NULL,
  `meter_awal` int(11) NOT NULL,
  `meter_akhir` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penggunaan`
--

INSERT INTO `penggunaan` (`kd_penggunaan`, `kd_pelanggan`, `bulan`, `tahun`, `meter_awal`, `meter_akhir`, `status`) VALUES
('PGN00001', 'PEL00002', 'Jan', '2018', 0, 100, 1),
('PGN00002', 'PEL00001', 'Jan', '2018', 0, 100, 1),
('PGN00003', 'PEL00003', 'Jan', '2018', 0, 50, 1),
('PGN00004', 'PEL00004', 'Jan', '2018', 0, 50, 1),
('PGN00005', 'PEL00005', 'Jan', '2018', 0, 50, 1),
('PGN00006', 'PEL00006', 'Jan', '2018', 0, 100, 0),
('PGN00007', 'PEL00007', 'Jan', '2018', 0, 100, 1),
('PGN00008', 'PEL00008', 'Jan', '2018', 0, 100, 0),
('PGN00009', 'PEL00009', 'Jan', '2018', 0, 50, 0),
('PGN00010', 'PEL00010', 'Jan', '2018', 0, 100, 1),
('PGN00011', 'PEL00011', 'Jan', '2018', 0, 50, 0),
('PGN00012', 'PEL00012', 'Jan', '2018', 0, 100, 0),
('PGN00013', 'PEL00013', 'Jan', '2018', 0, 100, 0),
('PGN00014', 'PEL00014', 'Jan', '2018', 0, 100, 0),
('PGN00015', 'PEL00015', 'Jan', '2018', 0, 100, 0),
('PGN00016', 'PEL00001', 'Feb', '2018', 100, 200, 1),
('PGN00017', 'PEL00002', 'Feb', '2018', 100, 250, 1),
('PGN00018', 'PEL00003', 'Feb', '2018', 50, 120, 1),
('PGN00019', 'PEL00004', 'Feb', '2018', 50, 150, 1),
('PGN00020', 'PEL00005', 'Feb', '2018', 50, 150, 1),
('PGN00021', 'PEL00006', 'Feb', '2018', 100, 250, 0),
('PGN00022', 'PEL00007', 'Feb', '2018', 100, 200, 0),
('PGN00023', 'PEL00008', 'Feb', '2018', 100, 200, 0),
('PGN00024', 'PEL00009', 'Feb', '2018', 50, 100, 0),
('PGN00025', 'PEL00010', 'Feb', '2018', 100, 250, 1),
('PGN00026', 'PEL00022', 'Feb', '2018', 0, 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sbayar`
--
CREATE TABLE `sbayar` (
`kd_pelanggan` varchar(45)
,`no_meter` varchar(45)
,`nama` varchar(45)
,`alamat` text
,`kd_tarif` varchar(45)
,`tenggang_waktu` int(11)
,`kd_tagihan` varchar(45)
,`jumlah_meter` int(11)
,`total_tagihan` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `struk`
--
CREATE TABLE `struk` (
`kd_bayar` varchar(45)
,`kd_pelanggan` varchar(45)
,`kd_penggunaan` varchar(45)
,`tanggal` date
,`bulan_bayar` varchar(45)
,`biaya_admin` int(11)
,`total` int(11)
,`bayar` int(11)
,`kembalian` int(11)
,`agen` varchar(45)
,`nama` varchar(45)
,`no_meter` varchar(45)
,`kd_tarif` varchar(45)
,`daya` varchar(45)
,`tarif` int(11)
,`meter_awal` int(11)
,`meter_akhir` int(11)
,`total_tagihan` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `subayar`
--
CREATE TABLE `subayar` (
`kd_pelanggan` varchar(45)
,`no_meter` varchar(45)
,`nama` varchar(45)
,`alamat` text
,`kd_tarif` varchar(45)
,`tenggang_waktu` int(11)
,`kd_tagihan` varchar(45)
,`jumlah_meter` int(11)
,`total_tagihan` int(11)
,`bulan` varchar(45)
,`tahun` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `kd_tagihan` varchar(45) NOT NULL,
  `kd_penggunaan` varchar(45) NOT NULL,
  `kd_pelanggan` varchar(45) NOT NULL,
  `bulan` varchar(45) NOT NULL,
  `tahun` varchar(45) NOT NULL,
  `jumlah_meter` int(11) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`kd_tagihan`, `kd_penggunaan`, `kd_pelanggan`, `bulan`, `tahun`, `jumlah_meter`, `total_tagihan`, `status`) VALUES
('TGN03022018093739', 'PGN00001', 'PEL00002', 'Jan', '2018', 100, 146700, 1),
('TGN03022018093752', 'PGN00002', 'PEL00001', 'Jan', '2018', 100, 146700, 1),
('TGN03022018093959', 'PGN00003', 'PEL00003', 'Jan', '2018', 50, 29300, 1),
('TGN03022018094030', 'PGN00004', 'PEL00004', 'Jan', '2018', 50, 20750, 1),
('TGN03022018094047', 'PGN00005', 'PEL00005', 'Jan', '2018', 50, 73350, 1),
('TGN03022018094101', 'PGN00006', 'PEL00006', 'Jan', '2018', 100, 146700, 0),
('TGN03022018094122', 'PGN00007', 'PEL00007', 'Jan', '2018', 100, 146700, 1),
('TGN03022018094245', 'PGN00008', 'PEL00008', 'Jan', '2018', 100, 58600, 0),
('TGN03022018094320', 'PGN00009', 'PEL00009', 'Jan', '2018', 50, 20750, 0),
('TGN03022018094333', 'PGN00010', 'PEL00010', 'Jan', '2018', 100, 146700, 1),
('TGN03022018094353', 'PGN00011', 'PEL00011', 'Jan', '2018', 50, 20750, 0),
('TGN03022018094405', 'PGN00012', 'PEL00012', 'Jan', '2018', 100, 146700, 0),
('TGN03022018094436', 'PGN00013', 'PEL00013', 'Jan', '2018', 100, 146700, 0),
('TGN03022018094446', 'PGN00014', 'PEL00014', 'Jan', '2018', 100, 58600, 0),
('TGN03022018094459', 'PGN00015', 'PEL00015', 'Jan', '2018', 100, 146700, 0),
('TGN03022018094756', 'PGN00016', 'PEL00001', 'Feb', '2018', 100, 146700, 1),
('TGN03022018094815', 'PGN00017', 'PEL00002', 'Feb', '2018', 105, 154035, 1),
('TGN03022018094954', 'PGN00018', 'PEL00003', 'Feb', '2018', 70, 41020, 1),
('TGN03022018095009', 'PGN00019', 'PEL00004', 'Feb', '2018', 100, 41500, 1),
('TGN03022018095309', 'PGN00020', 'PEL00005', 'Feb', '2018', 100, 146700, 1),
('TGN04022018112739', 'PGN00021', 'PEL00006', 'Feb', '2018', 150, 220050, 0),
('TGN04022018112757', 'PGN00022', 'PEL00007', 'Feb', '2018', 100, 146700, 1),
('TGN04022018112822', 'PGN00023', 'PEL00008', 'Feb', '2018', 100, 58600, 0),
('TGN04022018112944', 'PGN00024', 'PEL00009', 'Feb', '2018', 50, 20750, 0),
('TGN04022018113039', 'PGN00025', 'PEL00010', 'Feb', '2018', 150, 220050, 1),
('TGN04022018160141', 'PGN00026', 'PEL00022', 'Feb', '2018', 1, 586, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tarif`
--

CREATE TABLE `tarif` (
  `kd_tarif` varchar(45) NOT NULL,
  `daya` varchar(45) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarif`
--

INSERT INTO `tarif` (`kd_tarif`, `daya`, `tarif`) VALUES
('TAR00001', '450', 415),
('TAR00002', '900', 586),
('TAR00003', '1300', 1467),
('TAR00004', '2200', 1467),
('TAR00005', '3500', 1467),
('TAR00006', '4400', 1467);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Feb', 'feb', 'feb!@#'),
(2, 'Asdats', 'asdats', 'asdats!@#'),
(3, 'Riki', 'riki', 'riki!@#'),
(4, 'Rudi', 'rudi', 'rudi!@#'),
(5, 'Eman', 'eman', 'eman!@#'),
(6, 'Sisil', 'sisil', 'sisil!@#'),
(7, 'Chiko', 'chiko', 'chiko!@#'),
(8, 'Fahri', 'fahri', 'fahri!@#'),
(9, 'Ludi', 'ludi', 'ludi!@#'),
(10, 'Desi', 'desi', 'desi!@#'),
(11, 'Miko', 'miko', 'miko!@#');

-- --------------------------------------------------------

--
-- Structure for view `bbayar`
--
DROP TABLE IF EXISTS `bbayar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bbayar`  AS  select `pelanggan`.`kd_pelanggan` AS `kd_pelanggan`,`pelanggan`.`no_meter` AS `no_meter`,`pelanggan`.`nama` AS `nama`,`pelanggan`.`alamat` AS `alamat`,`pelanggan`.`kd_tarif` AS `kd_tarif`,`pelanggan`.`tenggang_waktu` AS `tenggang_waktu`,`tagihan`.`kd_tagihan` AS `kd_tagihan`,`tagihan`.`jumlah_meter` AS `jumlah_meter`,`tagihan`.`total_tagihan` AS `total_tagihan`,`tagihan`.`bulan` AS `bulan` from (`pelanggan` join `tagihan` on((`tagihan`.`kd_pelanggan` = `pelanggan`.`kd_pelanggan`))) where (`tagihan`.`status` = 0) ;

-- --------------------------------------------------------

--
-- Structure for view `pemasukan`
--
DROP TABLE IF EXISTS `pemasukan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pemasukan`  AS  select `tagihan`.`kd_tagihan` AS `kd_tagihan`,`tagihan`.`kd_penggunaan` AS `kd_penggunaan`,`tagihan`.`kd_pelanggan` AS `kd_pelanggan`,`tagihan`.`bulan` AS `bulan`,`tagihan`.`tahun` AS `tahun`,`tagihan`.`jumlah_meter` AS `jumlah_meter`,`tagihan`.`total_tagihan` AS `total_tagihan`,`tagihan`.`status` AS `status`,`pelanggan`.`nama` AS `nama` from (`tagihan` join `pelanggan` on((`pelanggan`.`kd_pelanggan` = `tagihan`.`kd_pelanggan`))) where (`tagihan`.`status` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `sbayar`
--
DROP TABLE IF EXISTS `sbayar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sbayar`  AS  select `pelanggan`.`kd_pelanggan` AS `kd_pelanggan`,`pelanggan`.`no_meter` AS `no_meter`,`pelanggan`.`nama` AS `nama`,`pelanggan`.`alamat` AS `alamat`,`pelanggan`.`kd_tarif` AS `kd_tarif`,`pelanggan`.`tenggang_waktu` AS `tenggang_waktu`,`tagihan`.`kd_tagihan` AS `kd_tagihan`,`tagihan`.`jumlah_meter` AS `jumlah_meter`,`tagihan`.`total_tagihan` AS `total_tagihan` from (`pelanggan` join `tagihan` on((`tagihan`.`kd_pelanggan` = `pelanggan`.`kd_pelanggan`))) where (`tagihan`.`status` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `struk`
--
DROP TABLE IF EXISTS `struk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `struk`  AS  select `pembayaran`.`kd_bayar` AS `kd_bayar`,`pembayaran`.`kd_pelanggan` AS `kd_pelanggan`,`pembayaran`.`kd_penggunaan` AS `kd_penggunaan`,`pembayaran`.`tanggal` AS `tanggal`,`pembayaran`.`bulan_bayar` AS `bulan_bayar`,`pembayaran`.`biaya_admin` AS `biaya_admin`,`pembayaran`.`total` AS `total`,`pembayaran`.`bayar` AS `bayar`,`pembayaran`.`kembalian` AS `kembalian`,`pembayaran`.`agen` AS `agen`,`pelanggan`.`nama` AS `nama`,`pelanggan`.`no_meter` AS `no_meter`,`tarif`.`kd_tarif` AS `kd_tarif`,`tarif`.`daya` AS `daya`,`tarif`.`tarif` AS `tarif`,`penggunaan`.`meter_awal` AS `meter_awal`,`penggunaan`.`meter_akhir` AS `meter_akhir`,`tagihan`.`total_tagihan` AS `total_tagihan` from ((((`pembayaran` join `pelanggan` on((`pelanggan`.`kd_pelanggan` = `pembayaran`.`kd_pelanggan`))) join `tarif` on((`tarif`.`kd_tarif` = `pelanggan`.`kd_tarif`))) join `tagihan` on((`tagihan`.`kd_pelanggan` = `pembayaran`.`kd_pelanggan`))) join `penggunaan` on((`penggunaan`.`kd_pelanggan` = `pembayaran`.`kd_pelanggan`))) where ((`tagihan`.`status` = 1) and (`penggunaan`.`status` = 1)) ;

-- --------------------------------------------------------

--
-- Structure for view `subayar`
--
DROP TABLE IF EXISTS `subayar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `subayar`  AS  select `pelanggan`.`kd_pelanggan` AS `kd_pelanggan`,`pelanggan`.`no_meter` AS `no_meter`,`pelanggan`.`nama` AS `nama`,`pelanggan`.`alamat` AS `alamat`,`pelanggan`.`kd_tarif` AS `kd_tarif`,`pelanggan`.`tenggang_waktu` AS `tenggang_waktu`,`tagihan`.`kd_tagihan` AS `kd_tagihan`,`tagihan`.`jumlah_meter` AS `jumlah_meter`,`tagihan`.`total_tagihan` AS `total_tagihan`,`tagihan`.`bulan` AS `bulan`,`tagihan`.`tahun` AS `tahun` from (`pelanggan` join `tagihan` on((`tagihan`.`kd_pelanggan` = `pelanggan`.`kd_pelanggan`))) where (`tagihan`.`status` = 1) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agen`
--
ALTER TABLE `agen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`),
  ADD KEY `fk_pelanggan_tarif1_idx` (`kd_tarif`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`kd_bayar`),
  ADD KEY `kd_tagihan` (`kd_penggunaan`);

--
-- Indexes for table `penggunaan`
--
ALTER TABLE `penggunaan`
  ADD KEY `kd_penggunaan` (`kd_penggunaan`),
  ADD KEY `kd_pelanggan` (`kd_pelanggan`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`kd_tagihan`),
  ADD KEY `kd_penggunaan` (`kd_penggunaan`);

--
-- Indexes for table `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`kd_tarif`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agen`
--
ALTER TABLE `agen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `fk_pelanggan_tarif1` FOREIGN KEY (`kd_tarif`) REFERENCES `tarif` (`kd_tarif`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`kd_penggunaan`) REFERENCES `penggunaan` (`kd_penggunaan`);

--
-- Constraints for table `penggunaan`
--
ALTER TABLE `penggunaan`
  ADD CONSTRAINT `penggunaan_ibfk_1` FOREIGN KEY (`kd_pelanggan`) REFERENCES `pelanggan` (`kd_pelanggan`);

--
-- Constraints for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD CONSTRAINT `tagihan_ibfk_1` FOREIGN KEY (`kd_penggunaan`) REFERENCES `penggunaan` (`kd_penggunaan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
