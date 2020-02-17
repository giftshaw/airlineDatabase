-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 03:11 PM
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
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `credit_card_details`
--

CREATE TABLE `credit_card_details` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `card_number` int(20) DEFAULT NULL,
  `card_type` varchar(12) DEFAULT NULL,
  `expiration_month` varchar(12) DEFAULT NULL,
  `expiration_year` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credit_card_details`
--

INSERT INTO `credit_card_details` (`id`, `profile_id`, `card_number`, `card_type`, `expiration_month`, `expiration_year`) VALUES
(1, 1, 2039009933, 'verve', 'june', 2022),
(2, 1, 2039009913, 'verve', 'june', 2027),
(3, 1, 20394098, 'mastercard', 'june', 2022);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `flight_name` varchar(20) DEFAULT NULL,
  `from_location` varchar(50) DEFAULT NULL,
  `to_location` varchar(50) DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `total_seats` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `flight_name`, `from_location`, `to_location`, `departure_time`, `arrival_time`, `duration`, `total_seats`) VALUES
(1, 'flight w2', 'abuja', 'lagos', '10:05:00', '12:00:45', NULL, 20),
(2, 'flightwq10', 'warri', 'lagos', '12:05:00', '01:00:05', NULL, 20),
(3, 'flight2q', 'abuja', 'maiduguri', '04:05:00', '06:00:45', NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `flight_details`
--

CREATE TABLE `flight_details` (
  `id` int(11) NOT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `flight_departure_date` date DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `available_seats` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_details`
--

INSERT INTO `flight_details` (`id`, `flight_id`, `flight_departure_date`, `price`, `available_seats`) VALUES
(1, 1, '0000-00-00', '24000.00', 10),
(2, 1, '2020-03-30', '24000.00', 9),
(3, 1, '2020-04-30', '24000.00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `passenger_info`
--

CREATE TABLE `passenger_info` (
  `id` int(11) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tel_no` int(20) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger_info`
--

INSERT INTO `passenger_info` (`id`, `password`, `first_name`, `last_name`, `address`, `tel_no`, `email_id`) VALUES
(1, '*00E96C008F92C243FD0B5E5EAB45E4F', 'nelly', 'Ado', 'house 5 lokogoma abuja', 0, 'ado@gmail.com'),
(2, 'royal2010', 'tim', 'oha', 'house 5 lokogoma abuja', 2147483647, 'tim@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_info`
--

CREATE TABLE `ticket_info` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `flight_departure_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_info`
--

INSERT INTO `ticket_info` (`id`, `profile_id`, `flight_id`, `flight_departure_date`) VALUES
(1, 1, 2, '0000-00-00'),
(2, 1, 2, '2020-04-30'),
(3, 1, 2, '2020-06-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credit_card_details`
--
ALTER TABLE `credit_card_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_details`
--
ALTER TABLE `flight_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `passenger_info`
--
ALTER TABLE `passenger_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_info`
--
ALTER TABLE `ticket_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credit_card_details`
--
ALTER TABLE `credit_card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flight_details`
--
ALTER TABLE `flight_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `passenger_info`
--
ALTER TABLE `passenger_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_info`
--
ALTER TABLE `ticket_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credit_card_details`
--
ALTER TABLE `credit_card_details`
  ADD CONSTRAINT `credit_card_details_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `passenger_info` (`id`);

--
-- Constraints for table `flight_details`
--
ALTER TABLE `flight_details`
  ADD CONSTRAINT `flight_details_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`);

--
-- Constraints for table `ticket_info`
--
ALTER TABLE `ticket_info`
  ADD CONSTRAINT `ticket_info_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `passenger_info` (`id`),
  ADD CONSTRAINT `ticket_info_ibfk_2` FOREIGN KEY (`profile_id`) REFERENCES `flight` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
