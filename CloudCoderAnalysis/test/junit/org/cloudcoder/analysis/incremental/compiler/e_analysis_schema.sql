-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 07, 2013 at 06:05 PM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cloudcoderdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `e_lines`
--

CREATE TABLE `e_lines` (
  `line_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `text` varchar(10000) NOT NULL,
  `compiled` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`line_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11145 ;

-- --------------------------------------------------------

--
-- Table structure for table `e_linestochanges`
--

CREATE TABLE `e_linestochanges` (
  `line_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_linestoerrors`
--

CREATE TABLE `e_linestoerrors` (
  `line_id` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `startLine` bigint(20) NOT NULL,
  `startColumn` bigint(20) NOT NULL,
  `endLine` bigint(20) NOT NULL,
  `endColumn` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_status`
--

CREATE TABLE `e_status` (
  `user_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `last_line` int(11) NOT NULL,
  `done` tinyint(4) NOT NULL DEFAULT '0',
  `in_progress` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
