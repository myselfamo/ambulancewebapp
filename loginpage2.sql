-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 07, 2023 at 03:58 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginpage2`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `info`) VALUES
(1, 'amolak', 'rathod20ite@student.mes.ac.in', 'asfhsdfsdjfdsjds sdsdfjsfjsd'),
(2, 'amolak', 'rathod20ite@student.mes.ac.in', 'need to improve'),
(3, 'amolak', 'rathod20ite@student.mes.ac.in', 'need to improve service'),
(4, 'amolak', 'rathod20ite@student.mes.ac.in', 'work on your website'),
(5, 'AMOLAK RATHOD', 'rathod20ite@student.mes.ac.in', 'work on your website and relation with employee'),
(6, 'amolak', 'rathod20ite@student.mes.ac.in', 'need to improve'),
(7, 'Pravin Shah', 'Pshah@gmail.com', 'need to improve service'),
(8, 'XYZ', 'xyz@gmail.com', 'need to improve service'),
(9, 'rathod amolak', 'rathodamolak@gmail.com', 'need to improve service');

-- --------------------------------------------------------

--
-- Table structure for table `dbooking`
--

DROP TABLE IF EXISTS `dbooking`;
CREATE TABLE IF NOT EXISTS `dbooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dcontact`
--

DROP TABLE IF EXISTS `dcontact`;
CREATE TABLE IF NOT EXISTS `dcontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dcontact`
--

INSERT INTO `dcontact` (`id`, `name`, `email`, `info`) VALUES
(1, 'AMOLAK RATHOD', 'rathod20ite@student.mes.ac.in', 'need to improve');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
CREATE TABLE IF NOT EXISTS `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `anum` varchar(10) NOT NULL,
  `contact` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `name`, `email`, `password`, `anum`, `contact`) VALUES
(10, 'XYZ', 'xyz@gmail.com', '12345', 'MH051331', '9988775547'),
(9, 'PQR ', 'pqrs@gmail.com', '1234', 'MH051331', '9123325461');

-- --------------------------------------------------------

--
-- Table structure for table `ubooking`
--

DROP TABLE IF EXISTS `ubooking`;
CREATE TABLE IF NOT EXISTS `ubooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `dtCustomerCreation` time(6) DEFAULT NULL,
  `bBooked` bit(1) DEFAULT NULL,
  `bCancel` bit(1) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `DriverId` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ubooking`
--

INSERT INTO `ubooking` (`id`, `name`, `address`, `contact`, `dtCustomerCreation`, `bBooked`, `bCancel`, `username`, `DriverId`) VALUES
(81, 'myself', '32 Block Badlapur', '9123325432', '12:28:28.000000', b'1', NULL, 'myself_9123325432', 62),
(80, 'Amolak Rathod', '32 Block ,shivaji nagar,Badlapur', '9123325431', '10:27:57.000000', b'1', NULL, 'Amolak Rathod_9123325431', 61),
(79, 'Amolak Rathod', '32 Block ba', '', '10:27:35.000000', NULL, NULL, 'Amolak Rathod_', NULL),
(78, 'Makrand', 'B-302 Heta Ashish', '9123325467', '00:52:06.000000', b'1', NULL, 'Makrand_9123325467', 60),
(77, 'XYZ', 'B-302 Heta Ashish', '9988775541', '20:32:17.000000', b'1', NULL, 'XYZ_9988775541', 59),
(76, 'XYZ', '32 Block Badlapur', '9988775540', '20:30:30.000000', b'1', NULL, 'XYZ_9988775540', 58),
(75, 'XYZ', 'B-402 Jupiter heights, badlapur', '9988775541', '20:18:22.000000', b'1', NULL, 'XYZ_9988775541', 59),
(74, 'Prakash Singh', '23 Street ,shivaji nagar,badlapur', '9123325461', '14:31:01.000000', b'1', NULL, 'Prakash Singh_9123325461', 56),
(73, 'sachin Pawar', 'B-102 hexa complex,badlapur', '9988775544', '14:18:54.000000', b'1', NULL, 'sachin Pawar_9988775544', 55),
(72, 'AMOLAK RATHOD', 'B-302 Heta Ashish', '9988775544', '23:58:51.000000', b'1', NULL, 'AMOLAK RATHOD_9988775544', 54),
(71, 'Amolak Rathod', 'B-302 Heta Ashish', '9123325467', '18:57:36.000000', b'1', NULL, 'Amolak Rathod_9123325467', 53),
(70, 'AMOLAK RATHOD', '23 Street ,shivaji chowk,badlapur', '9988776655', '10:21:30.000000', b'1', NULL, 'AMOLAK RATHOD_9988776655', 52);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(15, 'amolak rathod', 'rathodamolak@gmail.com', '1234'),
(14, 'XYZ', 'xyz@gmail.com', '1231');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
