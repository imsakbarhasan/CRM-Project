-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 09:58 AM
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
-- Database: `crmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `ppunit` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contactno` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `emailaddress` varchar(50) DEFAULT NULL,
  `regdate` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `address`, `contactno`, `password`, `emailaddress`, `regdate`) VALUES
(26, 'Ashish Kumar', 'Male', 'VILL-LAKHAPUR,POST-GUTWAN,DIST-JAUNPUR', '8726323520', 'Akpraj@1932', 'akpraj1932@gmail.com', '2024-05-07'),
(21, 'Ashish Kumar', 'Male', 'VILL-LAKHAPUR,POST-GUTWAN,DIST-JAUNPUR', '8948782364', 'Akpraj@1932', 'ashishkumarpatel99jnp@gmail.com', '2024-04-10'),
(20, 'Ashish Kumar', 'Male', 'VILL-LAKHAPUR,POST-GUTWAN,DIST-JAUNPUR', '8976543210', 'Ak@1932', 'info.inumedia@gmail.com', '2024-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contactno` varchar(10) DEFAULT NULL,
  `emailaddress` varchar(50) DEFAULT NULL,
  `enquirytext` varchar(2000) DEFAULT NULL,
  `enquirydate` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `gender`, `address`, `contactno`, `emailaddress`, `enquirytext`, `enquirydate`) VALUES
