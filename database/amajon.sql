-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2018 at 09:50 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amajon`
--

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE `Account` (
  `num` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Account`
--

INSERT INTO `Account` (`num`, `username`, `password`) VALUES
(1, 'william1099', 'william1099'),
(2, 'test', 'test123'),
(3, 'admin', 'admin'),
(4, 'ilkom', 'ilkom');

-- --------------------------------------------------------

--
-- Table structure for table `best`
--

CREATE TABLE `best` (
  `num` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `best`
--

INSERT INTO `best` (`num`, `nama`, `harga`, `link`) VALUES
(1, 'Toystoryy', 200000, 'best1.jpg'),
(2, 'BeveragesFairytaill', 350000, 'best2.jpg'),
(3, 'AmericanBalll', 6300000, 'best3.png'),
(4, 'KursiiMaroon', 5350000, 'best4.jpg'),
(5, 'KurrsiKayu', 257000, 'best5.png'),
(6, 'HighHeelHitam', 1500000, 'best6.jpg'),
(7, 'BeveragesBreakfast and DairyAdidas', 500000, 'best7.jpeg'),
(8, 'BolaWorldCup2014', 450000, 'best8.jpg'),
(9, 'DCSuperHero', 50000, 'best9.jpg'),
(10, 'SkyLander', 450000, 'best10.jpg'),
(11, 'XiaomiRedmiNote2', 4000000, 'best11.jpg'),
(12, 'SonyXperiaXAUltraPink', 2100000, 'best12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ID`, `nama`, `link`, `harga`) VALUES
(2, 'bajukuning', 'promo2.jpg', 41500),
(3, 'dompet V', 'promo3.jpg', 60000),
(4, 'bajuhijau', 'promo4.jpg', 37500),
(12, 'SonyXperiaXAUltraPink', 'best12.jpg', 2100000);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat`) VALUES
('Hai :)'),
('hai'),
('hai'),
('tanggal'),
('05 07 2018'),
('nama'),
('Namaku Amajon BOT :)');

-- --------------------------------------------------------

--
-- Table structure for table `Fruits and Vegetables`
--

CREATE TABLE `Fruits and Vegetables` (
  `num` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fruits and Vegetables`
--

INSERT INTO `Fruits and Vegetables` (`num`, `nama`, `harga`, `link`) VALUES
(1, 'ToyStory', 200000, 'Fruits and Vegetables1.jpg'),
(2, 'DCSuperHero', 50000, 'Fruits and Vegetables2.jpg'),
(3, 'SkyLander', 210000, 'Fruits and Vegetables3.jpg'),
(4, 'KillLaKill', 325000, 'Fruits and Vegetables4.jpg'),
(5, 'WinnieThePooh', 33000, 'Fruits and Vegetables5.jpg'),
(6, 'BatmanAndSuperman', 450000, 'Fruits and Vegetables6.jpg'),
(7, 'Starwars', 401000, 'Fruits and Vegetables7.jpg'),
(8, 'Wonderwoman', 450000, 'Fruits and Vegetables8.jpg'),
(9, 'HarryPotter', 140000, 'Fruits and Vegetables9.jpg'),
(10, 'Zartan', 43000, 'Fruits and Vegetables10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `num` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`num`, `nama`, `harga`, `link`) VALUES
(1, 'MobilPutih', 257000000, 'mobil1.jpg'),
(2, 'MobilPutihHitam', 35000000, 'mobil2.jpeg'),
(3, 'MobilHitam', 210000000, 'mobil3.jpg'),
(4, 'Lamborghini', 17800000000, 'mobil4.jpg'),
(5, 'BMW', 330000000, 'mobil5.jpg'),
(6, 'UltimateAero', 4500000000, 'mobil6.jpg'),
(7, 'MobilPolisi', 401000000, 'mobil7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `perabot`
--

CREATE TABLE `perabot` (
  `num` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perabot`
--

INSERT INTO `perabot` (`num`, `nama`, `harga`, `link`) VALUES
(1, 'KursiKayu', 257000, 'perabot1.png'),
(2, 'MejaKecil', 350000, 'perabot2.jpg'),
(3, 'SofaCream', 1210000, 'perabot3.jpg'),
(4, 'MejaKaca', 1780000, 'perabot4.jpg'),
(5, 'MejaKayu', 1300000, 'perabot5.jpg'),
(6, 'SetMejaMakan', 4500000, 'perabot6.jpg'),
(7, 'MejaBundar', 5000000, 'perabot7.jpg'),
(8, 'RakBuku', 4050000, 'perabot8.jpg'),
(9, 'SofaPutih', 3450000, 'perabot9.jpg'),
(10, 'KursiBiasa', 173000, 'perabot10.jpg'),
(11, 'KursiPlastik', 43000, 'perabot11.jpg'),
(12, 'TempatTidur', 6300000, 'perabot12.jpg'),
(13, 'KursiMaroon', 5350000, 'perabot13.jpg'),
(14, 'KursiMeja', 2430000, 'perabot14.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `num` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`num`, `nama`, `harga`, `link`) VALUES
(1, 'SonyXperiaXAultra', 2000000, 'phone1.jpg'),
(2, 'SonyXperiaZ5Compact', 5600000, 'phone2.jpg'),
(3, 'SonyXperiaXAUltrapink', 2100000, 'phone3.jpg'),
(4, 'SonyXperiaM2', 3250000, 'phone4.jpg'),
(5, 'SonyXperiaZr', 4300000, 'phone5.jpg'),
(6, 'Iphone5', 4500000, 'phone6.jpg'),
(7, 'Iphone6', 4150000, 'phone7.jpg'),
(8, 'Iphone5S', 4500000, 'phone8.jpg'),
(9, 'XiaomiRedminote2', 4000000, 'phone9.jpg'),
(10, 'XiaomiRedmi3X', 4300000, 'phone10.jpg'),
(11, 'XiaomiMi5Pro', 4350000, 'phone11.jpeg'),
(12, 'SamsungGalaxyJ7', 5300000, 'phone12.jpg'),
(13, 'SamsungGalaxyS5', 5210000, 'phone13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `num` int(11) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `link` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`num`, `nama`, `harga`, `link`) VALUES
(1, 'Kaosabu', 50000, 'kaos1.jpg'),
(2, 'Kaoshijau', 40000, 'kaos2.jpg'),
(3, 'Kaosputih', 30000, 'kaos3.jpg'),
(4, 'Kaosrock', 35000, 'kaos4.jpg'),
(5, 'Kaosmerahputih', 40000, 'kaos5.jpg'),
(6, 'Kaosfake', 45000, 'kaos6.png'),
(7, 'Kaossegar', 43000, 'kaos7.jpg'),
(8, 'Kaosmerah', 53000, 'kaos8.jpg'),
(9, 'Kaoshitampolos', 23000, 'kaos9.jpg'),
(10, 'Kaoscorak', 42000, 'kaos10.jpg'),
(11, 'Kaosmickey', 55000, 'kaos11.jpg'),
(12, 'Kaosstrategic', 55000, 'kaos12.jpg'),
(13, 'Kaoscameron', 38000, 'kaos13.jpg'),
(14, 'Kaosnice', 48000, 'kaos14.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `num` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`num`, `nama`, `harga`, `link`) VALUES
(1, 'bajubiru', 45000, 'promo1.jpg'),
(2, 'bajukuning', 41500, 'promo2.jpg'),
(3, 'dompet V', 60000, 'promo3.jpg'),
(4, 'bajuhijau', 37500, 'promo4.jpg'),
(5, 'blender', 430000, 'promo5.jpg'),
(6, 'lipstick', 45000, 'promo6.jpg'),
(7, 'jamtangan', 41500, 'promo7.jpg'),
(8, 'Laptop Am', 1600000, 'promo8.jpg'),
(9, 'kaoskaki', 7500, 'promo9.jpg'),
(10, 'kacamata CK', 43000, 'promo10.jpg'),
(11, 'tas', 20000, 'promo11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Beverages`
--

CREATE TABLE `Beverages` (
  `num` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Beverages`
--

INSERT INTO `Beverages` (`num`, `nama`, `harga`, `link`) VALUES
(1, 'BeveragesHitamPutih', 157000, 'Beverages1.jpg'),
(2, 'BeveragesFairytail', 350000, 'Beverages2.jpg'),
(3, 'BeveragesPolos', 121000, 'Beverages3.jpg'),
(4, 'BeveragesDC', 178000, 'Beverages4.jpg'),
(5, 'HighHeel', 1300000, 'Beverages5.jpg'),
(6, 'HighHeelHitam', 1500000, 'Beverages6.jpg'),
(7, 'BeveragesBreakfast and DairyAdidas', 500000, 'Beverages7.jpeg'),
(8, 'BeveragesAirJordan', 405000, 'Beverages8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Breakfast and Dairy`
--

CREATE TABLE `Breakfast and Dairy` (
  `num` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Breakfast and Dairy`
--

INSERT INTO `Breakfast and Dairy` (`num`, `nama`, `harga`, `link`) VALUES
(1, 'SarungTangan', 257000, 'Breakfast and Dairy1.jpg'),
(2, 'RacketA1', 350000, 'Breakfast and Dairy2.jpg'),
(3, 'RacketA2', 121000, 'Breakfast and Dairy3.jpg'),
(4, 'RacketA5', 1780000, 'Breakfast and Dairy4.jpg'),
(5, 'SetRacket', 3300000, 'Breakfast and Dairy5.jpg'),
(6, 'BolaWorldCup2014', 4500000, 'Breakfast and Dairy6.jpg'),
(7, 'BolaNike', 500000, 'Breakfast and Dairy7.jpg'),
(8, 'BolaAdidas', 405000, 'Breakfast and Dairy8.jpg'),
(9, 'BolaNikeOmni', 3450000, 'Breakfast and Dairy9.jpg'),
(10, 'BolaNikeT90', 1730000, 'Breakfast and Dairy10.jpg'),
(11, 'PumaBarcelona', 430000, 'Breakfast and Dairy11.jpg'),
(12, 'AmericanBallr', 630000, 'Breakfast and Dairy12.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `best`
--
ALTER TABLE `best`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Fruits and Vegetables`
--
ALTER TABLE `Fruits and Vegetables`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `perabot`
--
ALTER TABLE `perabot`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `Beverages`
--
ALTER TABLE `Beverages`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `Breakfast and Dairy`
--
ALTER TABLE `Breakfast and Dairy`
  ADD PRIMARY KEY (`num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Account`
--
ALTER TABLE `Account`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `best`
--
ALTER TABLE `best`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Fruits and Vegetables`
--
ALTER TABLE `Fruits and Vegetables`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `perabot`
--
ALTER TABLE `perabot`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `Beverages`
--
ALTER TABLE `Beverages`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Breakfast and Dairy`
--
ALTER TABLE `Breakfast and Dairy`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
