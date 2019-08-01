-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2019 at 05:42 PM
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
  `element_crypt` varchar(100) NOT NULL,
  `CT` datetime NOT NULL,
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crypt` (`crypt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `crypt`, `tytle`, `value`, `question_crypt`, `form_crypt`, `element_crypt`, `CT`, `UT`) VALUES
(1, '12ff1a2cc4b1b7d4ee12bf6f28de4a01', 'answer1', 'ans1', '108a05dc9ebfc6c834ddf9981fd4fa75', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-07-15 14:13:14', '2019-07-15 11:13:14'),
(2, 'e9906ae63ee6ba9cb5ec5ec60d226a91', 'answer2', 'ans2', '108a05dc9ebfc6c834ddf9981fd4fa75', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-07-15 14:13:14', '2019-07-15 11:13:14'),
(3, '6f3b979437c10e46fffe625cf382d475', 'answer3', 'ans3', '108a05dc9ebfc6c834ddf9981fd4fa75', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-07-15 14:13:14', '2019-07-15 11:13:14'),
(12, 'bec75d85ff0b512ccf1af8233805ceea', 'ghgfhf', 'fghfgh', 'd3d1335b3d663ea4f8de61b24aef8c66', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-08-01 11:54:23', '2019-08-01 08:54:23'),
(13, '1f43a9f1bdb5a5a03ab3853a9590eb80', 'fghfgh', 'fghfgh', 'd3d1335b3d663ea4f8de61b24aef8c66', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-08-01 11:54:23', '2019-08-01 08:54:23'),
(14, '6778e92185ad8a6fe612eb095982ee13', 'fghfghfg', 'fghfghgf', 'd3d1335b3d663ea4f8de61b24aef8c66', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-08-01 11:54:23', '2019-08-01 08:54:23'),
(15, '1a0f65dce700386d9631f4a668bdad55', 'tytrfyg', 'gfhgfh', 'de8b40913c1db0f79622378dc3873fbc', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-08-01 11:55:07', '2019-08-01 08:55:07'),
(16, 'b6ab3a88b8f76f54e603d14a1436354b', 'gfhfgh', 'fghfgh', 'de8b40913c1db0f79622378dc3873fbc', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-08-01 11:55:07', '2019-08-01 08:55:07'),
(17, '5e5e462a75a582069df534874448bac2', 'ghfgfhgf', 'fghgfhf', 'de8b40913c1db0f79622378dc3873fbc', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-08-01 11:55:07', '2019-08-01 08:55:07');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `crypt`, `form_name`, `type`, `CT`, `UT`) VALUES
(1, '2b9b2117f92603f5627d2b29b42b0f29', 'xvcx5', 0, '2019-07-02 15:32:31', '2019-07-29 10:45:54');

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
  UNIQUE KEY `form_crypt` (`form_crypt`,`answer_crypt`),
  UNIQUE KEY `crypt` (`crypt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `crypt`, `value`, `form_crypt`, `answer_crypt`, `CT`, `UT`) VALUES
(1, '108a05dc9ebfc6c834ddf9981fd4fa75', 'quest 1', '2b9b2117f92603f5627d2b29b42b0f29', '0', '2019-07-15 14:13:14', '2019-07-15 11:13:14'),
(5, 'd3d1335b3d663ea4f8de61b24aef8c66', 'fghgfhfg', '2b9b2117f92603f5627d2b29b42b0f29', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', '2019-08-01 11:54:23', '2019-08-01 08:54:23'),
(6, 'de8b40913c1db0f79622378dc3873fbc', 'tytryrty', '2b9b2117f92603f5627d2b29b42b0f29', 'e9906ae63ee6ba9cb5ec5ec60d226a91', '2019-08-01 11:55:07', '2019-08-01 08:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `simple_forms`
--

CREATE TABLE IF NOT EXISTS `simple_forms` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `crypt` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `smart_form_crypt` varchar(50) NOT NULL,
  `up` tinyint(1) NOT NULL DEFAULT '1',
  `form_order` int(5) NOT NULL,
  `CT` datetime NOT NULL,
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crypt` (`crypt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `simple_forms`
--

INSERT INTO `simple_forms` (`id`, `crypt`, `title`, `smart_form_crypt`, `up`, `form_order`, `CT`, `UT`) VALUES
(5, '97423d7208e209a95e19afdbe595c785', 'simple form', '2b9b2117f92603f5627d2b29b42b0f29', 1, 1, '2019-07-18 14:02:59', '2019-08-01 11:27:23'),
(30, 'a9e1a8cfacb3e189b78a7376279f561f', 'gffdgfd', '2b9b2117f92603f5627d2b29b42b0f29', 1, 2, '2019-08-01 14:03:05', '2019-08-01 11:49:02'),
(36, '80fdcb072007c0c0ce85bf782cfe7d9b', 'gvhgfhgf', '2b9b2117f92603f5627d2b29b42b0f29', 0, 3, '2019-08-01 14:21:07', '2019-08-01 11:27:23'),
(37, '2ce74c000748ed6189c8145d8216721c', 'ghfhgf', '2b9b2117f92603f5627d2b29b42b0f29', 0, 4, '2019-08-01 14:21:36', '2019-08-01 11:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `simple_forms_elements`
--

CREATE TABLE IF NOT EXISTS `simple_forms_elements` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `crypt` varchar(50) NOT NULL,
  `form_crypt` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `placeholder` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `CT` datetime NOT NULL,
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crypt` (`crypt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- Dumping data for table `simple_forms_elements`
--

INSERT INTO `simple_forms_elements` (`id`, `crypt`, `form_crypt`, `type`, `title`, `placeholder`, `value`, `CT`, `UT`) VALUES
(75, 'de6f02d7b45148dc7ace01f9f2adcd84', '97423d7208e209a95e19afdbe595c785', 'name', 'שם', 'שם', 'name', '2019-07-18 14:03:00', '2019-07-18 11:03:00'),
(76, 'c5d440fab31bfc4411b2d967f135f52d', '97423d7208e209a95e19afdbe595c785', 'phone', 'טל.', 'טל', 'phone num', '2019-07-18 14:03:00', '2019-07-18 11:03:00'),
(77, '98148b69c29b3986a21771ab65575b4a', 'ff1e38404cbacf4c0f6615a02e00ce58', 'email', 'email 1', 'email1', '', '2019-07-30 13:53:21', '2019-07-30 10:53:21'),
(78, 'aa1cc42946043681c86a88a3e62c12c5', 'ff1e38404cbacf4c0f6615a02e00ce58', 'email', 'email 2', 'email 2', '', '2019-07-30 13:53:21', '2019-07-30 10:53:21'),
(81, '475f4f98c95b4326cf5fd93bcdf83f26', '2c0126811735f2e7879f846daaa3aade', 'email', 'dfsdsfds', 'dsfsdfsd', 'sdfsdf', '2019-07-30 14:09:52', '2019-07-30 11:09:52'),
(82, '49c48d3530bb781014dab3688d997eaf', '2c0126811735f2e7879f846daaa3aade', 'email', 'dsfsdfs', 'sdfsdfds', 'sdfsdfds', '2019-07-30 14:09:52', '2019-07-30 11:09:52'),
(83, '44e03950624bfe3c58d3bbcc86415b5b', '9e7d50c1a61dffc2833109e4ec70628d', 'name', 'rtert', 'retret', '', '2019-07-30 14:19:56', '2019-07-30 11:19:56'),
(84, '4be214e2bf81e5aa2b9edc50cca0cbe0', '783d87a2f36da620c25cb580b9645490', 'email', 'bvcvb', 'vcbcb', 'vcbbcv', '2019-07-30 14:21:03', '2019-07-30 11:21:03'),
(87, 'ab29cc7744fb4a1e6ee52dbe2fc6e716', '0d7a144a8a9d12ad48769d891d571f83', 'email', 'fdggfd', 'dfgfdf', 'fdggfd', '2019-07-30 18:01:10', '2019-07-30 15:01:10'),
(88, '7fce4d4503b6896e3f36445dfade06a2', 'bd8aa7f5e06632bcfb2919cda5e681c5', 'email', 'ghffh', 'fghf', 'gfhgfh', '2019-07-30 18:03:36', '2019-07-30 15:03:36'),
(95, 'c2e43235cea2f7c0560a37f1239448da', '017ec84f305f6d0aa939deca27a0806a', 'name', 'dfsdf', 'sdfdsf', 'sdfdfs', '2019-07-31 12:52:15', '2019-07-31 09:52:15'),
(121, '3a0bd83eb0d2c5d102770502cb36d4f9', 'a9e1a8cfacb3e189b78a7376279f561f', 'email', 'fgfdg', 'fgdfg', 'dfgfd', '2019-08-01 14:03:05', '2019-08-01 11:49:02'),
(127, '46fbf7a4033f17b31cd2e886dfe6e95c', '80fdcb072007c0c0ce85bf782cfe7d9b', 'email', 'ghghgfh', 'ghfgh', '', '2019-08-01 14:21:07', '2019-08-01 11:21:07'),
(128, '480617c556f3305eb9b1e7ad5367891b', '2ce74c000748ed6189c8145d8216721c', 'email', 'gfhgfh', 'fghgf', 'fghgf', '2019-08-01 14:21:36', '2019-08-01 11:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `simple_form_user_saved_data`
--

CREATE TABLE IF NOT EXISTS `simple_form_user_saved_data` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `smart_form_crypt` varchar(50) NOT NULL,
  `simple_form_crypt` varchar(50) NOT NULL,
  `element_crypt` varchar(50) NOT NULL,
  `saved_value` varchar(100) NOT NULL,
  `user_session_crypt` varchar(50) NOT NULL,
  `CT` datetime NOT NULL,
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `simple_form_user_saved_data`
--

INSERT INTO `simple_form_user_saved_data` (`id`, `smart_form_crypt`, `simple_form_crypt`, `element_crypt`, `saved_value`, `user_session_crypt`, `CT`, `UT`) VALUES
(1, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'Genady', 'a5463c6ebfd81d3f8c93849145d2c7a4', '2019-07-31 12:41:44', '2019-07-31 09:41:44'),
(2, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '0547668908', 'a5463c6ebfd81d3f8c93849145d2c7a4', '2019-07-31 12:41:44', '2019-07-31 09:41:44'),
(3, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'Genady', 'fd2626dfa116d95b4e62552a8cc7d276', '2019-07-31 12:55:57', '2019-07-31 09:55:57'),
(4, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '0547668908', 'fd2626dfa116d95b4e62552a8cc7d276', '2019-07-31 12:55:57', '2019-07-31 09:55:57'),
(5, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'ghgf', 'd35c440df739631bd00c1d1218c7a075', '2019-07-31 13:16:37', '2019-07-31 10:16:37'),
(6, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '0547668908', 'd35c440df739631bd00c1d1218c7a075', '2019-07-31 13:16:37', '2019-07-31 10:16:37'),
(7, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'ghgf', '646779c7617ae9ba6f6ab84ca0835728', '2019-07-31 13:23:39', '2019-07-31 10:23:39'),
(8, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '87778786', '646779c7617ae9ba6f6ab84ca0835728', '2019-07-31 13:23:39', '2019-07-31 10:23:39'),
(9, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'fgfdgfd', 'fb61ea6b0a69464bfee63af21bafd034', '2019-07-31 13:26:15', '2019-07-31 10:26:15'),
(10, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '90980809', 'fb61ea6b0a69464bfee63af21bafd034', '2019-07-31 13:26:15', '2019-07-31 10:26:15'),
(11, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'gfhgfh', '6b17049d7e10919965b229c7aba794ea', '2019-07-31 13:29:16', '2019-07-31 10:29:16'),
(12, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '6677657', '6b17049d7e10919965b229c7aba794ea', '2019-07-31 13:29:16', '2019-07-31 10:29:16'),
(13, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'gfgfdg', 'a2b5fdbd6ee27880577c60af5bc18338', '2019-07-31 13:31:20', '2019-07-31 10:31:20'),
(14, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '5464646', 'a2b5fdbd6ee27880577c60af5bc18338', '2019-07-31 13:31:20', '2019-07-31 10:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `smart_form_users`
--

CREATE TABLE IF NOT EXISTS `smart_form_users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_crypt` varchar(50) NOT NULL,
  `user_phone` varchar(30) NOT NULL,
  `CT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UT` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_crypt` (`user_crypt`),
  UNIQUE KEY `user_phone` (`user_phone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `smart_form_users`
--

INSERT INTO `smart_form_users` (`id`, `user_crypt`, `user_phone`, `CT`, `UT`) VALUES
(1, '56f2f52438203d02fcc54280b20bbfca', '0547668908', '2019-07-30 10:49:02', '2019-07-30 13:49:02'),
(2, '302a67241d7197bd5c5e547273a77293', '43534543', '2019-07-30 11:19:34', '2019-07-30 14:19:34'),
(3, '6230b1e566b71ba29a5bf403eb914abb', '5464564565', '2019-07-30 15:13:05', '2019-07-30 18:13:05'),
(9, '563898e6e221b0bf94437ef793d59215', '87778786', '2019-07-31 10:23:39', '2019-07-31 13:23:39'),
(10, 'db0190e6232adb1a8a430fd532be2fb8', '90980809', '2019-07-31 10:26:15', '2019-07-31 13:26:15'),
(11, '10f78bf363eb96aaa550bacee6094d84', '6677657', '2019-07-31 10:29:16', '2019-07-31 13:29:16'),
(12, 'cb4f93bbb3714b001c4cdd5b04dc3a57', '5464646', '2019-07-31 10:31:20', '2019-07-31 13:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `smart_user_answers`
--

CREATE TABLE IF NOT EXISTS `smart_user_answers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `crypt` varchar(60) NOT NULL,
  `form_crypt` varchar(60) NOT NULL,
  `question_crypt` varchar(60) NOT NULL,
  `answer_crypt` varchar(60) NOT NULL,
  `session_crypt` varchar(50) NOT NULL,
  `CT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `smart_user_answers`
--

INSERT INTO `smart_user_answers` (`id`, `crypt`, `form_crypt`, `question_crypt`, `answer_crypt`, `session_crypt`, `CT`) VALUES
(1, '748baafda3fb655acf6896fa8f0c8923', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', '9dc198ddf19487b85298b88530781ba5', '2019-07-30 10:49:54'),
(2, '405fa872821f245b49f28c4e50a2b9df', '2b9b2117f92603f5627d2b29b42b0f29', 'e385c46bb0fd82733a8f21eb36adbf7e', '84bd876c537083f8f2af346f9ebbdfa3', '9dc198ddf19487b85298b88530781ba5', '2019-07-30 10:49:54'),
(3, 'edcf7eb441b2188b11a7531c21f1331b', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', '2964ea97404cf19110da3a32bcddbaef', '2019-07-30 15:13:32'),
(4, 'b63f8ab3f94a8576808524f6c9bd06ad', '2b9b2117f92603f5627d2b29b42b0f29', 'e385c46bb0fd82733a8f21eb36adbf7e', 'fca78a63473b92db4d0c7cd39a40f432', '2964ea97404cf19110da3a32bcddbaef', '2019-07-30 15:13:32'),
(5, '7ee7513b68d819519dce1d2f3606db27', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', '7d4cf404832f1a85ce100e83c15c70c7', '2019-07-31 06:00:12'),
(6, '656d4d725b2d7909986613b625a2ccf2', '2b9b2117f92603f5627d2b29b42b0f29', 'e385c46bb0fd82733a8f21eb36adbf7e', 'fca78a63473b92db4d0c7cd39a40f432', '7d4cf404832f1a85ce100e83c15c70c7', '2019-07-31 06:00:12'),
(7, '5ebaca67ab6d4f4ecfe57184484533e5', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', 'e54b1b562cfd737a99a78632dea35558', '2019-07-31 09:31:01'),
(8, 'f61f59d61156aa7ed8adbb01426f0dd3', '2b9b2117f92603f5627d2b29b42b0f29', 'e385c46bb0fd82733a8f21eb36adbf7e', '84bd876c537083f8f2af346f9ebbdfa3', 'e54b1b562cfd737a99a78632dea35558', '2019-07-31 09:31:01'),
(9, 'e34edab96bfa6ad74d34f1d3cce4324c', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', 'fd2626dfa116d95b4e62552a8cc7d276', '2019-07-31 09:56:28'),
(10, 'be9a4735dd1c3cdadbc1047193c47bab', '2b9b2117f92603f5627d2b29b42b0f29', 'e385c46bb0fd82733a8f21eb36adbf7e', '84bd876c537083f8f2af346f9ebbdfa3', 'fd2626dfa116d95b4e62552a8cc7d276', '2019-07-31 09:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `users_sessions`
--

CREATE TABLE IF NOT EXISTS `users_sessions` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `session_cript` varchar(50) NOT NULL,
  `user_crypt` varchar(50) NOT NULL,
  `session_end` tinyint(1) NOT NULL DEFAULT '0',
  `session_order` int(10) NOT NULL,
  `CT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_cript` (`session_cript`,`user_crypt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users_sessions`
--

INSERT INTO `users_sessions` (`id`, `session_cript`, `user_crypt`, `session_end`, `session_order`, `CT`) VALUES
(1, 'a5463c6ebfd81d3f8c93849145d2c7a4', '56f2f52438203d02fcc54280b20bbfca', 0, 1, '2019-07-31 09:41:44'),
(2, 'fd2626dfa116d95b4e62552a8cc7d276', '56f2f52438203d02fcc54280b20bbfca', 0, 1, '2019-07-31 09:55:57'),
(3, 'd35c440df739631bd00c1d1218c7a075', '56f2f52438203d02fcc54280b20bbfca', 0, 1, '2019-07-31 10:16:36'),
(4, '646779c7617ae9ba6f6ab84ca0835728', '563898e6e221b0bf94437ef793d59215', 0, 1, '2019-07-31 10:23:39'),
(5, 'fb61ea6b0a69464bfee63af21bafd034', 'db0190e6232adb1a8a430fd532be2fb8', 0, 1, '2019-07-31 10:26:15'),
(6, '6b17049d7e10919965b229c7aba794ea', '10f78bf363eb96aaa550bacee6094d84', 0, 1, '2019-07-31 10:29:16'),
(7, 'a2b5fdbd6ee27880577c60af5bc18338', 'cb4f93bbb3714b001c4cdd5b04dc3a57', 0, 1, '2019-07-31 10:31:20');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
