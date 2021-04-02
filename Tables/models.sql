-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2021 at 09:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oldcar`
--

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `model_name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `model_name`, `brand_id`) VALUES
(1, 'DB2', 1),
(2, 'DB6', 1),
(3, 'Lagonda', 1),
(4, 'Frogeye Sprite', 2),
(5, 'Healey 3000 MK3', 2),
(6, 'Ten Cabrio', 2),
(7, 'Continental', 3),
(8, 'Mark VI', 3),
(9, 'S1', 3),
(10, 'Special Old', 3),
(11, 'Model 24', 4),
(12, 'Riviera', 4),
(13, 'Roadmaster', 4),
(14, 'Super Sedan', 4),
(15, 'Camaro', 5),
(16, 'Corvette', 5),
(17, 'Double Phantom', 5),
(18, '2CV', 6),
(19, 'DS Cabrio', 6),
(20, 'Traction', 6),
(21, 'Pantera', 7),
(22, 'Deauville', 7),
(23, '500', 8),
(24, 'Balilla', 8),
(25, 'Spider', 8),
(26, 'Torpedo', 8),
(27, 'F 100', 9),
(28, 'T', 9),
(29, 'Roadster', 9),
(30, 'Thunderbird', 9),
(31, 'E-Type', 10),
(32, 'MKII', 10),
(33, 'XK120', 10),
(34, 'Almicar', 11),
(35, 'Chevrolet', 11),
(36, 'Overige', 11),
(37, 'Tourer', 11),
(38, '6-27 Coupe', 12),
(39, 'Catalina', 12),
(40, 'Firebird', 12),
(41, 'GTO', 12),
(42, 'Freestone', 13),
(43, 'Phantom II', 13),
(44, 'Silver', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `models_brands` (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `models_brands` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
