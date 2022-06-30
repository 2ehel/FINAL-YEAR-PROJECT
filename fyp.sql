-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2022 at 07:21 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `userID` int(6) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `user_name` varchar(80) NOT NULL,
  `user_password` varchar(80) NOT NULL,
  `user_email` varchar(80) NOT NULL,
  `user_phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`userID`, `firstname`, `lastname`, `user_name`, `user_password`, `user_email`, `user_phone`) VALUES
(400001, 'wan', 'ariff', 'ariffwan', '1234', 'ariff@afcc.com', '0123456789'),
(400002, 'asyraf', 'ramly', 'omnonom', '1234', 'sah@af.com', '0123456789'),
(400005, 'Wan', 'Ariff', 'wan', '1234', 'wan@afcc.com', ''),
(400006, 'aw', 'aw', 'aw', '1234', 'aw@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(6) NOT NULL,
  `adminName` varchar(80) NOT NULL,
  `adminEmail` varchar(80) NOT NULL,
  `adminPassword` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminName`, `adminEmail`, `adminPassword`) VALUES
(100001, 'Wan Ahmad Ariff', 'wan@afcc.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(11) NOT NULL,
  `userID` int(6) NOT NULL,
  `productID` int(6) NOT NULL,
  `quantity` int(6) NOT NULL,
  `totalPrice` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `userID`, `productID`, `quantity`, `totalPrice`) VALUES
(13, 400001, 100032, 1, 3399),
(16, 400006, 100035, 1, 3280);

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `orderID` int(6) NOT NULL,
  `userID` int(6) NOT NULL,
  `productID` int(6) NOT NULL,
  `cartID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `orderPaymentMethod` varchar(80) NOT NULL,
  `date` date NOT NULL,
  `orderAddress` varchar(80) NOT NULL,
  `orderAddress2` varchar(100) NOT NULL,
  `orderState` varchar(20) NOT NULL,
  `orderZip` int(5) NOT NULL,
  `orderShippingOption` varchar(80) NOT NULL,
  `orderStatus` varchar(20) DEFAULT 'Incomplete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactID` int(6) NOT NULL,
  `userID` int(6) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(6) NOT NULL,
  `productName` varchar(80) NOT NULL,
  `productCategory` varchar(40) NOT NULL,
  `productPrice` int(6) NOT NULL,
  `productCondition` varchar(20) NOT NULL,
  `totalStock` int(11) NOT NULL,
  `productDesc` text NOT NULL,
  `productImage` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `productCategory`, `productPrice`, `productCondition`, `totalStock`, `productDesc`, `productImage`) VALUES
(100032, 'Acer Aspire 5 A514-53G', 'Laptop', 3399, 'New', 10, '', ''),
(100035, 'Asus Vivobook S14', 'Laptop', 3280, 'New', 10, '', ''),
(100036, 'HP Deskjet Ink Advantage 2336', 'Printers', 289, 'New', 15, '', ''),
(100037, 'TT Racing Duo V3', 'Others and Accessories', 399, 'New', 11, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `trackingID` varchar(20) NOT NULL,
  `orderID` int(6) NOT NULL,
  `courier` varchar(20) NOT NULL,
  `trackingStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `cartID` (`cartID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`trackingID`),
  ADD KEY `orderID` (`orderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `userID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400007;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100002;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `orderID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200003;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactID` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100042;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `account` (`userID`);

--
-- Constraints for table `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `checkout_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `account` (`userID`),
  ADD CONSTRAINT `checkout_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  ADD CONSTRAINT `checkout_ibfk_3` FOREIGN KEY (`cartID`) REFERENCES `cart` (`cartID`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `account` (`userID`);

--
-- Constraints for table `tracking`
--
ALTER TABLE `tracking`
  ADD CONSTRAINT `tracking_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `checkout` (`orderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
