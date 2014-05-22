-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 22, 2014 at 06:20 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thegardrobe`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(30) NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`) VALUES
(1, 'Levis'),
(2, 'LeeCooper'),
(3, 'Levis'),
(4, 'LeeCooper'),
(5, 'Tommy'),
(6, 'Nike'),
(7, 'Addidas'),
(8, 'Polo'),
(9, 'Ralph');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'spor'),
(2, 'gece');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `comment_date` int(11) NOT NULL,
  `hanger_id` bigint(20) NOT NULL,
  `comment` varchar(400) NOT NULL,
  `commented_user_id` int(11) NOT NULL,
  UNIQUE KEY `comment_id` (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=172 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `comment_date`, `hanger_id`, `comment`, `commented_user_id`) VALUES
(1, 4, 2147483647, 1, 'deneme 123', 5),
(2, 5, 2147483647, 2, 'denemeeeee dadaasafasf ', 4),
(3, 4, 2147483647, 1, 'dada asdfas a das da sa sad', 5),
(4, 17, 2147483647, 1, 'asdfasfagadsgs sadgsg sg gsadg', 4),
(5, 4, 2147483647, 4, 'asdasgads asfa  fas af as fa', 22),
(6, 5, 1400354197, 1, ' ooo çok güzel olmuş mis vallaha :)', 4),
(8, 17, 1400354376, 1, ' ooo çok güzel olmuş mis vallaha :)', 4),
(9, 17, 1400354378, 1, ' ooo çok güzel olmuş mis vallaha :)', 4),
(10, 4, 1400529209, 1, 'süper', 5),
(11, 4, 1400566036, 1, 'asdf', 5),
(12, 4, 1400566136, 1, 'denem', 5),
(13, 4, 1400566164, 3, 'asdfasdf', 4),
(14, 0, 1400566445, 0, '', 0),
(15, 1, 4, 0, '1400566531', 4),
(16, 1, 4, 0, '1400566727', 2),
(17, 1, 4, 3, '1400566789', 2),
(18, 1, 4, 3, '1400570015', 2),
(19, 1, 4, 3, '1400570020', 2),
(20, 1, 4, 3, '1400570258', 0),
(21, 1, 4, 3, '1400570407', 0),
(22, 1, 4, 3, '1400570477', 0),
(23, 1, 4, 3, '1400570502', 5),
(24, 4, 1400570803, 1, 'asdf', 5),
(25, 4, 1400570816, 1, 'asdf', 5),
(26, 4, 1400570822, 1, '123412341234', 5),
(27, 1, 4, 3, '1400570859', 5),
(28, 1, 4, 3, '1400570886', 5),
(29, 1, 4, 3, '1400570947', 5),
(30, 1, 4, 3, '1400571066', 5),
(31, 1, 4, 3, '1400571191', 5),
(32, 1, 4, 3, '1400571615', 5),
(33, 1, 4, 3, '1400571667', 5),
(34, 1, 4, 3, '1400571669', 5),
(35, 1, 4, 3, '1400571669', 5),
(36, 1, 4, 3, '1400571670', 5),
(37, 1, 4, 3, '1400571670', 5),
(38, 1, 4, 3, '1400571670', 5),
(39, 1, 4, 3, '1400571795', 5),
(40, 1, 4, 3, '1400571797', 5),
(41, 1, 4, 3, '1400571798', 5),
(42, 1, 4, 3, '1400571799', 5),
(43, 1, 4, 3, '1400571799', 5),
(44, 1, 4, 3, '1400571799', 5),
(45, 1, 4, 3, '1400571799', 5),
(46, 1, 4, 3, '1400571799', 5),
(47, 1, 4, 3, '1400571799', 5),
(48, 1, 4, 3, '1400571800', 5),
(49, 1, 4, 3, '1400571800', 5),
(50, 1, 4, 3, '1400571800', 5),
(51, 1, 4, 3, '1400571800', 5),
(52, 1, 4, 3, '1400571800', 5),
(53, 1, 4, 3, '1400571800', 5),
(54, 1, 4, 3, '1400571800', 5),
(55, 1, 4, 3, '1400571801', 5),
(56, 1, 4, 3, '1400571801', 5),
(57, 1, 4, 3, '1400571801', 5),
(58, 1, 4, 3, '1400571801', 5),
(59, 1, 4, 3, '1400571801', 5),
(60, 1, 4, 3, '1400571801', 5),
(61, 1, 4, 3, '1400571802', 5),
(62, 1, 4, 3, '1400571802', 5),
(63, 1, 4, 3, '1400571802', 5),
(64, 1, 4, 3, '1400571804', 5),
(65, 1, 4, 3, '1400571941', 5),
(66, 1, 4, 3, '1400571943', 5),
(67, 2, 4, 3, '1400571944', 4),
(68, 3, 4, 3, '1400571946', 4),
(69, 3, 4, 3, '1400571946', 4),
(70, 3, 4, 3, '1400571947', 4),
(71, 3, 4, 3, '1400571947', 4),
(72, 3, 4, 3, '1400571947', 4),
(73, 3, 4, 3, '1400571947', 4),
(74, 3, 4, 3, '1400571947', 4),
(75, 3, 4, 3, '1400571947', 4),
(76, 3, 4, 3, '1400571948', 4),
(77, 1, 4, 3, '1400571972', 5),
(78, 1, 4, 3, '1400571975', 5),
(79, 1, 4, 3, '1400571975', 5),
(80, 1, 4, 3, '1400571975', 5),
(81, 1, 4, 3, '1400571976', 5),
(82, 1, 4, 3, '1400571994', 5),
(83, 1, 4, 3, '1400571996', 5),
(84, 1, 4, 3, '1400571996', 5),
(85, 1, 4, 3, '1400571996', 5),
(86, 1, 4, 3, '1400571996', 5),
(87, 1, 4, 3, '1400571997', 5),
(88, 1, 4, 3, '1400571997', 5),
(89, 1, 4, 3, '1400571997', 5),
(90, 1, 4, 3, '1400571997', 5),
(91, 1, 4, 3, '1400571997', 5),
(92, 1, 4, 3, '1400571997', 5),
(93, 1, 4, 3, '1400571997', 5),
(94, 1, 4, 3, '1400571998', 5),
(95, 1, 4, 3, '1400571999', 5),
(96, 1, 4, 3, '1400571999', 5),
(97, 1, 4, 3, '1400571999', 5),
(98, 1, 4, 3, '1400571999', 5),
(99, 1, 4, 3, '1400572046', 5),
(100, 1, 4, 3, '1400572046', 5),
(101, 1, 4, 3, '1400572047', 5),
(102, 1, 4, 3, '1400572047', 5),
(103, 1, 4, 3, '1400572047', 5),
(104, 1, 4, 3, '1400572125', 5),
(105, 1, 4, 3, '1400572377', 5),
(106, 1, 4, 3, '1400572411', 5),
(107, 1, 4, 3, '1400572427', 5),
(108, 1, 4, 3, '1400572436', 5),
(109, 1, 4, 3, '1400576382', 5),
(110, 1, 4, 3, '1400576382', 5),
(111, 1, 4, 3, '1400576383', 5),
(112, 1, 4, 3, '1400576383', 5),
(113, 1, 4, 3, '1400576383', 5),
(114, 1, 4, 3, '1400576383', 5),
(115, 1, 4, 3, '1400576383', 5),
(116, 1, 4, 3, '1400576384', 5),
(117, 1, 4, 3, '1400576384', 5),
(118, 1, 4, 3, '1400576384', 5),
(119, 1, 4, 3, '1400576425', 5),
(120, 1, 4, 3, '1400576426', 5),
(121, 1, 4, 3, '1400576426', 5),
(122, 1, 4, 3, '1400576427', 5),
(123, 1, 4, 3, '1400576427', 5),
(124, 1, 4, 3, '1400576427', 5),
(125, 1, 4, 3, '1400576427', 5),
(126, 1, 4, 3, '1400576429', 5),
(127, 1, 4, 3, '1400576607', 5),
(128, 1, 4, 3, '1400576608', 5),
(129, 1, 4, 3, '1400576609', 5),
(130, 1, 4, 3, '1400576610', 5),
(131, 2, 4, 3, '1400576611', 4),
(132, 2, 4, 3, '1400576613', 4),
(133, 2, 4, 3, '1400576614', 4),
(134, 2, 4, 3, '1400576614', 4),
(135, 2, 4, 3, '1400576614', 4),
(136, 2, 4, 3, '1400576614', 4),
(137, 2, 4, 3, '1400576614', 4),
(138, 2, 4, 3, '1400576615', 4),
(139, 3, 4, 3, '1400576664', 4),
(140, 3, 4, 3, '1400576664', 4),
(141, 3, 4, 3, '1400576664', 4),
(142, 3, 4, 3, '1400576665', 4),
(143, 3, 4, 3, '1400576665', 4),
(144, 1, 4, 3, '1400576710', 5),
(145, 1, 4, 3, '1400576712', 5),
(146, 1, 4, 3, '1400576713', 5),
(147, 1, 4, 3, '1400576713', 5),
(148, 1, 4, 3, '1400576713', 5),
(149, 1, 4, 3, '1400576713', 5),
(150, 1, 4, 3, '1400576713', 5),
(151, 1, 4, 3, '1400576722', 5),
(152, 1, 4, 3, '1400576725', 5),
(153, 2, 4, 3, '1400576772', 4),
(154, 3, 4, 3, '1400576786', 4),
(155, 2, 4, 3, '1400576787', 4),
(156, 5, 4, 3, '1400576793', 4),
(157, 4, 1400579378, 9, 'asdf', 33),
(158, 4, 1400579379, 9, 'asdf', 33),
(159, 4, 1400579436, 8, 'zxcsdfsadf', 32),
(160, 4, 1400579438, 8, 'sadfasdf', 32),
(161, 4, 1400579439, 8, 'sadfasdf', 32),
(162, 4, 1400579440, 8, 'sadfsadf', 32),
(163, 4, 1400579442, 8, 'sadfsadf', 32),
(164, 4, 1400579443, 8, 'sadfasdf', 32),
(165, 4, 1400579444, 8, 'sadfsadf', 32),
(166, 4, 1400579446, 8, 'asdfsadf', 32),
(167, 4, 1400583090, 11, 'Canım çok güzel çıkmışsın :)', 35),
(168, 4, 1400593481, 10, 'sadf', 34),
(169, 4, 1400593490, 11, 'de', 35),
(170, 4, 1400660389, 10, 'chjgfjghj', 34),
(171, 4, 1400660391, 10, 'fghjgjf', 34);

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

