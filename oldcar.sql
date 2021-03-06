-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2021 at 09:55 AM
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
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`) VALUES
(1, 'Aston Martin'),
(2, 'Austin'),
(3, 'Bentley'),
(4, 'Buick'),
(5, 'Chevrolet'),
(6, 'Citroen'),
(7, 'De Tomaso'),
(8, 'Fiat'),
(9, 'Ford'),
(10, 'Jaguar'),
(11, 'OldTimer'),
(12, 'Pontiac'),
(13, 'Rolls Royce');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `car_year` int(11) NOT NULL,
  `km` int(11) DEFAULT NULL,
  `short_description` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `long_description` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `car_price` int(11) NOT NULL,
  `model_id` int(11) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `second_image` varchar(255) DEFAULT NULL,
  `third_image` varchar(255) DEFAULT NULL,
  `fourth_image` varchar(255) DEFAULT NULL,
  `fifth_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `user_id`, `active`, `car_year`, `km`, `short_description`, `long_description`, `car_price`, `model_id`, `main_image`, `second_image`, `third_image`, `fourth_image`, `fifth_image`) VALUES
(1, 1, 1, 1968, 10200, '1968 Aston Martin en muy buen estado y financiable si se prefiere!', 'Aston Martin DB2. A??o 1968. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas del Aston Martin, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 35100, 1, 'AstonMartin/DB2/1-IMG1.jpg', 'AstonMartin/DB2/1-IMG2.jpg', 'AstonMartin/DB2/1-IMG3.jpg', 'AstonMartin/DB2/1-IMG4.jpg', 'AstonMartin/DB2/1-IMG5.jpg'),
(2, 2, 1, 1953, 5000, '1953 Aston Martin en muy buen estado y financiable si se prefiere!', 'Aston Martin DB2. A??o 1953. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas del Aston Martin, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 42000, 1, 'AstonMartin/DB2/2-IMG1.jpg', 'AstonMartin/DB2/2-IMG2.jpg', 'AstonMartin/DB2/2-IMG3.jpg', 'AstonMartin/DB2/2-IMG4.jpg', 'AstonMartin/DB2/2-IMG5.jpg'),
(3, 11, 1, 1970, 3837, '1970 Aston Martin en muy buen estado y financiable si se prefiere!', 'Aston Martin DB6. A??o 1970. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas del Aston Martin, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 51000, 2, 'AstonMartin/DB6/3-IMG1.jpg', 'AstonMartin/DB6/3-IMG2.jpg', 'AstonMartin/DB6/3-IMG3.jpg', 'AstonMartin/DB6/3-IMG4.jpg', 'AstonMartin/DB6/3-IMG5.png'),
(4, 4, 1, 1969, 8560, '1969 Aston Martin en muy buen estado y financiable si se prefiere!', 'Aston Martin DB6. A??o 1969. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas del Aston Martin, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 69300, 2, 'AstonMartin/DB6/4-IMG1.jpg', 'AstonMartin/DB6/4-IMG2.jpg', 'AstonMartin/DB6/4-IMG3.jpg', 'AstonMartin/DB6/4-IMG4.jpg', 'AstonMartin/DB6/4-IMG5.jpg'),
(5, 5, 1, 1933, 128, '1933 Aston Martin en muy buen estado y financiable si se prefiere!', 'Aston Martin Lagonda. A??o 1933. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas del Aston Martin, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 31250, 3, 'AstonMartin/Lagonda/5-IMG1.jpg', 'AstonMartin/Lagonda/5-IMG2.jpg', 'AstonMartin/Lagonda/5-IMG3.jpg', 'AstonMartin/Lagonda/5-IMG4.jpg', 'AstonMartin/Lagonda/5-IMG5.jpg'),
(11, 4, 1, 1961, 99999, '1961 Austin en muy buen estado y financiable si se prefiere!', 'Austin Frogeye Sprite. A??o 1961. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Austin, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 21360, 4, 'Austin/FrogeyeSprite/11-IMG1.jpg', 'Austin/FrogeyeSprite/11-IMG2.jpg', 'Austin/FrogeyeSprite/11-IMG3.jpg', 'Austin/FrogeyeSprite/11-IMG4.jpg', 'Austin/FrogeyeSprite/11-IMG5.jpg'),
(12, 7, 1, 1959, 6283, '1959 Austin en muy buen estado y financiable si se prefiere!', 'Austin Frogeye Sprite. A??o 1959. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Austin, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 39500, 4, 'Austin/FrogeyeSprite/12-IMG1.jpg', 'Austin/FrogeyeSprite/12-IMG2.jpg', 'Austin/FrogeyeSprite/12-IMG3.jpg', 'Austin/FrogeyeSprite/12-IMG4.jpg', 'Austin/FrogeyeSprite/12-IMG5.jpg'),
(13, 6, 1, 1967, 65, '1967 Austin en muy buen estado y financiable si se prefiere!', 'Austin Healey 3000 MK3. A??o 1967. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Austin, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 79650, 5, 'Austin/Healey3000MK3/13-IMG1.jpg', 'Austin/Healey3000MK3/13-IMG2.jpg', 'Austin/Healey3000MK3/13-IMG3.jpg', 'Austin/Healey3000MK3/13-IMG4.jpg', 'Austin/Healey3000MK3/13-IMG5.jpg'),
(14, 6, 1, 1965, 120000, '1965 Austin en muy buen estado y financiable si se prefiere!', 'Austin Healey 3000 MK3. A??o 1965. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Austin, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 63000, 5, 'Austin/Healey3000MK3/14-IMG1.jpg', 'Austin/Healey3000MK3/14-IMG2.jpg', 'Austin/Healey3000MK3/14-IMG3.jpg', 'Austin/Healey3000MK3/14-IMG4.jpg', 'Austin/Healey3000MK3/14-IMG5.jpg'),
(15, 1, 1, 1933, 1254, '1933 Austin en muy buen estado y financiable si se prefiere!', 'Austin Ten Cabrio. A??o 1933. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Austin, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 15000, 6, 'Austin/TenCabrio/15-IMG1.jpg', '', 'Austin/TenCabrio/15-IMG3.jpg', 'Austin/TenCabrio/15-IMG4.jpg', 'Austin/TenCabrio/15-IMG5.jpg'),
(16, 5, 1, 1965, 91800, '1965 Bentley en muy buen estado y financiable si se prefiere!', 'Bentley Continental. A??o 1965. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Bentley, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 120000, 7, 'Bentley/Continental/16-IMG1.jpg', 'Bentley/Continental/16-IMG2.jpg', 'Bentley/Continental/16-IMG3.jpg', 'Bentley/Continental/16-IMG4.jpg', 'Bentley/Continental/16-IMG5.jpg'),
(17, 2, 1, 1963, 45000, '1963 Bentley en muy buen estado y financiable si se prefiere!', 'Bentley Continental. A??o 1963. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Bentley, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 67200, 7, 'Bentley/Continental/17-IMG1.jpg', 'Bentley/Continental/17-IMG2.jpg', 'Bentley/Continental/17-IMG3.jpg', 'Bentley/Continental/17-IMG4.jpg', 'Bentley/Continental/17-IMG5.jpg'),
(18, 6, 1, 1952, 179000, '1952 Bentley en muy buen estado y financiable si se prefiere!', 'Bentley Mark VI. A??o 1952. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Bentley, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 63800, 8, 'Bentley/MarkVI/18-IMG1.jpg', 'Bentley/MarkVI/18-IMG2.jpg', 'Bentley/MarkVI/18-IMG3.jpg', 'Bentley/MarkVI/18-IMG4.jpg', 'Bentley/MarkVI/18-IMG5.jpg'),
(19, 7, 1, 1951, 1345, '1951 Bentley en muy buen estado y financiable si se prefiere!', 'Bentley S1. A??o 1951. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Bentley, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 55000, 9, 'Bentley/S1/19-IMG1.jpg', 'Bentley/S1/19-IMG2.jpg', 'Bentley/S1/19-IMG3.jpg', 'Bentley/S1/19-IMG4.jpg', 'Bentley/S1/19-IMG5.jpg'),
(20, 2, 1, 1929, 151, '1929 Bentley en muy buen estado y financiable si se prefiere!', 'Bentley Special Old. A??o 1929. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Bentley, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 77400, 10, 'Bentley/SpecialOld/20-IMG1.jpg', 'Bentley/SpecialOld/20-IMG2.jpg', 'Bentley/SpecialOld/20-IMG3.jpg', 'Bentley/SpecialOld/20-IMG4.jpg', 'Bentley/SpecialOld/20-IMG5.jpg'),
(21, 4, 1, 1938, 123000, '1938 Buick en muy buen estado y financiable si se prefiere!', 'Buick Model 24. A??o 1938. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Buick, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 35000, 11, 'Buick/Model24/21-IMG1.jpg', 'Buick/Model24/21-IMG2.jpg', 'Buick/Model24/21-IMG3.jpg', 'Buick/Model24/21-IMG4.jpg', 'Buick/Model24/21-IMG5.jpg'),
(22, 7, 1, 1966, 893, '1966 Buick en muy buen estado y financiable si se prefiere!', 'Buick Riviera. A??o 1966. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Buick, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 32000, 12, 'Buick/Riviera/22-IMG1.jpg', 'Buick/Riviera/22-IMG2.jpg', 'Buick/Riviera/22-IMG3.jpg', 'Buick/Riviera/22-IMG4.jpg', 'Buick/Riviera/22-IMG5.jpg'),
(23, 6, 1, 1972, 17000, '1972 Buick en muy buen estado y financiable si se prefiere!', 'Buick Riviera. A??o 1972. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Buick, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 28950, 12, 'Buick/Riviera/23-IMG1.jpg', 'Buick/Riviera/23-IMG2.jpg', 'Buick/Riviera/23-IMG3.jpg', 'Buick/Riviera/23-IMG4.jpg', 'Buick/Riviera/23-IMG5.jpg'),
(24, 1, 1, 1948, 90561, '1948 Buick en muy buen estado y financiable si se prefiere!', 'Buick Roadmaster. A??o 1948. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Buick, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 35800, 13, 'Buick/Roadmaster/24-IMG1.jpg', 'Buick/Roadmaster/24-IMG2.jpg', 'Buick/Roadmaster/24-IMG3.jpg', 'Buick/Roadmaster/24-IMG4.jpg', 'Buick/Roadmaster/24-IMG5.jpg'),
(25, 5, 1, 1949, 79890, '1949 Buick en muy buen estado y financiable si se prefiere!', 'Buick Super Sedan. A??o 1949. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Buick, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 39500, 14, 'Buick/SuperSedan/25-IMG1.jpg', 'Buick/SuperSedan/25-IMG2.jpg', 'Buick/SuperSedan/25-IMG3.jpg', 'Buick/SuperSedan/25-IMG4.jpg', 'Buick/SuperSedan/25-IMG5.jpg'),
(26, 7, 1, 1968, 1788, '1968 Chevrolet en muy buen estado y financiable si se prefiere!', 'Chevrolet Camaro. A??o 1968. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Chevrolet, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 39100, 15, 'Chevrolet/Camaro/26-IMG1.jpg', 'Chevrolet/Camaro/26-IMG2.jpg', 'Chevrolet/Camaro/26-IMG3.jpg', 'Chevrolet/Camaro/26-IMG4.jpg', 'Chevrolet/Camaro/26-IMG5.jpg'),
(27, 1, 1, 1979, 23000, '1979 Chevrolet en muy buen estado y financiable si se prefiere!', 'Chevrolet Camaro. A??o 1979. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Chevrolet, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 28500, 15, 'Chevrolet/Camaro/27-IMG1.jpg', 'Chevrolet/Camaro/27-IMG2.jpg', 'Chevrolet/Camaro/27-IMG3.jpg', 'Chevrolet/Camaro/27-IMG4.jpg', 'Chevrolet/Camaro/27-IMG5.jpg'),
(28, 4, 1, 1964, 109000, '1964 Chevrolet en muy buen estado y financiable si se prefiere!', 'Chevrolet Corvette. A??o 1964. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Chevrolet, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 45200, 16, 'Chevrolet/Corvette/28-IMG1.jpg', 'Chevrolet/Corvette/28-IMG2.jpg', 'Chevrolet/Corvette/28-IMG3.jpg', 'Chevrolet/Corvette/28-IMG4.jpg', 'Chevrolet/Corvette/28-IMG5.jpg'),
(29, 6, 1, 1968, 115800, '1968 Chevrolet en muy buen estado y financiable si se prefiere!', 'Chevrolet Corvette. A??o 1968. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Chevrolet, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 32700, 16, 'Chevrolet/Corvette/29-IMG1.jpg', 'Chevrolet/Corvette/29-IMG2.jpg', 'Chevrolet/Corvette/29-IMG3.jpg', 'Chevrolet/Corvette/29-IMG4.jpg', 'Chevrolet/Corvette/29-IMG5.jpg'),
(30, 5, 1, 1928, 111, '1928 Chevrolet en muy buen estado y financiable si se prefiere!', 'Chevrolet Double Phantom. A??o 1928. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Chevrolet, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 33200, 17, 'Chevrolet/DoublePhantom/30-IMG1.jpg', 'Chevrolet/DoublePhantom/30-IMG2.jpg', 'Chevrolet/DoublePhantom/30-IMG3.jpg', 'Chevrolet/DoublePhantom/30-IMG4.jpg', 'Chevrolet/DoublePhantom/30-IMG5.jpg'),
(31, 5, 1, 1953, 14000, '1953 Citroen en muy buen estado y financiable si se prefiere!', 'Citroen 2CV. A??o 1953. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Citroen, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 13100, 18, 'Citroen/2CV/31-IMG1.jpg', 'Citroen/2CV/31-IMG2.jpg', 'Citroen/2CV/31-IMG3.jpg', 'Citroen/2CV/31-IMG4.jpg', 'Citroen/2CV/31-IMG5.jpg'),
(32, 1, 1, 1977, 58920, '1977 Citroen en muy buen estado y financiable si se prefiere!', 'Citroen 2CV. A??o 1977. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Citroen, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 9630, 18, 'Citroen/2CV/32-IMG1.jpg', 'Citroen/2CV/32-IMG2.jpg', 'Citroen/2CV/32-IMG3.jpg', 'Citroen/2CV/32-IMG4.jpg', 'Citroen/2CV/32-IMG5.jpg'),
(33, 2, 1, 1969, 13, '1969 Citroen en muy buen estado y financiable si se prefiere!', 'Citroen DS Cabrio. A??o 1969. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Citroen, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 105200, 19, 'Citroen/DsCabrio/33-IMG1.jpg', 'Citroen/DsCabrio/33-IMG2.jpg', 'Citroen/DsCabrio/33-IMG3.jpg', 'Citroen/DsCabrio/33-IMG4.jpg', 'Citroen/DsCabrio/33-IMG5.jpg'),
(34, 4, 1, 1949, 59542, '1949 Citroen en muy buen estado y financiable si se prefiere!', 'Citroen Traction. A??o 1949. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Citroen, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 27200, 20, 'Citroen/Traction/34-IMG1.jpg', 'Citroen/Traction/34-IMG2.jpg', 'Citroen/Traction/34-IMG3.jpg', 'Citroen/Traction/34-IMG4.jpg', 'Citroen/Traction/34-IMG5.jpg'),
(35, 5, 1, 1954, 20980, '1954 Citroen en muy buen estado y financiable si se prefiere!', 'Citroen Traction. A??o 1954. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Citroen, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 11000, 20, 'Citroen/Traction/35-IMG1.jpg', 'Citroen/Traction/35-IMG2.jpg', 'Citroen/Traction/35-IMG3.jpg', 'Citroen/Traction/35-IMG4.jpg', 'Citroen/Traction/35-IMG5.jpg'),
(36, 6, 1, 1972, 36200, '1972 De Tomaso en muy buen estado y financiable si se prefiere!', 'De Tomaso Pantera. A??o 1972. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas De Tomaso, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 115095, 21, 'DeTomaso/Pantera/36-IMG1.jpg', 'DeTomaso/Pantera/36-IMG2.jpg', 'DeTomaso/Pantera/36-IMG3.jpg', 'DeTomaso/Pantera/36-IMG4.jpg', 'DeTomaso/Pantera/36-IMG5.jpg'),
(37, 2, 1, 1971, 105200, '1971 De Tomaso en muy buen estado y financiable si se prefiere!', 'De Tomaso Pantera. A??o 1971. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas De Tomaso, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 69800, 21, 'DeTomaso/Pantera/37-IMG1.jpg', 'DeTomaso/Pantera/37-IMG2.jpg', 'DeTomaso/Pantera/37-IMG3.jpg', 'DeTomaso/Pantera/37-IMG4.jpg', 'DeTomaso/Pantera/37-IMG5.jpg'),
(38, 7, 1, 1985, 71132, '1985 De Tomaso en muy buen estado y financiable si se prefiere!', 'De Tomaso Deauville. A??o 1985. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas De Tomaso, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 38600, 22, 'DeTomaso/Deauville/38-IMG1.jpg', 'DeTomaso/Deauville/38-IMG2.jpg', 'DeTomaso/Deauville/38-IMG3.jpg', 'DeTomaso/Deauville/38-IMG4.jpg', 'DeTomaso/Deauville/38-IMG5.jpg'),
(39, 8, 1, 1949, 50000, '1949 Fiat en muy buen estado y financiable si se prefiere!', 'Fiat 500. A??o 1949. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Fiat, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 13200, 23, 'Fiat/500/39-IMG1.jpg', 'Fiat/500/39-IMG2.jpg', 'Fiat/500/39-IMG3.jpg', 'Fiat/500/39-IMG4.jpg', 'Fiat/500/39-IMG5.jpg'),
(40, 9, 1, 1927, 52000, '1927 Fiat en muy buen estado y financiable si se prefiere!', 'Fiat 500. A??o 1927. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Fiat, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 42100, 23, 'Fiat/500/40-IMG1.jpg', 'Fiat/500/40-IMG2.jpg', 'Fiat/500/40-IMG3.jpg', 'Fiat/500/40-IMG4.jpg', 'Fiat/500/40-IMG5.jpg'),
(41, 11, 1, 1960, 42000, '1960 Fiat en muy buen estado y financiable si se prefiere!', 'Fiat Balilla. A??o 1960. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Fiat, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 5500, 24, 'Fiat/Balilla/41-IMG1.jpg', 'Fiat/Balilla/41-IMG2.jpg', 'Fiat/Balilla/41-IMG3.jpg', 'Fiat/Balilla/41-IMG4.jpg', 'Fiat/Balilla/41-IMG5.jpg'),
(42, 7, 1, 1926, 2000, '1926 Fiat en muy buen estado y financiable si se prefiere!', 'Fiat Spider. A??o 1926. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Fiat, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 30000, 25, 'Fiat/Spider/42-IMG1.jpg', 'Fiat/Spider/42-IMG2.jpg', 'Fiat/Spider/42-IMG3.jpg', 'Fiat/Spider/42-IMG4.jpg', 'Fiat/Spider/42-IMG5.jpg'),
(43, 10, 1, 1927, 600, '1927 Fiat en muy buen estado y financiable si se prefiere!', 'Fiat Torpedo. A??o 1927. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Fiat, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 89500, 26, 'Fiat/Torpedo/43-IMG1.jpg', 'Fiat/Torpedo/43-IMG2.jpg', 'Fiat/Torpedo/43-IMG3.jpg', 'Fiat/Torpedo/43-IMG4.jpg', 'Fiat/Torpedo/43-IMG5.jpg'),
(44, 10, 1, 1953, 99000, '1953 Ford en muy buen estado y financiable si se prefiere!', 'Ford F 100. A??o 1953. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Ford, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 31800, 27, 'Ford/F100/44-IMG1.jpg', 'Ford/F100/44-IMG2.jpg', 'Ford/F100/44-IMG3.jpg', 'Ford/F100/44-IMG4.jpg', 'Ford/F100/44-IMG5.jpg'),
(45, 8, 1, 1928, 16000, '1928 Ford en muy buen estado y financiable si se prefiere!', 'Ford T. A??o 1928. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Ford, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 14900, 28, 'Ford/T/45-IMG1.jpg', 'Ford/T/45-IMG2.jpg', 'Ford/T/45-IMG3.jpg', 'Ford/T/45-IMG4.jpg', 'Ford/T/45-IMG5.jpg'),
(46, 9, 1, 1927, 18900, '1927 Ford en muy buen estado y financiable si se prefiere!', 'Ford T. A??o 1927. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Ford, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 21100, 28, 'Ford/T/46-IMG1.jpg', 'Ford/T/46-IMG2.jpg', 'Ford/T/46-IMG3.jpg', 'Ford/T/46-IMG4.jpg', 'Ford/T/46-IMG5.jpg'),
(47, 11, 1, 1926, 99000, '1926 Ford en muy buen estado y financiable si se prefiere!', 'Ford Roadster. A??o 1926. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Ford, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 28000, 29, 'Ford/Roadster/47-IMG1.jpg', 'Ford/Roadster/47-IMG2.jpg', 'Ford/Roadster/47-IMG3.jpg', 'Ford/Roadster/47-IMG4.jpg', 'Ford/Roadster/47-IMG5.jpg'),
(48, 11, 1, 1955, 105000, '1955 Ford en muy buen estado y financiable si se prefiere!', 'Ford Thunderbird. A??o 1955. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Ford, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 48000, 30, 'Ford/Thunderbird/48-IMG1.jpg', 'Ford/Thunderbird/48-IMG2.jpg', 'Ford/Thunderbird/48-IMG3.jpg', 'Ford/Thunderbird/48-IMG4.jpg', 'Ford/Thunderbird/48-IMG5.jpg'),
(49, 8, 1, 1956, 78000, '1956 Ford en muy buen estado y financiable si se prefiere!', 'Ford Thunderbird. A??o 1956. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Ford, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 31400, 30, 'Ford/Thunderbird/49-IMG1.jpg', 'Ford/Thunderbird/49-IMG2.jpg', 'Ford/Thunderbird/49-IMG3.jpg', 'Ford/Thunderbird/49-IMG4.jpg', 'Ford/Thunderbird/49-IMG5.jpg'),
(50, 10, 1, 1962, 12532, '1962 Jaguar en muy buen estado y financiable si se prefiere!', 'Jaguar E-Type. A??o 1962. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Jaguar, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 180000, 31, 'Jaguar/E-Type/50-IMG1.jpg', 'Jaguar/E-Type/50-IMG2.jpg', 'Jaguar/E-Type/50-IMG3.jpg', 'Jaguar/E-Type/50-IMG4.jpg', 'Jaguar/E-Type/50-IMG5.jpg'),
(52, 2, 1, 1960, 81200, '1960 Jaguar en muy buen estado y financiable si se prefiere!', 'Jaguar MKII. A??o 1960. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Jaguar, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 43850, 32, 'Jaguar/MKII/52-IMG1.jpg', 'Jaguar/MKII/52-IMG2.jpg', 'Jaguar/MKII/52-IMG3.jpg', 'Jaguar/MKII/52-IMG4.jpg', 'Jaguar/MKII/52-IMG5.jpg'),
(53, 7, 1, 1961, 18000, '1961 Jaguar en muy buen estado y financiable si se prefiere!', 'Jaguar MKII. A??o 1961. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Jaguar, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 50000, 32, 'Jaguar/MKII/53-IMG1.jpg', 'Jaguar/MKII/53-IMG2.jpg', 'Jaguar/MKII/53-IMG3.jpg', 'Jaguar/MKII/53-IMG4.jpg', 'Jaguar/MKII/53-IMG5.jpg'),
(54, 6, 1, 1950, 24750, '1950 Jaguar en muy buen estado y financiable si se prefiere!', 'Jaguar XK 120. A??o 1950. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Jaguar, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 120000, 33, 'Jaguar/XK120/54-IMG1.jpg', 'Jaguar/XK120/54-IMG2.jpg', 'Jaguar/XK120/54-IMG3.jpg', 'Jaguar/XK120/54-IMG4.jpg', 'Jaguar/XK120/54-IMG5.jpg'),
(63, 2, 1, 1922, 49500, '1922 Almicar en muy buen estado y financiable si se prefiere!', 'Almicar del a??o 1922. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Almicar, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 99800, 34, 'OldTimer/ALMICAR/63-IMG1.jpg', 'OldTimer/ALMICAR/63-IMG2.jpg', 'OldTimer/ALMICAR/63-IMG3.jpg', 'OldTimer/ALMICAR/63-IMG4.jpg', 'OldTimer/ALMICAR/63-IMG5.jpg'),
(64, 11, 1, 1919, 5900, '1919 Chevrolet en muy buen estado y financiable si se prefiere!', 'Chevrolet del a??o 1919. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Chevrolet, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 19900, 35, 'OldTimer/CHEVROLET/64-IMG1.jpg', 'OldTimer/CHEVROLET/64-IMG2.jpg', 'OldTimer/CHEVROLET/64-IMG3.jpg', 'OldTimer/CHEVROLET/64-IMG4.jpg', 'OldTimer/CHEVROLET/64-IMG5.jpg'),
(65, 5, 1, 1921, 1, '1921 Overige en muy buen estado y financiable si se prefiere!', 'Overige del a??o 1921. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Overige, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 42450, 36, 'OldTimer/OVERIGE/65-IMG1.jpg', 'OldTimer/OVERIGE/65-IMG2.jpg', 'OldTimer/OVERIGE/65-IMG3.jpg', 'OldTimer/OVERIGE/65-IMG4.jpg', 'OldTimer/OVERIGE/65-IMG5.jpg'),
(66, 1, 1, 1922, 18, '1922 Tourer en muy buen estado y financiable si se prefiere!', 'Tourier del a??o 1922. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Tourer, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 10200, 37, 'OldTimer/TOURER/66-IMG1.jpg', 'OldTimer/TOURER/66-IMG2.jpg', 'OldTimer/TOURER/66-IMG3.jpg', 'OldTimer/TOURER/66-IMG4.jpg', 'OldTimer/TOURER/66-IMG5.jpg'),
(67, 9, 1, 1927, 54000, '1927 Pontiac en muy buen estado y financiable si se prefiere!', 'Pontiac 6-27 Coupe. A??o 1927. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Pontiac, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 18950, 38, 'Pontiac/6-27Coupe/67-IMG1.jpg', 'Pontiac/6-27Coupe/67-IMG2.jpg', 'Pontiac/6-27Coupe/67-IMG3.jpg', 'Pontiac/6-27Coupe/67-IMG4.jpg', 'Pontiac/6-27Coupe/67-IMG5.jpg'),
(68, 6, 1, 1954, 91800, '1954 Pontiac en muy buen estado y financiable si se prefiere!', 'Pontiac Catalina. A??o 1954. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Pontiac, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 29700, 39, 'Pontiac/Catalina/68-IMG1.jpg', 'Pontiac/Catalina/68-IMG2.jpg', 'Pontiac/Catalina/68-IMG3.jpg', 'Pontiac/Catalina/68-IMG4.jpg', 'Pontiac/Catalina/68-IMG5.jpg'),
(69, 1, 1, 1971, 160145, '1971 Pontiac en muy buen estado y financiable si se prefiere!', 'Pontiac Firebird. A??o 1971. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Pontiac, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 52200, 40, 'Pontiac/Firebird/69-IMG1.jpg', 'Pontiac/Firebird/69-IMG2.jpg', 'Pontiac/Firebird/69-IMG3.jpg', 'Pontiac/Firebird/69-IMG4.jpg', 'Pontiac/Firebird/69-IMG5.jpg'),
(70, 8, 1, 1965, 160930, '1965 Pontiac en muy buen estado y financiable si se prefiere!', 'Pontiac GTO. A??o 1965. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Pontiac, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 62300, 41, 'Pontiac/GTO/70-IMG1.jpg', 'Pontiac/GTO/70-IMG2.jpg', 'Pontiac/GTO/70-IMG3.jpg', 'Pontiac/GTO/70-IMG4.jpg', 'Pontiac/GTO/70-IMG5.jpg'),
(71, 5, 1, 1969, 21650, '1969 Pontiac en muy buen estado y financiable si se prefiere!', 'Pontiac GTO. A??o 1969. Fabricado en USA. Se trata de una de las versiones m??s apreciadas de Pontiac, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 39950, 41, 'Pontiac/GTO/71-IMG1.jpg', 'Pontiac/GTO/71-IMG2.jpg', 'Pontiac/GTO/71-IMG3.jpg', 'Pontiac/GTO/71-IMG4.jpg', 'Pontiac/GTO/71-IMG5.jpg'),
(72, 11, 1, 1933, 111102, '1933 Rolls-Royce en muy buen estado y financiable si se prefiere!', 'Rolls-Royce Freestone. A??o 1933. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Rolls-Royce, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 158000, 42, 'RollsRoyce/Freestone/72-IMG1.jpg', 'RollsRoyce/Freestone/72-IMG2.jpg', 'RollsRoyce/Freestone/72-IMG3.jpg', 'RollsRoyce/Freestone/72-IMG4.jpg', 'RollsRoyce/Freestone/72-IMG5.jpg'),
(73, 11, 1, 1929, 10236, '1929 Rolls-Royce en muy buen estado y financiable si se prefiere!', 'Rolls-Royce Phantom II. A??o 1929. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Rolls-Royce, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 280000, 43, 'RollsRoyce/PhantomII/73-IMG1.jpg', 'RollsRoyce/PhantomII/73-IMG2.jpg', 'RollsRoyce/PhantomII/73-IMG3.jpg', 'RollsRoyce/PhantomII/73-IMG4.jpg', 'RollsRoyce/PhantomII/73-IMG5.jpg'),
(74, 7, 1, 1934, 88888, '1934 Rolls-Royce en muy buen estado y financiable si se prefiere!', 'Rolls-Royce Phantom II. A??o 1934. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Rolls-Royce, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 200000, 43, 'RollsRoyce/PhantomII/74-IMG1.jpg', 'RollsRoyce/PhantomII/74-IMG2.jpg', 'RollsRoyce/PhantomII/74-IMG3.jpg', 'RollsRoyce/PhantomII/74-IMG4.jpg', 'RollsRoyce/PhantomII/74-IMG5.jpg'),
(75, 11, 1, 1952, 35210, '1952 Rolls-Royce en muy buen estado y financiable si se prefiere!', 'Rolls-Royce Silver. A??o 1952. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Rolls-Royce, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 102000, 44, 'RollsRoyce/Silver/75-IMG1.jpg', 'RollsRoyce/Silver/75-IMG2.jpg', 'RollsRoyce/Silver/75-IMG3.jpg', 'RollsRoyce/Silver/75-IMG4.jpg', 'RollsRoyce/Silver/75-IMG5.jpg'),
(76, 10, 1, 1954, 99320, '1954 Rolls-Royce en muy buen estado y financiable si se prefiere!', 'Rolls Royce Silver. A??o 1954. Fabricado en Europa. Se trata de una de las versiones m??s apreciadas de Rolls-Royce, esta unidad en concreto se encuentra en muy buen estado de conservaci??n. Combustible gasolina. Un cl??sico con merecida reputaci??n de fiabilidad y est??tica entra??able.', 79000, 44, 'RollsRoyce/Silver/76-IMG1.jpg', 'RollsRoyce/Silver/76-IMG2.jpg', 'RollsRoyce/Silver/76-IMG3.jpg', 'RollsRoyce/Silver/76-IMG4.jpg', 'RollsRoyce/Silver/76-IMG5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 1, 'Juan Martinez G??mez', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'C/Ayala', 'Malaga', '+34645-456-789', 'Particular', 'juan@gmail.com', '[]'),
(2, 1, 'SportCar Dealer', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'High Avenue', 'Swansea', '+4407708525185', 'Concesionario', 'sportCar@gmail.com', '[]'),
(4, 1, 'Vinsaloon Car', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', '5th Avenue', 'New York', '+01867989989', 'Concesionario', 'vinsaloon@hotmail.us\r\n', '[]'),
(5, 1, 'Mar??a Hern??ndez ??laba', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Av. De la Luz', 'Madrid', '+34615-456-759', 'Particular', 'maria@gmail.es', '[]'),
(6, 1, 'Michael Smith', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Stra??e Stratchoon ', 'Berlin', '+30958-526-562', 'Particular', 'Michael@gmail.com', '[]'),
(7, 1, 'Esteban G??mez Pastor', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Plz. Alhama de la Sierra', 'Granada', '+34952-25-25-68', 'Particular', 'esteban@hotmail.com', '[]'),
(8, 1, 'Luque Martin Gon', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Plz.Mayor', 'La Gomera', '+34-654-789-213', 'Particular', 'luque@hotmail.com', '[]'),
(9, 1, 'Pilar Urrutia Mar??n', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'C/Cuesta', 'Lisboa', '+351984252587', 'Particular', 'pilar@hotmail.com', '[]'),
(10, 1, 'Sunny Car', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Road Benson', 'Swansea', '+4407078253321', 'Concesionario', 'sunny@gmail.com', '[]'),
(11, 1, 'Vintage Car', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Chausse de Ninove', 'Bruges', '+3244433344422', 'Concesionario', 'vintage@gmail.com', '[]'),
(104, 1, 'Admin Jose', '$argon2id$v=19$m=65536,t=4,p=1$hFF7+ArupDaL4EiqhMOL8A$0BMsu0T0iat7pGDChoxCEzkyu6SZ9MAxrcj8RgTw21w', 'Urbanizacion C/ Villalva 24', 'Malaga', '+34653326598', 'Particular', 'jose@gmail.com', '[\"ROLE_ADMIN\"]');

-- --------------------------------------------------------

--
-- Table structure for table `users_cars`
--

CREATE TABLE `users_cars` (
  `users_id` int(11) NOT NULL,
  `cars_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_cars`
--

INSERT INTO `users_cars` (`users_id`, `cars_id`) VALUES
(1, 64),
(10, 63),
(10, 65),
(11, 19),
(104, 63),
(104, 65);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cars_brands` (`model_id`),
  ADD KEY `cars_users` (`user_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `models_brands` (`brand_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_cars`
--
ALTER TABLE `users_cars`
  ADD PRIMARY KEY (`users_id`,`cars_id`),
  ADD KEY `IDX_5A4E531A67B3B43D` (`users_id`),
  ADD KEY `IDX_5A4E531A8702F506` (`cars_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `FK_95C71D147975B7E7` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cars_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `models_brands` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_cars`
--
ALTER TABLE `users_cars`
  ADD CONSTRAINT `FK_5A4E531A67B3B43D` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5A4E531A8702F506` FOREIGN KEY (`cars_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