(10, 'Ashish Kumar', 'Male', 'VILL-LAKHAPUR,POST-GUTWAN,DIST-JAUNPUR', '8726323520', 'akpraj1932@gmail.com', 'Hello Every One.', '2024-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_path` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  `account_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `mobile`, `password`, `usertype`, `account_type`) VALUES
('admin@gmail.com', '', 'admin@123', 'admin', ''),
('akpraj1932@gmail.com', '8726323520', 'Akpraj@1932', 'customer', 'Active'),
('ashishkumarpatel99jnp@gmail.com', '8948782364', 'Akpraj@1932', 'customer', 'Active'),
('info.inumedia@gmail.com', '8976543210', 'Ak@1932', 'customer', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_text` text NOT NULL,
  `posted_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(15) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_id` varchar(100) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `total_amount` varchar(25) NOT NULL,
  `shipping_method` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `tracking_number` varchar(50) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `re_order` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `order_date`, `product_id`, `quantity`, `total_amount`, `shipping_method`, `payment_method`, `tracking_number`, `order_status`, `re_order`) VALUES
(3, 'cgAw3sb5xs', '8976543210', '2024-05-17 11:02:02', '27', '3', '600', 'Standard', 'NetBanking', '', 'Processing', '1'),
(5, 'cuGNciOozt', '8976543210', '2024-05-17 11:06:59', '23', '1', '150', 'Standard', 'NetBanking', '', 'Processing', '1'),
(6, 'UGoXsKrIgG', '8976543210', '2024-05-17 11:08:19', '24', '1', '120', 'Standard', 'NetBanking', '', 'Processing', '1'),
(7, 'xwQvJo8tjE', '8976543210', '2024-05-17 11:10:17', '28', '5', '50', 'Standard', 'NetBanking', '', 'Processing', '1'),
(8, 'dFfH81Nhn9', '8976543210', '2024-05-17 11:13:17', '26', '7', '1260', 'Standard', 'NetBanking', '', 'Processing', '1'),
(10, 'PDpdkO3mmJ', '8726323520', '2024-05-17 18:00:25', '27', '3', '600', 'Standard', 'NetBanking', '', 'Canceled', '1'),
(11, 'DUK9u890k8', '8726323520', '2024-05-17 18:24:00', '24', '1', '120', 'Standard', 'NetBanking', '', 'Processing', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(500) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `total_amount` varchar(25) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `payment_id`, `customer_name`, `customer_email`, `customer_contact`, `product_id`, `order_id`, `total_amount`, `payment_status`, `created_at`) VALUES
(1, 'pay_OBXGpEY2lK1hk6', 'Ashish Kumar', 'info.inumedia@gmail.com', '8976543210', '26', '9Qm7J6GBpd', '720', 'success', '2024-05-17 10:56:37'),
(2, 'pay_OBXKQX63fOapws', 'Ashish Kumar', 'info.inumedia@gmail.com', '8976543210', '23', 'TzA7zZCPBU', '600', 'success', '2024-05-17 11:00:02'),
(3, 'pay_OBXMXkDmCL0fPy', 'Ashish Kumar', 'info.inumedia@gmail.com', '8976543210', '27', 'cgAw3sb5xs', '600', 'success', '2024-05-17 11:02:02'),
(4, 'pay_OBXPBkW4zCqUwM', 'Ashish Kumar', 'info.inumedia@gmail.com', '8976543210', '28', 'uCr8Cs4AaC', '30', 'success', '2024-05-17 11:04:31'),
(5, 'pay_OBXRmHqptDM7Ja', 'Ashish Kumar', 'info.inumedia@gmail.com', '8976543210', '23', 'cuGNciOozt', '150', 'success', '2024-05-17 11:06:59'),
(6, 'pay_OBXTC6TrK72ynW', 'Ashish Kumar', 'info.inumedia@gmail.com', '8976543210', '24', 'UGoXsKrIgG', '120', 'success', '2024-05-17 11:08:19'),
(7, 'pay_OBXVGku8L9uMPc', 'Ashish Kumar', 'info.inumedia@gmail.com', '8976543210', '28', 'xwQvJo8tjE', '50', 'success', '2024-05-17 11:10:17'),
(8, 'pay_OBXYRXPLFG6Zvt', 'Ashish Kumar', 'info.inumedia@gmail.com', '8976543210', '26', 'dFfH81Nhn9', '1260', 'success', '2024-05-17 11:13:17'),
(10, 'pay_OBeUUyXcqfREBr', 'Ashish Kumar', 'akpraj1932@gmail.com', '8726323520', '27', 'PDpdkO3mmJ', '600', 'success', '2024-05-17 18:00:25'),
(11, 'pay_OBetLDGZnUAR2H', 'Ashish Kumar', 'akpraj1932@gmail.com', '8726323520', '24', 'DUK9u890k8', '120', 'success', '2024-05-17 18:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` text NOT NULL,
  `mfgdate` varchar(20) NOT NULL,
  `expdate` varchar(20) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `ppunit` varchar(50) NOT NULL,
  `pimage` text NOT NULL,
  `product_desc` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `mfgdate`, `expdate`, `quantity`, `ppunit`, `pimage`, `product_desc`, `status`, `created_at`) VALUES
(23, 'Kidney\'Stone', '2024-05-08', '2024-05-30', '200', '150', 'productimage/p6.jpeg', '<h6 style=\"text-align: left;\"><span style=\"color: #e03e2d;\"><em>THIS IS KIDNEY Stone</em></span>&nbsp;</h6>', 'In Stock', '2024-05-08'),
(24, 'Clear Kidney Stone', '2024-05-10', '2024-05-10', '200', '120', 'productimage/p4.jpeg', '<p>This is the Second Medicine of the Kideney Stone And it\'s clears stone from the kidney</p>', 'In Stock', '2024-05-08'),
(25, 'Akbar Disease', '2024-05-15', '2024-05-31', '2000', '100', 'productimage/p2.jpeg', '<p>This is the not medicine this is the miricle.</p>', 'In Stock', '2024-05-14'),
(26, 'Calpol', '2024-05-17', '2026-05-17', '200', '180', 'productimage/p3.jpeg', '<p>This is provide the relief from the fever.</p>', 'In Stock', '2024-05-17'),
(27, 'Amoxi', '2024-05-22', '2027-06-17', '50', '200', 'productimage/p1.jpeg', '<p>This is the pain killer.</p>', 'In Stock', '2024-05-17'),
(28, 'Diclosine', '2024-05-18', '2026-10-14', '20', '10', 'productimage/p5.jpeg', '<p>This is the pain killer.</p>', 'In Stock', '2024-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `reply_response`
--

CREATE TABLE `reply_response` (
  `id` int(11) NOT NULL,
  `response_id` varchar(20) NOT NULL,
  `reply_text` text NOT NULL,
  `reply_title` text NOT NULL,
  `reply_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contactno` varchar(10) DEFAULT NULL,
  `emailaddress` varchar(50) DEFAULT NULL,
  `responsetype` varchar(20) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `reply_status` varchar(50) NOT NULL,
  `responsetext` varchar(5000) DEFAULT NULL,
  `responsedate` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`id`, `name`, `contactno`, `emailaddress`, `responsetype`, `subject`, `reply_status`, `responsetext`, `responsedate`) VALUES
(4, 'Ashish Kumar', '9876543210', 'infu@gmail.com', 'Feedback', 'Hello', '', 'Hello EveryOne.', '2024-04-13'),
(5, 'Ashish Kumar', '8976543210', 'info.inumedia@gmail.com', 'Complaint', 'Related To Login Issues.', '', 'When i am used my login credentials then i am not able to logged in.', '2024-04-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`contactno`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_response`
--
ALTER TABLE `reply_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reply_response`
--
ALTER TABLE `reply_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `response`
--
ALTER TABLE `response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
