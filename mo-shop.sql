-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2020 at 05:58 PM
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
-- Database: `mo-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'frozen'),
(2, 'beverages'),
(3, 'canned'),
(5, 'baby'),
(6, 'General'),
(7, 'Cosmetic');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `wholesaler_id` int(11) NOT NULL,
  `supermarket_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `delivered` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `wholesaler_id`, `supermarket_id`, `product_id`, `quantity`, `date_added`, `delivered`) VALUES
(1, 3, 1, 1, 45, '2020-04-12 00:00:00', 0),
(2, 4, 2, 2, 12, '2020-04-12 00:00:00', 1),
(3, 3, 3, 1, 15, '2020-04-15 00:00:00', 0),
(4, 3, 4, 2, 90, '2020-04-05 00:00:00', 1),
(5, 4, 4, 4, 150, '2020-04-13 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `buy_price` double DEFAULT NULL,
  `sell_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `category_id`, `image_url`, `buy_price`, `sell_price`) VALUES
(1, 'Tomate puree', 'Food by tomato.inc', 3, 'https://images-na.ssl-images-amazon.com/images/I/81C-g86F1QL._SL1500_.jpg', 15, 20),
(2, 'Tilapia', 'Fish', 1, 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Oreochromis-niloticus-Nairobi.JPG', 200, 250),
(3, 'Cheese', 'Food by Kraft', 3, 'https://images-na.ssl-images-amazon.com/images/I/71SrLH6HX3L._SL1500_.jpg', 25, 35),
(4, 'Paco Rabanne', 'Perfume', 7, 'https://img.fragrancex.com/images/products/parent/medium/60559m.jpg', 2000, 2999.99),
(5, 'Toilet Paper', 'Kleenex Product\r\nGood Quality\r\nDouble Ply', 6, 'https://assets.lyreco.com/is/image/lyrecows/2018-7264771?locale=FR_en&id=aOEqm3&fmt=jpg&fit=constrain,1&wid=430&hei=430', 150, 200);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `supermarket_id` int(11) DEFAULT NULL,
  `wholesaler_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supermarket_id`, `wholesaler_id`, `product_id`, `quantity`, `date_added`) VALUES
(1, 1, 3, 1, 15, '2020-04-12 00:00:00'),
(2, 2, 4, 2, 14, '2020-04-11 00:00:00'),
(3, 1, 3, 1, 15, '2020-04-01 00:00:00'),
(4, 4, 3, 1, 25, '2020-04-01 00:00:00'),
(5, 2, 4, 5, 500, '2020-04-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `wholesaler_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantityInStock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`wholesaler_id`, `product_id`, `quantityInStock`) VALUES
(3, 1, 25),
(3, 2, 100),
(3, 3, 1000),
(3, 4, 30),
(3, 5, 600),
(4, 2, 25);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `cname` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `brn` int(11) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `address` varchar(55) DEFAULT NULL,
  `telephone` varchar(55) DEFAULT NULL,
  `type` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `cname`, `email`, `brn`, `password`, `address`, `telephone`, `type`) VALUES
(1, 'winners', 'winners@gmail.com', 1811123, '12345', 'Royal Road, Reduit', '6323232', 'supermarket'),
(2, 'dreamprice', 'dreamprice@gmail.com', 1231232, '12345', 'Royal Road, Curepipe', '1231231', 'supermarket'),
(3, 'Cascadelle Distribution', 'cascadelle@gmail.com', 1231234, '12345', 'Vacoas phoenix', ' 6869430', 'wholesaler'),
(4, 'King Food LTD', 'kingfood@gmail.com', 3451232, '12345', 'Royal Road, Rodrigues', '6848423', 'wholesaler');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supermarket_id` (`supermarket_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supermarket_id` (`supermarket_id`),
  ADD KEY `wholesaler_id` (`wholesaler_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`wholesaler_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brn` (`brn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`supermarket_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`supermarket_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`wholesaler_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchases_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`wholesaler_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
