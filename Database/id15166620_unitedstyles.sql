-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2019 at 04:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecart`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL,
  `product_title` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `product_title`) VALUES
(1, 'HP', 0),
(2, 'Samsung', 0),
(3, 'Apple', 0),
(4, 'Sony', 0),
(5, 'LG', 0),
(6, 'Cloth Brand', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`, `status`) VALUES
(85, 1, '::1', 16, 1, 'completed');

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
(1, 'Electronics '),
(2, 'Ladies Fashion'),
(3, 'Mens Fashion'),
(4, 'Kids Fashion'),
(5, 'Furnitures'),
(6, 'Home Appliances'),
(7, 'Electronics Gadgets'),
(8, 'Books'),
(9, 'Top ');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(1, 'saytoabrarkhan@gmail.com'),
(2, 'darsajad194@gmail.com'),
(3, 'abdullahkhan@yahoo.com'),
(4, 'umarhamid@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 1, 1, 5, 'asdfghjkl', 'completed'),
(2, 2, 2, 8, 'asdfghjkl', 'completed'),
(3, 3, 3, 5, 'xxxhty', 'completed'),
(5, 5, 5, 5, 'aesretyuyuii', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `state` varchar(225) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(225) NOT NULL,
  `cardnumber` int(10) NOT NULL,
  `expdate` varchar(225) NOT NULL,
  `prod_count` int(15) NOT NULL,
  `total_amt` int(15) NOT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 1, ' Abrar Khan', '', '', '', 'jammu and kashmir', 191111, 'ABRAR', 456789, '12/22', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) NOT NULL,
  `amt` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `product_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`, `product_status`) VALUES
