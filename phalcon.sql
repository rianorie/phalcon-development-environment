-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 26, 2015 at 10:57 AM
-- Server version: 5.6.27-0ubuntu1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phalcon`
--

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

DROP TABLE `parts`;

CREATE TABLE `parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `robot_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `robot_id` (`robot_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `robot_id`, `name`, `created_on`) VALUES
(1, 1, 'Square head', '2015-11-26 10:56:23'),
(2, 2, 'Round head', '2015-11-26 10:56:23'),
(3, 3, 'Left arm', '2015-11-26 10:56:49'),
(4, 3, 'Right arm', '2015-11-26 10:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `robot`
--

DROP TABLE `robot`;

CREATE TABLE `robot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `robot`
--

INSERT INTO `robot` (`id`, `name`, `created_on`) VALUES
(1, 'Johnny 5', '2015-11-26 10:55:38'),
(2, 'R2D2', '2015-11-26 10:55:38'),
(3, 'C3P0', '2015-11-26 10:55:48');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parts`
--
ALTER TABLE `parts`
  ADD CONSTRAINT `fk_robot_id` FOREIGN KEY (`robot_id`) REFERENCES `robot` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
