-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2020 at 06:22 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyrusdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'e807f1fcf82d132f9bb018ca6738a19f', '2020-03-18 19:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_booking_table`
--

CREATE TABLE `cyrus_booking_table` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `BusId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_Busestarting_Points_table`
--

CREATE TABLE `cyrus_Busestarting_Points_table` (
  `id` int(11) NOT NULL,
  `Starting_Point` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrus_Busestarting_Points_table`
--

INSERT INTO `cyrus_Busestarting_Points_table` (`id`, `Starting_Point`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Kisumu', '2020-04-23 15:40:24', NULL),
(2, 'Narok', '2020-04-23 15:40:30', NULL),
(3, 'Mombasa', '2020-04-23 15:40:37', NULL),
(4, 'Thika', '2020-04-23 15:40:43', '2020-04-23 15:43:13'),
(5, 'Nairobi', '2020-04-23 15:41:17', NULL),
(6, 'Malindi', '2020-04-23 15:41:24', NULL),
(7, 'Eldoret', '2020-04-23 15:41:34', NULL),
(8, 'Nakuru', '2020-04-23 15:41:42', NULL),
(9, 'Kapsabet', '2020-04-23 15:41:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_Buses_table`
--

CREATE TABLE `cyrus_Buses_table` (
  `id` int(11) NOT NULL,
  `BusesTitle` varchar(150) DEFAULT NULL,
  `BusesStarting_Point` int(11) DEFAULT NULL,
  `BusesOverview` longtext DEFAULT NULL,
  `PricePerPerson` int(11) DEFAULT NULL,
  `Busestop` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `PlateNumber` varchar(16) NOT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrus_Buses_table`
--

INSERT INTO `cyrus_Buses_table` (`id`, `BusesTitle`, `BusesStarting_Point`, `BusesOverview`, `PricePerPerson`, `Busestop`, `ModelYear`, `SeatingCapacity`, `PlateNumber`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `AntiLockBrakingSystem`, `PassengerAirbag`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Coast Bus', 3, 'We operate along the Kenyan Coast', 600, 'Malindi', 2020, 62, 'KCX 992R', '1.jpg', '1 (1).jpg', '3.jpg', 'VANHOOL-T917-ALTANO-Euro-5.jpg', 'vvallpaper.net.mercedes_neoplan_starliner_vip_class.jpg', 1, 1, NULL, 1, '2020-04-23 15:44:52', NULL),
(2, 'Gurdian Angel', 1, 'Thats our route', 900, 'Nairobi', 2020, 62, 'KCX 992Z', '251-2513689_luxury-buses-luxury-bus-hd-png.png', 'ab.jpg', 'b1c310c0-e2c5-474e-aef3-467c70ac0144.jpeg', 'flixbus.jpg', 'unnamed.jpg', 1, 1, 1, NULL, '2020-04-23 15:47:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_contactusquery_table`
--

CREATE TABLE `cyrus_contactusquery_table` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_contactus_table`
--

CREATE TABLE `cyrus_contactus_table` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_subscribers_table`
--

CREATE TABLE `cyrus_subscribers_table` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_systempages_table`
--

CREATE TABLE `cyrus_systempages_table` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_testimonials_table`
--

CREATE TABLE `cyrus_testimonials_table` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_users_table`
--

CREATE TABLE `cyrus_users_table` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_booking_table`
--
ALTER TABLE `cyrus_booking_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_Busestarting_Points_table`
--
ALTER TABLE `cyrus_Busestarting_Points_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_Buses_table`
--
ALTER TABLE `cyrus_Buses_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_contactusquery_table`
--
ALTER TABLE `cyrus_contactusquery_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_contactus_table`
--
ALTER TABLE `cyrus_contactus_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_subscribers_table`
--
ALTER TABLE `cyrus_subscribers_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_systempages_table`
--
ALTER TABLE `cyrus_systempages_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_testimonials_table`
--
ALTER TABLE `cyrus_testimonials_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_users_table`
--
ALTER TABLE `cyrus_users_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cyrus_booking_table`
--
ALTER TABLE `cyrus_booking_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cyrus_Busestarting_Points_table`
--
ALTER TABLE `cyrus_Busestarting_Points_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cyrus_Buses_table`
--
ALTER TABLE `cyrus_Buses_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cyrus_contactusquery_table`
--
ALTER TABLE `cyrus_contactusquery_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cyrus_contactus_table`
--
ALTER TABLE `cyrus_contactus_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cyrus_subscribers_table`
--
ALTER TABLE `cyrus_subscribers_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cyrus_systempages_table`
--
ALTER TABLE `cyrus_systempages_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cyrus_testimonials_table`
--
ALTER TABLE `cyrus_testimonials_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cyrus_users_table`
--
ALTER TABLE `cyrus_users_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