(1, 1, 3, 'iPhone 5s', 25000, 'iphone 5s', 'iphone mobile.jpg', 'mobile iphone apple', 'active'),
(2, 1, 3, 'iPad', 30000, 'ipad apple brand', 'ipad.jpg', 'apple ipad tablet', 'active'),
(3, 1, 3, 'iPhone 6s', 32000, 'Apple iPhone ', 'iphone.jpg', 'iphone apple mobile', 'active'),
(4, 1, 2, 'iPad 2', 10000, 'samsung ipad', 'ipad 2.jpg', 'ipad tablet samsung', 'active'),
(5, 1, 2, 'Mobile Phone', 19000, 'Largest Selling Smart Phone', '1562156715_iphone_6_smartphone_mockup_realistic_design_6822261.jpg', 'I Phone 6', 'active'),
(6, 1, 3, 'Mobile Phone', 17000, 'Smartest phone ever made ', '1562156791_Minimal-Flat-Android-Phone-PSD-Mockup.jpg', 'Android Phone PSD', 'active'),
(7, 1, 3, 'Mobile Phone', 15000, 'Largest Selling Phone in India', '1562156955_mobile-phone-template_1412-16.jpg', 'New I Phone ', 'active'),
(8, 1, 2, 'Smart Phone', 9000, 'New Generations Choice', '1562157385_samsung-galaxy-mobile-vector-mock-up_254-2147486637.jpg', 'Samsung Galaxy ', 'active'),
(9, 1, 3, 'Smart Phone', 25000, 'Every Persons Choice ', '1562157470_https___blogs-images.forbes.com_gordonkelly_files_2019_04_iPhone-SE2-concept-Edited.jpg', 'I Phone', 'active'),
(10, 1, 3, 'Smart Phone', 19000, 'A partner for persons Long journey.', '1562157564_images (2).jpg', 'Mini Iphone', 'active'),
(11, 1, 1, 'Hp Laptop r series', 35000, 'Hp Red and Black combination Laptop', 'k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', 'hp laptop ', 'active'),
(12, 1, 1, 'Laptop', 21000, 'Youngesters Choice', '1562157859_images (3).jpg', 'Laptop', 'active'),
(13, 1, 4, 'Laptop', 25000, 'Professional peoples partner', '1562157914_images (4).jpg', 'Laptop', 'active'),
(14, 3, 6, 'T shirt', 800, 'ssds', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', 'formal t shirt black', 'active'),
(15, 4, 6, 'Yellow T shirt ', 1300, 'yello t shirt with pant', '1.0x0.jpg', 'kids yellow t shirt', 'active'),
(16, 4, 6, 'Girls cloths', 1900, 'sadsf', 'GirlsClothing_Widgets.jpg', 'formal kids wear dress', 'active'),
(17, 4, 6, 'Blue T shirt', 700, 'g', 'images.jpg', 'kids dress', 'active'),
(18, 4, 6, 'Yellow girls dress', 750, 'as', 'images (3).jpg', 'yellow kids dress', 'active'),
(19, 4, 6, 'Skyblue dress', 650, 'nbk', 'kids-wear-121.jpg', 'skyblue kids dress', 'active'),
(20, 4, 6, 'Formal look', 690, 'sd', 'image28.jpg', 'formal kids dress', 'active'),
(21, 5, 0, 'Book Shelf', 2500, 'book shelf', 'furniture-book-shelf-250x250.jpg', 'book shelf furniture', 'active'),
(22, 6, 2, 'Refrigerator', 35000, 'Refrigerator', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'refrigerator samsung', 'active'),
(23, 6, 4, 'Emergency Light', 1000, 'Emergency Light', 'emergency light.JPG', 'emergency light', 'active'),
(24, 6, 5, 'Iron', 1500, 'gj', 'iron.JPG', 'iron', 'active'),
(25, 2, 6, 'Formal girls dress', 3000, 'Formal girls dress', 'girl-walking.jpg', 'ladies', 'active'),
(26, 1, 2, 'Samsung Galaxy Note 3', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo', 'active'),
(28, 3, 6, 'boys shirts', 270, 'shirts', 'pm2.JPG', 'suit boys shirts', 'active'),
(29, 3, 6, 'boys shirts', 350, 'shirts', 'pm1.JPG', 'suit boys shirts', 'active'),
(30, 3, 6, 'boys shirts', 453, 'shirts', 'pm3.JPG', 'suit boys shirts', 'active'),
(31, 3, 6, 'boys shirts', 299, 'shirts', 'pm7.JPG', 'suit boys shirts', 'active'),
(32, 3, 6, 'boys shirts', 350, 'shirts', 'pm9.JPG', 'suit boys shirts', 'active'),
(33, 3, 6, 'boys shirts', 855, 'shirts', 'pm10.JPG', 'suit boys shirts', 'active'),
(34, 3, 6, 'boys shirts', 150, 'shirts', 'pm11.JPG', 'suit boys shirts', 'active'),
(35, 3, 6, 'boys shirts', 215, 'shirts', 'pm12.JPG', 'suit boys shirts', 'active'),
(36, 3, 6, 'boys shirts', 299, 'shirts', 'pm13.JPG', 'suit boys shirts', 'active'),
(37, 3, 1, 'logo', 202, 'logo image', '1554648816_10919170_831084363632119_411645516_a.jpg', 'hard', 'active'),
(38, 1, 4, 'LOGO BANNER', 250, 'THIS IS MY LOGO THAT I HAVE CREATED', '1554736825_10919170_831084363632119_411645516_a.jpg', 'SILENYT', 'active'),
(39, 7, 0, 'Headphone', 450, 'reliable high quality Boosted headphone', '1557608188_images (1).jpg', 'Headphone', 'active'),
(40, 4, 1, 'School Bag', 125, 'School bag for Kids', '1554909995_b2.jpg', 'summer', 'active'),
(41, 2, 2, 'Ladies Bag', 120, 'Leather carry  bag for carry daily items', '1554910105_b4.jpg', 'summer', 'active'),
(42, 3, 5, 'Jacket', 350, 'summer wear for the mens', '1554910264_m2.jpg', 'summer', 'active'),
(43, 1, 5, 'Watch', 250, 'Watch for formal Men', '1554910502_m7.jpg', 'Analog Watch', 'active'),
(44, 4, 5, 'Kids Bag', 165, 'kids  school bag', '1554910836_b3.jpg', 'School Bag', 'active'),
(45, 1, 1, 'Laptop Pavillion', 50000, 'Laptop Hp Pavillion', '12039452_525963140912391_6353341236808813360_n.png', 'Laptop Hp Pavillion', 'active'),
(46, 7, 2, 'Cannon A95', 1005, 'Digital camera with high Sensor resolution and Image sharpness', '1557610097_220px-Canon_PowerShot_A95_-_front_and_back.jpg', '', 'active'),
(47, 3, 6, 'Gents Shirt', 650, 'Summer type black shirt for Men', '1554911151_m1.jpg', 'cotton', 'active'),
(48, 2, 6, 'Ladies Bag', 325, 'New fashionable Bag Women', '1554911435_b6.jpg', 'leather', 'active'),
(49, 7, 7, 'Golden Watch', 456, 'electronic product with analog transmitter', '1554911947_w6.jpg', 'Platanium Golden ', 'active'),
(50, 7, 7, 'Watch for Men', 425, 'durable ,reliable and water proof', '1554912064_m7.jpg', 'Silver Coated Electronic  Watch', 'active'),
(52, 5, 0, 'Dinning  furniture', 450, 'Furniture for the drawing roo,', '1557601619_download (3).jpg', 'Wooden Furniture', 'active'),
(53, 5, 0, 'Wooden carved bed', 1000, 'Double weeding bed', '1557602398_download (6).jpg', 'Wooden Bed', 'active'),
(54, 5, 0, 'Buffalo Deer shaped ', 950, 'wooden Almariah  Animal shaped', '1557603118_download.jpg', 'Wooden carved animal shaped', 'active'),
(55, 5, 0, 'Dinning furniture', 555, 'Steel , wooden & glass  combination', '1557603973_plymouth.jpg', 'Dinning table with chairs', 'active'),
(56, 5, 0, 'frame board', 815, 'best for college students', '1557604197_images (1).jpg', 'Glass pannel almariah', 'active'),
(57, 5, 0, 'Almari', 556, 'chinese style', '1557604587_download (2).jpg', 'Wooden Furniture', 'active'),
(58, 5, 0, 'Shelves rack', 780, 'modern type', '1557604685_download (1).jpg', 'wooden locker', 'active'),
(59, 5, 0, 'LCD Almari', 780, 'best for Bed Rooms', '1557604992_download (5).jpg', 'Almariah for LCD', 'active'),
(60, 6, 0, 'Electric Rice cooker', 1000, 'Induction rice cooker on electricity 5 ltr', '1557605814_images (5).jpg', 'Rice Cooker', 'active'),
(61, 6, 0, 'Mixer', 950, 'mixer Grinder', '1557605971_images (4).jpg', 'Electric Mixer Grinder', 'active'),
(62, 6, 0, 'MicroWave Oven', 560, 'High Quality Micro Wave oven ', '1557606097_images (10).jpg', 'Micro wave Oven', 'active'),
(63, 6, 0, 'Cooler', 785, 'Air conditioner', '1557606844_images (1).jpg', 'Electric cooler ', 'active'),
(64, 6, 0, 'Electric Flask', 956, 'Electric Flask 2 ltr  keep container hot for 24 hours', '1557607039_images (6).jpg', 'Electric Flask', 'active'),
(65, 6, 0, 'Mixer', 9999, 'WAZWAAAN mixer', '1557607213_images (9).jpg', 'Electric Mixer Grinder', 'active'),
(66, 6, 0, 'Electric kettle', 560, 'electric kettle for kitchen', '1557607504_images (13).jpg', 'Electric kettle', 'active'),
(67, 6, 0, 'washing Machine', 880, 'Wahing machine for clothes', '1557608041_images (8).jpg', 'Washing Machine', 'active'),
(68, 7, 0, 'Mike', 780, 'High Quality Mike', '1557608251_images (3).jpg', 'Mike', 'active'),
(69, 7, 0, 'Gamming Joystick remote', 250, 'high quality remotes', '1557608332_images (2).jpg', 'Gamming remotes', 'active'),
(70, 7, 0, 'Gamming Tablets', 150, 'Gamming tablets for childrens', '1557608408_images (11).jpg', 'Gamming Tablet', 'active'),
(71, 7, 0, 'Boosted drum', 887, 'Audio Boosted drum with WIFI and bluetooth facility', '1557608525_images (4).jpg', 'Drum', 'active'),
(72, 7, 0, 'Video Gamming remote', 450, 'Video Gamming remote for childrens', '1557608854_images (6).jpg', 'Gamming remote', 'active'),
(73, 7, 3, 'Ear Phone', 120, 'High Quality Ear phones', '1557608959_images (5).jpg', 'Ear phones', 'active'),
(74, 8, 4, 'Printed Logo', 2, 'kashmir university', '1557780884_university-of-kashmir-squarelogo-1541062135113.png', 'logo', 'active'),
(75, 7, 3, 'Book', 75, 'book of the year', '1562662638_1185700_1490103391276169_1622343681160556282_n.jpg', 'ever green', ''),
(76, 7, 3, 'Painting', 500, 'Painting Of the year', '1562682851_10917885_10152674553158877_6737657030172232000_n.jpg', 'Soft', 'active');

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
(1, 'Abrar', 'Khan', 'saytoabrarkhan@gmail.com', 'ce64d53b2d51689babc7fdabf167591d', '9018913331', 'Ompora Housing Colony ', 'budgam');

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` int(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

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
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
