-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220513.fb9d9feb74
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 08:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `outpass`
--
CREATE DATABASE IF NOT EXISTS `outpass` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `outpass`;

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `id` varchar(7) NOT NULL,
  `gname` varchar(30) NOT NULL,
  `gnumber` bigint(15) NOT NULL,
  `snumber` bigint(15) NOT NULL,
  `fromdate` varchar(20) DEFAULT NULL,
  `todate` varchar(20) DEFAULT NULL,
  `reason` varchar(256) NOT NULL,
  `applydate` varchar(20) DEFAULT current_timestamp(),
  `outpassId` bigint(15) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'Pending',
  `rejected_date` varchar(20) NOT NULL DEFAULT 'NULL',
  `accepted_date` varchar(20) NOT NULL DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `gname`, `gnumber`, `snumber`, `fromdate`, `todate`, `reason`, `applydate`, `outpassId`, `status`, `rejected_date`, `accepted_date`) VALUES
-- sample rows for the new sample student account 'student'
('student', 'Parent One', 9876543210, 9876543210, '2022-11-10', '2022-11-12', 'Visit family', '2022-11-09 09:00:00', 47, 'Pending', 'NULL', 'NULL'),
('student', 'Parent One', 9876543210, 9876543210, '2022-10-01', '2022-10-03', 'Medical appointment', '2022-09-30 10:15:00', 48, 'Approved', 'NULL', 'NULL'),
('student', 'Parent One', 9876543210, 9876543210, '2022-09-05', '2022-09-06', 'Urgent work', '2022-09-04 08:30:00', 49, 'Rejected', 'NULL', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `id` varchar(7) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`id`, `password`, `name`, `gender`, `email`) VALUES
-- sample login for quick testing
('student', '12345', 'Demo Student', 'Male', 'student@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `warden_login`
--

CREATE TABLE `warden_login` (
  `empId` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warden_login`
--

INSERT INTO `warden_login` (`empId`, `password`, `name`, `gender`, `email`) VALUES
-- quick test warden account
('warden', '12345', 'Warden Account', 'Male', 'warden@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`outpassId`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warden_login`
--
ALTER TABLE `warden_login`
  ADD PRIMARY KEY (`empId`);

-- --------------------------------------------------------
-- AUTO_INCREMENT for dumped tables
-- --------------------------------------------------------

ALTER TABLE `reg`
  MODIFY `outpassId` bigint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



