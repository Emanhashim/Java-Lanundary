-- phpMyAdmin SQL Dump
-- version 4.3.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2015 at 03:08 PM
-- Server version: 5.5.42
-- PHP Version: 5.4.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laundarysystem`
--
CREATE DATABASE IF NOT EXISTS `laundarysystem` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laundarysystem`;

-- --------------------------------------------------------

--
-- Table structure for table `cloth`
--

DROP TABLE IF EXISTS `cloth`;
CREATE TABLE IF NOT EXISTS `cloth` (
  `cust_id` int(11) NOT NULL,
  `cloth_code` int(11) NOT NULL,
  `datetime` date NOT NULL,
  `clothcatagory` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cloth`
--

INSERT INTO `cloth` (`cust_id`, `cloth_code`, `datetime`, `clothcatagory`) VALUES
(1, 5, '2015-10-01', ' srts'),
(1, 6, '2015-11-16', ' 09123545'),
(3, 7, '2015-11-18', '0912653273 '),
(1, 8, '2015-11-06', ' gh'),
(6, 9, '2015-11-25', 'jaket'),
(1, 12, '2015-10-07', 'jacket'),
(3, 56, '2015-11-11', ' cot'),
(3, 67, '2015-11-05', ' gggg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` int(11) NOT NULL,
  `fname` varchar(56) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `fname`, `lname`, `sex`, `phone`, `dob`) VALUES
(1, 'nnn', 'uyhtgkuj', 'male', 922343, '2015-11-06'),
(3, 'Abayneh', 'Anmaw', 'male', 9123344, '2015-11-27'),
(4, 'abi', 'qqq', 'male', 96535345, '2015-11-07'),
(6, 'merhawi', 'dawit', 'male', 94234, '2015-11-13'),
(67, 'dfgh', 'tghhhhhhhhhhhh', 'male', 9678877, '2015-11-12'),
(80, 'dfgh', 'tghhhhhhhhhhhh', 'male', 9678877, '2015-11-12');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `emp_id` varchar(34) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(56) NOT NULL,
  `sex` varchar(34) NOT NULL,
  `dob` date NOT NULL,
  `email/phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`emp_id`, `fname`, `lname`, `sex`, `dob`, `email/phone`) VALUES
('1', 'chala', 'gudeta', 'female', '2015-10-05', 912672162),
('2', 'girma', 'misganu', 'male', '2015-10-04', 912453201),
('3', 'ertre', 'ewrtwe', 'male', '2015-10-01', 3245);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `pay_no` int(11) NOT NULL,
  `paymentstatus` tinyint(1) NOT NULL,
  `paydate` date NOT NULL,
  `emp_id` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_no`, `paymentstatus`, `paydate`, `emp_id`) VALUES
(2, 0, '2015-11-03', '1'),
(4, 1, '2015-11-12', '3'),
(11, 1, '2015-11-07', '1');

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
CREATE TABLE IF NOT EXISTS `useraccount` (
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `UserRole` int(11) DEFAULT NULL,
  `Useremp_id` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`UserName`, `Password`, `UserRole`, `Useremp_id`) VALUES
(' database', '123456', 3, '2'),
(' dd', '1234', 3, '2'),
(' DM', '1212', 3, '3'),
('java', '12345', 1, '1'),
('user', '123', 2, '1');

-- --------------------------------------------------------

--
-- Table structure for table `washingstatus`
--

DROP TABLE IF EXISTS `washingstatus`;
CREATE TABLE IF NOT EXISTS `washingstatus` (
  `wash_id` int(11) NOT NULL,
  `datetime` date NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cloth_code` int(11) NOT NULL,
  `pay_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `washingstatus`
--

INSERT INTO `washingstatus` (`wash_id`, `datetime`, `price`, `status`, `cloth_code`, `pay_no`) VALUES
(1, '2015-11-06', 12, 1, 5, 2),
(2, '2015-11-23', 14, 1, 5, 2),
(4, '2015-11-16', 95825236, 0, 7, 11),
(5, '2015-11-04', 91264554, 1, 9, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cloth`
--
ALTER TABLE `cloth`
  ADD PRIMARY KEY (`cloth_code`), ADD KEY `cust-id` (`cust_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_no`), ADD KEY `emp-id` (`emp_id`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`UserName`), ADD KEY `empaccount` (`Useremp_id`);

--
-- Indexes for table `washingstatus`
--
ALTER TABLE `washingstatus`
  ADD PRIMARY KEY (`wash_id`), ADD KEY `cloth-code` (`cloth_code`,`pay_no`), ADD KEY `pay_no` (`pay_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cloth`
--
ALTER TABLE `cloth`
ADD CONSTRAINT `cloth_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employe` (`emp_id`);

--
-- Constraints for table `useraccount`
--
ALTER TABLE `useraccount`
ADD CONSTRAINT `useraccount_ibfk_1` FOREIGN KEY (`Useremp_id`) REFERENCES `employe` (`emp_id`);

--
-- Constraints for table `washingstatus`
--
ALTER TABLE `washingstatus`
ADD CONSTRAINT `washingstatus_ibfk_4` FOREIGN KEY (`pay_no`) REFERENCES `payment` (`pay_no`),
ADD CONSTRAINT `washingstatus_ibfk_5` FOREIGN KEY (`cloth_code`) REFERENCES `cloth` (`cloth_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