CREATE TABLE IF NOT EXISTS `conversation` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `conversation_date` int(11) DEFAULT NULL,
  `receiver_read` int(1) NOT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `tag_id` (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `conversation`
--

INSERT INTO `conversation` (`c_id`, `user_one`, `user_two`, `ip`, `conversation_date`, `receiver_read`) VALUES
(1, 4, 5, '', 1400677290, 0),
(2, 4, 17, '', 1400668743, 0),
(3, 4, 23, '', 1400524084, 0),
(4, 27, 4, '', 1400677314, 0);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `mail`) VALUES
(1, 'mutazalkabir@gmail.com'),
(2, '.eewre.'),
(3, 'mutazalkabir@hotmail.com'),
(4, 'mutaz_alkabir@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `fellowship`
--

CREATE TABLE IF NOT EXISTS `fellowship` (
  `fellower_id` int(11) NOT NULL,
  `fellowed_id` int(11) NOT NULL,
  `fellowship_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fellowship_date` int(11) NOT NULL,
  PRIMARY KEY (`fellowship_id`),
  UNIQUE KEY `fellowship_id` (`fellowship_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `fellowship`
--

INSERT INTO `fellowship` (`fellower_id`, `fellowed_id`, `fellowship_id`, `fellowship_date`) VALUES
(4, 5, 1, 1400187157),
(4, 17, 6, 1400187163),
(4, 18, 7, 1400187164),
(4, 19, 8, 1400187165),
(4, 20, 9, 1400187166),
(4, 21, 10, 1400187167),
(4, 22, 11, 1400187168),
(5, 4, 12, 1400187169),
(17, 4, 13, 1400187160),
(19, 4, 14, 1400187160),
(20, 4, 15, 1400187160),
(23, 4, 16, 1400187160),
(25, 4, 17, 1400187160),
(26, 4, 18, 1400187158),
(5, 17, 19, 1400187160),
(5, 29, 21, 1400187160),
(5, 28, 22, 1400187159),
(5, 27, 23, 1400187154),
(5, 26, 24, 1400187160),
(17, 20, 25, 1400350567),
(17, 20, 30, 1400521579);

-- --------------------------------------------------------

--
-- Table structure for table `gardrobe`
--

CREATE TABLE IF NOT EXISTS `gardrobe` (
  `gardrobe_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `gardrobe_name` text NOT NULL,
  `about` text NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`gardrobe_id`),
  UNIQUE KEY `gardrobe_id` (`gardrobe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `gardrobe`
--

INSERT INTO `gardrobe` (`gardrobe_id`, `user_id`, `gardrobe_name`, `about`, `create_date`) VALUES
(1, 1, 'deneme', 'denme deneme deneme', 1399826280),
(2, 32, 'Yeni Gardrobe', 'Yeni Gardrobe', 0),
(3, 33, 'Yeni Gardrobe', 'Yeni Gardrobe', 0),
(4, 34, 'Yeni Gardrobe', 'Yeni Gardrobe', 0),
(5, 35, 'Yeni Gardrobe', 'Yeni Gardrobe', 0),
(6, 5, 'Yeni Gardrobe', 'Yeni Gardrobe', 0),
(7, 36, 'Gardrobe''larım', 'Bu gardrobe çok çok güzel :)', 0),
(8, 37, 'Deneme gardrobe ', 'Deneme gardrobe ', 0),
(9, 38, 'Başka Gardrobe', 'Çok güzel bir yer burası', 0),
(10, 39, 'Benim gardrobe''um en güzel', 'Çok güzel gerçekten', 0),
(11, 40, 'Son gardrobe', 'Hadi bakalım', 0),
(12, 41, 'Bence bitti', 'Bence de bitti', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hanger`
--

CREATE TABLE IF NOT EXISTS `hanger` (
  `hanger_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `gardrobe_id` int(11) NOT NULL,
  `about` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `place` varchar(40) NOT NULL,
  `pic_id` varchar(20) NOT NULL,
  `create_date` int(11) NOT NULL,
  UNIQUE KEY `hanger_id` (`hanger_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `hanger`
--

INSERT INTO `hanger` (`hanger_id`, `user_id`, `category_id`, `gardrobe_id`, `about`, `city`, `place`, `pic_id`, `create_date`) VALUES
(8, 32, 2, 2, 'Okula gidiyor :(', 'Ankara', 'Starbucks', '1.png', 0),
(9, 33, 2, 3, 'Sahilde vakit geçiriyor', 'İstanbul', 'Moda Sahili', '2.png', 0),
(10, 34, 2, 4, 'Arkadaşlarla kahve keyfi', 'Trabzon', 'Meydan', '3.png', 0),
(11, 35, 1, 5, 'Akşam arkadaşlarıyla buluşmak için hazırlanıyor.', 'Manisa', 'Manisa', '4.png', 0),
(12, 1, 2, 1, 'Gün içerisinde rahatlıkla giyebileceğim kıyafetler!', 'Ankara', 'Çankaya', '0.png', 0),
(13, 36, 2, 6, 'Yolculukta', 'Sakarya', 'Adapazarı', '0.png', 0),
(14, 37, 2, 7, 'Kahve içiyor ve üşümüş :(', 'Ankara', 'TOBB ETÜ Starbucks', '0.png', 0),
(15, 38, 2, 8, 'Tatilin tadını çıkartıyor :)', 'İzmir', 'Çeşme', '0.png', 0),
(16, 39, 2, 9, 'Mezuniyet Balosu', 'Manisa', '', '0.png', 0),
(17, 40, 2, 10, 'Dışarı çıkmaya hazırlanıyor ve heyecanlı :)', 'Ankara', '', '0.png', 0),
(18, 41, 2, 12, '', '', '', '0.png', 0),
(19, 4, 1, 5, 'nothing', 'ankara', 'starbucks', 'rxsgo85513kahxg1.png', 1400739084),
(20, 4, 1, 5, 'nothing', 'ankara', 'starbucks', '477efq8xhrfaeerp.png', 1400739107),
(21, 75, 1, 5, 'nothing', 'ankara', 'starbucks', '5g2kibok1kw8v3w6.htm', 1400739397);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `like_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `liked_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `liked_type_id` int(11) NOT NULL,
  `like_date` int(11) NOT NULL,
  `liked_user_id` int(11) NOT NULL,
  UNIQUE KEY `like_id` (`like_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`like_id`, `liked_id`, `user_id`, `liked_type_id`, `like_date`, `liked_user_id`) VALUES
(1, 1, 4, 1, 0, 5),
(2, 2, 4, 1, 0, 5),
(3, 3, 4, 1, 0, 5),
(4, 1, 5, 1, 0, 4),
(5, 1, 4, 1, 0, 5),
(6, 1, 5, 2, 0, 4),
(7, 1, 4, 3, 1400576955, 5),
(8, 2, 4, 3, 1400576956, 4),
(9, 3, 4, 3, 1400576958, 4),
(10, 1, 4, 3, 1400577229, 5),
(11, 2, 4, 3, 1400577235, 4),
(12, 1, 4, 3, 1400577284, 5),
(13, 1, 4, 3, 1400577300, 5),
(14, 9, 4, 3, 1400579391, 33),
(15, 8, 4, 3, 1400581813, 32),
(16, 9, 4, 3, 1400581815, 33),
(17, 9, 4, 3, 1400581815, 33),
(18, 9, 4, 3, 1400581815, 33),
(19, 9, 4, 3, 1400581815, 33),
(20, 9, 4, 3, 1400581815, 33),
(21, 9, 4, 3, 1400581815, 33),
(22, 9, 4, 3, 1400581816, 33),
(23, 9, 4, 3, 1400581816, 33),
(24, 9, 4, 3, 1400581816, 33),
(25, 9, 4, 3, 1400581816, 33),
(26, 9, 4, 3, 1400581816, 33),
(27, 9, 4, 3, 1400581816, 33),
(28, 9, 4, 3, 1400581817, 33),
(29, 8, 4, 3, 1400583034, 32),
(30, 8, 4, 3, 1400587777, 32),
(31, 8, 4, 3, 1400587778, 32),
(32, 8, 4, 3, 1400587778, 32),
(33, 8, 4, 3, 1400587778, 32),
(34, 8, 4, 3, 1400587898, 32),
(35, 8, 4, 3, 1400592079, 32),
(36, 9, 4, 3, 1400592082, 33);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `notifier_id` int(11) NOT NULL,
  `notified_id` int(11) NOT NULL,
  `notification_type_id` int(11) NOT NULL,
  `notificated_item_id` int(11) NOT NULL,
  `notification_date` int(11) NOT NULL,
  UNIQUE KEY `notification_id` (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=214 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notifier_id`, `notified_id`, `notification_type_id`, `notificated_item_id`, `notification_date`) VALUES
(1, 17, 20, 4, 0, 1400350567),
(5, 17, 4, 3, 1, 1400354376),
(7, 17, 20, 4, 0, 1400521579),
(8, 4, 5, 3, 1, 1400529209),
(9, 4, 5, 3, 1, 1400566036),
(10, 4, 5, 3, 1, 1400566136),
(11, 4, 4, 3, 3, 1400566164),
(12, 0, 0, 3, 0, 1400566445),
(13, 4, 2, 1, 1, 1400566727),
(14, 4, 2, 1, 1, 1400566789),
(15, 4, 2, 1, 1, 1400570015),
(16, 4, 2, 1, 1, 1400570020),
(17, 4, 0, 1, 1, 1400570258),
(18, 4, 0, 1, 1, 1400570407),
(19, 4, 0, 1, 1, 1400570477),
(20, 4, 5, 1, 1, 1400570502),
(21, 4, 5, 3, 1, 1400570803),
(22, 4, 5, 3, 1, 1400570816),
(23, 4, 5, 3, 1, 1400570822),
(24, 4, 5, 1, 1, 1400570859),
(25, 4, 5, 1, 1, 1400570886),
(26, 4, 5, 1, 1, 1400570947),
(27, 4, 5, 1, 1, 1400571066),
(28, 4, 5, 1, 1, 1400571191),
(29, 4, 5, 1, 1, 1400571615),
(30, 4, 5, 1, 1, 1400571667),
(31, 4, 5, 1, 1, 1400571669),
(32, 4, 5, 1, 1, 1400571669),
(33, 4, 5, 1, 1, 1400571670),
(34, 4, 5, 1, 1, 1400571670),
(35, 4, 5, 1, 1, 1400571670),
(36, 4, 5, 1, 1, 1400571795),
(37, 4, 5, 1, 1, 1400571797),
(38, 4, 5, 1, 1, 1400571798),
(39, 4, 5, 1, 1, 1400571799),
(40, 4, 5, 1, 1, 1400571799),
(41, 4, 5, 1, 1, 1400571799),
(42, 4, 5, 1, 1, 1400571799),
(43, 4, 5, 1, 1, 1400571799),
(44, 4, 5, 1, 1, 1400571799),
(45, 4, 5, 1, 1, 1400571800),
(46, 4, 5, 1, 1, 1400571800),
(47, 4, 5, 1, 1, 1400571800),
(48, 4, 5, 1, 1, 1400571800),
(49, 4, 5, 1, 1, 1400571800),
(50, 4, 5, 1, 1, 1400571800),
(51, 4, 5, 1, 1, 1400571800),
(52, 4, 5, 1, 1, 1400571801),
(53, 4, 5, 1, 1, 1400571801),
(54, 4, 5, 1, 1, 1400571801),
(55, 4, 5, 1, 1, 1400571801),
(56, 4, 5, 1, 1, 1400571801),
(57, 4, 5, 1, 1, 1400571801),
(58, 4, 5, 1, 1, 1400571802),
(59, 4, 5, 1, 1, 1400571802),
(60, 4, 5, 1, 1, 1400571802),
(61, 4, 5, 1, 1, 1400571804),
(62, 4, 5, 1, 1, 1400571941),
(63, 4, 5, 1, 1, 1400571943),
(64, 4, 4, 1, 2, 1400571944),
(65, 4, 4, 1, 3, 1400571946),
(66, 4, 4, 1, 3, 1400571946),
(67, 4, 4, 1, 3, 1400571947),
(68, 4, 4, 1, 3, 1400571947),
(69, 4, 4, 1, 3, 1400571947),
(70, 4, 4, 1, 3, 1400571947),
(71, 4, 4, 1, 3, 1400571947),
(72, 4, 4, 1, 3, 1400571947),
(73, 4, 4, 1, 3, 1400571948),
(74, 4, 5, 1, 1, 1400571972),
(75, 4, 5, 1, 1, 1400571975),
(76, 4, 5, 1, 1, 1400571975),
(77, 4, 5, 1, 1, 1400571975),
(78, 4, 5, 1, 1, 1400571976),
(79, 4, 5, 1, 1, 1400571994),
(80, 4, 5, 1, 1, 1400571996),
(81, 4, 5, 1, 1, 1400571996),
(82, 4, 5, 1, 1, 1400571996),
(83, 4, 5, 1, 1, 1400571996),
(84, 4, 5, 1, 1, 1400571997),
(85, 4, 5, 1, 1, 1400571997),
(86, 4, 5, 1, 1, 1400571997),
(87, 4, 5, 1, 1, 1400571997),
(88, 4, 5, 1, 1, 1400571997),
(89, 4, 5, 1, 1, 1400571997),
(90, 4, 5, 1, 1, 1400571997),
(91, 4, 5, 1, 1, 1400571998),
(92, 4, 5, 1, 1, 1400571999),
(93, 4, 5, 1, 1, 1400571999),
(94, 4, 5, 1, 1, 1400571999),
(95, 4, 5, 1, 1, 1400571999),
(96, 4, 5, 1, 1, 1400572046),
(97, 4, 5, 1, 1, 1400572046),
(98, 4, 5, 1, 1, 1400572047),
(99, 4, 5, 1, 1, 1400572047),
(100, 4, 5, 1, 1, 1400572047),
(101, 4, 5, 1, 1, 1400572125),
(102, 4, 5, 1, 1, 1400572377),
(103, 4, 5, 1, 1, 1400572411),
(104, 4, 5, 1, 1, 1400572427),
(105, 4, 5, 1, 1, 1400572436),
(106, 4, 5, 1, 1, 1400576382),
(107, 4, 5, 1, 1, 1400576382),
(108, 4, 5, 1, 1, 1400576383),
(109, 4, 5, 1, 1, 1400576383),
(110, 4, 5, 1, 1, 1400576383),
(111, 4, 5, 1, 1, 1400576383),
(112, 4, 5, 1, 1, 1400576383),
(113, 4, 5, 1, 1, 1400576384),
(114, 4, 5, 1, 1, 1400576384),
(115, 4, 5, 1, 1, 1400576384),
(116, 4, 5, 1, 1, 1400576425),
(117, 4, 5, 1, 1, 1400576426),
(118, 4, 5, 1, 1, 1400576426),
(119, 4, 5, 1, 1, 1400576427),
(120, 4, 5, 1, 1, 1400576427),
(121, 4, 5, 1, 1, 1400576427),
(122, 4, 5, 1, 1, 1400576427),
(123, 4, 5, 1, 1, 1400576429),
(124, 4, 5, 1, 1, 1400576607),
(125, 4, 5, 1, 1, 1400576608),
(126, 4, 5, 1, 1, 1400576609),
(127, 4, 5, 1, 1, 1400576610),
(128, 4, 4, 1, 2, 1400576611),
(129, 4, 4, 1, 2, 1400576613),
(130, 4, 4, 1, 2, 1400576614),
(131, 4, 4, 1, 2, 1400576614),
(132, 4, 4, 1, 2, 1400576614),
(133, 4, 4, 1, 2, 1400576614),
(134, 4, 4, 1, 2, 1400576614),
(135, 4, 4, 1, 2, 1400576615),
(136, 4, 4, 1, 3, 1400576664),
(137, 4, 4, 1, 3, 1400576664),
(138, 4, 4, 1, 3, 1400576664),
(139, 4, 4, 1, 3, 1400576665),
(140, 4, 4, 1, 3, 1400576665),
(141, 4, 5, 1, 1, 1400576710),
(142, 4, 5, 1, 1, 1400576712),
(143, 4, 5, 1, 1, 1400576713),
(144, 4, 5, 1, 1, 1400576713),
(145, 4, 5, 1, 1, 1400576713),
(146, 4, 5, 1, 1, 1400576713),
(147, 4, 5, 1, 1, 1400576713),
(148, 4, 5, 1, 1, 1400576722),
(149, 4, 5, 1, 1, 1400576725),
(150, 4, 4, 1, 2, 1400576772),
(151, 4, 4, 1, 3, 1400576786),
(152, 4, 4, 1, 2, 1400576787),
(153, 4, 4, 1, 5, 1400576793),
(154, 4, 5, 1, 1, 1400576853),
(155, 4, 5, 1, 1, 1400576854),
(156, 4, 4, 1, 2, 1400576857),
(157, 4, 4, 1, 3, 1400576858),
(158, 4, 5, 1, 4, 1400576866),
(159, 4, 4, 1, 5, 1400576869),
(160, 4, 4, 1, 5, 1400576871),
(161, 4, 4, 1, 5, 1400576871),
(162, 4, 4, 1, 5, 1400576871),
(163, 4, 4, 1, 2, 1400576891),
(164, 4, 4, 1, 2, 1400576892),
(165, 4, 4, 1, 2, 1400576892),
(166, 4, 4, 1, 2, 1400576892),
(167, 4, 4, 1, 2, 1400576892),
(168, 4, 4, 1, 2, 1400576892),
(169, 4, 5, 1, 1, 1400576955),
(170, 4, 4, 1, 2, 1400576956),
(171, 4, 4, 1, 3, 1400576958),
(172, 4, 5, 1, 1, 1400577229),
(173, 4, 4, 1, 2, 1400577235),
(174, 4, 5, 1, 1, 1400577284),
(175, 4, 5, 1, 1, 1400577300),
(176, 4, 33, 3, 9, 1400579378),
(177, 4, 33, 3, 9, 1400579379),
(178, 4, 33, 1, 9, 1400579391),
(179, 4, 32, 3, 8, 1400579436),
(180, 4, 32, 3, 8, 1400579438),
(181, 4, 32, 3, 8, 1400579439),
(182, 4, 32, 3, 8, 1400579440),
(183, 4, 32, 3, 8, 1400579442),
(184, 4, 32, 3, 8, 1400579443),
(185, 4, 32, 3, 8, 1400579444),
(186, 4, 32, 3, 8, 1400579446),
(187, 4, 32, 1, 8, 1400581813),
(188, 4, 33, 1, 9, 1400581815),
(189, 4, 33, 1, 9, 1400581815),
(190, 4, 33, 1, 9, 1400581815),
(191, 4, 33, 1, 9, 1400581815),
(192, 4, 33, 1, 9, 1400581815),
(193, 4, 33, 1, 9, 1400581815),
(194, 4, 33, 1, 9, 1400581816),
(195, 4, 33, 1, 9, 1400581816),
(196, 4, 33, 1, 9, 1400581816),
(197, 4, 33, 1, 9, 1400581816),
(198, 4, 33, 1, 9, 1400581816),
(199, 4, 33, 1, 9, 1400581816),
(200, 4, 33, 1, 9, 1400581817),
(201, 4, 32, 1, 8, 1400583034),
(202, 4, 35, 3, 11, 1400583090),
(203, 4, 32, 1, 8, 1400587777),
(204, 4, 32, 1, 8, 1400587778),
(205, 4, 32, 1, 8, 1400587778),
(206, 4, 32, 1, 8, 1400587778),
(207, 4, 32, 1, 8, 1400587898),
(208, 4, 32, 1, 8, 1400592079),
(209, 4, 33, 1, 9, 1400592082),
(210, 4, 34, 3, 10, 1400593481),
(211, 4, 35, 3, 11, 1400593490),
(212, 4, 34, 3, 10, 1400660389),
(213, 4, 34, 3, 10, 1400660391);

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE IF NOT EXISTS `notification_types` (
  `notification_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type` varchar(20) NOT NULL,
  UNIQUE KEY `notification_type_id` (`notification_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `notification_types`
--

INSERT INTO `notification_types` (`notification_type_id`, `notification_type`) VALUES
(1, 'like'),
(2, 'share'),
(3, 'comment'),
(4, 'fellowship');

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

CREATE TABLE IF NOT EXISTS `pm` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_one` bigint(20) NOT NULL,
  `user_two` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `message_date` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `brand_id` (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `pm`
--

INSERT INTO `pm` (`message_id`, `user_one`, `user_two`, `message`, `message_date`, `conversation_id`) VALUES
(1, 4, 5, 'dededeega  dfdfdf dgds', 1400521775, 1),
(2, 5, 4, '12412412421 sada as fas fa sa asfsaf fa a', 1400529000, 1),
(3, 4, 17, 'dededeega  dfdfdf dgds', 1400521910, 2),
(4, 17, 4, '12412412421 sada as fas fa sa asfsaf fa a', 1400531000, 2),
(5, 4, 23, 'dededeega  dfdfdf dgds', 1400523910, 3),
(6, 23, 4, '12412412421 sada as fas fa sa asfsaf fa a', 1400535000, 3),
(7, 27, 4, 'bla bla', 1400535000, 4),
(8, 4, 5, 'Naber fıstık?;)', 1400666922, 1),
(9, 4, 5, 'asdf', 1400667027, 1),
(10, 4, 5, 'deneme', 1400667321, 1),
(11, 4, 5, 'Esra naber ya?', 1400668500, 1),
(12, 4, 4, 'Oldu mu?', 1400668696, 4),
(13, 4, 4, 'asdf', 1400668701, 4),
(14, 4, 17, 'deneme', 1400668725, 2),
(15, 4, 17, 'olur mu', 1400668731, 2),
(16, 4, 17, '', 1400668743, 2),
(17, 4, 5, 'asdf', 1400677290, 1),
(18, 4, 4, 'asdf', 1400677304, 4),
(19, 4, 4, 'asdf', 1400677314, 4);

-- --------------------------------------------------------

--
-- Table structure for table `share`
--

CREATE TABLE IF NOT EXISTS `share` (
  `share_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hanger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `share_date` int(11) NOT NULL,
  `shared_user_id` int(11) NOT NULL,
  UNIQUE KEY `share_id` (`share_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `share`
--

INSERT INTO `share` (`share_id`, `hanger_id`, `user_id`, `share_date`, `shared_user_id`) VALUES
(1, 1, 4, 1400101125, 0),
(2, 1, 5, 1400101125, 0),
(3, 2, 4, 1400101125, 0),
(4, 6, 5, 1400101125, 0),
(5, 4, 4, 1400101125, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `gardrobe_id` int(11) NOT NULL,
  `hanger_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `tag_date` int(11) NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(11) NOT NULL,
  UNIQUE KEY `type_id` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(1, 'hanger'),
(2, 'gardrobe');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `birth_date` int(10) NOT NULL,
  `login_date` int(11) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `confirm` tinyint(1) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `about` text NOT NULL,
  `profession` text NOT NULL,
  `pic_id` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`, `birth_date`, `login_date`, `mail`, `confirm`, `gender`, `pass`, `about`, `profession`, `pic_id`) VALUES
(1, 'Tunç', 'Akın', 392508000, 1399810339, 'tuncak30@hotmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(4, 'Mutaz', 'Alkabir', 392508000, 1399810339, 'mutazalkabir@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(5, 'mumtaz', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(17, 'sinem', 'deneme', 392508000, 1399998580, 'mmm@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(19, 'ahmet', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir13@hotmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(20, 'mehmet', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir20@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(21, 'ali', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir31@hotmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(22, 'berk', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir4@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(24, 'rumeysa', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir6@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(25, 'emine', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir7@hotmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(26, 'sezin', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir8@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(27, 'savas', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir9@hotmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(28, 'murat', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir10@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(29, 'esra', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir11@hotmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(30, 'didem', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir12@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(32, 'Selen', 'Bayramin', 0, 0, 'selenbayramin@gmail.com', 0, 1, '123456', 'sadas', 'dsa', 'avatar.png'),
(33, 'Berre', 'Tekeoğlu', 0, 0, 'berretekeoglu@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(34, 'Günsu Dilek', 'Kobya', 0, 0, 'gunsukobya@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(35, 'Meral', 'Görgülü', 0, 0, 'meralgorgulu@gmail.com', 0, 0, '123456', '1', '1', 'avatar.png'),
(36, 'Sezgincan', 'Mailmail', 0, 0, 'sezgincan@gmail.com', 0, 0, '123456', '', '', 'avatar.png'),
(37, 'Esma', 'Yemeztaşlıca', 0, 0, 'esma@gmail.com', 0, 0, '123456', '', '', 'avatar.png'),
(38, 'Elif', 'Oran', 0, 0, 'eliforan@gmail.com', 0, 0, '123456', '', '', 'avatar.png'),
(39, 'Gözde', 'Asena Olcay', 0, 0, 'gozde@gmail.com', 0, 0, '123456', '', '', 'avatar.png'),
(40, 'Batuhan', 'Sezgin', 0, 0, 'batuhansezgin@gmail.com', 0, 0, '123456', '', '', 'avatar.png'),
(41, 'Ecem', 'Yalız', 0, 0, 'ecemyaliz@gmail.com', 0, 0, '123456', '', '', 'avatar.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
