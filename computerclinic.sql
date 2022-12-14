-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 06:58 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computerclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `currentLocation` varchar(30) DEFAULT NULL,
  `items` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `name`, `email`, `address`, `city`, `state`, `zip`, `currentLocation`, `items`) VALUES
(3, 'priyen', 'priyenpatel0987@gmail.com', 'kudasan', 'gandhinaga', 'gujarat', '382421', 'bayad', 'ANTEC NX 500+₹4000 CORE I3 10100 (UPTO 4.3 GHZ, CORES-4 THREADS-8) +₹9950 TUF GAMING B560 PLUS WIFI +₹16350 ASUS GT 710 2 GB DDR5 +₹4250 SSD SAMSUNG 250GB 980 NVME +₹3990 G.SKILL 8 GB DDR4 RIPJAWS V 3200 MHZ CL16 +₹2790 AIR COOLER-COOLERMASTER-HYPER 410 RGB +₹1895 TP-LINK TL-WN823N 300MBPS MINI WIRELESS N USB ADAPTER +₹895 WINDOWS 11 PROFESSIONAL 64 BIT FPP (WITH USB PENDRIVE) +₹14990 '),
(4, '', '', '', '', '', '', NULL, 'ANTEC NX 500+₹4000 CORE I3 10100 (UPTO 4.3 GHZ, CORES-4 THREADS-8) +₹9950 TUF GAMING B560 PLUS WIFI +₹16350 ASUS GT 710 2 GB DDR5 +₹4250 SSD SAMSUNG 250GB 980 NVME +₹3990 G.SKILL 8 GB DDR4 RIPJAWS V 3200 MHZ CL16 +₹2790 AIR COOLER-COOLERMASTER-HYPER 410 RGB +₹1895 TP-LINK TL-WN823N 300MBPS MINI WIRELESS N USB ADAPTER +₹895 WINDOWS 11 PROFESSIONAL 64 BIT FPP (WITH USB PENDRIVE) +₹14990 '),
(5, 'priyen', 'abc@gmail.com', 'pramukh', 'gandhinagar', 'gujarat', '382421', NULL, 'ANTEC NX 500+₹4000 AMD RYZEN 3 3200G (UPTO-4GHZ, CORES-4, THREADS-4) +₹10190 TUF GAMING B560 PLUS WIFI +₹16350 ASUS GT 710 2 GB DDR5 +₹4250 SSD SAMSUNG 250GB 980 NVME +₹3990 G.SKILL 8 GB DDR4 RIPJAWS V 3200 MHZ CL16 +₹2790 AIR COOLER-COOLERMASTER-HYPER 410 RGB +₹1895 TP-LINK TL-WN823N 300MBPS MINI WIRELESS N USB ADAPTER +₹895 WINDOWS 10 HOME 64 BIT FPP (WITH USB PENDRIVE) +₹10450 '),
(6, 'dhruv', 'dkpatel26@gmail.com', 'raysan', 'gandhinaga', 'gujarat', '382421', 'gandhinagar', 'ANTEC NX 500+₹4000 CORE I3 10100 (UPTO 4.3 GHZ, CORES-4 THREADS-8) +₹9950 TUF GAMING B560 PLUS WIFI +₹16350 ASUS GT 710 2 GB DDR5 +₹4250 SSD SAMSUNG 250GB 980 NVME +₹3990 G.SKILL 8 GB DDR4 RIPJAWS V 3200 MHZ CL16 +₹2790 AIR COOLER-COOLERMASTER-HYPER 410 RGB +₹1895 TP-LINK TL-WN823N 300MBPS MINI WIRELESS N USB ADAPTER +₹895 WINDOWS 10 HOME 64 BIT FPP (WITH USB PENDRIVE) +₹10450 '),
(7, 'priyen', 'priyenpatel0987@gmail.com', 'kudasan', 'gandhinaga', 'gujarat', '382421', 'gandhinagar', 'ANTEC NX 500+₹4000 CORE I3 10100 (UPTO 4.3 GHZ, CORES-4 THREADS-8) +₹9950 TUF GAMING B560 PLUS WIFI +₹16350 ASUS GT 710 2 GB DDR5 +₹4250 HDD WD1TB WD BLUE 7200RPM +₹3390 G.SKILL 8 GB DDR4 RIPJAWS V 3200 MHZ CL16 +₹2790 AIR COOLER-COOLERMASTER-HYPER 410 RGB +₹1895 TP-LINK TL-WN823N 300MBPS MINI WIRELESS N USB ADAPTER +₹895 WINDOWS 10 HOME 64 BIT FPP (WITH USB PENDRIVE) +₹10450 '),
(8, 'xyz', 'abc@gmail.com', 'pramukh', 'gandhinaga', 'gujarat', '382421', NULL, 'ANTEC NX 500+₹4000 CORE I3 10100 (UPTO 4.3 GHZ, CORES-4 THREADS-8) +₹9950 TUF GAMING B560 PLUS WIFI +₹16350 ASUS GT 710 2 GB DDR5 +₹4250 SSD SAMSUNG 250GB 980 NVME +₹3990 G.SKILL 8 GB DDR4 RIPJAWS V 3200 MHZ CL16 +₹2790 AIR COOLER-COOLERMASTER-HYPER 410 RGB +₹1895 TP-LINK TL-WN823N 300MBPS MINI WIRELESS N USB ADAPTER +₹895 WINDOWS 10 HOME 64 BIT FPP (WITH USB PENDRIVE) +₹10450 '),
(9, 'priyen', 'priyenpatel0987@gmail.com', 'kudasan', 'gandhinaga', 'gujarat', '382421', NULL, 'ANTEC NX 500+₹4000 AMD RYZEN 3 3200G (UPTO-4GHZ, CORES-4, THREADS-4) +₹10190 TUF GAMING B560 PLUS WIFI +₹16350 ASUS GT 710 2 GB DDR5 +₹4250 SSD SAMSUNG 250GB 980 NVME +₹3990 G.SKILL 8 GB DDR4 RIPJAWS V 3200 MHZ CL16 +₹2790 AIR COOLER-COOLERMASTER-HYPER 410 RGB +₹1895 TP-LINK TL-WN823N 300MBPS MINI WIRELESS N USB ADAPTER +₹895 WINDOWS 10 HOME 64 BIT FPP (WITH USB PENDRIVE) +₹10450 '),
(10, 'vyom', 'vyom@gmail.com', 'vijapur', 'vijapur', 'gujarat', '52485', 'vijapur', 'ANTEC NX 500+₹4000 AMD RYZEN 3 3200G (UPTO-4GHZ, CORES-4, THREADS-4) +₹10190 TUF GAMING B560 PLUS WIFI +₹16350 ASUS GT 710 2 GB DDR5 +₹4250 HDD WD1TB WD BLUE 7200RPM +₹3390 G.SKILL 8 GB DDR4 RIPJAWS V 3200 MHZ CL16 +₹2790 AIR COOLER-COOLERMASTER-HYPER 410 RGB +₹1895 TP-LINK TL-WN823N 300MBPS MINI WIRELESS N USB ADAPTER +₹895 WINDOWS 11 PROFESSIONAL 64 BIT FPP (WITH USB PENDRIVE) +₹14990 '),
(11, 'priyen', 'abc@gmail.com', 'pramukh', 'vijapur', 'gdf', '52485', NULL, 'Lian Li Lancool II Mesh RGB (White)'),
(12, 'priyen', 'abc@gmail.com', 'pramukh', 'vijapur', 'gdf', '52485', NULL, 'Lian Li Lancool II Mesh RGB (White)'),
(20, 'dhruv', 'priyenpatel0987@gmail.com', 'pramukh', 'gandhinagar', 'jbj', '52485', NULL, 'Lian Li Lancool II Mesh RGB (Black)'),
(21, 'priyen', 'priyenpatel0987@gmail.com', 'kudasan', 'gandhinagar', 'gujarat', '382421', 'mehsana', 'ANTEC NX 500+₹4000 CORE I3 10100 (UPTO 4.3 GHZ, CORES-4 THREADS-8) +₹9950 Z490 AORUS PRO AX +₹25900 ASUS GT 710 2 GB DDR5 +₹4250 SSD SAMSUNG 250GB 980 NVME +₹3990 G.SKILL 8 GB DDR4 RIPJAWS V 3200 MHZ CL16 +₹2790 AIR COOLER-COOLERMASTER-HYPER 410 RGB +₹1895 TP-LINK TL-WN823N 300MBPS MINI WIRELESS N USB ADAPTER +₹895 WINDOWS 11 PROFESSIONAL 64 BIT FPP (WITH USB PENDRIVE) +₹14990 ');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(2, 'priyen', 'priyenpatel0987@gmail.com', 'hii hello');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`) VALUES
(1, 'priyen', 'priyenpatel0987@gmail.com', 'nice product');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'priyen', 'patel', 'priyenpatel0987@gmail.com', '12345678'),
(2, 'dhruv', 'patel', 'dkpatel@gmail.com', '12345678'),
(3, 'xyz', 'xyz', 'xyz@gmail.com', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
