-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 06:34 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

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
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
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
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrus_booking_table`
--

INSERT INTO `cyrus_booking_table` (`id`, `userEmail`, `BusId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(11, 'rutomoryn@gmail.com', 9, '25/3/2020', '27/3/2020', 'Can yo please reserve me this ?', 1, '2020-03-21 17:30:45'),
(12, 'onlytheoneneo@yahoo.com', 10, '29/3/2020', '2020-03-30', 'Please Reserve me this car', 0, '2020-03-25 12:54:07'),
(13, 'onlytheoneneo@yahoo.com', 11, '25/3/2020', '2020-03-26', 'sdfghjk', 0, '2020-03-27 17:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_Busestarting_Points_table`
--

CREATE TABLE `cyrus_Busestarting_Points_table` (
  `id` int(11) NOT NULL,
  `Starting_Point` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrus_Busestarting_Points_table`
--

INSERT INTO `cyrus_Busestarting_Points_table` (`id`, `Starting_Point`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Marutiu', '2017-06-19 06:22:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_contactus_table`
--

CREATE TABLE `cyrus_contactus_table` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_contactusquery_table`
--

CREATE TABLE `cyrus_contactusquery_table` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrus_contactusquery_table`
--

INSERT INTO `cyrus_contactusquery_table` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(5, 'Moses Olaka', 'olakaolaka@gmail.com', '079288222', 'Hey Neocarrentals i wanna say you are real my people', '2020-03-21 17:13:28', NULL);

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

--
-- Dumping data for table `cyrus_systempages_table`
--

INSERT INTO `cyrus_systempages_table` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<h2><ul><li style=\"text-align: justify;\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">Our terms&nbsp; and conditons are very fair you will know</span></li></ul></h2>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Cyrus Bus Ticketing Systems is yet to post privacy policy soon</span></div>'),
(3, 'About Us ', 'aboutus', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">We are the Cyrus Bus Ticketing Systems</span></div>'),
(11, 'FAQs', 'faqs', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">My name is Thomas an you ?</span></div>');

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_subscribers_table`
--

CREATE TABLE `cyrus_subscribers_table` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrus_subscribers_table`
--

INSERT INTO `cyrus_subscribers_table` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(2, 'odhiambothomas09@gmail.com', '2020-03-21 17:09:54'),
(3, 'rutomoryn@gmail.com', '2020-03-21 17:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_testimonials_table`
--

CREATE TABLE `cyrus_testimonials_table` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrus_testimonials_table`
--

INSERT INTO `cyrus_testimonials_table` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'rutomoryn@gmail.com', 'The best car rental ', '2020-03-21 17:19:52', 1),
(4, 'rutomoryn@gmail.com', 'The best car rental ', '2020-03-21 17:20:10', NULL);

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
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrus_users_table`
--

INSERT INTO `cyrus_users_table` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(9, 'Odhiambo Thomas', 'onlytheoneneo@yahoo.com', 'e807f1fcf82d132f9bb018ca6738a19f', '0797049288', NULL, NULL, NULL, NULL, '2020-03-21 16:51:38', NULL),
(10, 'One Neo', 'onlytheoneneo@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '0797049280', NULL, NULL, NULL, NULL, '2020-03-21 16:53:05', NULL),
(11, 'Ruto Mourine ', 'rutomoryn@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '0706023063', NULL, NULL, NULL, NULL, '2020-03-21 17:03:50', NULL),
(12, 'Lukas Mathews', 'gordonotieno58@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '0797049280', NULL, NULL, NULL, NULL, '2020-03-21 17:06:09', NULL),
(13, 'Joseph Oduor', 'josephoduor@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '0706023064', NULL, NULL, NULL, NULL, '2020-03-21 17:07:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cyrus_Buses_table`
--

CREATE TABLE `cyrus_Buses_table` (
  `id` int(11) NOT NULL,
  `BusesTitle` varchar(150) DEFAULT NULL,
  `BusesStarting_Point` int(11) DEFAULT NULL,
  `BusesOverview` longtext,
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
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrus_Buses_table`
--

INSERT INTO `cyrus_Buses_table` (`id`, `BusesTitle`, `BusesStarting_Point`, `BusesOverview`, `PricePerPerson`, `Busestop`, `ModelYear`, `SeatingCapacity`, `PlateNumber`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(9, 'Toyota', 5, 'This is a new design from The Toyota Starting_Point very strong, low fuel consumption and efficient', 500, 'Petrol', 2020, 5, 'KAX 613A', 'looking-used-car.png', 'red.png', 'red_car_208721.jpg', 'awesome-3d-car-wallpapers-for-desktop.jpg', 'hd-cars-wallpaper-3d.jpg', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 1, NULL, '2020-03-21 17:28:42', NULL),
(10, 'BMW 2020', 2, 'This is a Bus that suites all your need ranging from official duties to holiday trips', 800, 'Petrol', 2020, 6, 'KCD I66R', 'cars-wallpaper-hd-download.jpg', 'awesome-3d-car-wallpapers-for-desktop.jpg', 'hd-cars-wallpaper-3d.jpg', 'looking-used-car.png', '', NULL, 1, NULL, NULL, NULL, 1, 1, 1, NULL, 1, NULL, NULL, '2020-03-25 12:04:16', NULL),
(11, 'Toyota', 5, 'The newest Toyota Starting_Point in town', 700, 'Diesel', 2020, 7, 'KCK 111A', 'listing_img4.jpg', 'support_faq_bg.jpg', 'recent-car-4.jpg', 'trending-car-img-3.jpg', 'trending-car-img-2.jpg', 1, 1, NULL, NULL, 1, 1, NULL, NULL, 1, 1, NULL, NULL, '2020-03-25 12:09:45', NULL);

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
-- Indexes for table `cyrus_contactus_table`
--
ALTER TABLE `cyrus_contactus_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_contactusquery_table`
--
ALTER TABLE `cyrus_contactusquery_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_systempages_table`
--
ALTER TABLE `cyrus_systempages_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyrus_subscribers_table`
--
ALTER TABLE `cyrus_subscribers_table`
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
-- Indexes for table `cyrus_Buses_table`
--
ALTER TABLE `cyrus_Buses_table`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cyrus_Busestarting_Points_table`
--
ALTER TABLE `cyrus_Busestarting_Points_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cyrus_contactus_table`
--
ALTER TABLE `cyrus_contactus_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cyrus_contactusquery_table`
--
ALTER TABLE `cyrus_contactusquery_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cyrus_systempages_table`
--
ALTER TABLE `cyrus_systempages_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cyrus_subscribers_table`
--
ALTER TABLE `cyrus_subscribers_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cyrus_testimonials_table`
--
ALTER TABLE `cyrus_testimonials_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cyrus_users_table`
--
ALTER TABLE `cyrus_users_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cyrus_Buses_table`
--
ALTER TABLE `cyrus_Buses_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
