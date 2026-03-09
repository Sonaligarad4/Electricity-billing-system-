-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2025 at 06:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricitybill`
--

-- --------------------------------------------------------

--
-- Table structure for table `connection`
--

CREATE TABLE `connection` (
  `connection_id` varchar(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `connection_type` varchar(50) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `load_capacity` decimal(10,2) NOT NULL,
  `address` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `connection`
--

INSERT INTO `connection` (`connection_id`, `customer_name`, `connection_type`, `occupation`, `load_capacity`, `address`, `date`) VALUES
('3425163547', 'tejaswini zaware', 'Commercial', 'shop', 110.00, 'rahuri', '2024-12-26'),
('6453782341', 'Tanuja Zaware', 'Commercial', 'shop', 130.00, 'rahuri', '2024-12-24'),
('6457384657', 'vaishanavi zaware', 'Commercial', 'engineer', 130.00, 'taharabad', '2024-12-24'),
('6457893425', 'shalini wadekar', 'Commercial', 'shop', 210.00, 'rahuri', '2024-12-21'),
('7654342564', 'rutuja zaware', 'Commercial', 'shop', 120.00, 'pune', '2025-01-17'),
('8765432123', 'dhanashri musale', 'Residential', 'shop', 120.00, 'pune', '2025-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `contact`, `email`, `address`, `city`) VALUES
(2, 'shalini wadekar', '1234321456', 'shalini21@gmail.com', 'rahuri', 'pune'),
(3, 'tanuja zaware', '2345362784', 'tanuja12@gmail.com', 'rahuri', 'rahuri'),
(4, 'vaishnavi zaware', '4352674563', 'vaishnavi@gmail.com', 'taharabad', 'rahuri');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `confirm_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `password`, `confirm_password`) VALUES
(1, 'rutuja', 'rutuja@gmail.com', '123', '123'),
(2, 'shalini', 'shalini12@gmail.com', '123', '123'),
(3, 'abs', 'abc@gmail.com', '123', '123'),
(4, 'qwe', '123', 'qwe', 'qwe'),
(5, 'shalini wadekar', 'shalini21@gmail.com', '123', '123'),
(6, 'rutuja', 'rutuja12@gmail.com', '123', '123'),
(7, 'rutuja', 'rutuja23@gmail.com', '123', '123'),
(8, 'rutuja zaware', 'rutuja86@gmail.com', '123', '123'),
(9, 'vaishanavi ', 'vaishnavi@gfmail.com', '123', '123'),
(10, 'rutuja ', 'rutuja123@gmail.com', '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'rutuja zaware', 'rutuja12@gmail.com', '123'),
(2, 'rutuja', 'rutuja@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`connection_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
