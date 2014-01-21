-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 21, 2014 at 08:35 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jquery_chat`
--
CREATE DATABASE IF NOT EXISTS `jquery_chat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jquery_chat`;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(144) NOT NULL,
  `message` varchar(144) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `username`, `message`, `dateAdded`) VALUES
(1, 'Guest', 'hjdghj', '0000-00-00 00:00:00'),
(2, 'Guest', 'gjghj', '0000-00-00 00:00:00'),
(3, 'Guest', 'rhgfg', '0000-00-00 00:00:00'),
(4, 'Guest', 'vxbm', '0000-00-00 00:00:00'),
(5, 'Guest', 'guest', '0000-00-00 00:00:00'),
(6, 'riz', 'gold', '0000-00-00 00:00:00'),
(7, 'Guest', 'j', '0000-00-00 00:00:00'),
(8, 'Guest', 'h', '0000-00-00 00:00:00'),
(9, 'Guest', 'hello', '0000-00-00 00:00:00'),
(10, 'riz', 'sup', '0000-00-00 00:00:00'),
(11, 'bot', 'savage', '0000-00-00 00:00:00'),
(12, 'riz', 'hmm', '0000-00-00 00:00:00'),
(13, 'Guest', 'lol', '0000-00-00 00:00:00'),
(14, 'test', 'what the', '0000-00-00 00:00:00'),
(15, 'this', 'fubar', '0000-00-00 00:00:00'),
(16, 'Guest', 'v', '0000-00-00 00:00:00'),
(17, 'j', 'j', '0000-00-00 00:00:00'),
(18, 'test', 'test', '0000-00-00 00:00:00'),
(19, 'k', 'k', '0000-00-00 00:00:00'),
(20, 'Guest', '', '0000-00-00 00:00:00'),
(21, 'Guest', 'this is he story', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
