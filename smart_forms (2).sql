-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2019 at 06:02 PM
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
  `tytle` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `question_crypt` varchar(100) NOT NULL,
  `form_crypt` varchar(100) NOT NULL,
  `CT` datetime NOT NULL,
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `crypt`, `tytle`, `value`, `question_crypt`, `form_crypt`, `CT`, `UT`) VALUES
(5, 'ca7eb4eaa7821da464c04a07d4f50b1f', 'nmbm', 'bmnbm', 'ec703deb347ad7403a4be196d6ca9cfe', '09b02786965b9d9b42621f18af79909b', '2019-07-07 16:06:25', '2019-07-07 13:06:25'),
(6, 'bc3a0f9548b9d034cc1e2262d95442a5', 'nbmbnm', 'nbmmbnm', 'ec703deb347ad7403a4be196d6ca9cfe', '09b02786965b9d9b42621f18af79909b', '2019-07-07 16:06:25', '2019-07-07 13:06:25'),
(7, 'edd9db04b7eb20a839f30666bf4b4843', 'vbnb', 'bvnbvn', 'b37500eae229a44bbcf985050cb78bf2', 'c6648debb2ef38ddbba13948bcfc87a2', '2019-07-07 16:08:27', '2019-07-07 13:08:27'),
(8, 'a72ac3e5f4690c18e4779416172ad7b5', 'vnbvnbv', 'bvnbvnb', 'b37500eae229a44bbcf985050cb78bf2', 'c6648debb2ef38ddbba13948bcfc87a2', '2019-07-07 16:08:27', '2019-07-07 13:08:27'),
(9, '4fe469c7e61b1140b88dd6ed27673786', 'vbnbvnn', 'bvnbvn', '369641f786bf6876defd6c809f4ec090', 'c69007bee642195d7b6c3478a64b1d22', '2019-07-07 16:10:17', '2019-07-07 13:10:17');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `crypt`, `form_name`, `type`, `CT`, `UT`) VALUES
(1, '2b9b2117f92603f5627d2b29b42b0f29', 'cvcxvcxvcx', 0, '2019-07-02 15:32:31', '2019-07-02 12:32:31'),
(2, 'df2fd14895edaa2f79148e28c2313a67', 'fdg335533fdgfdg', 0, '2019-07-02 15:33:24', '2019-07-03 15:05:16'),
(3, '153b5944aa92422d2017026d54b8739d', 'ראקראק243333', 0, '2019-07-02 16:50:29', '2019-07-04 11:37:26'),
(4, 'c6648debb2ef38ddbba13948bcfc87a2', ' ssdf222', 0, '2019-07-02 17:10:18', '2019-07-07 10:14:50'),
(5, '09b02786965b9d9b42621f18af79909b', '2xvcxv', 0, '2019-07-02 17:11:30', '2019-07-03 15:35:05'),
(6, '65c76e89b641399fb80b412b8ea1b21b', ' 11444411vcxv', 0, '2019-07-02 17:13:44', '2019-07-03 15:28:45'),
(7, 'c69007bee642195d7b6c3478a64b1d22', 'cxvxcvcx', 0, '2019-07-02 18:10:36', '2019-07-02 15:10:36'),
(8, '822fcd1c5bedede6a5cfe3511506d02b', 'מנצמנצמנצ', 0, '2019-07-02 19:07:24', '2019-07-02 16:07:24'),
(9, '99b485eb071bdb925aa80e201e847cf0', 'נמצנצמ', 0, '2019-07-02 19:09:25', '2019-07-02 16:09:25'),
(10, '2afae8d57e069619aa75f2afde983d7c', 'ddddd', 0, '2019-07-03 11:26:46', '2019-07-03 08:26:46'),
(11, '2fd853af4ab455bf040c55d8b0804d66', 'ddddd333', 0, '2019-07-03 11:27:56', '2019-07-03 09:22:54'),
(12, 'b0f8546db8e077a3901d7791dee49417', 'bnmbnnn', 0, '2019-07-03 11:37:06', '2019-07-03 08:37:06'),
(13, 'b41ebd290c6567cce1b13101df9e5454', 'new1', 0, '2019-07-03 18:35:33', '2019-07-03 15:35:42'),
(14, '343a6f97dfbe07c252fdfdbd18ae26f9', '', 0, '2019-07-07 16:08:03', '2019-07-07 13:08:03');

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_crypt` (`form_crypt`,`answer_crypt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `crypt`, `value`, `form_crypt`, `answer_crypt`, `CT`, `UT`) VALUES
(5, 'ec703deb347ad7403a4be196d6ca9cfe', 'mnbnmbn', '09b02786965b9d9b42621f18af79909b', '0', '2019-07-07 16:06:25', '2019-07-07 13:06:25'),
(6, 'b37500eae229a44bbcf985050cb78bf2', 'bnmbm', 'c6648debb2ef38ddbba13948bcfc87a2', '0', '2019-07-07 16:08:27', '2019-07-07 13:08:27'),
(7, '369641f786bf6876defd6c809f4ec090', 'bnbvnv', 'c69007bee642195d7b6c3478a64b1d22', '0', '2019-07-07 16:10:17', '2019-07-07 13:10:17'),
(8, '7ad8b856fa229cd7a9c7a3b0a5364201', 'rrrrrr', 'df2fd14895edaa2f79148e28c2313a67', '0', '2019-07-07 16:11:36', '2019-07-07 13:11:36'),
(9, '3a4fa5c4168bf463871060fa87969e36', 'vcbbvcbvc', 'b41ebd290c6567cce1b13101df9e5454', '0', '2019-07-07 16:40:38', '2019-07-07 13:40:38');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
