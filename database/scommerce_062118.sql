-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 03:58 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'charlie@yahoo.com', '952b4bc396507e867ecd64a024a55058');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'A4Tech'),
(2, 'Rakk'),
(3, 'Logitech'),
(4, 'Kingston'),
(5, 'Asus'),
(6, 'Corsair');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Mouse'),
(2, 'Keyboard'),
(3, 'Ram');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_detail` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`, `product_detail`) VALUES
(1, 1, 2, 'Rakk Dainas', 500, 'Rakk Dainas Illuminated Gaming Mouse', 'rakk-dainas.jpg', 'Rakk Mouse', 'Omron Linear Switch best for gaming<br>\r\nRGB 16.5Million Colors<br>\r\nAmbitextrous Shape and compact size<br>\r\nAVAGO 3050 Optical Sensor<br>\r\nOn-the-Fly DPI adjustment up to 4000 DPI<br>\r\nIlluminated Light 4 color cycling effect<br>'),
(2, 1, 2, 'Rakk Tinquis Illuminated', 550, '', 'rakk-tinquis.jpg', 'Rakk Mouse', '1000/1500/2000/2500 dpi Avago 5050 optical sensor\r\n<br>\r\nLED illuminated with 16.8 million\r\n<br>\r\ncustomizable color options'),
(3, 1, 3, 'Logitech G502 Proteus Spectrum', 3500, 'Logitech G502 Proteus Spectrum Optical Gaming Mouse Black', 'g502.jpg', 'Logitech G502 Proteus Spectrum Mouse', 'Tunable weight and balance<br>\r\nRGB customizable lighting<br>\r\nAdvanced Optical Sensor for precision <br>targeting and maneuvers<br>\r\nComfortable shape for long gaming sessions<br>\r\nEnhanced customization with free Logitech <br>Gaming Software<br>\r\n11 programmable buttons<br>\r\nFive DPI settings with fast on-the-fly switching'),
(4, 1, 3, 'Logitech G900 Chaos Spectrum', 7810, 'Logitech G900 Chaos Spectrum Professional Grade Wired/Wireless Gaming Mouse', 'g900.png', 'Logitech G900 Chaos Spectrum mouse', 'Connection Type: Wired/Wireless\r\n<br>\r\nUSB Protocol: USB 2.0\r\n<br>\r\nDPI (Min/Max): 200-12,000\r\n<br>\r\nUSB Report Rate: 1ms\r\n<br>\r\nSensor: PMW3366\r\n<br>\r\nIndicator Lights (LED): Yes, RGB\r\n<br>\r\nButtons: 6-11\r\n<br>\r\nOther Features: Hyperfast scroll wheel on-the-fly <br>\r\nDPS adjustment, up to 5 onboard profiles'),
(5, 1, 1, 'A4Tech Bloody A90', 1300, 'A4Tech Bloody A90 Infrared-Micro Switch Gaming Mouse', 'a90.jpg', 'A4Tech Bloody A90 mouse', '-Memory: 160K <br>\r\n-Acceleration: 20 g~23 g<br>\r\n-Frame Speed: 6,666 fps<br>\r\n-Max. Resolution: 4,000 CPI<br>\r\n-Key Response: Less 0.2 ms<br>\r\n-Infrared-Wheel: Over 1 Million Scrolls<br>\r\n-Tracking Speed: 60~160 inches/sec(ips)<br>\r\n-Image Processing: 2.41 Mega pixels/sec<br>\r\n-Metal X\' Glide Armor Boot: Over 300 Kms<br>\r\n-Infrared-Micro-Switch: Over 20 million \r\n<br>\r\nclicks<br>\r\n-Report Rate: 125~1000 Hz/sec (4-level adjustable)<br>\r\n-Type: Wired<br>\r\n-Button Numbers: 8<br>\r\n-Cable Length: 1.8 M<br>\r\n-Sensor: Optical Engine<br>\r\n-Connector: USB(2.0/ 3.0)<br>\r\n-System Requirements: Windows XP/ Vista/ 7/ 8 /8.1 / 10 or later'),
(6, 1, 1, 'A4Tech TL8A Bloody Terminator', 1700, 'A4Tech TL8A Bloody Terminator Laser Gaming Mouse (Black)', 'tl8a.jpg', 'A4Tech TL8A Bloody Terminator mouse', 'Transmission: Wired<br>\r\nConnector: USB (2.0/3.0)<br>\r\nSystem Supports: Windows XP/Vista/7/8<br>\r\nGraphic Capacity: 1080 million pixels/sec<br>\r\nFrame speed: 12000 fps<br>\r\nAccelerating speed:30g<br>\r\nReport Rate(USB): 125~1,000Hz/sec<br>\r\nKey response time: less than 1ms<br>'),
(7, 1, 1, 'A4Tech R8A Bloody Invincible', 2100, 'A4Tech R8A Bloody Invincible Wireless Gaming Mouse (Black)', 'r8a.jpg', 'A4Tech R8A Bloody Invincible mouse', 'Connectivity USB (2.0 / 3.0)<br>\r\nTracking Technology Optical<br>\r\nSensor DPI 3200 dpi<br>\r\nSystem Requirements Windows XP; Vista; Windows 7; Windows 8<br>\r\nApproximate Battery Life Up to 27 hours'),
(8, 1, 1, 'A4Tech X87', 1000, 'A4Tech X87 Oscar Neon Gaming Mouse (Black)', 'x87.jpg', 'A4Tech X87 mouse', 'PixiArt PAW3212 Optical Engine\r\n<br>\r\nSwitch Modes (Office/game/multimedia)\r\n<br>\r\nNeon Lighting Effects\r\n<br>\r\n2400 DPI Adjustable\r\n<br>\r\n2-Thumb Side Button\r\n<br>\r\nKey Reponse: 1ms\r\n<br>\r\nReport Rate: 125 - 1000 Hz/sec\r\n<br>\r\nButton Lifetime: 10 million clicks'),
(9, 1, 2, 'Rakk Alkus RGB', 1000, 'Rakk Alkus RGB Gaming Mouse', 'alkus.jpg', 'Rakk Alkus RGB mouse', 'Omron Switch 20 million clicks<br>\r\n8 programmable buttons<br>\r\nSensitivity Adjustment<br>\r\n1.8 Non-braided cable<br>\r\nUp to 4000 dpi<br>\r\nSoftware support<br>\r\n20g acceleration<br>\r\n1000Hz interpolling<br>\r\n16.8 million customizable color options\r\nErgononic design\r\nAvago A3050 optical sensor<br>'),
(10, 1, 2, 'Rakk IMA Macro', 1600, 'Rakk IMA Macro Gaming Mouse', 'ima.jpg', 'Rakk IMA Macro mouse', 'Omron Switch(20 million clicks)<br>\r\n18 programmable buttons<br>\r\nSensitivity Adjustment<br>\r\n1.8 Non-braided fiber cable\r\nUp to 16400 dpi\r\nsoftware support<br>\r\n12000 fps framerate<br>\r\n30g acceleration<br>\r\n1000Hz interpolling<br>\r\n16.8 million customizable color options\r\nergononic design<br>\r\nAvago 9800 optical sensor'),
(11, 1, 3, 'Logitech G102', 1200, 'Logitech G102 PRODIGY RGB Gaming Mouse (BLACK)', 'g102.jpg', 'Logitech G102 mouse', '<strong>Tracking</strong><br>\r\nResolution: 200-6,000 dpi\r\nMax. acceleration: >25G\r\nMax. speed: >200 ips\r\nTested on Logitech G240 Gaming Mouse Pad\r\n<br>\r\n<strong>Responsiveness</strong><br>\r\nUSB data format: 16 bits/axis\r\nUSB report rate: 1000 Hz (1ms)\r\nMicroprocessor: 32-bit ARM\r\n<br>\r\n<strong>Glide</strong><br>\r\nDynamic coefficient of friction: 0.1 ? (k)\r\nStatic coefficient of friction: 0.16 ? (s)\r\nTested on wood-veneer desktop\r\n<br>\r\n<strong>Durability</strong><br>\r\nButtons (Left / Right): 10 million clicks\r\nFeet: 250 kilometers'),
(12, 1, 3, 'Logitech G300S', 1100, 'Logitech G300S Optical Gaming Mouse', 'g300s.jpg', 'Logitech G300S mouse', 'Resolution: 250-2,500 dpi<br>\r\nMax Speed: 60 ips (1.5m/s)<br>\r\nUSB report rate: 1000 Hz (1ms)<br>\r\nButtons (Left / Right): 20 million clicks<br>\r\nOS Windows 8, Windows 7, or Windows Vista'),
(13, 2, 1, 'A4tech KV-300H Keyboard', 3000, 'A4tech KV-300H Keyboard', 'kv300.jpg', 'A4tech KV-300H Keyboard', 'Dimensions:435(L) X 124(W) X 22(H)mm<br>\r\nKeys:104\r\n<br>\r\nPackage Contents\r\n<br>\r\nKeyboard\r\nProduct size\r\n440mm(L)*124mm(W)*21mm(H)'),
(14, 2, 1, 'A4tech KD-126 Keyboard', 1400, 'A4tech KD-126 Keyboard', 'kd126.jpg', 'A4tech KD-126 Keyboard', 'LED backlight: easily locate the keys even in the dark<br>\r\nLaser engraved keys with UV coating\r\nOne-touch hotkeys: Fast access to the useful functions<br>\r\nCable length: 150 cm<br>\r\nHotkeys: 4\r\nUSB port'),
(15, 2, 6, 'CORSAIR K70 RGB RAPIDFIRE', 6000, 'CORSAIR K70 RGB RAPIDFIRE', 'k70c.png', 'CORSAIR K70 RGB RAPIDFIRE keyboard', 'Keyboard Warranty Two years<br>\r\nWeight 1.20kg<br>\r\nKeyboard Backlighting RGB<br>\r\nKeyboard Layout NA<br>\r\nHID Keyboard Report Rate 1000Hz<br>\r\nKey Switches Cherry MX Speed<br>\r\nUSB Pass-through USB 2.0 Type-A<br>\r\nMatrix 104 Keys<br>\r\nKeyboard Dimensions 436mm x 165mm x 38mm<br>\r\nKeyboard Connectivity Wired<br>\r\nAdjustable Height Yes<br>\r\nMedia Controls YN Yes<br>\r\nKeyboard Type Size K70<br>\r\nKeyboard Product Family FPS, MOBA<br>\r\nKeyboard Rollover Full Key (NKRO) with 100% Anti-Ghosting\r\nSize(Full/TKL) Full Size<br>\r\nWired Connectivity USB 2.0 Type-A'),
(16, 2, 3, 'Logitech G513', 5000, 'Logitech G513', 'g513.jpg', 'Logitech G513 Keyboard', 'KEYBOARD SPECIFICATIONS:\r\nConnection Type: USB 2.0<br>\r\nUSB Protocol: USB 2.0<br>\r\nIndicator LIghts (LED): 2<br>\r\nUSB Ports (Built-in): Yes, 2.0<br>\r\nBacklighting:  Yes, RGB per key lighting<br>\r\nSpecial Keys: \r\nLighting Controls: FN+F5/F6/F7<br>\r\nGame Mode: FN+F8<br>\r\nMedia Controls: FN+F9/F10/F11/F12<br>\r\nVolume Controls: FN+ PRTSC/SCRLK/PAUSE<br>\r\nProgrammable FN keys via Logitech Gaming Software'),
(17, 3, 6, 'VENGEANCE LED 16GB (2 x 8GB) DDR4 DRAM 2666MHz', 4000, '', 'veng16gb.png', 'VENGEANCE LED 16GB (2 x 8GB) DDR4 DRAM 2666MHz ram', '16GB (2x8GB) Corsair Vengeance LED<br>\r\nDDR4 2666 (PC4 21300)<br>\r\nTiming 16-18-18-35<br>\r\nCAS Latency 16<br>\r\nVoltage 1.2V<br>\r\nRed LED<br>\r\nNon-ECC Unbuffered');

-- --------------------------------------------------------

--
-- Table structure for table `sort`
--

CREATE TABLE `sort` (
  `sort_id` int(10) NOT NULL,
  `sort_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sort`
--

INSERT INTO `sort` (`sort_id`, `sort_title`) VALUES
(1, 'Name-ASC'),
(2, 'Name DESC'),
(3, 'Price ASC'),
(4, 'Price DESC');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwantawzan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansolsol', 'Asa '),
(2, 'Charles', 'Bermudez', 'charlie@yahoo.com', '952b4bc396507e867ecd64a024a55058', '9174511961', 'QC', 'QC'),
(5, 'Tony', 'Stark', 'stark@gmail.com', '202cb962ac59075b964b07152d234b70', '0917451196', 'QC', 'QC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sort`
--
ALTER TABLE `sort`
  ADD PRIMARY KEY (`sort_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sort`
--
ALTER TABLE `sort`
  MODIFY `sort_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
