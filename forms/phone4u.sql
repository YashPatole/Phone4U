-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 02:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phone4u`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy_link`
--

CREATE TABLE `buy_link` (
  `buy_link_id` int(11) NOT NULL,
  `buy_link_url` varchar(2048) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buy_link`
--

INSERT INTO `buy_link` (`buy_link_id`, `buy_link_url`, `phone_id`) VALUES
(1, 'https://www.flipkart.com/realme-8-pro-illuminating-yellow-128-gb/p/itmaa9c73f5a987c?pid=MOBGYV98ESYUZZUK&lid=LSTMOBGYV98ESYUZZUKJK4O6X&marketplace=FLIPKART&q=realme+8+pro&store=tyy%2F4io&srno=s_1_1&otracker=AS_QueryStore_OrganicAutoSuggest_1_3_na_na_na&otracker1=AS_QueryStore_OrganicAutoSuggest_1_3_na_na_na&fm=SEARCH&iid=d7625a0d-422b-43ea-a2b4-caf9d78f9995.MOBGYV98ESYUZZUK.SEARCH&ppt=hp&ppn=homepage&ssid=oy9rukpli80000001621943694346&qH=6227e733eed05f4d', 2);

-- --------------------------------------------------------

--
-- Table structure for table `con`
--

CREATE TABLE `con` (
  `con_id` int(11) NOT NULL,
  `con_content` varchar(512) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `con`
--

INSERT INTO `con` (`con_id`, `con_content`, `phone_id`) VALUES
(8, 'sadasdjasdna', 2),
(9, 'sadajsdajks', 2),
(10, 'asdhasdhja', 2),
(11, 'asjhdaskjd', 2),
(12, 'asda', 2),
(13, 'sadasdjasdna', 2),
(14, 'sadajsdajks', 2),
(15, 'asdhasdhja', 2),
(16, 'asjhdaskjd', 2),
(17, 'asda', 2),
(18, 'sadasdjasdna', 2),
(19, 'sadajsdajks', 2),
(20, 'asdhasdhja', 2),
(21, 'asjhdaskjd', 2),
(22, 'asda', 2),
(23, 'sadasdjasdna', 2),
(24, 'sadajsdajks', 2),
(25, 'asdhasdhja', 2),
(26, 'asjhdaskjd', 2),
(27, 'asda', 2),
(28, 'sadasdjasdna', 2),
(29, 'sadajsdajks', 2),
(30, 'asdhasdhja', 2),
(31, 'asjhdaskjd', 2),
(32, 'asda', 2),
(33, 'sadasdjasdna', 2),
(34, 'sadajsdajks', 2),
(35, 'asdhasdhja', 2),
(36, 'asjhdaskjd', 2),
(37, 'asda', 2),
(38, 'sadasdjasdna', 2),
(39, 'sadajsdajks', 2),
(40, 'asdhasdhja', 2),
(41, 'asjhdaskjd', 2),
(42, 'asda', 2),
(43, 'sadasdjasdna', 2),
(44, 'sadajsdajks', 2),
(45, 'asdhasdhja', 2),
(46, 'asjhdaskjd', 2),
(47, 'asda', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `phone_id` int(11) NOT NULL,
  `phone_name` varchar(256) NOT NULL,
  `phone_image_name` varchar(256) NOT NULL,
  `phone_price` int(32) NOT NULL,
  `phone_price_char` varchar(32) NOT NULL,
  `portfolio_name` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`phone_id`, `phone_name`, `phone_image_name`, `phone_price`, `phone_price_char`, `portfolio_name`) VALUES
(2, 'Realme 8 pro', 'realme 8 pro.jpeg', 17999, '17,999', 'Realme 8 Pro (Illuminating Yellow, 128 GB)  (6 GB RAM)'),
(3, 'Realme 8 pro', 'realme 8 pro.jpeg', 17999, '17,999', 'Realme 8 Pro (Illuminating Yellow, 128 GB)  (6 GB RAM)'),
(4, 'Realme 8 pro', 'realme 8 pro.jpeg', 17999, '17,999', 'Realme 8 Pro (Illuminating Yellow, 128 GB)  (6 GB RAM)'),
(5, 'Realme 8 pro', 'realme 8 pro.jpeg', 17999, '17,999', 'Realme 8 Pro (Illuminating Yellow, 128 GB)  (6 GB RAM)'),
(6, 'Realme 8 pro', 'realme 8 pro.jpeg', 17999, '17,999', 'Realme 8 Pro (Illuminating Yellow, 128 GB)  (6 GB RAM)'),
(7, 'Realme 8 pro', 'realme 8 pro.jpeg', 17999, '17,999', 'Realme 8 Pro (Illuminating Yellow, 128 GB)  (6 GB RAM)'),
(8, 'Realme 8 pro', 'realme 8 pro.jpeg', 17999, '17,999', 'Realme 8 Pro (Illuminating Yellow, 128 GB)  (6 GB RAM)'),
(9, 'Realme 8 pro', 'realme 8 pro.jpeg', 17999, '17,999', 'Realme 8 Pro (Illuminating Yellow, 128 GB)  (6 GB RAM)');

-- --------------------------------------------------------

--
-- Table structure for table `pro`
--

CREATE TABLE `pro` (
  `pro_id` int(11) NOT NULL,
  `pro_content` varchar(512) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pro`
--

INSERT INTO `pro` (`pro_id`, `pro_content`, `phone_id`) VALUES
(17, 'abcd', 2),
(18, 'abcd', 2),
(19, 'abcd', 2),
(20, 'adsad', 2),
(21, 'asdad', 2),
(22, 'asdad', 2),
(23, 'abcd', 2),
(24, 'abcd', 2),
(25, 'abcd', 2),
(26, 'adsad', 2),
(27, 'asdad', 2),
(28, 'asdad', 2),
(29, 'abcd', 2),
(30, 'abcd', 2),
(31, 'abcd', 2),
(32, 'adsad', 2),
(33, 'asdad', 2),
(34, 'asdad', 2),
(35, 'abcd', 2),
(36, 'abcd', 2),
(37, 'abcd', 2),
(38, 'adsad', 2),
(39, 'asdad', 2),
(40, 'asdad', 2),
(41, 'abcd', 2),
(42, 'abcd', 2),
(43, 'abcd', 2),
(44, 'adsad', 2),
(45, 'asdad', 2),
(46, 'asdad', 2),
(47, 'abcd', 2),
(48, 'abcd', 2),
(49, 'abcd', 2),
(50, 'adsad', 2),
(51, 'asdad', 2),
(52, 'asdad', 2),
(53, 'abcd', 2),
(54, 'abcd', 2),
(55, 'abcd', 2),
(56, 'adsad', 2),
(57, 'asdad', 2),
(58, 'asdad', 2),
(59, 'abcd', 2),
(60, 'abcd', 2),
(61, 'abcd', 2),
(62, 'adsad', 2),
(63, 'asdad', 2),
(64, 'asdad', 2);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_content` mediumtext NOT NULL,
  `company_review` mediumtext NOT NULL,
  `youtube_link` varchar(1024) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_content`, `company_review`, `youtube_link`, `phone_id`) VALUES
