-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 03:32 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paf`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorID` int(20) NOT NULL,
  `doctorName` varchar(30) NOT NULL,
  `doctorAge` varchar(2) NOT NULL,
  `doctorMail` varchar(30) NOT NULL,
  `doctorSpeciality` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorID`, `doctorName`, `doctorAge`, `doctorMail`, `doctorSpeciality`) VALUES
(1, 'dinu', '30', 'dinu@gmail.com', 'pediatric'),
(5, 'dileepa', '36', 'pavel@gmail.com', 'neurology'),
(6, 'saduni', '43', 'sadunij40@gmail.com', 'surgent'),
(9, 'sanaya', '42', 'sanaya@gmail.com', 'vision'),
(10, 'veer', '50', 'veer@gmail.com', 'cardiology'),
(11, 'diniti', '44', 'diniti@gmail.com', 'radiology'),
(13, 'abhishek', '41', 'abhi@gmail.com', 'dermatology'),
(14, 'rehan', '37', 'rehan@gmail.com', 'pulomonology'),
(15, 'hansi', '41', 'hansi@gmail.com', 'gynaecology'),
(18, 'athula', '53', 'athule356@gmail.com', 'dermatology'),
(19, 'hashini', '56', 'hashini@gmail.com', 'pediatric');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
