-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 06:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `bog`
--

CREATE TABLE `bog` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_text` text NOT NULL,
  `blog_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bog`
--

INSERT INTO `bog` (`blog_id`, `blog_title`, `blog_text`, `blog_image`) VALUES
(1, 'Upcoming Laptops', 'Whether you’re looking for the best laptop for photo editing or a Windows laptop that works with your computer software, you’ll want to find the laptop that is designed for your unique needs.', './assets/blog/blog1.jpg'),
(2, 'Laptops - Amazon.com\r\n', 'Harness the power of mobile computing with the right laptop. Whether your job requires you to access a computer away from your desk or you\'re someone who likes the convenience to move', './assets/blog/blog2.jpg'),
(3, 'Top 5 Laptop Computers of 2021 ', 'View the Top 5 Laptops of 2021. Free 2-Day Shipping and Free Returns. We Make Shopping Quick and Easy. Read Expert Tips and Advice for the Best Laptops of 2021.', './assets/blog/blog3.jpg'),
(4, 'MacBook - Apple', 'For professionals ready to push their creativity, these industry-leading apps offer maximum control over editing, processing, and output of music and film.', './assets/blog/blog4.jpg'),
(5, 'Apple and Education', 'Empowering educators and students to move the world forward,apps offer maximum control over editing, processing, and output of music and film.', './assets/blog/blog5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `item_id`) VALUES
(24, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Samsung', 'Samsung Air Galaxy', 152.00, './assets/products/1.png', '2021-09-24 11:08:57'),
(2, 'Dell', 'Dell HP Fujitsu Windows', 122.00, './assets/products/2.png', '2021-09-24 11:08:57'),
(3, 'Dell', 'Dell Latitude 7480 14', 122.00, './assets/products/3.png', '2021-09-24 11:08:57'),
(4, 'Dell', 'Dell Precision 5540 ', 122.00, './assets/products/4.png', '2021-09-24 11:08:57'),
(5, 'Dell', 'Dell XPS 13 7390 2-in-1', 122.00, './assets/products/5.png', '2021-09-24 11:08:57'),
(6, 'Dell', 'Dell Latitude E5440 14', 122.00, './assets/products/6.png', '2021-09-24 11:08:57'),
(7, 'Dell', 'Dell XPS 15-9500', 122.00, './assets/products/8.png', '2021-09-24 11:08:57'),
(8, 'Samsung', 'Samsung 15.6 Galaxy ', 122.00, './assets/products/10.png', '2021-09-24 11:08:57'),
(9, 'Samsung', 'Samsung Galaxy Pro', 152.00, './assets/products/11.png', '2021-09-24 11:08:57'),
(10, 'Samsung', 'Samsung 16 Galaxy', 152.00, './assets/products/12.png', '2021-09-24 11:08:57'),
(11, 'Apple', 'MacBook Air 13.3', 152.00, './assets/products/13.png', '2021-09-24 11:08:57'),
(12, 'Apple', 'MacBook Pro - 13', 152.00, './assets/products/14.png', '2021-09-24 11:08:57'),
(13, 'Apple', 'MacBook Pro 13.3', 152.00, './assets/products/15.png', '2021-09-24 11:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Reham', 'Hesham', '2020-03-28 13:07:17'),
(2, 'Rana', 'hesham', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`cart_id`, `user_id`, `item_id`) VALUES
(27, 1, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bog`
--
ALTER TABLE `bog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bog`
--
ALTER TABLE `bog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
