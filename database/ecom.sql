-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2018 at 10:03 AM
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
-- Database: `ecom`
--

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
(1, 'A4tech'),
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
(1, 1, 2, 'Rakk Mouse', 500, 'Rakk Dainas Illuminated Gaming Mouse', 'rakk-dainas.jpg', 'Rakk, Mouse', 'Connection Type: Wired\r\n\r\nBattery: 1 x AA\r\n\r\nBattery Life: 12 months\r\n\r\nIndicator Lights (LED): Battery LED\r\n\r\nDPI (Min/Max): 1000\r\n\r\nSensor technology: Laser-grade optical sensor'),
(47, 1, 2, 'Rakk Tinquis Illuminated', 450, 'Rakk Dainas Illuminated Gaming Mouse', 'rakk-tinquis.jpg', 'Rakk, Mouse', '1000/1500/2000/2500 dpi Avago 5050 optical sensor,\r\nLED illuminated with 16.8 million customizable color options'),
(48, 2, 1, 'A4TECH KRS-83 USB BLACK KEYBOARD', 450, 'Comfort RoundEdge Keycaps\r\nEase keystroke on your fingertips.', '11-105-600x571-1.jpg', 'A4tech, Keyboard', 'Type: Keyboard and Mouse\r\nCategory: A-Shape Keyboard\r\nPorts: USB Ports\r\nCompatible with desktop and laptop'),
(49, 1, 3, 'Logitech M170 Wireless Mouse (Black)', 500, 'Reliable 2.4Ghz wireless\r\nWireless Range: 10 m (33 ft)\r\n12-month battery life\r\nPlug-and-play connection\r\nComfortable and mobile', '1.jpg', 'logitech, Mouse', NULL),
(51, 1, 1, 'A4Tech OP-720 Optical USB Mouse (Black)', 500, 'Resolution: 800 dpi\r\nNumber of Keys: 3\r\nInterface: USB\r\nSystem Requirements: Windows 2000/XP/2003/Vista/Windows 7', '2.jpg', 'A4tech, Mouse', NULL),
(53, 1, 1, 'A4Tech N-320 V-Track Optical Mouse (Grey)', 299, 'A4Tech N320 Vtrack USB Mouse\r\nOptical mouse\r\nUSB Type\r\nV-Track Technology\r\n60cm cable\r\n8-in-One software\r\nV-Track works anywhere without a pad\r\nConsists of value-added functions, such as: Multimedia, Internet, 4-way wheel, etc.\r\nBest software for your every need.', '3.jpg', 'A4tech, Mouse', NULL),
(54, 2, 1, 'A4Tech KLS-5U USB Mini X-Slim Keyboard', 474, 'Brand A4TECH SKU A4592ELANBZ6ANPH-787199 Model JW Summit-A4KLS5U Warranty Type Local Supplier Warranty Warranty Period 1 Year', '4.jpg', 'A4tech, Keyboard', NULL),
(56, 2, 3, 'Logitech K120 USB Keyboard (Black)', 435, 'Rugged good looks\r\nComfortable, quiet typing\r\nSpill-resistant design\r\nDurable keys, Thin profile\r\nSturdy, adjustable tilt legs\r\nPlug-and-play USB connection\r\nEasy-to-read keys, Easy does it\r\nLogitech reliability, Curved space ba', '5.5.jpg', 'Logitech, Keyboard', NULL),
(57, 2, 2, 'Rakk Kimat XT.LE RGB Mechanical Gaming Keyboard', 2100, 'Full-sized mechanical keyboard with 104 keys in elegant font style.\r\nClicky blue Outemu switches, good for 50 million clicks.\r\nCapable of real RGB 16.8m colors.\r\n14 different lighting modes and can be configured through the Rakk™ FineTuner software.\r\nNew Logo.', '6.jpg', 'Rakk, Keyboard', NULL),
(58, 2, 2, 'Rakk Illuminated Gaming Keyboard V2 ROY', 650, 'tactile touch built to be more comfortable, Inclined Keyboard Design\r\nMultimedia keys, 3-way color Backlit and extended palm rest for best comfort when using.\r\nDrainage holes design. Effectively prevent the water damage to the keyboard.', '7.jpg', 'Rakk, Keyboard', NULL),
(59, 3, 4, 'Kingston 8gb ddr4 HyperX Fury 2400MHz HX424C15FB/8 Desktop Memory', 4500, 'Brand Kingston SKU KI109ELABCD9R4ANPH-108088040 Model DDR4 HX424C15FB/8 HYPER X KINGSTON Warranty Type Local Supplier Warranty Warranty Period 1 Year', '8.jpg', 'Kingston, Ram', NULL),
(60, 3, 4, 'Kingston DDR3 1600mhz 4GB RAM (Lodimm) for Desktop pc', 1495, 'Part Number: KVR16N11/4\r\nComaptible with almost all desktop, branded and Mac\r\nCompatible w/ Dell, HP, Acer, Asus, Samsung, Lenovo, Mac, Asrock, MSI, ECS etc.\r\n4GB Module - DDR3 1600MHz\r\nDimm 240 pins\r\nNon-ECC', '9.jpg', 'Kingston, Keyboard 4 4gb', NULL),
(61, 3, 6, 'Corsair Vengeance LPX 16GB (2x8GB) DDR4 DRAM 2400MHz C14 Memory Kit - Black (CMK16GX4M2A2400C14)', 11500, '16 GB of high speed 2400 Mhz DDR4 memory\r\nDesigned for high performance overclocking with 8 Layer PCB\r\nDesigned and optimised for the latest Intel X99 Chipset\r\nSupports intel XMP 2.0 automatic overclocking\r\nLow profile heatspreader design', '10.jpg', 'Corsair, Ram 16 16gb', NULL),
(62, 3, 6, 'CORSAIR VENGEANCE LPX 4GB DDR4 2400MHZ MEMORY', 3200, '4GB (1x4GB) Corsair DDR4 Vengeance LPX Black\r\nVoltage: 1.2V\r\nLatency Timing: CL14\r\nModule Name: PC4-17000\r\n1 X 4GB Memory Module\r\nIntel XMP Profile Support\r\nnon-ECC Unbuffered Memory', '11.jpg', 'Corsair, Ram', NULL),
(63, 3, 4, 'Kingston HyperX FURY 8GB 1866MHz PC3-14900 DDR3 Memory Module RAM Long DIMM ', 4080, 'Capacity 8GB (single)\r\nFrequency (speed) 1866MHz\r\nDual Channel\r\nLatency C10\r\nVoltage 1.5V\r\nOperating temperature 0°C to 85°C\r\nStorage temperature -55°C to 100°C\r\nDimensions 133.35mm x 32.8mm\r\nCompatible with Intel 6, 7, 8, 9 and 1002 series chipsets, as well as A75, A87, A88, A89, A78 and E35 AMD chipsets', 'kingston-hyperx-fury-8gb-1866mhz-pc3-14900-ddr3-memory-mo12.jpg', 'Kingston Ram 8gb 8 ', NULL),
(64, 1, 5, 'ASUS ROG Pugio Aura RGB USB Wired Optical Ergonomic Ambidextrous Gaming Mouse', 5000, 'ASUS Aura Sync RGB lighting in three different zones features a nearly endless spectrum of colors\r\nConfigurable magnetic side buttons for a truly ambidextrous and ergonomic gaming mouse\r\nGaming-grade optical sensor with 7200 DPI, 150 IPS and 30g acceleration for fast and accurate tracking\r\nExclusive push-fit socket design to easily swap the durable 50-million-click Omron switches\r\nIntuitive ROG Armory software interface for easy customization of buttons, performance and lighting settings', '13jpg.jpg', 'Asus, Mouse', NULL),
(65, 1, 3, 'Logitech Mx-Ergo', 5000, 'MX-ERGO\r\nWireless Trackball', 'mx-ergo.png', 'mx ergo logitech mouse', 'Sensor technology\r\nLogitech Advance Optical Tracking\r\nNominal value : 380 dpi\r\nMinimal and maximal value : 320 dpi - 440 dpi\r\nNumber of buttons: 8\r\nAdvanced 2.4GHz wireless technology\r\nRechargeable Li-Po (500 mAh) battery'),
(66, 1, 3, 'Logitech M570', 6000, 'Trackball\r\nLogitech® Unifying receiver\r\n1 AA battery\r\n', 'm570.png', 'm570 logitech mouse', 'Color: Silver and blue\r\nSensor technology: Laser\r\nSensor Resolution: 540\r\nNumber of buttons: 5\r\nScroll Wheel (Y/N): Yes\r\nBattery life: 18-month battery life4\r\nBattery type: 1 AA battery\r\nWireless operating distance: Approx 10m\r\nWireless technology: Advanced 2.4 GHz wireless connectivity(Unifying supported)\r\nSoftware: SetPoint?LCC\r\nInterface: USB');

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
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa'),
(4, 'Charles', 'Bermudez', 'charlie@yahoo.com', '952b4bc396507e867ecd64a024a55058', '9174511961', 'San Mateo', 'San Mateo'),
(5, 'Carlo', 'Banate', 'carlo@yahoo.com', '952b4bc396507e867ecd64a024a55058', '9174511971', 'QC', 'QC');

--
-- Indexes for dumped tables
--

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
