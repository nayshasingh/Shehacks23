-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 06:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shehacks23`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `pid` int(10) NOT NULL,
  `count` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `uid` int(20) NOT NULL,
  `sid` int(20) NOT NULL,
  `pid` int(20) NOT NULL,
  `currentTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickle`
--

CREATE TABLE `pickle` (
  `pid` int(10) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `customerCount` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `imgSrc` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pslink`
--

CREATE TABLE `pslink` (
  `pid` int(10) NOT NULL,
  `sid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `pid` int(10) NOT NULL,
  `review` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `sid` int(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `snacks`
--

CREATE TABLE `snacks` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `customerCount` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `imgSrc` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sweets`
--

CREATE TABLE `sweets` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `customerCount` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `imgSrc` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`uid`,`sid`,`pid`);

--
-- Indexes for table `pickle`
--
ALTER TABLE `pickle`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `pslink`
--
ALTER TABLE `pslink`
  ADD PRIMARY KEY (`pid`,`sid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`pid`,`review`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `snacks`
--
ALTER TABLE `snacks`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sweets`
--
ALTER TABLE `sweets`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pickle`
--
ALTER TABLE `pickle`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `sid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `snacks`
--
ALTER TABLE `snacks`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sweets`
--
ALTER TABLE `sweets`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
