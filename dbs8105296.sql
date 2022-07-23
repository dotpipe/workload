-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Host: db5009558953.hosting-data.io
-- Generation Time: Jul 23, 2022 at 07:18 PM
-- Server version: 5.7.38-log
-- PHP Version: 7.0.33-0+deb9u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs8105296`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` bigint(20) NOT NULL,
  `DOMAIN` text NOT NULL,
  `USERNAME` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TOKEN` text NOT NULL,
  `EMAIL` text NOT NULL,
  `FIRST` text NOT NULL,
  `LAST` text NOT NULL,
  `MIDDLE` text NOT NULL,
  `AREA` int(11) NOT NULL,
  `PHONE` int(11) NOT NULL,
  `ZIP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logdb`
--

CREATE TABLE `logdb` (
  `ID` int(11) NOT NULL,
  `RESULT` text NOT NULL,
  `ATTRIBUTES` text NOT NULL,
  `GROUP_NO` int(11) NOT NULL,
  `BASEURL` text NOT NULL,
  `TOKEN` text NOT NULL,
  `USERNAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SNDER` text NOT NULL,
  `RCPT` text NOT NULL,
  `DETAILS` text NOT NULL,
  `TOKEN` text NOT NULL,
  `SEEN` tinyint(1) NOT NULL DEFAULT '0',
  `ADMINS_EYES` tinyint(1) NOT NULL,
  `ADMIN_MADE` tinyint(1) NOT NULL,
  `GROUP_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `ID` int(11) NOT NULL,
  `START` time NOT NULL,
  `END` time NOT NULL,
  `SINGULAR` tinyint(1) NOT NULL,
  `DATE` date NOT NULL,
  `DETAILS` text NOT NULL,
  `USERNAME` text NOT NULL,
  `GROUP_NO` int(11) NOT NULL,
  `LEN` int(11) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL,
  `WHOM` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `TOKEN` text NOT NULL,
  `USERNAME` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `ADMIN` tinyint(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EMAIL` text NOT NULL,
  `GROUP_NO` int(11) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logdb`
--
ALTER TABLE `logdb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logdb`
--
ALTER TABLE `logdb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
