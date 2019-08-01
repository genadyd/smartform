-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2019 at 02:35 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smart_forms`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `crypt` varchar(64) NOT NULL,
  `value` varchar(100) NOT NULL,
  `question_crypt` varchar(100) NOT NULL,
  `form_crypt` varchar(100) NOT NULL,
  `CT` datetime NOT NULL,
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE IF NOT EXISTS `elements` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `crypt` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `element_title` varchar(100) NOT NULL,
  `element_description` text NOT NULL,
  `CT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `crypt`, `type`, `element_title`, `element_description`, `CT`, `UT`) VALUES
(1, 'deba965862921ca71b0bd1905f0dd04f', 'checkbox', 'checkbox', 'checkbox input', '0000-00-00 00:00:00', '2018-12-19 08:09:45'),
(2, '990ef01be4505b75130b8da00307b51b', 'radio', 'radio', 'radio_input', '0000-00-00 00:00:00', '2018-12-19 08:09:45'),
(3, '14d74ff0f146bfe1d23a09d19f21dd63', 'text', 'text', 'text_input', '0000-00-00 00:00:00', '2018-12-19 08:09:45'),
(4, '80871326a182dd076f43443d0bb113de', 'year', 'year', 'year input', '0000-00-00 00:00:00', '2018-12-19 16:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `crypt` varchar(64) NOT NULL,
  `form_name` varchar(100) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `CT` datetime NOT NULL,
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `crypt`, `form_name`, `type`, `CT`, `UT`) VALUES
(1, '2b9b2117f92603f5627d2b29b42b0f29', 'cvcxvcxvcx', 0, '2019-07-02 15:32:31', '2019-07-02 12:32:31'),
(2, 'df2fd14895edaa2f79148e28c2313a67', 'fdg335533fdgfdg', 0, '2019-07-02 15:33:24', '2019-07-03 15:05:16'),
(3, '153b5944aa92422d2017026d54b8739d', 'ראקראק243', 0, '2019-07-02 16:50:29', '2019-07-03 15:35:26'),
(4, 'c6648debb2ef38ddbba13948bcfc87a2', 'sdfd ssdf', 0, '2019-07-02 17:10:18', '2019-07-04 08:23:21'),
(5, '09b02786965b9d9b42621f18af79909b', '2xvcxv', 0, '2019-07-02 17:11:30', '2019-07-03 15:35:05'),
(6, '65c76e89b641399fb80b412b8ea1b21b', ' 11444411vcxv', 0, '2019-07-02 17:13:44', '2019-07-03 15:28:45'),
(7, 'c69007bee642195d7b6c3478a64b1d22', 'cxvxcvcx', 0, '2019-07-02 18:10:36', '2019-07-02 15:10:36'),
(8, '822fcd1c5bedede6a5cfe3511506d02b', 'מנצמנצמנצ', 0, '2019-07-02 19:07:24', '2019-07-02 16:07:24'),
(9, '99b485eb071bdb925aa80e201e847cf0', 'נמצנצמ', 0, '2019-07-02 19:09:25', '2019-07-02 16:09:25'),
(10, '2afae8d57e069619aa75f2afde983d7c', 'ddddd', 0, '2019-07-03 11:26:46', '2019-07-03 08:26:46'),
(11, '2fd853af4ab455bf040c55d8b0804d66', 'ddddd333', 0, '2019-07-03 11:27:56', '2019-07-03 09:22:54'),
(12, 'b0f8546db8e077a3901d7791dee49417', 'bnmbnnn', 0, '2019-07-03 11:37:06', '2019-07-03 08:37:06'),
(13, 'b41ebd290c6567cce1b13101df9e5454', 'new1', 0, '2019-07-03 18:35:33', '2019-07-03 15:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `forms_elements`
--

CREATE TABLE IF NOT EXISTS `forms_elements` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `form_crypt` varchar(50) NOT NULL,
  `element_crypt` varchar(50) NOT NULL,
  `element_question` text NOT NULL,
  `CT` datetime NOT NULL,
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `crypt` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  `form_crypt` varchar(100) NOT NULL,
  `answer_crypt` varchar(100) NOT NULL DEFAULT '0',
  `CT` datetime NOT NULL,
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `crypt`, `value`, `form_crypt`, `answer_crypt`, `CT`, `UT`) VALUES
(1, '46894529d771bb1896e5759a42ad405d', ' vbvcbvc', 'c6648debb2ef38ddbba13948bcfc87a2', '0', '2019-07-04 12:04:56', '2019-07-04 09:04:56'),
(2, '0f04ae46b7dc96e8747733b52d2e3f01', 'fdgdfgfdg', '09b02786965b9d9b42621f18af79909b', '0', '2019-07-04 12:09:35', '2019-07-04 09:09:35'),
(3, '13ab9c6af7b373ebb1a11bfde7f71aac', 'gfhg', 'c6648debb2ef38ddbba13948bcfc87a2', '0', '2019-07-04 12:11:35', '2019-07-04 09:11:35'),
(4, 'c069c4d2270007734b90bae1bb757b4c', 'gfhgf', '153b5944aa92422d2017026d54b8739d', '0', '2019-07-04 12:13:39', '2019-07-04 09:13:39'),
(5, '2a1c31d52f2f6a6d89278b900a3749cd', 'bvnbb', 'c6648debb2ef38ddbba13948bcfc87a2', '0', '2019-07-04 14:14:04', '2019-07-04 11:14:04'),
(6, 'd47b3c121100d6a24ce9dfb4f9285ab8', 'xcvxcvcxv', '09b02786965b9d9b42621f18af79909b', '0', '2019-07-04 14:31:30', '2019-07-04 11:31:30'),
(7, '187bd2e3b1121130f6d008c9e5deb600', 'xzczxcxz', 'c6648debb2ef38ddbba13948bcfc87a2', '0', '2019-07-04 14:32:38', '2019-07-04 11:32:38');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
