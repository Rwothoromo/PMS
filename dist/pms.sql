-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2015 at 08:46 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ID` varchar(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Position` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Name`, `Position`, `Password`) VALUES
('A1', 'Alfred', 'Admin', 'allan');

-- --------------------------------------------------------

--
-- Table structure for table `pms_store_1`
--

CREATE TABLE IF NOT EXISTS `pms_store_1` (
  `IDNO` varchar(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` int(3) NOT NULL,
  `Phone` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Diseases` varchar(200) NOT NULL,
  `Prescriptions` varchar(200) NOT NULL,
  `Bill` int(11) NOT NULL,
  `Date` varchar(30) NOT NULL,
  PRIMARY KEY (`IDNO`),
  UNIQUE KEY `IDNO` (`IDNO`),
  KEY `IDNO_2` (`IDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pms_store_1`
--

INSERT INTO `pms_store_1` (`IDNO`, `Name`, `Age`, `Phone`, `Email`, `Diseases`, `Prescriptions`, `Bill`, `Date`) VALUES
('P1', 'JOHN DOE', 29, '+25699982533', 'johndoe@missing.com', '1. Stomach rumbling\n2. Headaches\n3. Blurred visions\n4. Dysentery', '1. Sleeping pills\n2. Drink lots of water\n3. Rest', 20000, '14 JUL, 2015 10:28 PM'),
('P2', 'JANE FOSTER', 23, '+261737377167', 'jFoster@breakthru.com', '1. Malnutrition', '1. Balanced diet', 11000, '14 JUL, 2015 10:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `pms_user`
--

CREATE TABLE IF NOT EXISTS `pms_user` (
  `ID` varchar(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pms_user`
--

INSERT INTO `pms_user` (`ID`, `Name`, `Position`, `Password`) VALUES
('D1', 'Alfred', 'Admin', 'user2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
