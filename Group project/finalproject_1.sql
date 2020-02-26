-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2019 at 11:01 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `Client_ID` varchar(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `numVisits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Client_ID`, `name`, `numVisits`) VALUES
('AA0003781', 'Lionel Messi', 2),
('AA0003782', 'Antoine Grizmann', 2),
('AA0003783', 'Ousmane Dembele', 2),
('AA0008751', 'Mohamed Salah', 1),
('AA0008752', 'Roberto Firmino', 1),
('AA0008753', 'Sadio Mane', 1),
('AA0008754', 'Virgil Van Dijk', 1),
('AA0008921', 'Sergio Aguero', 3),
('AA0008922', 'Kevin De Bruyne', 3);

-- --------------------------------------------------------

--
-- Table structure for table `employed`
--

CREATE TABLE `employed` (
  `LicNo` varchar(7) NOT NULL,
  `EmployeeNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employed`
--

INSERT INTO `employed` (`LicNo`, `EmployeeNo`) VALUES
('BI1R352', 'AAA345174'),
('BI1R352', 'DAA865551'),
('BI3A784', 'ABA598216'),
('BI3A784', 'EPA769821'),
('BI6C971', 'BEC677432');

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE `has` (
  `LicNo` varchar(7) NOT NULL,
  `RoomNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has`
--

INSERT INTO `has` (`LicNo`, `RoomNo`) VALUES
('BI1R352', 1001),
('BI1R352', 1002),
('BI1R352', 1003),
('BI1R352', 1004),
('BI1R352', 1005),
('BI1R352', 2001),
('BI1R352', 2002),
('BI1R352', 2003),
('BI1R352', 2004),
('BI1R352', 2005),
('BI1R352', 3001),
('BI1R352', 3002),
('BI1R352', 3003),
('BI1R352', 3004),
('BI1R352', 3005),
('BI1R352', 4001),
('BI1R352', 4002),
('BI1R352', 4003),
('BI1R352', 4004),
('BI1R352', 4005),
('BI1R352', 5001),
('BI1R352', 5002),
('BI1R352', 5003),
('BI1R352', 5004),
('BI1R352', 5005),
('BI3A784', 1001),
('BI3A784', 1002),
('BI3A784', 1003),
('BI3A784', 1004),
('BI3A784', 1005),
('BI3A784', 2001),
('BI3A784', 2002),
('BI3A784', 2003),
('BI3A784', 2004),
('BI3A784', 2005),
('BI3A784', 3001),
('BI3A784', 3002),
('BI3A784', 3003),
('BI3A784', 3004),
('BI3A784', 3005),
('BI3A784', 4001),
('BI3A784', 4002),
('BI3A784', 4003),
('BI3A784', 4004),
('BI3A784', 4005),
('BI3A784', 5001),
('BI3A784', 5002),
('BI3A784', 5003),
('BI3A784', 5004),
('BI3A784', 5005),
('BI6C971', 1001),
('BI6C971', 1002),
('BI6C971', 1003),
('BI6C971', 1004),
('BI6C971', 1005),
('BI6C971', 2001),
('BI6C971', 2002),
('BI6C971', 2003),
('BI6C971', 2004),
('BI6C971', 2005),
('BI6C971', 3001),
('BI6C971', 3002),
('BI6C971', 3003),
('BI6C971', 3004),
('BI6C971', 3005),
('BI6C971', 4001),
('BI6C971', 4002),
('BI6C971', 4003),
('BI6C971', 4004),
('BI6C971', 4005),
('BI6C971', 5001),
('BI6C971', 5002),
('BI6C971', 5003),
('BI6C971', 5004),
('BI6C971', 5005);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `LicNo` varchar(7) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Hotel_Name` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`LicNo`, `Address`, `Hotel_Name`, `City`, `State`, `Zip`) VALUES
('BI1R352', '11480 N Torrey Pines Rd', 'The Lodge at Torrey ', 'La Jolla', 'CA', '92037'),
('BI3A784', '77 Box Street', 'The Box House Hotel', 'Brooklyn', 'NY', '11222'),
('BI6C971', '415 N State Hwy 265', 'Chateau on The Lake', 'Branson', 'MO', '65616');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `RoomNo` int(11) NOT NULL,
  `numBeds` int(11) DEFAULT NULL,
  `avialable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`RoomNo`, `numBeds`, `avialable`) VALUES
(1001, 2, 1),
(1002, 2, 1),
(1003, 2, 1),
(1004, 2, 1),
(1005, 1, 1),
(2001, 2, 1),
(2002, 2, 1),
(2003, 2, 1),
(2004, 2, 1),
(2005, 1, 1),
(3001, 2, 1),
(3002, 2, 1),
(3003, 2, 1),
(3004, 2, 1),
(3005, 1, 1),
(4001, 2, 1),
(4002, 2, 1),
(4003, 2, 1),
(4004, 2, 1),
(4005, 1, 1),
(5001, 2, 1),
(5002, 2, 1),
(5003, 2, 1),
(5004, 2, 1),
(5005, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `EmployeeNo` varchar(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`EmployeeNo`, `Name`) VALUES
('AAA345174', 'Derrick Kohlenberger'),
('ABA598216', 'Alexandra Narez'),
('BEC677432', 'Darwin Ivanovich'),
('DAA865551', 'Aaron Frank'),
('EPA769821', 'Aaron Rodgers');

-- --------------------------------------------------------

--
-- Table structure for table `stay_in`
--

CREATE TABLE `stay_in` (
  `LicNo` varchar(7) NOT NULL,
  `client_ID` varchar(10) NOT NULL,
  `RoomNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stay_in`
--

INSERT INTO `stay_in` (`LicNo`, `client_ID`, `RoomNo`) VALUES
('BI1R352', 'AA0003781', 5005),
('BI1R352', 'AA0003782', 5003),
('BI1R352', 'AA0008753', 5001),
('BI3A784', 'AA0008921', 3005),
('BI3A784', 'AA0008922', 3003),
('BI6C971', 'AA0008751', 2002),
('BI6C971', 'AA0008752', 5003),
('BI6C971', 'AA0008753', 4005),
('BI6C971', 'AA0008754', 2004);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Client_ID`);

--
-- Indexes for table `employed`
--
ALTER TABLE `employed`
  ADD PRIMARY KEY (`LicNo`,`EmployeeNo`),
  ADD KEY `EmployeeNo` (`EmployeeNo`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`LicNo`,`RoomNo`),
  ADD KEY `RoomNo` (`RoomNo`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`LicNo`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`EmployeeNo`);

--
-- Indexes for table `stay_in`
--
ALTER TABLE `stay_in`
  ADD PRIMARY KEY (`LicNo`,`client_ID`,`RoomNo`),
  ADD KEY `client_ID` (`client_ID`),
  ADD KEY `RoomNo` (`RoomNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employed`
--
ALTER TABLE `employed`
  ADD CONSTRAINT `employed_ibfk_1` FOREIGN KEY (`LicNo`) REFERENCES `hotel` (`LicNo`),
  ADD CONSTRAINT `employed_ibfk_2` FOREIGN KEY (`EmployeeNo`) REFERENCES `staff` (`EmployeeNo`);

--
-- Constraints for table `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `has_ibfk_1` FOREIGN KEY (`LicNo`) REFERENCES `hotel` (`LicNo`),
  ADD CONSTRAINT `has_ibfk_2` FOREIGN KEY (`RoomNo`) REFERENCES `rooms` (`RoomNo`);

--
-- Constraints for table `stay_in`
--
ALTER TABLE `stay_in`
  ADD CONSTRAINT `stay_in_ibfk_1` FOREIGN KEY (`LicNo`) REFERENCES `hotel` (`LicNo`),
  ADD CONSTRAINT `stay_in_ibfk_2` FOREIGN KEY (`client_ID`) REFERENCES `client` (`Client_ID`),
  ADD CONSTRAINT `stay_in_ibfk_3` FOREIGN KEY (`RoomNo`) REFERENCES `rooms` (`RoomNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