(1, 'Phone is good for the price', 'Realme ui is shit', 'https://www.youtube.com/watch?v=dmn3Hgo-sjU', 2),
(2, 'Phone is good for the price', 'Realme ui is shit', 'https://www.youtube.com/watch?v=dmn3Hgo-sjU', 2),
(3, 'Phone is good for the price', 'Realme ui is shit', 'https://www.youtube.com/watch?v=dmn3Hgo-sjU', 2),
(4, 'Phone is good for the price', 'Realme ui is shit', 'https://www.youtube.com/watch?v=dmn3Hgo-sjU', 2),
(5, 'Phone is good for the price', 'Realme ui is shit', 'https://www.youtube.com/watch?v=dmn3Hgo-sjU', 2),
(6, 'Phone is good for the price', 'Realme ui is shit', 'https://www.youtube.com/watch?v=dmn3Hgo-sjU', 2),
(7, 'Phone is good for the price', 'Realme ui is shit', 'https://www.youtube.com/watch?v=dmn3Hgo-sjU', 2),
(8, 'Phone is good for the price', 'Realme ui is shit', 'https://www.youtube.com/watch?v=dmn3Hgo-sjU', 2);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `score_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `battery_life_score` int(11) NOT NULL,
  `camera_score` int(11) NOT NULL,
  `build_quality_score` int(11) NOT NULL,
  `software_score` int(11) NOT NULL,
  `performance_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`score_id`, `phone_id`, `battery_life_score`, `camera_score`, `build_quality_score`, `software_score`, `performance_score`) VALUES
(1, 2, 8, 7, 9, 5, 6),
(2, 2, 8, 7, 9, 5, 6),
(3, 2, 8, 7, 9, 5, 6),
(4, 2, 8, 7, 9, 5, 6),
(5, 2, 8, 7, 9, 5, 6),
(6, 2, 8, 7, 9, 5, 6),
(7, 2, 8, 7, 9, 5, 6),
(8, 2, 8, 7, 9, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `specification`
--

CREATE TABLE `specification` (
  `specification_id` int(11) NOT NULL,
  `battery_life_spec` varchar(1024) NOT NULL,
  `software_spec` varchar(1024) NOT NULL,
  `memory_spec` varchar(1024) NOT NULL,
  `processor_spec` varchar(1024) NOT NULL,
  `camera_spec` varchar(1024) NOT NULL,
  `display_spec` varchar(1024) NOT NULL,
  `warranty_spec` varchar(1024) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specification`
--

INSERT INTO `specification` (`specification_id`, `battery_life_spec`, `software_spec`, `memory_spec`, `processor_spec`, `camera_spec`, `display_spec`, `warranty_spec`, `phone_id`) VALUES
(1, '1', 'Realme UI', '8gb+128gb', 'SD720G', '108Mp', '120hz FHD+', '2 years', 2);

-- --------------------------------------------------------

--
-- Table structure for table `techquickie`
--

CREATE TABLE `techquickie` (
  `article_id` int(11) NOT NULL,
  `article_image_name` varchar(256) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `article_content` varchar(2048) NOT NULL,
  `article_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy_link`
--
ALTER TABLE `buy_link`
  ADD PRIMARY KEY (`buy_link_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `con`
--
ALTER TABLE `con`
  ADD PRIMARY KEY (`con_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phone_id`);

--
-- Indexes for table `pro`
--
ALTER TABLE `pro`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `specification`
--
ALTER TABLE `specification`
  ADD PRIMARY KEY (`specification_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `techquickie`
--
ALTER TABLE `techquickie`
  ADD PRIMARY KEY (`article_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy_link`
--
ALTER TABLE `buy_link`
  MODIFY `buy_link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `con`
--
ALTER TABLE `con`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `phone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pro`
--
ALTER TABLE `pro`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `specification`
--
ALTER TABLE `specification`
  MODIFY `specification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `techquickie`
--
ALTER TABLE `techquickie`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy_link`
--
ALTER TABLE `buy_link`
  ADD CONSTRAINT `buy_link_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `con`
--
ALTER TABLE `con`
  ADD CONSTRAINT `con_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pro`
--
ALTER TABLE `pro`
  ADD CONSTRAINT `pro_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `specification`
--
ALTER TABLE `specification`
  ADD CONSTRAINT `specification_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
