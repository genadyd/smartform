-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2019 at 05:39 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

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
(17, '5e5e462a75a582069df534874448bac2', 'ghfgfhgf', 'fghgfhf', 'de8b40913c1db0f79622378dc3873fbc', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-08-01 11:55:07', '2019-08-01 08:55:07'),
(48, '2c7335aff7bb0015f8cbad678898b743', 'cvbvcb', 'vcbvcb', '2dbca101f268783ef8180cb9986f4583', '0e90198fc5e41b196f4d9c24676641ea', '990ef01be4505b75130b8da00307b51b', '2019-08-04 12:41:54', '2019-08-04 09:41:54'),
(49, '7b6a9f6e4021e851ce38c9e5bbcd3c73', 'cvbcv', 'cvbvcb', '2dbca101f268783ef8180cb9986f4583', '0e90198fc5e41b196f4d9c24676641ea', '990ef01be4505b75130b8da00307b51b', '2019-08-04 12:41:54', '2019-08-04 09:41:54'),
(50, '143e48aa36ca2a8ffb5e435d4f4bf7d5', 'fdgfdgfd', 'fdgfd', '1c3d7869ceb541f29e2acaec5db15a30', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-08-08 14:43:16', '2019-08-08 11:43:16'),
(51, '914ab33c3d7895dc88337c7ed498a5c8', 'dfgdfg', 'fdgfdg', '1c3d7869ceb541f29e2acaec5db15a30', '2b9b2117f92603f5627d2b29b42b0f29', '990ef01be4505b75130b8da00307b51b', '2019-08-08 14:43:16', '2019-08-08 11:43:16');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `crypt`, `form_name`, `type`, `CT`, `UT`) VALUES
(1, '2b9b2117f92603f5627d2b29b42b0f29', 'xvcx5', 0, '2019-07-02 15:32:31', '2019-07-29 10:45:54'),
(4, '0e90198fc5e41b196f4d9c24676641ea', 'cxvcvx', 0, '2019-08-04 11:36:03', '2019-08-04 08:36:03');

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
  `questions_order` int(5) NOT NULL,
  `CT` datetime NOT NULL,
  `UT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_crypt` (`form_crypt`,`answer_crypt`),
  UNIQUE KEY `crypt` (`crypt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `crypt`, `value`, `form_crypt`, `answer_crypt`, `questions_order`, `CT`, `UT`) VALUES
(1, '108a05dc9ebfc6c834ddf9981fd4fa75', 'quest 1', '2b9b2117f92603f5627d2b29b42b0f29', '0', 1, '2019-07-15 14:13:14', '2019-07-15 11:13:14'),
(5, 'd3d1335b3d663ea4f8de61b24aef8c66', 'fghgfhfg', '2b9b2117f92603f5627d2b29b42b0f29', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', 2, '2019-08-01 11:54:23', '2019-08-01 08:54:23'),
(6, 'de8b40913c1db0f79622378dc3873fbc', 'tytryrty', '2b9b2117f92603f5627d2b29b42b0f29', 'e9906ae63ee6ba9cb5ec5ec60d226a91', 3, '2019-08-01 11:55:07', '2019-08-01 08:55:07'),
(7, '1c3d7869ceb541f29e2acaec5db15a30', 'cxvxcvcxvcx', '2b9b2117f92603f5627d2b29b42b0f29', '1a0f65dce700386d9631f4a668bdad55', 4, '2019-08-08 14:43:16', '2019-08-08 11:43:16');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `simple_forms`
--

INSERT INTO `simple_forms` (`id`, `crypt`, `title`, `smart_form_crypt`, `up`, `form_order`, `CT`, `UT`) VALUES
(5, '97423d7208e209a95e19afdbe595c785', 'simple form', '2b9b2117f92603f5627d2b29b42b0f29', 1, 1, '2019-07-18 14:02:59', '2019-08-04 07:35:00'),
(30, 'a9e1a8cfacb3e189b78a7376279f561f', '1213213123', '2b9b2117f92603f5627d2b29b42b0f29', 0, 4, '2019-08-01 14:03:05', '2019-08-04 07:35:00'),
(36, '80fdcb072007c0c0ce85bf782cfe7d9b', 'gvhgfhgf', '2b9b2117f92603f5627d2b29b42b0f29', 0, 5, '2019-08-01 14:21:07', '2019-08-04 07:35:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=160 ;

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
(121, '3a0bd83eb0d2c5d102770502cb36d4f9', 'a9e1a8cfacb3e189b78a7376279f561f', 'email', 'fgfdg', 'fgdfg', 'dfgfd', '2019-08-01 14:03:05', '2019-08-04 07:34:59'),
(127, '46fbf7a4033f17b31cd2e886dfe6e95c', '80fdcb072007c0c0ce85bf782cfe7d9b', 'email', 'ghghgfh', 'ghfgh', '', '2019-08-01 14:21:07', '2019-08-04 07:11:04'),
(156, 'e982a553e41c1d2c19ca863fd960beec', '7cd5b4bde30ce4dead88fa95c3952e1c', 'name', 'gfhghgf', 'hgfh', '', '2019-08-04 11:54:12', '2019-08-04 08:54:12'),
(157, '6ea37c4080c631fd1cafa6f429b40dfd', '7cd5b4bde30ce4dead88fa95c3952e1c', 'phone', 'fghgfh', 'gfhg', '', '2019-08-04 11:54:12', '2019-08-04 08:54:12');

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_session` (`simple_form_crypt`,`user_session_crypt`,`element_crypt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `simple_form_user_saved_data`
--

INSERT INTO `simple_form_user_saved_data` (`id`, `smart_form_crypt`, `simple_form_crypt`, `element_crypt`, `saved_value`, `user_session_crypt`, `CT`, `UT`) VALUES
(1, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'גנאדי 2', '7d7edf276808e59a69942521706f4781', '2019-08-08 14:05:48', '2019-08-08 11:06:37'),
(2, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '0547889098', '7d7edf276808e59a69942521706f4781', '2019-08-08 14:05:48', '2019-08-08 11:06:37'),
(5, '2b9b2117f92603f5627d2b29b42b0f29', '42fe07bb6900f513c7ec00c145a2d59c', 'ac4bf448472055596a8f4a6b9fcf41f3', 'טסט 1', '7d7edf276808e59a69942521706f4781', '2019-08-08 14:07:07', '2019-08-08 11:07:07'),
(6, '2b9b2117f92603f5627d2b29b42b0f29', '42fe07bb6900f513c7ec00c145a2d59c', '1a4b016392d05f4af508b3490f467c79', 'טסט 2', '7d7edf276808e59a69942521706f4781', '2019-08-08 14:07:07', '2019-08-08 11:07:07'),
(7, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'Genady', '983cd942035b12afa8588a0feecba398', '2019-08-08 15:06:33', '2019-08-08 12:06:33'),
(8, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '0547668908', '983cd942035b12afa8588a0feecba398', '2019-08-08 15:06:33', '2019-08-08 12:06:33'),
(9, '2b9b2117f92603f5627d2b29b42b0f29', '42fe07bb6900f513c7ec00c145a2d59c', 'ac4bf448472055596a8f4a6b9fcf41f3', 'sdfdsdsf', '983cd942035b12afa8588a0feecba398', '2019-08-08 15:06:41', '2019-08-08 12:06:41'),
(10, '2b9b2117f92603f5627d2b29b42b0f29', '42fe07bb6900f513c7ec00c145a2d59c', '1a4b016392d05f4af508b3490f467c79', 'sdfdfsdf', '983cd942035b12afa8588a0feecba398', '2019-08-08 15:06:41', '2019-08-08 12:06:41'),
(11, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'gfhggfh', 'cdce210dea7d43719d149399e163c08d', '2019-08-08 15:16:01', '2019-08-08 12:16:01'),
(12, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '78678678', 'cdce210dea7d43719d149399e163c08d', '2019-08-08 15:16:01', '2019-08-08 12:16:01'),
(13, '2b9b2117f92603f5627d2b29b42b0f29', '42fe07bb6900f513c7ec00c145a2d59c', 'ac4bf448472055596a8f4a6b9fcf41f3', '678876', 'cdce210dea7d43719d149399e163c08d', '2019-08-08 15:16:08', '2019-08-08 12:16:08'),
(14, '2b9b2117f92603f5627d2b29b42b0f29', '42fe07bb6900f513c7ec00c145a2d59c', '1a4b016392d05f4af508b3490f467c79', '76876876', 'cdce210dea7d43719d149399e163c08d', '2019-08-08 15:16:08', '2019-08-08 12:16:08'),
(15, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'fdggfdg', '70769086078e9559c81684f86f6e5d37', '2019-08-08 15:18:21', '2019-08-08 12:18:21'),
(16, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '54654654', '70769086078e9559c81684f86f6e5d37', '2019-08-08 15:18:21', '2019-08-08 12:18:21'),
(17, '2b9b2117f92603f5627d2b29b42b0f29', '42fe07bb6900f513c7ec00c145a2d59c', 'ac4bf448472055596a8f4a6b9fcf41f3', '546546', '70769086078e9559c81684f86f6e5d37', '2019-08-08 15:18:27', '2019-08-08 12:18:27'),
(18, '2b9b2117f92603f5627d2b29b42b0f29', '42fe07bb6900f513c7ec00c145a2d59c', '1a4b016392d05f4af508b3490f467c79', '456546645', '70769086078e9559c81684f86f6e5d37', '2019-08-08 15:18:27', '2019-08-08 12:18:27'),
(19, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'fdgfdg', 'a6bec9347253cd73f3e4d6e653ca69e9', '2019-08-08 15:22:36', '2019-08-08 12:22:36'),
(20, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '54665456546', 'a6bec9347253cd73f3e4d6e653ca69e9', '2019-08-08 15:22:36', '2019-08-08 12:22:36'),
(21, '2b9b2117f92603f5627d2b29b42b0f29', '42fe07bb6900f513c7ec00c145a2d59c', 'ac4bf448472055596a8f4a6b9fcf41f3', '546546', 'a6bec9347253cd73f3e4d6e653ca69e9', '2019-08-08 15:22:43', '2019-08-08 12:22:43'),
(22, '2b9b2117f92603f5627d2b29b42b0f29', '42fe07bb6900f513c7ec00c145a2d59c', '1a4b016392d05f4af508b3490f467c79', 'erttertre', 'a6bec9347253cd73f3e4d6e653ca69e9', '2019-08-08 15:22:43', '2019-08-08 12:22:43'),
(23, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'hgjhg', '01ddaaaeeebc3b4536f22306b5aee626', '2019-08-08 15:24:57', '2019-08-08 12:24:57'),
(24, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '54645654', '01ddaaaeeebc3b4536f22306b5aee626', '2019-08-08 15:24:57', '2019-08-08 12:24:57'),
(25, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'reter', '332df8e6d8d76c441709e021e69277a7', '2019-08-08 15:26:46', '2019-08-08 12:26:46'),
(26, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '45334543', '332df8e6d8d76c441709e021e69277a7', '2019-08-08 15:26:46', '2019-08-08 12:26:46'),
(27, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'fdgdfgdf', '0b49a17fbba35ebf5a8e965f83fd3553', '2019-08-08 15:28:09', '2019-08-08 12:28:09'),
(28, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '7876887768', '0b49a17fbba35ebf5a8e965f83fd3553', '2019-08-08 15:28:09', '2019-08-08 12:28:09'),
(29, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'fghgf', 'e8fd9d30503f5dea571c34d73c849e6b', '2019-08-08 15:33:05', '2019-08-08 12:33:05'),
(30, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '54645645', 'e8fd9d30503f5dea571c34d73c849e6b', '2019-08-08 15:33:05', '2019-08-08 12:33:05'),
(31, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'dfdsfdsf', 'a1ad4ba27bc8f216dfa63ed2855f0cda', '2019-08-08 15:35:50', '2019-08-08 12:35:50'),
(32, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '4543543', 'a1ad4ba27bc8f216dfa63ed2855f0cda', '2019-08-08 15:35:50', '2019-08-08 12:35:50'),
(33, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'xcvfxcvv', 'fe14a74f261061855982375faaab4638', '2019-08-08 15:37:40', '2019-08-08 12:37:40'),
(34, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '54643', 'fe14a74f261061855982375faaab4638', '2019-08-08 15:37:40', '2019-08-08 12:37:40'),
(35, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'fgfddf', 'ae639229928d87428cbe9128a7fd8bee', '2019-08-08 15:42:42', '2019-08-08 12:42:42'),
(36, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '5466545654', 'ae639229928d87428cbe9128a7fd8bee', '2019-08-08 15:42:42', '2019-08-08 12:42:42'),
(37, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'fdgdfgfdg', '33f880c8305118c9af337cda37eb28d7', '2019-08-08 15:43:30', '2019-08-08 12:43:30'),
(38, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '43535435', '33f880c8305118c9af337cda37eb28d7', '2019-08-08 15:43:30', '2019-08-08 12:43:30'),
(39, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'fdgdf', 'f7eb6656d136fcc10c2723e8431bab13', '2019-08-08 15:57:18', '2019-08-08 12:57:18'),
(40, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '5645645', 'f7eb6656d136fcc10c2723e8431bab13', '2019-08-08 15:57:18', '2019-08-08 12:57:18'),
(41, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'de6f02d7b45148dc7ace01f9f2adcd84', 'ghgfhgf', 'cf998d5ed0572f513089f07dd0a20fba', '2019-08-08 15:58:28', '2019-08-08 12:58:28'),
(42, '2b9b2117f92603f5627d2b29b42b0f29', '97423d7208e209a95e19afdbe595c785', 'c5d440fab31bfc4411b2d967f135f52d', '5466456456', 'cf998d5ed0572f513089f07dd0a20fba', '2019-08-08 15:58:28', '2019-08-08 12:58:28');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `smart_form_users`
--

INSERT INTO `smart_form_users` (`id`, `user_crypt`, `user_phone`, `CT`, `UT`) VALUES
(1, 'e57a5362324ac149b823c7d1ca2d1d68', '0547668908', '2019-08-08 10:58:02', '2019-08-08 13:58:02'),
(2, 'bcc2bb308288a4411dd50c2f854e5611', '0547668909', '2019-08-08 10:59:03', '2019-08-08 13:59:03'),
(4, '942b0a3f98cdec78081bafd4a8977233', '0547889098', '2019-08-08 11:06:37', '2019-08-08 14:06:37'),
(6, '65be60e70fe932600d8bc3d60b25fecb', '78678678', '2019-08-08 12:16:01', '2019-08-08 15:16:01'),
(7, 'd45c56d93bb4a34a0041733722237b70', '54654654', '2019-08-08 12:18:21', '2019-08-08 15:18:21'),
(8, 'b923b4d1fd2b59e446c5794ae4072b10', '54665456546', '2019-08-08 12:22:36', '2019-08-08 15:22:36'),
(9, 'b1eff1f944d5a86a45d7e23b3e00382f', '54645654', '2019-08-08 12:24:57', '2019-08-08 15:24:57'),
(10, 'bfaa26b90d5ad10522913f19ba1b92cb', '45334543', '2019-08-08 12:26:45', '2019-08-08 15:26:45'),
(11, '3a382ffc43b1f44adcb21b56118b5707', '7876887768', '2019-08-08 12:28:09', '2019-08-08 15:28:09'),
(12, 'f2ad454aad7acd65c59ef7d8710b4dc5', '54645645', '2019-08-08 12:33:04', '2019-08-08 15:33:04'),
(13, 'bf9471ec86526d1fcd8ed44df71517e1', '4543543', '2019-08-08 12:35:50', '2019-08-08 15:35:50'),
(14, '3b3454742def3f41702067b3de8a5af5', '54643', '2019-08-08 12:37:40', '2019-08-08 15:37:40'),
(15, 'ac3b662780845676c3f90b78d7512968', '5466545654', '2019-08-08 12:42:42', '2019-08-08 15:42:42'),
(16, '1c7d20a92de5e634123fcdcb54fc0f35', '43535435', '2019-08-08 12:43:30', '2019-08-08 15:43:30'),
(17, '80d00c83c0af69835b4015904710acbc', '5645645', '2019-08-08 12:57:18', '2019-08-08 15:57:18'),
(18, '3953c5d5afd410a82df57835d137ae26', '5466456456', '2019-08-08 12:58:28', '2019-08-08 15:58:28');

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `wnswer_uniq` (`form_crypt`,`question_crypt`,`session_crypt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `smart_user_answers`
--

INSERT INTO `smart_user_answers` (`id`, `crypt`, `form_crypt`, `question_crypt`, `answer_crypt`, `session_crypt`, `CT`) VALUES
(1, '37d8eed26d5ca95973dd3f374158f23c', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', 'e9906ae63ee6ba9cb5ec5ec60d226a91', '7d7edf276808e59a69942521706f4781', '2019-08-08 11:07:30'),
(6, 'b7ae3939c017b77371fe0d35363f75dd', '2b9b2117f92603f5627d2b29b42b0f29', 'de8b40913c1db0f79622378dc3873fbc', '1a0f65dce700386d9631f4a668bdad55', '7d7edf276808e59a69942521706f4781', '2019-08-08 11:23:12'),
(7, '7730e7013bb246e92d6fb2616fb1d082', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', '983cd942035b12afa8588a0feecba398', '2019-08-08 12:06:48'),
(8, 'c7692b64d755167e06ff5ce78b48e8fa', '2b9b2117f92603f5627d2b29b42b0f29', 'd3d1335b3d663ea4f8de61b24aef8c66', '6778e92185ad8a6fe612eb095982ee13', '983cd942035b12afa8588a0feecba398', '2019-08-08 12:07:12'),
(9, '2d04b3ef5d19c4b7a278d0482b70b3f3', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', 'e9906ae63ee6ba9cb5ec5ec60d226a91', 'cdce210dea7d43719d149399e163c08d', '2019-08-08 12:16:14'),
(10, 'e313aef483ed2704a70ca3e8368db6f1', '2b9b2117f92603f5627d2b29b42b0f29', 'de8b40913c1db0f79622378dc3873fbc', 'b6ab3a88b8f76f54e603d14a1436354b', 'cdce210dea7d43719d149399e163c08d', '2019-08-08 12:16:17'),
(11, '69f8c780a8730207e9925a25f69520e7', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', '70769086078e9559c81684f86f6e5d37', '2019-08-08 12:18:33'),
(12, 'e68f5bdb51e8da2d374018c62e5b1f6d', '2b9b2117f92603f5627d2b29b42b0f29', 'd3d1335b3d663ea4f8de61b24aef8c66', 'bec75d85ff0b512ccf1af8233805ceea', '70769086078e9559c81684f86f6e5d37', '2019-08-08 12:18:41'),
(13, '03dcf7c52374130b65db399cf39be77d', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', 'a6bec9347253cd73f3e4d6e653ca69e9', '2019-08-08 12:22:48'),
(14, '656149709ae9423ec6a43ea2efca5a07', '2b9b2117f92603f5627d2b29b42b0f29', 'd3d1335b3d663ea4f8de61b24aef8c66', '1f43a9f1bdb5a5a03ab3853a9590eb80', 'a6bec9347253cd73f3e4d6e653ca69e9', '2019-08-08 12:22:51'),
(15, '41277b6334af05f205bf4cf5b064db44', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '6f3b979437c10e46fffe625cf382d475', '01ddaaaeeebc3b4536f22306b5aee626', '2019-08-08 12:25:03'),
(16, 'cee7f6036ee01bf06ced2085a112b747', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '6f3b979437c10e46fffe625cf382d475', '332df8e6d8d76c441709e021e69277a7', '2019-08-08 12:26:52'),
(17, '32288aa964bf5490132d9a08cbc99e7d', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '6f3b979437c10e46fffe625cf382d475', '0b49a17fbba35ebf5a8e965f83fd3553', '2019-08-08 12:28:12'),
(18, '5504da6f331b2edd40c8073a07e242ac', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '6f3b979437c10e46fffe625cf382d475', 'e8fd9d30503f5dea571c34d73c849e6b', '2019-08-08 12:33:10'),
(19, 'a787044e32e19c33bfac639fe7fd5af8', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '6f3b979437c10e46fffe625cf382d475', 'a1ad4ba27bc8f216dfa63ed2855f0cda', '2019-08-08 12:36:02'),
(20, '6e3484937fccbd43d47aa7d41c62dbcb', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '6f3b979437c10e46fffe625cf382d475', 'fe14a74f261061855982375faaab4638', '2019-08-08 12:37:45'),
(21, 'e1000cf9fb1cf583efaa54397c6127d8', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '6f3b979437c10e46fffe625cf382d475', 'ae639229928d87428cbe9128a7fd8bee', '2019-08-08 12:42:48'),
(22, '49a5254a58b416e13f0b5b118eaad92e', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '6f3b979437c10e46fffe625cf382d475', '33f880c8305118c9af337cda37eb28d7', '2019-08-08 12:43:35'),
(23, 'c14c796049142546b708fca1943b9e67', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '6f3b979437c10e46fffe625cf382d475', 'f7eb6656d136fcc10c2723e8431bab13', '2019-08-08 12:57:25'),
(24, '94da9a6b20379d14a98352cbd901d773', '2b9b2117f92603f5627d2b29b42b0f29', '108a05dc9ebfc6c834ddf9981fd4fa75', '6f3b979437c10e46fffe625cf382d475', 'cf998d5ed0572f513089f07dd0a20fba', '2019-08-08 12:58:33'),
(25, 'dd4b6a22ccff7c604ba7b99af15a74d5', '108a05dc9ebfc6c834ddf9981fd4fa75', '108a05dc9ebfc6c834ddf9981fd4fa75', '12ff1a2cc4b1b7d4ee12bf6f28de4a01', 'cf998d5ed0572f513089f07dd0a20fba', '2019-08-08 12:58:48');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users_sessions`
--

INSERT INTO `users_sessions` (`id`, `session_cript`, `user_crypt`, `session_end`, `session_order`, `CT`) VALUES
(1, '4b723cd212f24aab413b063391f7e5cc', 'e57a5362324ac149b823c7d1ca2d1d68', 0, 1, '2019-08-08 10:58:02'),
(2, '7d7edf276808e59a69942521706f4781', 'e57a5362324ac149b823c7d1ca2d1d68', 0, 1, '2019-08-08 11:05:48'),
(3, '983cd942035b12afa8588a0feecba398', 'e57a5362324ac149b823c7d1ca2d1d68', 0, 1, '2019-08-08 12:06:33'),
(4, 'cdce210dea7d43719d149399e163c08d', '65be60e70fe932600d8bc3d60b25fecb', 0, 1, '2019-08-08 12:16:01'),
(5, '70769086078e9559c81684f86f6e5d37', 'd45c56d93bb4a34a0041733722237b70', 0, 1, '2019-08-08 12:18:21'),
(6, 'a6bec9347253cd73f3e4d6e653ca69e9', 'b923b4d1fd2b59e446c5794ae4072b10', 0, 1, '2019-08-08 12:22:36'),
(7, '01ddaaaeeebc3b4536f22306b5aee626', 'b1eff1f944d5a86a45d7e23b3e00382f', 0, 1, '2019-08-08 12:24:57'),
(8, '332df8e6d8d76c441709e021e69277a7', 'bfaa26b90d5ad10522913f19ba1b92cb', 0, 1, '2019-08-08 12:26:45'),
(9, '0b49a17fbba35ebf5a8e965f83fd3553', '3a382ffc43b1f44adcb21b56118b5707', 0, 1, '2019-08-08 12:28:09'),
(10, 'e8fd9d30503f5dea571c34d73c849e6b', 'f2ad454aad7acd65c59ef7d8710b4dc5', 0, 1, '2019-08-08 12:33:04'),
(11, 'a1ad4ba27bc8f216dfa63ed2855f0cda', 'bf9471ec86526d1fcd8ed44df71517e1', 0, 1, '2019-08-08 12:35:50'),
(12, 'fe14a74f261061855982375faaab4638', '3b3454742def3f41702067b3de8a5af5', 0, 1, '2019-08-08 12:37:40'),
(13, 'ae639229928d87428cbe9128a7fd8bee', 'ac3b662780845676c3f90b78d7512968', 0, 1, '2019-08-08 12:42:42'),
(14, '33f880c8305118c9af337cda37eb28d7', '1c7d20a92de5e634123fcdcb54fc0f35', 0, 1, '2019-08-08 12:43:30'),
(15, 'f7eb6656d136fcc10c2723e8431bab13', '80d00c83c0af69835b4015904710acbc', 0, 1, '2019-08-08 12:57:18'),
(16, 'cf998d5ed0572f513089f07dd0a20fba', '3953c5d5afd410a82df57835d137ae26', 0, 1, '2019-08-08 12:58:28');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
