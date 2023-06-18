-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2023 at 12:38 PM
-- Server version: 8.0.30
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuetemplate`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

DROP TABLE IF EXISTS `tbl_services`;
CREATE TABLE IF NOT EXISTS `tbl_services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) NOT NULL DEFAULT '0.00',
  `details` text,
  `sicon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `title`, `price`, `details`, `sicon`) VALUES(1, 'Creative Design', 199.00, 'Stet lorem dolor diam amet vero eos. No stet est diam amet diam ipsum. Clita dolor duo clita sit sed sit dolor eos.', '<i class=\"fa fa-crop-alt fa-2x text-dark\"></i>');
INSERT INTO `tbl_services` (`id`, `title`, `price`, `details`, `sicon`) VALUES(2, 'Graphic Design', 299.00, 'Stet lorem dolor diam amet vero eos. No stet est diam amet diam ipsum. Clita dolor duo clita sit sed sit dolor eos.', '<i class=\"fa fa-code-branch fa-2x text-dark\"></i>');
INSERT INTO `tbl_services` (`id`, `title`, `price`, `details`, `sicon`) VALUES(3, 'Web Design', 399.00, 'Stet lorem dolor diam amet vero eos. No stet est diam amet diam ipsum. Clita dolor duo clita sit sed sit dolor eos.', '<i class=\"fa fa-code fa-2x text-dark\"></i>');
INSERT INTO `tbl_services` (`id`, `title`, `price`, `details`, `sicon`) VALUES(4, 'UI/UX Design', 199.00, 'Stet lorem dolor diam amet vero eos. No stet est diam amet diam ipsum. Clita dolor duo clita sit sed sit dolor eos.', '<i class=\"fa fa-laptop-code fa-2x text-dark\"></i>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text,
  `entrydate` date NOT NULL DEFAULT '1970-01-01',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `entrydate`) VALUES(1, 'Korim', 'karim@gmail.com', '01487563847', 'Dhaka, Bangladesh', '2023-01-01');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `entrydate`) VALUES(2, 'Al-amin', 'alamin@gmail.com', '0181354646', 'Rajshahi,Bangladesh', '2023-04-12');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
