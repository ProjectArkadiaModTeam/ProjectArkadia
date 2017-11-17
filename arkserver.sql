-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2017 at 02:19 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arkserver`
--

-- --------------------------------------------------------

--
-- Table structure for table `ark_players`
--

CREATE TABLE IF NOT EXISTS `ark_players` (
  `p_id` int(10) unsigned NOT NULL,
  `p_steam64` varchar(64) CHARACTER SET utf8 NOT NULL,
  `p_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `p_stats` varchar(20) CHARACTER SET utf8 NOT NULL,
  `p_equipment` text CHARACTER SET utf8 NOT NULL,
  `p_experience` int(10) unsigned NOT NULL,
  `p_joindate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `p_lastactive` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `p_lastloc` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ark_players`
--
ALTER TABLE `ark_players`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ark_players`
--
ALTER TABLE `ark_players`
  MODIFY `p_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
