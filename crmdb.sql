-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 11:37 AM
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
(11, 'pay_OBetLDGZnUAR2H', 'Ashish Kumar', 'akpraj1932@gmail.com', '8726323520', '24', 'DUK9u890k8', '120', 'success', '2024-05-17 18:24:00'),
(12, 'pay_OIE8gptk5KnlaF', 'Ashish Kumar', 'akpraj1932@gmail.com', '8726323520', '31', 'JCcei2yvyJ', '280', 'success', '2024-06-03 08:46:45');

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
(31, 'Paracetamol', '2024-01-03', '2028-01-03', '500', '70', 'productimage/Paracetamol.jpeg', '<p><span style=\"color: #4d5156; font-family: Roboto, \'helvetica neue\', helvetica, arial, sans-serif; font-size: 13px; background-color: #ffffff;\"><strong>Paracetamol</strong>&nbsp;</span><span style=\"color: #4d5156; font-family: Roboto, \'helvetica neue\', helvetica, arial, sans-serif; font-size: 13px; background-color: #ffffff;\">(Panadol, Calpol, Alvedon) is an analgesic and antipyretic drug that is used to temporarily relieve mild-to-moderate pain and fever. It is commonly included as an ingredient in cold and flu medications and is also used on its own.&nbsp;</span><span style=\"color: #4d5156; font-family: Roboto, \'helvetica neue\', helvetica, arial, sans-serif; font-size: 13px; background-color: #ffffff;\">Paracetamol&nbsp;</span><span style=\"color: #4d5156; font-family: Roboto, \'helvetica neue\', helvetica, arial, sans-serif; font-size: 13px; background-color: #ffffff;\">is exactly the same drug as acetaminophen (Tylenol).&nbsp;</span><span style=\"color: #4d5156; font-family: Roboto, \'helvetica neue\', helvetica, arial, sans-serif; font-size: 13px; background-color: #ffffff;\">Paracetamol&nbsp;</span><span style=\"color: #4d5156; font-family: Roboto, \'helvetica neue\', helvetica, arial, sans-serif; font-size: 13px; background-color: #ffffff;\">is the drug\'s name assigned us</span></p>', 'In Stock', '2024-06-03'),
(33, 'Volini Spray', '2024-03-08', '2026-03-08', '200', '150', 'productimage/Volini.jpeg', '<p><span style=\"box-sizing: border-box; font-weight: bold; color: #212121; font-family: \'Clear Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">Volini Spray</span><span style=\"color: #212121; font-family: \'Clear Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">&nbsp;is a pain relief spray which provides instant relief from muscle pain, sprain and pain in the joints. Scientifically formulated with the ingredients such as Diclofenac diethylamine, Methyl Salicylate and Menthol, it contains microparticles which provide quick relief from pain by penetrating deeply. Musculoskeletal and joint pain can also be cured by its use.</span></p>', 'In Stock', '2024-06-03'),
(34, 'Dolo 650', '2024-06-03', '2024-06-30', '100', '120', 'productimage/Dolo.jpeg', '<p><span style=\"color: #666666; font-family: \'Clear Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong>Dolo 650</strong> Tablet helps relieve pain and fever by blocking the release of certain chemical messengers responsible for fever and pain. It is used to treat headaches, migraine, toothaches, sore throats, period (menstrual) pains, arthritis, muscle aches, and the common cold.</span></p>', 'In Stock', '2024-06-03'),
(35, 'Antihistamines ', '2024-06-25', '2024-07-26', '50', '180', 'productimage/Antihistamine-.jpg', '<p><span style=\"color: #555555; font-family: __Roboto_ba6641, __Roboto_Fallback_ba6641, sans-serif; font-size: 19px;\"><strong>Antihistamines</strong> are a class of drugs commonly used to treat symptoms of allergies</span><span style=\"color: #555555; font-family: __Roboto_ba6641, __Roboto_Fallback_ba6641, sans-serif; font-size: 19px;\">. These drugs help treat conditions caused by too much histamine, a chemical created by your body&rsquo;s immune system. Antihistamines are most commonly used by people who have allergic reactions to pollen and other allergens. They are also used to treat a variety of other conditions such as stomach problems, colds, anxiety and more.</span></p>', 'In Stock', '2024-06-03'),
(36, 'Metformin ', '2024-05-06', '2026-05-06', '100', '250', 'productimage/Metformin.jpeg', '<p style=\"box-sizing: inherit; margin: 12px 0px 20px; padding: 0px; color: #202227; font-family: system-ui, sans-serif; font-size: 17px; background-color: #ffffff;\"><strong>Metformin</strong> is an FDA-approved antidiabetic agent that manages high blood sugar levels in type 2 diabetes patients. It reduces glucose absorption from the intestines, lowers liver glucose production, and improves insulin sensitivity. Metformin is recommended with dietary changes and exercise for better results.</p>\r\n<p style=\"box-sizing: inherit; margin: 12px 0px 20px; padding: 0px; color: #202227; font-family: system-ui, sans-serif; font-size: 17px; background-color: #ffffff;\">Managing blood sugar levels with medications like metformin can prevent complications such as kidney damage, nerve issues, blindness, amputations, and sexual dysfunction. Effective diabetes control can also lower the risk of heart attacks or strokes.</p>', 'In Stock', '2024-06-03'),
(37, 'Tata 1mg Calcium', '2023-05-07', '2026-05-07', '200', '300', 'productimage/tata-1mg-calcium4.jpg', '<p><span style=\"box-sizing: border-box; font-weight: bold; color: #212121; font-family: \'Clear Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">Tata 1mg Calcium 500 mg &amp; Vitamin D3 250 IU Tablet</span><span style=\"color: #212121; font-family: \'Clear Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">&nbsp;is a health supplement formulated to support bone, muscle, and joint health. It is designed to help restore calcium levels in the body and provide the benefits of vitamin D3. The tablet contains 500mg of calcium and 250 IU of vitamin D3. Calcium is an essential mineral that plays a crucial role in maintaining strong bones and teeth. It is also involved in various bodily functions, including muscle contraction, nerve transmission, and blood clotting. Vitamin D3, on the other hand, helps the body absorb and utilize calcium effectively.</span></p>', 'In Stock', '2024-06-03'),
(38, 'Vick’s ', '2024-04-06', '2028-04-06', '300', '80', 'productimage/Vicks.jpeg', '<p><span style=\"color: #0c0c0c; font-family: \'Acumin Pro\', sans-serif; font-size: 21.2px;\"><strong>It&rsquo;s Vick&rsquo;s </strong>VapoRub, and most of us have a jar in our house. Typically, this topical cream is used to treat congestion caused by the common cold. However, it has far more uses than meets the eye. Made of eucalyptus oil, menthol, camphor, and other calming agents, Vick&rsquo;s VapoRub can treat a variety of problems.</span></p>', 'In Stock', '2024-06-03'),
(39, 'Kasamrita', '2023-05-06', '2027-05-06', '250', '120', 'productimage/KASAMRIT-HERBAL.jpeg', '<p><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: small; background-color: #ffffff;\"><strong>Kasamrita,</strong> is a polyherbal Ayurvedic Proprietary Medicine from Baidyanath. As the name itself suggests, this medicine is used for treatment of cough or Kasa. It is helpful in cough due to various reasons such as cough due to common cold, cough due to weather change and winters, allergic cough, whooping cough etc. Kasamrita helps in sore throat, cough and cold. It has anti-cough, anti-allergic, expectorant action and give relief in congestion</span></p>', 'In Stock', '2024-06-03'),
(40, 'Betnovate-C', '2023-05-04', '2026-05-04', '300', '130', 'productimage/Betnovate C.jpeg', '<p><span style=\"color: #666666; font-family: \'Clear Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong>Betnovate-C</strong> Cream is a combination of two different medicines. It is used in the treatment of bacterial and fungal infections of the skin. It also helps to treat inflammatory skin conditions by relieving symptoms like redness, swelling, and itching.</span></p>', 'In Stock', '2024-06-03');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
