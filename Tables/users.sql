-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2021 at 10:00 AM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `active`, `name`, `password`, `address`, `city`, `phone`, `type`, `email`, `roles`) VALUES
(1, 1, 'Juan Martinez Gómez', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'C/Ayala', 'Malaga', '+34645-456-789', 'Particular', 'juan@gmail.com', '[]'),
(2, 1, 'SportCar Dealer', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'High Avenue', 'Swansea', '+4407708525185', 'Concesionario', 'sportCar@gmail.com', '[]'),
(4, 1, 'Vinsaloon Car', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', '5th Avenue', 'New York', '+01867989989', 'Concesionario', 'vinsaloon@hotmail.us\r\n', '[]'),
(5, 1, 'María Hernández Álaba', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Av. De la Luz', 'Madrid', '+34615-456-759', 'Particular', 'maria@gmail.es', '[]'),
(6, 1, 'Michael Smith', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Straße Stratchoon ', 'Berlin', '+30958-526-562', 'Particular', 'Michael@gmail.com', '[]'),
(7, 1, 'Esteban Gómez Pastor', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Plz. Alhama de la Sierra', 'Granada', '+34952-25-25-68', 'Particular', 'esteban@hotmail.com', '[]'),
(8, 1, 'Luque Martin Gon', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Plz.Mayor', 'La Gomera', '+34-654-789-213', 'Particular', 'luque@hotmail.com', '[]'),
(9, 1, 'Pilar Urrutia Marín', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'C/Cuesta', 'Lisboa', '+351984252587', 'Particular', 'pilar@hotmail.com', '[]'),
(10, 1, 'Sunny Car', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Road Benson', 'Swansea', '+4407078253321', 'Concesionario', 'sunny@gmail.com', '[]'),
(11, 1, 'Vintage Car', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Chausse de Ninove', 'Bruges', '+3244433344422', 'Concesionario', 'vintage@gmail.com', '[]'),
(104, 1, 'Admin Jose', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Urbanizacion C/ Villalva 24', 'Malaga', '+34653326598', 'Particular', 'jose@gmail.com', '[\"ROLE_ADMIN\"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
