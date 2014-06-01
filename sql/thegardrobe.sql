-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2014 at 05:55 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `brand_pic` varchar(21) NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `brands`
--

UPDATE `brands` SET `brand_id` = 1,`brand_name` = 'Levis',`brand_pic` = '' WHERE `brands`.`brand_id` = 1;
UPDATE `brands` SET `brand_id` = 2,`brand_name` = 'LeeCooper',`brand_pic` = '' WHERE `brands`.`brand_id` = 2;
UPDATE `brands` SET `brand_id` = 3,`brand_name` = 'Levis',`brand_pic` = '' WHERE `brands`.`brand_id` = 3;
UPDATE `brands` SET `brand_id` = 4,`brand_name` = 'LeeCooper',`brand_pic` = '' WHERE `brands`.`brand_id` = 4;
UPDATE `brands` SET `brand_id` = 5,`brand_name` = 'Tommy',`brand_pic` = '' WHERE `brands`.`brand_id` = 5;
UPDATE `brands` SET `brand_id` = 6,`brand_name` = 'Nike',`brand_pic` = '' WHERE `brands`.`brand_id` = 6;
UPDATE `brands` SET `brand_id` = 7,`brand_name` = 'Addidas',`brand_pic` = '' WHERE `brands`.`brand_id` = 7;
UPDATE `brands` SET `brand_id` = 8,`brand_name` = 'Polo',`brand_pic` = '' WHERE `brands`.`brand_id` = 8;
UPDATE `brands` SET `brand_id` = 9,`brand_name` = 'Ralph',`brand_pic` = '' WHERE `brands`.`brand_id` = 9;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `category`
--

UPDATE `category` SET `category_id` = 1,`category_name` = 'Şık ve Özel' WHERE `category`.`category_id` = 1;
UPDATE `category` SET `category_id` = 2,`category_name` = 'Salaş ama Seksi' WHERE `category`.`category_id` = 2;
UPDATE `category` SET `category_id` = 5,`category_name` = 'Hoşgeldin Yaz' WHERE `category`.`category_id` = 5;
UPDATE `category` SET `category_id` = 6,`category_name` = 'Rahat Bir Şeyler' WHERE `category`.`category_id` = 6;
UPDATE `category` SET `category_id` = 7,`category_name` = 'Yolculukta' WHERE `category`.`category_id` = 7;
UPDATE `category` SET `category_id` = 8,`category_name` = 'Spor Zamanı' WHERE `category`.`category_id` = 8;
UPDATE `category` SET `category_id` = 9,`category_name` = 'Deniz Havası' WHERE `category`.`category_id` = 9;
UPDATE `category` SET `category_id` = 10,`category_name` = 'Her gün Modası' WHERE `category`.`category_id` = 10;
UPDATE `category` SET `category_id` = 11,`category_name` = 'Soğuk Havalar' WHERE `category`.`category_id` = 11;
UPDATE `category` SET `category_id` = 12,`category_name` = 'Ev Hali' WHERE `category`.`category_id` = 12;
UPDATE `category` SET `category_id` = 13,`category_name` = 'Uyku Vakti' WHERE `category`.`category_id` = 13;
UPDATE `category` SET `category_id` = 14,`category_name` = 'Ufak Dokunuşlar (Aksesuarlar)' WHERE `category`.`category_id` = 14;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=176 ;

--
-- Dumping data for table `comment`
--

UPDATE `comment` SET `comment_id` = 1,`user_id` = 4,`comment_date` = 2147483647,`hanger_id` = 1,`comment` = 'deneme 123',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 1;
UPDATE `comment` SET `comment_id` = 2,`user_id` = 5,`comment_date` = 2147483647,`hanger_id` = 2,`comment` = 'denemeeeee dadaasafasf ',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 2;
UPDATE `comment` SET `comment_id` = 3,`user_id` = 4,`comment_date` = 2147483647,`hanger_id` = 1,`comment` = 'dada asdfas a das da sa sad',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 3;
UPDATE `comment` SET `comment_id` = 4,`user_id` = 17,`comment_date` = 2147483647,`hanger_id` = 1,`comment` = 'asdfasfagadsgs sadgsg sg gsadg',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 4;
UPDATE `comment` SET `comment_id` = 5,`user_id` = 4,`comment_date` = 2147483647,`hanger_id` = 4,`comment` = 'asdasgads asfa  fas af as fa',`commented_user_id` = 22 WHERE `comment`.`comment_id` = 5;
UPDATE `comment` SET `comment_id` = 6,`user_id` = 5,`comment_date` = 1400354197,`hanger_id` = 1,`comment` = ' ooo çok güzel olmuş mis vallaha :)',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 6;
UPDATE `comment` SET `comment_id` = 8,`user_id` = 17,`comment_date` = 1400354376,`hanger_id` = 1,`comment` = ' ooo çok güzel olmuş mis vallaha :)',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 8;
UPDATE `comment` SET `comment_id` = 9,`user_id` = 17,`comment_date` = 1400354378,`hanger_id` = 1,`comment` = ' ooo çok güzel olmuş mis vallaha :)',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 9;
UPDATE `comment` SET `comment_id` = 10,`user_id` = 4,`comment_date` = 1400529209,`hanger_id` = 1,`comment` = 'süper',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 10;
UPDATE `comment` SET `comment_id` = 11,`user_id` = 4,`comment_date` = 1400566036,`hanger_id` = 1,`comment` = 'asdf',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 11;
UPDATE `comment` SET `comment_id` = 12,`user_id` = 4,`comment_date` = 1400566136,`hanger_id` = 1,`comment` = 'denem',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 12;
UPDATE `comment` SET `comment_id` = 13,`user_id` = 4,`comment_date` = 1400566164,`hanger_id` = 3,`comment` = 'asdfasdf',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 13;
UPDATE `comment` SET `comment_id` = 14,`user_id` = 0,`comment_date` = 1400566445,`hanger_id` = 0,`comment` = '',`commented_user_id` = 0 WHERE `comment`.`comment_id` = 14;
UPDATE `comment` SET `comment_id` = 15,`user_id` = 1,`comment_date` = 4,`hanger_id` = 0,`comment` = '1400566531',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 15;
UPDATE `comment` SET `comment_id` = 16,`user_id` = 1,`comment_date` = 4,`hanger_id` = 0,`comment` = '1400566727',`commented_user_id` = 2 WHERE `comment`.`comment_id` = 16;
UPDATE `comment` SET `comment_id` = 17,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400566789',`commented_user_id` = 2 WHERE `comment`.`comment_id` = 17;
UPDATE `comment` SET `comment_id` = 18,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400570015',`commented_user_id` = 2 WHERE `comment`.`comment_id` = 18;
UPDATE `comment` SET `comment_id` = 19,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400570020',`commented_user_id` = 2 WHERE `comment`.`comment_id` = 19;
UPDATE `comment` SET `comment_id` = 20,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400570258',`commented_user_id` = 0 WHERE `comment`.`comment_id` = 20;
UPDATE `comment` SET `comment_id` = 21,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400570407',`commented_user_id` = 0 WHERE `comment`.`comment_id` = 21;
UPDATE `comment` SET `comment_id` = 22,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400570477',`commented_user_id` = 0 WHERE `comment`.`comment_id` = 22;
UPDATE `comment` SET `comment_id` = 23,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400570502',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 23;
UPDATE `comment` SET `comment_id` = 24,`user_id` = 4,`comment_date` = 1400570803,`hanger_id` = 1,`comment` = 'asdf',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 24;
UPDATE `comment` SET `comment_id` = 25,`user_id` = 4,`comment_date` = 1400570816,`hanger_id` = 1,`comment` = 'asdf',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 25;
UPDATE `comment` SET `comment_id` = 26,`user_id` = 4,`comment_date` = 1400570822,`hanger_id` = 1,`comment` = '123412341234',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 26;
UPDATE `comment` SET `comment_id` = 27,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400570859',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 27;
UPDATE `comment` SET `comment_id` = 28,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400570886',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 28;
UPDATE `comment` SET `comment_id` = 29,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400570947',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 29;
UPDATE `comment` SET `comment_id` = 30,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571066',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 30;
UPDATE `comment` SET `comment_id` = 31,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571191',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 31;
UPDATE `comment` SET `comment_id` = 32,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571615',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 32;
UPDATE `comment` SET `comment_id` = 33,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571667',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 33;
UPDATE `comment` SET `comment_id` = 34,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571669',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 34;
UPDATE `comment` SET `comment_id` = 35,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571669',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 35;
UPDATE `comment` SET `comment_id` = 36,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571670',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 36;
UPDATE `comment` SET `comment_id` = 37,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571670',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 37;
UPDATE `comment` SET `comment_id` = 38,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571670',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 38;
UPDATE `comment` SET `comment_id` = 39,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571795',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 39;
UPDATE `comment` SET `comment_id` = 40,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571797',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 40;
UPDATE `comment` SET `comment_id` = 41,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571798',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 41;
UPDATE `comment` SET `comment_id` = 42,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571799',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 42;
UPDATE `comment` SET `comment_id` = 43,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571799',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 43;
UPDATE `comment` SET `comment_id` = 44,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571799',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 44;
UPDATE `comment` SET `comment_id` = 45,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571799',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 45;
UPDATE `comment` SET `comment_id` = 46,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571799',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 46;
UPDATE `comment` SET `comment_id` = 47,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571799',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 47;
UPDATE `comment` SET `comment_id` = 48,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571800',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 48;
UPDATE `comment` SET `comment_id` = 49,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571800',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 49;
UPDATE `comment` SET `comment_id` = 50,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571800',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 50;
UPDATE `comment` SET `comment_id` = 51,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571800',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 51;
UPDATE `comment` SET `comment_id` = 52,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571800',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 52;
UPDATE `comment` SET `comment_id` = 53,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571800',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 53;
UPDATE `comment` SET `comment_id` = 54,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571800',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 54;
UPDATE `comment` SET `comment_id` = 55,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571801',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 55;
UPDATE `comment` SET `comment_id` = 56,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571801',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 56;
UPDATE `comment` SET `comment_id` = 57,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571801',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 57;
UPDATE `comment` SET `comment_id` = 58,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571801',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 58;
UPDATE `comment` SET `comment_id` = 59,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571801',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 59;
UPDATE `comment` SET `comment_id` = 60,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571801',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 60;
UPDATE `comment` SET `comment_id` = 61,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571802',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 61;
UPDATE `comment` SET `comment_id` = 62,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571802',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 62;
UPDATE `comment` SET `comment_id` = 63,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571802',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 63;
UPDATE `comment` SET `comment_id` = 64,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571804',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 64;
UPDATE `comment` SET `comment_id` = 65,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571941',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 65;
UPDATE `comment` SET `comment_id` = 66,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571943',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 66;
UPDATE `comment` SET `comment_id` = 67,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571944',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 67;
UPDATE `comment` SET `comment_id` = 68,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571946',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 68;
UPDATE `comment` SET `comment_id` = 69,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571946',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 69;
UPDATE `comment` SET `comment_id` = 70,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571947',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 70;
UPDATE `comment` SET `comment_id` = 71,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571947',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 71;
UPDATE `comment` SET `comment_id` = 72,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571947',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 72;
UPDATE `comment` SET `comment_id` = 73,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571947',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 73;
UPDATE `comment` SET `comment_id` = 74,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571947',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 74;
UPDATE `comment` SET `comment_id` = 75,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571947',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 75;
UPDATE `comment` SET `comment_id` = 76,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571948',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 76;
UPDATE `comment` SET `comment_id` = 77,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571972',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 77;
UPDATE `comment` SET `comment_id` = 78,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571975',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 78;
UPDATE `comment` SET `comment_id` = 79,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571975',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 79;
UPDATE `comment` SET `comment_id` = 80,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571975',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 80;
UPDATE `comment` SET `comment_id` = 81,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571976',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 81;
UPDATE `comment` SET `comment_id` = 82,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571994',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 82;
UPDATE `comment` SET `comment_id` = 83,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571996',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 83;
UPDATE `comment` SET `comment_id` = 84,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571996',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 84;
UPDATE `comment` SET `comment_id` = 85,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571996',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 85;
UPDATE `comment` SET `comment_id` = 86,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571996',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 86;
UPDATE `comment` SET `comment_id` = 87,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571997',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 87;
UPDATE `comment` SET `comment_id` = 88,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571997',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 88;
UPDATE `comment` SET `comment_id` = 89,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571997',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 89;
UPDATE `comment` SET `comment_id` = 90,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571997',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 90;
UPDATE `comment` SET `comment_id` = 91,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571997',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 91;
UPDATE `comment` SET `comment_id` = 92,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571997',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 92;
UPDATE `comment` SET `comment_id` = 93,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571997',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 93;
UPDATE `comment` SET `comment_id` = 94,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571998',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 94;
UPDATE `comment` SET `comment_id` = 95,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571999',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 95;
UPDATE `comment` SET `comment_id` = 96,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571999',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 96;
UPDATE `comment` SET `comment_id` = 97,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571999',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 97;
UPDATE `comment` SET `comment_id` = 98,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400571999',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 98;
UPDATE `comment` SET `comment_id` = 99,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400572046',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 99;
UPDATE `comment` SET `comment_id` = 100,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400572046',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 100;
UPDATE `comment` SET `comment_id` = 101,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400572047',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 101;
UPDATE `comment` SET `comment_id` = 102,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400572047',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 102;
UPDATE `comment` SET `comment_id` = 103,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400572047',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 103;
UPDATE `comment` SET `comment_id` = 104,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400572125',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 104;
UPDATE `comment` SET `comment_id` = 105,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400572377',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 105;
UPDATE `comment` SET `comment_id` = 106,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400572411',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 106;
UPDATE `comment` SET `comment_id` = 107,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400572427',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 107;
UPDATE `comment` SET `comment_id` = 108,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400572436',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 108;
UPDATE `comment` SET `comment_id` = 109,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576382',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 109;
UPDATE `comment` SET `comment_id` = 110,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576382',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 110;
UPDATE `comment` SET `comment_id` = 111,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576383',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 111;
UPDATE `comment` SET `comment_id` = 112,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576383',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 112;
UPDATE `comment` SET `comment_id` = 113,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576383',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 113;
UPDATE `comment` SET `comment_id` = 114,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576383',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 114;
UPDATE `comment` SET `comment_id` = 115,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576383',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 115;
UPDATE `comment` SET `comment_id` = 116,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576384',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 116;
UPDATE `comment` SET `comment_id` = 117,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576384',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 117;
UPDATE `comment` SET `comment_id` = 118,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576384',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 118;
UPDATE `comment` SET `comment_id` = 119,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576425',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 119;
UPDATE `comment` SET `comment_id` = 120,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576426',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 120;
UPDATE `comment` SET `comment_id` = 121,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576426',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 121;
UPDATE `comment` SET `comment_id` = 122,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576427',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 122;
UPDATE `comment` SET `comment_id` = 123,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576427',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 123;
UPDATE `comment` SET `comment_id` = 124,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576427',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 124;
UPDATE `comment` SET `comment_id` = 125,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576427',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 125;
UPDATE `comment` SET `comment_id` = 126,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576429',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 126;
UPDATE `comment` SET `comment_id` = 127,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576607',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 127;
UPDATE `comment` SET `comment_id` = 128,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576608',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 128;
UPDATE `comment` SET `comment_id` = 129,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576609',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 129;
UPDATE `comment` SET `comment_id` = 130,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576610',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 130;
UPDATE `comment` SET `comment_id` = 131,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576611',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 131;
UPDATE `comment` SET `comment_id` = 132,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576613',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 132;
UPDATE `comment` SET `comment_id` = 133,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576614',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 133;
UPDATE `comment` SET `comment_id` = 134,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576614',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 134;
UPDATE `comment` SET `comment_id` = 135,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576614',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 135;
UPDATE `comment` SET `comment_id` = 136,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576614',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 136;
UPDATE `comment` SET `comment_id` = 137,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576614',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 137;
UPDATE `comment` SET `comment_id` = 138,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576615',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 138;
UPDATE `comment` SET `comment_id` = 139,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576664',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 139;
UPDATE `comment` SET `comment_id` = 140,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576664',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 140;
UPDATE `comment` SET `comment_id` = 141,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576664',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 141;
UPDATE `comment` SET `comment_id` = 142,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576665',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 142;
UPDATE `comment` SET `comment_id` = 143,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576665',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 143;
UPDATE `comment` SET `comment_id` = 144,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576710',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 144;
UPDATE `comment` SET `comment_id` = 145,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576712',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 145;
UPDATE `comment` SET `comment_id` = 146,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576713',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 146;
UPDATE `comment` SET `comment_id` = 147,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576713',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 147;
UPDATE `comment` SET `comment_id` = 148,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576713',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 148;
UPDATE `comment` SET `comment_id` = 149,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576713',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 149;
UPDATE `comment` SET `comment_id` = 150,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576713',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 150;
UPDATE `comment` SET `comment_id` = 151,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576722',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 151;
UPDATE `comment` SET `comment_id` = 152,`user_id` = 1,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576725',`commented_user_id` = 5 WHERE `comment`.`comment_id` = 152;
UPDATE `comment` SET `comment_id` = 153,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576772',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 153;
UPDATE `comment` SET `comment_id` = 154,`user_id` = 3,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576786',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 154;
UPDATE `comment` SET `comment_id` = 155,`user_id` = 2,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576787',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 155;
UPDATE `comment` SET `comment_id` = 156,`user_id` = 5,`comment_date` = 4,`hanger_id` = 3,`comment` = '1400576793',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 156;
UPDATE `comment` SET `comment_id` = 157,`user_id` = 4,`comment_date` = 1400579378,`hanger_id` = 9,`comment` = 'asdf',`commented_user_id` = 33 WHERE `comment`.`comment_id` = 157;
UPDATE `comment` SET `comment_id` = 158,`user_id` = 4,`comment_date` = 1400579379,`hanger_id` = 9,`comment` = 'asdf',`commented_user_id` = 33 WHERE `comment`.`comment_id` = 158;
UPDATE `comment` SET `comment_id` = 159,`user_id` = 4,`comment_date` = 1400579436,`hanger_id` = 8,`comment` = 'zxcsdfsadf',`commented_user_id` = 32 WHERE `comment`.`comment_id` = 159;
UPDATE `comment` SET `comment_id` = 160,`user_id` = 4,`comment_date` = 1400579438,`hanger_id` = 8,`comment` = 'sadfasdf',`commented_user_id` = 32 WHERE `comment`.`comment_id` = 160;
UPDATE `comment` SET `comment_id` = 161,`user_id` = 4,`comment_date` = 1400579439,`hanger_id` = 8,`comment` = 'sadfasdf',`commented_user_id` = 32 WHERE `comment`.`comment_id` = 161;
UPDATE `comment` SET `comment_id` = 162,`user_id` = 4,`comment_date` = 1400579440,`hanger_id` = 8,`comment` = 'sadfsadf',`commented_user_id` = 32 WHERE `comment`.`comment_id` = 162;
UPDATE `comment` SET `comment_id` = 163,`user_id` = 4,`comment_date` = 1400579442,`hanger_id` = 8,`comment` = 'sadfsadf',`commented_user_id` = 32 WHERE `comment`.`comment_id` = 163;
UPDATE `comment` SET `comment_id` = 164,`user_id` = 4,`comment_date` = 1400579443,`hanger_id` = 8,`comment` = 'sadfasdf',`commented_user_id` = 32 WHERE `comment`.`comment_id` = 164;
UPDATE `comment` SET `comment_id` = 165,`user_id` = 4,`comment_date` = 1400579444,`hanger_id` = 8,`comment` = 'sadfsadf',`commented_user_id` = 32 WHERE `comment`.`comment_id` = 165;
UPDATE `comment` SET `comment_id` = 166,`user_id` = 4,`comment_date` = 1400579446,`hanger_id` = 8,`comment` = 'asdfsadf',`commented_user_id` = 32 WHERE `comment`.`comment_id` = 166;
UPDATE `comment` SET `comment_id` = 167,`user_id` = 4,`comment_date` = 1400583090,`hanger_id` = 11,`comment` = 'Canım çok güzel çıkmışsın :)',`commented_user_id` = 35 WHERE `comment`.`comment_id` = 167;
UPDATE `comment` SET `comment_id` = 168,`user_id` = 4,`comment_date` = 1400593481,`hanger_id` = 10,`comment` = 'sadf',`commented_user_id` = 34 WHERE `comment`.`comment_id` = 168;
UPDATE `comment` SET `comment_id` = 169,`user_id` = 4,`comment_date` = 1400593490,`hanger_id` = 11,`comment` = 'de',`commented_user_id` = 35 WHERE `comment`.`comment_id` = 169;
UPDATE `comment` SET `comment_id` = 170,`user_id` = 4,`comment_date` = 1400660389,`hanger_id` = 10,`comment` = 'chjgfjghj',`commented_user_id` = 34 WHERE `comment`.`comment_id` = 170;
UPDATE `comment` SET `comment_id` = 171,`user_id` = 4,`comment_date` = 1400660391,`hanger_id` = 10,`comment` = 'fghjgjf',`commented_user_id` = 34 WHERE `comment`.`comment_id` = 171;
UPDATE `comment` SET `comment_id` = 172,`user_id` = 4,`comment_date` = 1401315524,`hanger_id` = 14,`comment` = 'kahver',`commented_user_id` = 37 WHERE `comment`.`comment_id` = 172;
UPDATE `comment` SET `comment_id` = 173,`user_id` = 4,`comment_date` = 1401315727,`hanger_id` = 78,`comment` = 'dfsadasasdd',`commented_user_id` = 4 WHERE `comment`.`comment_id` = 173;
UPDATE `comment` SET `comment_id` = 174,`user_id` = 4,`comment_date` = 1401316828,`hanger_id` = 17,`comment` = 'denme',`commented_user_id` = 40 WHERE `comment`.`comment_id` = 174;
UPDATE `comment` SET `comment_id` = 175,`user_id` = 51,`comment_date` = 1401548354,`hanger_id` = 87,`comment` = 'dasdada',`commented_user_id` = 51 WHERE `comment`.`comment_id` = 175;

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

UPDATE `conversation` SET `c_id` = 1,`user_one` = 4,`user_two` = 5,`ip` = '',`conversation_date` = 1400677290,`receiver_read` = 0 WHERE `conversation`.`c_id` = 1;
UPDATE `conversation` SET `c_id` = 2,`user_one` = 4,`user_two` = 17,`ip` = '',`conversation_date` = 1400668743,`receiver_read` = 0 WHERE `conversation`.`c_id` = 2;
UPDATE `conversation` SET `c_id` = 3,`user_one` = 4,`user_two` = 23,`ip` = '',`conversation_date` = 1400524084,`receiver_read` = 0 WHERE `conversation`.`c_id` = 3;
UPDATE `conversation` SET `c_id` = 4,`user_one` = 27,`user_two` = 4,`ip` = '',`conversation_date` = 1400677314,`receiver_read` = 0 WHERE `conversation`.`c_id` = 4;

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

UPDATE `emails` SET `id` = 1,`mail` = 'mutazalkabir@gmail.com' WHERE `emails`.`id` = 1;
UPDATE `emails` SET `id` = 2,`mail` = '.eewre.' WHERE `emails`.`id` = 2;
UPDATE `emails` SET `id` = 3,`mail` = 'mutazalkabir@hotmail.com' WHERE `emails`.`id` = 3;
UPDATE `emails` SET `id` = 4,`mail` = 'mutaz_alkabir@hotmail.com' WHERE `emails`.`id` = 4;

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

UPDATE `fellowship` SET `fellower_id` = 4,`fellowed_id` = 5,`fellowship_id` = 1,`fellowship_date` = 1400187157 WHERE `fellowship`.`fellowship_id` = 1;
UPDATE `fellowship` SET `fellower_id` = 4,`fellowed_id` = 17,`fellowship_id` = 6,`fellowship_date` = 1400187163 WHERE `fellowship`.`fellowship_id` = 6;
UPDATE `fellowship` SET `fellower_id` = 4,`fellowed_id` = 18,`fellowship_id` = 7,`fellowship_date` = 1400187164 WHERE `fellowship`.`fellowship_id` = 7;
UPDATE `fellowship` SET `fellower_id` = 4,`fellowed_id` = 19,`fellowship_id` = 8,`fellowship_date` = 1400187165 WHERE `fellowship`.`fellowship_id` = 8;
UPDATE `fellowship` SET `fellower_id` = 4,`fellowed_id` = 20,`fellowship_id` = 9,`fellowship_date` = 1400187166 WHERE `fellowship`.`fellowship_id` = 9;
UPDATE `fellowship` SET `fellower_id` = 4,`fellowed_id` = 21,`fellowship_id` = 10,`fellowship_date` = 1400187167 WHERE `fellowship`.`fellowship_id` = 10;
UPDATE `fellowship` SET `fellower_id` = 4,`fellowed_id` = 22,`fellowship_id` = 11,`fellowship_date` = 1400187168 WHERE `fellowship`.`fellowship_id` = 11;
UPDATE `fellowship` SET `fellower_id` = 5,`fellowed_id` = 4,`fellowship_id` = 12,`fellowship_date` = 1400187169 WHERE `fellowship`.`fellowship_id` = 12;
UPDATE `fellowship` SET `fellower_id` = 17,`fellowed_id` = 4,`fellowship_id` = 13,`fellowship_date` = 1400187160 WHERE `fellowship`.`fellowship_id` = 13;
UPDATE `fellowship` SET `fellower_id` = 19,`fellowed_id` = 4,`fellowship_id` = 14,`fellowship_date` = 1400187160 WHERE `fellowship`.`fellowship_id` = 14;
UPDATE `fellowship` SET `fellower_id` = 20,`fellowed_id` = 4,`fellowship_id` = 15,`fellowship_date` = 1400187160 WHERE `fellowship`.`fellowship_id` = 15;
UPDATE `fellowship` SET `fellower_id` = 23,`fellowed_id` = 4,`fellowship_id` = 16,`fellowship_date` = 1400187160 WHERE `fellowship`.`fellowship_id` = 16;
UPDATE `fellowship` SET `fellower_id` = 25,`fellowed_id` = 4,`fellowship_id` = 17,`fellowship_date` = 1400187160 WHERE `fellowship`.`fellowship_id` = 17;
UPDATE `fellowship` SET `fellower_id` = 26,`fellowed_id` = 4,`fellowship_id` = 18,`fellowship_date` = 1400187158 WHERE `fellowship`.`fellowship_id` = 18;
UPDATE `fellowship` SET `fellower_id` = 5,`fellowed_id` = 17,`fellowship_id` = 19,`fellowship_date` = 1400187160 WHERE `fellowship`.`fellowship_id` = 19;
UPDATE `fellowship` SET `fellower_id` = 5,`fellowed_id` = 29,`fellowship_id` = 21,`fellowship_date` = 1400187160 WHERE `fellowship`.`fellowship_id` = 21;
UPDATE `fellowship` SET `fellower_id` = 5,`fellowed_id` = 28,`fellowship_id` = 22,`fellowship_date` = 1400187159 WHERE `fellowship`.`fellowship_id` = 22;
UPDATE `fellowship` SET `fellower_id` = 5,`fellowed_id` = 27,`fellowship_id` = 23,`fellowship_date` = 1400187154 WHERE `fellowship`.`fellowship_id` = 23;
UPDATE `fellowship` SET `fellower_id` = 5,`fellowed_id` = 26,`fellowship_id` = 24,`fellowship_date` = 1400187160 WHERE `fellowship`.`fellowship_id` = 24;
UPDATE `fellowship` SET `fellower_id` = 17,`fellowed_id` = 20,`fellowship_id` = 25,`fellowship_date` = 1400350567 WHERE `fellowship`.`fellowship_id` = 25;
UPDATE `fellowship` SET `fellower_id` = 17,`fellowed_id` = 20,`fellowship_id` = 30,`fellowship_date` = 1400521579 WHERE `fellowship`.`fellowship_id` = 30;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `gardrobe`
--

UPDATE `gardrobe` SET `gardrobe_id` = 1,`user_id` = 1,`gardrobe_name` = 'deneme',`about` = 'denme deneme deneme',`create_date` = 1399826280 WHERE `gardrobe`.`gardrobe_id` = 1;
UPDATE `gardrobe` SET `gardrobe_id` = 2,`user_id` = 32,`gardrobe_name` = 'Yeni Gardrobe',`about` = 'Yeni Gardrobe',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 2;
UPDATE `gardrobe` SET `gardrobe_id` = 3,`user_id` = 33,`gardrobe_name` = 'Yeni Gardrobe',`about` = 'Yeni Gardrobe',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 3;
UPDATE `gardrobe` SET `gardrobe_id` = 4,`user_id` = 34,`gardrobe_name` = 'Yeni Gardrobe',`about` = 'Yeni Gardrobe',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 4;
UPDATE `gardrobe` SET `gardrobe_id` = 5,`user_id` = 35,`gardrobe_name` = 'Yeni Gardrobe',`about` = 'Yeni Gardrobe',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 5;
UPDATE `gardrobe` SET `gardrobe_id` = 6,`user_id` = 5,`gardrobe_name` = 'Yeni Gardrobe',`about` = 'Yeni Gardrobe',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 6;
UPDATE `gardrobe` SET `gardrobe_id` = 7,`user_id` = 36,`gardrobe_name` = 'Gardrobe''larım',`about` = 'Bu gardrobe çok çok güzel :)',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 7;
UPDATE `gardrobe` SET `gardrobe_id` = 8,`user_id` = 37,`gardrobe_name` = 'Deneme gardrobe ',`about` = 'Deneme gardrobe ',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 8;
UPDATE `gardrobe` SET `gardrobe_id` = 9,`user_id` = 38,`gardrobe_name` = 'Başka Gardrobe',`about` = 'Çok güzel bir yer burası',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 9;
UPDATE `gardrobe` SET `gardrobe_id` = 10,`user_id` = 39,`gardrobe_name` = 'Benim gardrobe''um en güzel',`about` = 'Çok güzel gerçekten',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 10;
UPDATE `gardrobe` SET `gardrobe_id` = 11,`user_id` = 40,`gardrobe_name` = 'Son gardrobe',`about` = 'Hadi bakalım',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 11;
UPDATE `gardrobe` SET `gardrobe_id` = 12,`user_id` = 41,`gardrobe_name` = 'Bence bitti',`about` = 'Bence de bitti',`create_date` = 0 WHERE `gardrobe`.`gardrobe_id` = 12;
UPDATE `gardrobe` SET `gardrobe_id` = 13,`user_id` = 0,`gardrobe_name` = 'Oldu Mu?',`about` = '',`create_date` = 1400790645 WHERE `gardrobe`.`gardrobe_id` = 13;
UPDATE `gardrobe` SET `gardrobe_id` = 14,`user_id` = 0,`gardrobe_name` = '"Deneme"',`about` = '"asdf"',`create_date` = 1400791992 WHERE `gardrobe`.`gardrobe_id` = 14;
UPDATE `gardrobe` SET `gardrobe_id` = 15,`user_id` = 0,`gardrobe_name` = 'Deneme',`about` = 'Deneme',`create_date` = 1400792020 WHERE `gardrobe`.`gardrobe_id` = 15;
UPDATE `gardrobe` SET `gardrobe_id` = 16,`user_id` = 1,`gardrobe_name` = 'Deneme',`about` = 'Deneme',`create_date` = 1400792160 WHERE `gardrobe`.`gardrobe_id` = 16;
UPDATE `gardrobe` SET `gardrobe_id` = 17,`user_id` = 1,`gardrobe_name` = 'dee',`about` = '',`create_date` = 1400792386 WHERE `gardrobe`.`gardrobe_id` = 17;
UPDATE `gardrobe` SET `gardrobe_id` = 18,`user_id` = 1,`gardrobe_name` = 'deneme',`about` = 'dummy',`create_date` = 1400792428 WHERE `gardrobe`.`gardrobe_id` = 18;
UPDATE `gardrobe` SET `gardrobe_id` = 19,`user_id` = 1,`gardrobe_name` = 'olur',`about` = 'dummy',`create_date` = 1400793010 WHERE `gardrobe`.`gardrobe_id` = 19;
UPDATE `gardrobe` SET `gardrobe_id` = 20,`user_id` = 1,`gardrobe_name` = 'oldu',`about` = 'dummy',`create_date` = 1400793306 WHERE `gardrobe`.`gardrobe_id` = 20;
UPDATE `gardrobe` SET `gardrobe_id` = 21,`user_id` = 1,`gardrobe_name` = 'lkjpğğpğpğpğ',`about` = 'dummy',`create_date` = 1400861702 WHERE `gardrobe`.`gardrobe_id` = 21;
UPDATE `gardrobe` SET `gardrobe_id` = 23,`user_id` = 1,`gardrobe_name` = 'Günlük Kıyafetler',`about` = 'dummy',`create_date` = 1400868614 WHERE `gardrobe`.`gardrobe_id` = 23;
UPDATE `gardrobe` SET `gardrobe_id` = 24,`user_id` = 4,`gardrobe_name` = 'asdasd',`about` = 'dummy',`create_date` = 1401226773 WHERE `gardrobe`.`gardrobe_id` = 24;
UPDATE `gardrobe` SET `gardrobe_id` = 25,`user_id` = 4,`gardrobe_name` = 'dadad',`about` = 'dummy',`create_date` = 1401226780 WHERE `gardrobe`.`gardrobe_id` = 25;
UPDATE `gardrobe` SET `gardrobe_id` = 26,`user_id` = 4,`gardrobe_name` = 'yeni',`about` = 'dummy',`create_date` = 1401227022 WHERE `gardrobe`.`gardrobe_id` = 26;
UPDATE `gardrobe` SET `gardrobe_id` = 27,`user_id` = 4,`gardrobe_name` = 'dhdh',`about` = 'dummy',`create_date` = 1401315662 WHERE `gardrobe`.`gardrobe_id` = 27;
UPDATE `gardrobe` SET `gardrobe_id` = 28,`user_id` = 50,`gardrobe_name` = 'aaa',`about` = 'dummy',`create_date` = 1401538951 WHERE `gardrobe`.`gardrobe_id` = 28;
UPDATE `gardrobe` SET `gardrobe_id` = 29,`user_id` = 50,`gardrobe_name` = 'asdasd',`about` = 'dummy',`create_date` = 1401539407 WHERE `gardrobe`.`gardrobe_id` = 29;
UPDATE `gardrobe` SET `gardrobe_id` = 30,`user_id` = 51,`gardrobe_name` = 'ilk gardrobum',`about` = 'genel',`create_date` = 1401548038 WHERE `gardrobe`.`gardrobe_id` = 30;
UPDATE `gardrobe` SET `gardrobe_id` = 31,`user_id` = 52,`gardrobe_name` = 'ilk gardrobum',`about` = 'genel',`create_date` = 1401629065 WHERE `gardrobe`.`gardrobe_id` = 31;
UPDATE `gardrobe` SET `gardrobe_id` = 32,`user_id` = 53,`gardrobe_name` = 'ilk gardrobum',`about` = 'genel',`create_date` = 1401629261 WHERE `gardrobe`.`gardrobe_id` = 32;
UPDATE `gardrobe` SET `gardrobe_id` = 33,`user_id` = 54,`gardrobe_name` = 'ilk gardrobum',`about` = 'genel',`create_date` = 1401629425 WHERE `gardrobe`.`gardrobe_id` = 33;

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
  `tags` varchar(8000) NOT NULL,
  `create_date` int(11) NOT NULL,
  UNIQUE KEY `hanger_id` (`hanger_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `hanger`
--

UPDATE `hanger` SET `hanger_id` = 8,`user_id` = 32,`category_id` = 2,`gardrobe_id` = 2,`about` = 'Okula gidiyor :(',`city` = 'Ankara',`place` = 'Starbucks',`pic_id` = '1.png',`tags` = '',`create_date` = 0 WHERE `hanger`.`hanger_id` = 8;
UPDATE `hanger` SET `hanger_id` = 9,`user_id` = 33,`category_id` = 2,`gardrobe_id` = 3,`about` = 'Sahilde vakit geçiriyor',`city` = 'İstanbul',`place` = 'Moda Sahili',`pic_id` = '2.png',`tags` = '',`create_date` = 0 WHERE `hanger`.`hanger_id` = 9;
UPDATE `hanger` SET `hanger_id` = 10,`user_id` = 34,`category_id` = 2,`gardrobe_id` = 4,`about` = 'Arkadaşlarla kahve keyfi',`city` = 'Trabzon',`place` = 'Meydan',`pic_id` = '3.png',`tags` = '',`create_date` = 0 WHERE `hanger`.`hanger_id` = 10;
UPDATE `hanger` SET `hanger_id` = 11,`user_id` = 35,`category_id` = 1,`gardrobe_id` = 5,`about` = 'Akşam arkadaşlarıyla buluşmak için hazırlanıyor.',`city` = 'Manisa',`place` = 'Manisa',`pic_id` = '4.png',`tags` = '',`create_date` = 0 WHERE `hanger`.`hanger_id` = 11;
UPDATE `hanger` SET `hanger_id` = 12,`user_id` = 1,`category_id` = 2,`gardrobe_id` = 1,`about` = 'Gün içerisinde rahatlıkla giyebileceğim kıyafetler!',`city` = 'Ankara',`place` = 'Çankaya',`pic_id` = '0.png',`tags` = '',`create_date` = 0 WHERE `hanger`.`hanger_id` = 12;
UPDATE `hanger` SET `hanger_id` = 13,`user_id` = 36,`category_id` = 2,`gardrobe_id` = 6,`about` = 'Yolculukta',`city` = 'Sakarya',`place` = 'Adapazarı',`pic_id` = '0.png',`tags` = '',`create_date` = 0 WHERE `hanger`.`hanger_id` = 13;
UPDATE `hanger` SET `hanger_id` = 14,`user_id` = 37,`category_id` = 2,`gardrobe_id` = 7,`about` = 'Kahve içiyor ve üşümüş :(',`city` = 'Ankara',`place` = 'TOBB ETÜ Starbucks',`pic_id` = '0.png',`tags` = '',`create_date` = 0 WHERE `hanger`.`hanger_id` = 14;
UPDATE `hanger` SET `hanger_id` = 15,`user_id` = 38,`category_id` = 2,`gardrobe_id` = 8,`about` = 'Tatilin tadını çıkartıyor :)',`city` = 'İzmir',`place` = 'Çeşme',`pic_id` = '0.png',`tags` = '',`create_date` = 0 WHERE `hanger`.`hanger_id` = 15;
UPDATE `hanger` SET `hanger_id` = 16,`user_id` = 39,`category_id` = 2,`gardrobe_id` = 9,`about` = 'Mezuniyet Balosu',`city` = 'Manisa',`place` = '',`pic_id` = '0.png',`tags` = '',`create_date` = 0 WHERE `hanger`.`hanger_id` = 16;
UPDATE `hanger` SET `hanger_id` = 17,`user_id` = 40,`category_id` = 2,`gardrobe_id` = 10,`about` = 'Dışarı çıkmaya hazırlanıyor ve heyecanlı :)',`city` = 'Ankara',`place` = '',`pic_id` = '0.png',`tags` = '',`create_date` = 0 WHERE `hanger`.`hanger_id` = 17;
UPDATE `hanger` SET `hanger_id` = 48,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 23,`about` = 'Starbucksta hep böyle giyinirim ben tabii ki ne olacaktı ki?',`city` = 'ANKARA',`place` = 'Starbucks',`pic_id` = 't8wfzlu9i2gw3o2t.jpg',`tags` = '',`create_date` = 1400868697 WHERE `hanger`.`hanger_id` = 48;
UPDATE `hanger` SET `hanger_id` = 49,`user_id` = 1,`category_id` = 2,`gardrobe_id` = 21,`about` = 'Deneme',`city` = 'ADIYAMAN',`place` = 'Deneme',`pic_id` = 'e26sw90bjnduqp23.jpg',`tags` = '',`create_date` = 1400869151 WHERE `hanger`.`hanger_id` = 49;
UPDATE `hanger` SET `hanger_id` = 50,`user_id` = 1,`category_id` = 0,`gardrobe_id` = 0,`about` = '',`city` = 'Şehir Seçiniz',`place` = '',`pic_id` = 'wa38k4bqxft8wpa2.jpg',`tags` = '',`create_date` = 1400869315 WHERE `hanger`.`hanger_id` = 50;
UPDATE `hanger` SET `hanger_id` = 51,`user_id` = 1,`category_id` = 0,`gardrobe_id` = 0,`about` = '',`city` = 'Şehir Seçiniz',`place` = '',`pic_id` = 'wa38k4bqxft8wpa2.jpg',`tags` = '',`create_date` = 1400869319 WHERE `hanger`.`hanger_id` = 51;
UPDATE `hanger` SET `hanger_id` = 52,`user_id` = 1,`category_id` = 0,`gardrobe_id` = 0,`about` = '',`city` = 'Şehir Seçiniz',`place` = '',`pic_id` = 'wa38k4bqxft8wpa2.jpg',`tags` = '',`create_date` = 1400869320 WHERE `hanger`.`hanger_id` = 52;
UPDATE `hanger` SET `hanger_id` = 53,`user_id` = 1,`category_id` = 0,`gardrobe_id` = 0,`about` = '',`city` = 'Şehir Seçiniz',`place` = '',`pic_id` = 'wa38k4bqxft8wpa2.jpg',`tags` = '',`create_date` = 1400869320 WHERE `hanger`.`hanger_id` = 53;
UPDATE `hanger` SET `hanger_id` = 54,`user_id` = 1,`category_id` = 0,`gardrobe_id` = 0,`about` = '',`city` = 'Şehir Seçiniz',`place` = '',`pic_id` = 'wa38k4bqxft8wpa2.jpg',`tags` = '',`create_date` = 1400869320 WHERE `hanger`.`hanger_id` = 54;
UPDATE `hanger` SET `hanger_id` = 55,`user_id` = 1,`category_id` = 0,`gardrobe_id` = 0,`about` = '',`city` = 'Şehir Seçiniz',`place` = '',`pic_id` = 'wa38k4bqxft8wpa2.jpg',`tags` = '',`create_date` = 1400869320 WHERE `hanger`.`hanger_id` = 55;
UPDATE `hanger` SET `hanger_id` = 56,`user_id` = 1,`category_id` = 0,`gardrobe_id` = 0,`about` = '',`city` = 'Şehir Seçiniz',`place` = '',`pic_id` = 'wa38k4bqxft8wpa2.jpg',`tags` = '',`create_date` = 1400869320 WHERE `hanger`.`hanger_id` = 56;
UPDATE `hanger` SET `hanger_id` = 57,`user_id` = 1,`category_id` = 0,`gardrobe_id` = 0,`about` = 'ıulhljkh',`city` = 'ADIYAMAN',`place` = 'şkj',`pic_id` = 'wa38k4bqxft8wpa2.jpg',`tags` = '',`create_date` = 1400869326 WHERE `hanger`.`hanger_id` = 57;
UPDATE `hanger` SET `hanger_id` = 58,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 0,`about` = 'ıulhljkh',`city` = 'ADIYAMAN',`place` = 'şkj',`pic_id` = 'wa38k4bqxft8wpa2.jpg',`tags` = '',`create_date` = 1400869329 WHERE `hanger`.`hanger_id` = 58;
UPDATE `hanger` SET `hanger_id` = 59,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 17,`about` = 'ıulhljkh',`city` = 'ADIYAMAN',`place` = 'şkj',`pic_id` = 'wa38k4bqxft8wpa2.jpg',`tags` = '',`create_date` = 1400869333 WHERE `hanger`.`hanger_id` = 59;
UPDATE `hanger` SET `hanger_id` = 60,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 17,`about` = 'jk',`city` = 'ADIYAMAN',`place` = 'km',`pic_id` = '585dirvulzxnczdx.jpg',`tags` = '',`create_date` = 1400872350 WHERE `hanger`.`hanger_id` = 60;
UPDATE `hanger` SET `hanger_id` = 61,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 17,`about` = 'asdf',`city` = 'AFYONKARAHİSAR',`place` = 'asdf',`pic_id` = 'o3mevxorle5ubvbh.jpg',`tags` = '',`create_date` = 1400949736 WHERE `hanger`.`hanger_id` = 61;
UPDATE `hanger` SET `hanger_id` = 62,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 17,`about` = 'asdf',`city` = 'AFYONKARAHİSAR',`place` = 'asdf',`pic_id` = 'o3mevxorle5ubvbh.jpg',`tags` = '',`create_date` = 1400949777 WHERE `hanger`.`hanger_id` = 62;
UPDATE `hanger` SET `hanger_id` = 63,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 18,`about` = 'asdfasfasdfasdfdaf',`city` = 'AMASYA',`place` = 'asdfasdsdfasdf',`pic_id` = 'k5pwj7v6d9uuo4tx.jpg',`tags` = '[{"id":200,"text":"Pantalon","brand":"Armani","left":150,"top":150,"url":"","isDeleteEnable":true,"height":30,"width":30},{"id":25,"text":"Kot Pantalon","brand":"Armani","left":206,"top":388,"width":24,"height":24,"url":"names.php?id=25","isDeleteEnable":true},{"id":35,"text":"T-Shirt","brand":"Tommy","left":22,"top":278,"width":24,"height":24,"url":"names.php?id=35","isDeleteEnable":true},{"id":25,"text":"Kot Pantalon","brand":"Lacoste","left":321,"top":115,"width":24,"height":24,"url":"names.php?id=25","isDeleteEnable":true}]',`create_date` = 1400950783 WHERE `hanger`.`hanger_id` = 63;
UPDATE `hanger` SET `hanger_id` = 64,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 23,`about` = 'Gitar çalarken bile rahat ettiğim bu kıyafetler ile her yere giderim ben yahu! :)',`city` = 'ANKARA',`place` = 'Evim evim güzel evim :)',`pic_id` = 'a0jd3dxliaw72g69.jpg',`tags` = '[{"id":200,"text":"Pantalon","brand":"Armani","left":150,"top":150,"url":"","isDeleteEnable":true,"height":30,"width":30},{"id":35,"text":"T-Shirt","brand":"Tommy","left":243,"top":249,"width":24,"height":24,"url":"names.php?id=35","isDeleteEnable":true},{"id":25,"text":"Kot Pantalon","brand":"Fred Perry","left":71,"top":437,"width":24,"height":24,"url":"names.php?id=25","isDeleteEnable":true}]',`create_date` = 1400956107 WHERE `hanger`.`hanger_id` = 64;
UPDATE `hanger` SET `hanger_id` = 65,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 17,`about` = 'asdf',`city` = 'ADIYAMAN',`place` = 'asdf',`pic_id` = 'cqcahu99gvxilmdl.jpg',`tags` = '[{"id":200,"text":"Pantalon","brand":"Armani","left":150,"top":150,"url":"","isDeleteEnable":true,"height":30,"width":30},{"id":25,"text":"Kot Pantalon","brand":"Armani","left":390,"top":380,"width":24,"height":24,"url":"names.php?id=25","isDeleteEnable":true}]',`create_date` = 1400956857 WHERE `hanger`.`hanger_id` = 65;
UPDATE `hanger` SET `hanger_id` = 66,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 16,`about` = 'asdf',`city` = 'ADIYAMAN',`place` = 'asdf',`pic_id` = '9k25nnwh3js1wjtl.jpg',`tags` = '[{"id":200,"text":"Pantalon","brand":"Armani","left":150,"top":150,"url":"","isDeleteEnable":true,"height":30,"width":30},{"id":25,"text":"Kot Pantalon","brand":"Armani","left":204,"top":169,"width":24,"height":24,"url":"names.php?id=25","isDeleteEnable":true}]',`create_date` = 1400957816 WHERE `hanger`.`hanger_id` = 66;
UPDATE `hanger` SET `hanger_id` = 67,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 16,`about` = 'Güzel şeyler yerken güzel giyinmek gerek:)',`city` = 'ADANA',`place` = 'Sacher Cafe',`pic_id` = '05xbmex6e1fvz4s9.jpg',`tags` = '[{"id":200,"text":"Pantalon","brand":"Armani","left":150,"top":150,"url":"","isDeleteEnable":true,"height":30,"width":30},{"id":35,"text":"T-Shirt","brand":"Fred Perry","left":298,"top":388,"width":24,"height":24,"url":"names.php?id=35","isDeleteEnable":true}]',`create_date` = 1400958359 WHERE `hanger`.`hanger_id` = 67;
UPDATE `hanger` SET `hanger_id` = 68,`user_id` = 1,`category_id` = 2,`gardrobe_id` = 0,`about` = 'asdf',`city` = 'ADIYAMAN',`place` = 'asdf',`pic_id` = 'k80vrwkzo6h9h9w1.jpg',`tags` = '[{"id":200,"text":"Pantalon","brand":"Armani","left":150,"top":150,"url":"","isDeleteEnable":true,"height":30,"width":30},{"id":35,"text":"T-Shirt","brand":"Lacoste","left":232,"top":264,"width":24,"height":24,"url":"names.php?id=35","isDeleteEnable":true},{"id":25,"text":"Kot Pantalon","brand":"Lacoste","left":104,"top":324,"width":24,"height":24,"url":"names.php?id=25","isDeleteEnable":true}]',`create_date` = 1400958523 WHERE `hanger`.`hanger_id` = 68;
UPDATE `hanger` SET `hanger_id` = 69,`user_id` = 1,`category_id` = 2,`gardrobe_id` = 0,`about` = 'asdf',`city` = 'ADIYAMAN',`place` = 'asdf',`pic_id` = 'k80vrwkzo6h9h9w1.jpg',`tags` = '[{"id":200,"text":"Pantalon","brand":"Armani","left":150,"top":150,"url":"","isDeleteEnable":true,"height":30,"width":30},{"id":35,"text":"T-Shirt","brand":"Lacoste","left":232,"top":264,"width":24,"height":24,"url":"names.php?id=35","isDeleteEnable":true},{"id":25,"text":"Kot Pantalon","brand":"Lacoste","left":104,"top":324,"width":24,"height":24,"url":"names.php?id=25","isDeleteEnable":true}]',`create_date` = 1400958525 WHERE `hanger`.`hanger_id` = 69;
UPDATE `hanger` SET `hanger_id` = 70,`user_id` = 1,`category_id` = 2,`gardrobe_id` = 0,`about` = 'asdf',`city` = 'ADIYAMAN',`place` = 'asdf',`pic_id` = 'k80vrwkzo6h9h9w1.jpg',`tags` = '[{"id":200,"text":"Pantalon","brand":"Armani","left":150,"top":150,"url":"","isDeleteEnable":true,"height":30,"width":30},{"id":35,"text":"T-Shirt","brand":"Lacoste","left":232,"top":264,"width":24,"height":24,"url":"names.php?id=35","isDeleteEnable":true},{"id":25,"text":"Kot Pantalon","brand":"Lacoste","left":104,"top":324,"width":24,"height":24,"url":"names.php?id=25","isDeleteEnable":true}]',`create_date` = 1400958525 WHERE `hanger`.`hanger_id` = 70;
UPDATE `hanger` SET `hanger_id` = 71,`user_id` = 1,`category_id` = 2,`gardrobe_id` = 17,`about` = 'asdf',`city` = 'AMASYA',`place` = 'asdf',`pic_id` = 'k80vrwkzo6h9h9w1.jpg',`tags` = '[{"id":200,"text":"Pantalon","brand":"Armani","left":150,"top":150,"url":"","isDeleteEnable":true,"height":30,"width":30},{"id":35,"text":"T-Shirt","brand":"Lacoste","left":232,"top":264,"width":24,"height":24,"url":"names.php?id=35","isDeleteEnable":true},{"id":25,"text":"Kot Pantalon","brand":"Lacoste","left":104,"top":324,"width":24,"height":24,"url":"names.php?id=25","isDeleteEnable":true}]',`create_date` = 1400958529 WHERE `hanger`.`hanger_id` = 71;
UPDATE `hanger` SET `hanger_id` = 72,`user_id` = 1,`category_id` = 1,`gardrobe_id` = 17,`about` = 'asdf',`city` = 'AFYONKARAHİSAR',`place` = 'asdf',`pic_id` = 'dvakxru1rnm4hjqg.jpg',`tags` = '[{"id":200,"text":"Pantalon","brand":"Armani","left":150,"top":150,"url":"","isDeleteEnable":true,"height":30,"width":30},{"id":35,"text":"T-Shirt","brand":"Fred Perry","left":230,"top":306,"width":24,"height":24,"url":"names.php?id=35","isDeleteEnable":true},{"id":35,"text":"T-Shirt","brand":"Lacoste","left":179,"top":261,"width":24,"height":24,"url":"names.php?id=35","isDeleteEnable":true}]',`create_date` = 1400959637 WHERE `hanger`.`hanger_id` = 72;
UPDATE `hanger` SET `hanger_id` = 73,`user_id` = 4,`category_id` = 1,`gardrobe_id` = 0,`about` = 'dasdaddas',`city` = 'ADANA',`place` = 'asda',`pic_id` = 'h78ocitwnp3m0513.png',`tags` = '[]',`create_date` = 1401226852 WHERE `hanger`.`hanger_id` = 73;
UPDATE `hanger` SET `hanger_id` = 74,`user_id` = 4,`category_id` = 1,`gardrobe_id` = 0,`about` = 'dasdaddas',`city` = 'ADANA',`place` = 'asda',`pic_id` = 'h78ocitwnp3m0513.png',`tags` = '[]',`create_date` = 1401226867 WHERE `hanger`.`hanger_id` = 74;
UPDATE `hanger` SET `hanger_id` = 75,`user_id` = 4,`category_id` = 1,`gardrobe_id` = 25,`about` = 'sdasd',`city` = 'ADANA',`place` = 'asda',`pic_id` = 'l276v1q0dlmtt7dc.png',`tags` = '[]',`create_date` = 1401226980 WHERE `hanger`.`hanger_id` = 75;
UPDATE `hanger` SET `hanger_id` = 76,`user_id` = 4,`category_id` = 1,`gardrobe_id` = 26,`about` = 'aaaaa',`city` = 'ADANA',`place` = 'burası',`pic_id` = 'zqx5sewj9bqwh3rd.png',`tags` = '[]',`create_date` = 1401227034 WHERE `hanger`.`hanger_id` = 76;
UPDATE `hanger` SET `hanger_id` = 77,`user_id` = 4,`category_id` = 1,`gardrobe_id` = 26,`about` = 'aaaaa',`city` = 'ADANA',`place` = 'burası',`pic_id` = 'iwo8guhbduabz6hp.png',`tags` = '[]',`create_date` = 1401227064 WHERE `hanger`.`hanger_id` = 77;
UPDATE `hanger` SET `hanger_id` = 78,`user_id` = 4,`category_id` = 2,`gardrobe_id` = 26,`about` = 'oo ne güzel',`city` = 'ANTALYA',`place` = 'starbuck',`pic_id` = 'rk3zhi2vxdfd61x8.png',`tags` = '[]',`create_date` = 1401315712 WHERE `hanger`.`hanger_id` = 78;
UPDATE `hanger` SET `hanger_id` = 79,`user_id` = 4,`category_id` = 0,`gardrobe_id` = 0,`about` = '',`city` = 'Şehir Seçiniz',`place` = '',`pic_id` = 'm3otawgrqgkrgu9j.png',`tags` = '[]',`create_date` = 1401316809 WHERE `hanger`.`hanger_id` = 79;
UPDATE `hanger` SET `hanger_id` = 80,`user_id` = 50,`category_id` = 1,`gardrobe_id` = 0,`about` = 'sadsadasda',`city` = 'ADANA',`place` = 'asa',`pic_id` = '77b8p4aar69fjp83.png',`tags` = '[]',`create_date` = 1401538968 WHERE `hanger`.`hanger_id` = 80;
UPDATE `hanger` SET `hanger_id` = 81,`user_id` = 50,`category_id` = 1,`gardrobe_id` = 0,`about` = 'asdasdasdaaadas',`city` = 'AĞRI',`place` = 'sadas',`pic_id` = 'cfuej038mn0hs0zi.png',`tags` = '[]',`create_date` = 1401539031 WHERE `hanger`.`hanger_id` = 81;
UPDATE `hanger` SET `hanger_id` = 82,`user_id` = 50,`category_id` = 2,`gardrobe_id` = 0,`about` = 'asdasdas',`city` = 'ADIYAMAN',`place` = 'sadas',`pic_id` = 'mlb196a7cccwrf0g.png',`tags` = '[]',`create_date` = 1401539073 WHERE `hanger`.`hanger_id` = 82;
UPDATE `hanger` SET `hanger_id` = 83,`user_id` = 50,`category_id` = 1,`gardrobe_id` = 0,`about` = 'sadasd',`city` = 'AFYONKARAHİSAR',`place` = 'asdas',`pic_id` = 'xztix1zp0fhfdgxi.png',`tags` = '[]',`create_date` = 1401539387 WHERE `hanger`.`hanger_id` = 83;
UPDATE `hanger` SET `hanger_id` = 84,`user_id` = 50,`category_id` = 2,`gardrobe_id` = 29,`about` = 'asdadas',`city` = 'ADIYAMAN',`place` = 'ada',`pic_id` = 'ldg26zt91ng9vv4f.png',`tags` = '[]',`create_date` = 1401539423 WHERE `hanger`.`hanger_id` = 84;
UPDATE `hanger` SET `hanger_id` = 85,`user_id` = 50,`category_id` = 2,`gardrobe_id` = 29,`about` = 'asdasdassd',`city` = 'ADANA',`place` = 'asdas',`pic_id` = '7zeqkmi0vstnoqvj.png',`tags` = '[]',`create_date` = 1401539626 WHERE `hanger`.`hanger_id` = 85;
UPDATE `hanger` SET `hanger_id` = 86,`user_id` = 50,`category_id` = 1,`gardrobe_id` = 28,`about` = 'sadsadas',`city` = 'AFYONKARAHİSAR',`place` = 'sadsa',`pic_id` = '19n3s9itox8721br.png',`tags` = '[]',`create_date` = 1401539723 WHERE `hanger`.`hanger_id` = 86;
UPDATE `hanger` SET `hanger_id` = 87,`user_id` = 51,`category_id` = 2,`gardrobe_id` = 30,`about` = 'asdasdasdas',`city` = 'ADIYAMAN',`place` = 'dda',`pic_id` = 'd12wmael4rmipuad.png',`tags` = '[]',`create_date` = 1401548340 WHERE `hanger`.`hanger_id` = 87;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `likes`
--

UPDATE `likes` SET `like_id` = 1,`liked_id` = 1,`user_id` = 4,`liked_type_id` = 1,`like_date` = 0,`liked_user_id` = 5 WHERE `likes`.`like_id` = 1;
UPDATE `likes` SET `like_id` = 2,`liked_id` = 2,`user_id` = 4,`liked_type_id` = 1,`like_date` = 0,`liked_user_id` = 5 WHERE `likes`.`like_id` = 2;
UPDATE `likes` SET `like_id` = 3,`liked_id` = 3,`user_id` = 4,`liked_type_id` = 1,`like_date` = 0,`liked_user_id` = 5 WHERE `likes`.`like_id` = 3;
UPDATE `likes` SET `like_id` = 4,`liked_id` = 1,`user_id` = 5,`liked_type_id` = 1,`like_date` = 0,`liked_user_id` = 4 WHERE `likes`.`like_id` = 4;
UPDATE `likes` SET `like_id` = 5,`liked_id` = 1,`user_id` = 4,`liked_type_id` = 1,`like_date` = 0,`liked_user_id` = 5 WHERE `likes`.`like_id` = 5;
UPDATE `likes` SET `like_id` = 6,`liked_id` = 1,`user_id` = 5,`liked_type_id` = 2,`like_date` = 0,`liked_user_id` = 4 WHERE `likes`.`like_id` = 6;
UPDATE `likes` SET `like_id` = 7,`liked_id` = 1,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400576955,`liked_user_id` = 5 WHERE `likes`.`like_id` = 7;
UPDATE `likes` SET `like_id` = 8,`liked_id` = 2,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400576956,`liked_user_id` = 4 WHERE `likes`.`like_id` = 8;
UPDATE `likes` SET `like_id` = 9,`liked_id` = 3,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400576958,`liked_user_id` = 4 WHERE `likes`.`like_id` = 9;
UPDATE `likes` SET `like_id` = 10,`liked_id` = 1,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400577229,`liked_user_id` = 5 WHERE `likes`.`like_id` = 10;
UPDATE `likes` SET `like_id` = 11,`liked_id` = 2,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400577235,`liked_user_id` = 4 WHERE `likes`.`like_id` = 11;
UPDATE `likes` SET `like_id` = 12,`liked_id` = 1,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400577284,`liked_user_id` = 5 WHERE `likes`.`like_id` = 12;
UPDATE `likes` SET `like_id` = 13,`liked_id` = 1,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400577300,`liked_user_id` = 5 WHERE `likes`.`like_id` = 13;
UPDATE `likes` SET `like_id` = 14,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400579391,`liked_user_id` = 33 WHERE `likes`.`like_id` = 14;
UPDATE `likes` SET `like_id` = 15,`liked_id` = 8,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581813,`liked_user_id` = 32 WHERE `likes`.`like_id` = 15;
UPDATE `likes` SET `like_id` = 16,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581815,`liked_user_id` = 33 WHERE `likes`.`like_id` = 16;
UPDATE `likes` SET `like_id` = 17,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581815,`liked_user_id` = 33 WHERE `likes`.`like_id` = 17;
UPDATE `likes` SET `like_id` = 18,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581815,`liked_user_id` = 33 WHERE `likes`.`like_id` = 18;
UPDATE `likes` SET `like_id` = 19,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581815,`liked_user_id` = 33 WHERE `likes`.`like_id` = 19;
UPDATE `likes` SET `like_id` = 20,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581815,`liked_user_id` = 33 WHERE `likes`.`like_id` = 20;
UPDATE `likes` SET `like_id` = 21,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581815,`liked_user_id` = 33 WHERE `likes`.`like_id` = 21;
UPDATE `likes` SET `like_id` = 22,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581816,`liked_user_id` = 33 WHERE `likes`.`like_id` = 22;
UPDATE `likes` SET `like_id` = 23,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581816,`liked_user_id` = 33 WHERE `likes`.`like_id` = 23;
UPDATE `likes` SET `like_id` = 24,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581816,`liked_user_id` = 33 WHERE `likes`.`like_id` = 24;
UPDATE `likes` SET `like_id` = 25,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581816,`liked_user_id` = 33 WHERE `likes`.`like_id` = 25;
UPDATE `likes` SET `like_id` = 26,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581816,`liked_user_id` = 33 WHERE `likes`.`like_id` = 26;
UPDATE `likes` SET `like_id` = 27,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581816,`liked_user_id` = 33 WHERE `likes`.`like_id` = 27;
UPDATE `likes` SET `like_id` = 28,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400581817,`liked_user_id` = 33 WHERE `likes`.`like_id` = 28;
UPDATE `likes` SET `like_id` = 29,`liked_id` = 8,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400583034,`liked_user_id` = 32 WHERE `likes`.`like_id` = 29;
UPDATE `likes` SET `like_id` = 30,`liked_id` = 8,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400587777,`liked_user_id` = 32 WHERE `likes`.`like_id` = 30;
UPDATE `likes` SET `like_id` = 31,`liked_id` = 8,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400587778,`liked_user_id` = 32 WHERE `likes`.`like_id` = 31;
UPDATE `likes` SET `like_id` = 32,`liked_id` = 8,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400587778,`liked_user_id` = 32 WHERE `likes`.`like_id` = 32;
UPDATE `likes` SET `like_id` = 33,`liked_id` = 8,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400587778,`liked_user_id` = 32 WHERE `likes`.`like_id` = 33;
UPDATE `likes` SET `like_id` = 34,`liked_id` = 8,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400587898,`liked_user_id` = 32 WHERE `likes`.`like_id` = 34;
UPDATE `likes` SET `like_id` = 35,`liked_id` = 8,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400592079,`liked_user_id` = 32 WHERE `likes`.`like_id` = 35;
UPDATE `likes` SET `like_id` = 36,`liked_id` = 9,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400592082,`liked_user_id` = 33 WHERE `likes`.`like_id` = 36;
UPDATE `likes` SET `like_id` = 37,`liked_id` = 8,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400787926,`liked_user_id` = 32 WHERE `likes`.`like_id` = 37;
UPDATE `likes` SET `like_id` = 38,`liked_id` = 8,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1400787927,`liked_user_id` = 32 WHERE `likes`.`like_id` = 38;
UPDATE `likes` SET `like_id` = 39,`liked_id` = 29,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861675,`liked_user_id` = 1 WHERE `likes`.`like_id` = 39;
UPDATE `likes` SET `like_id` = 40,`liked_id` = 29,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861675,`liked_user_id` = 1 WHERE `likes`.`like_id` = 40;
UPDATE `likes` SET `like_id` = 41,`liked_id` = 29,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861675,`liked_user_id` = 1 WHERE `likes`.`like_id` = 41;
UPDATE `likes` SET `like_id` = 42,`liked_id` = 29,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861675,`liked_user_id` = 1 WHERE `likes`.`like_id` = 42;
UPDATE `likes` SET `like_id` = 43,`liked_id` = 30,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861683,`liked_user_id` = 1 WHERE `likes`.`like_id` = 43;
UPDATE `likes` SET `like_id` = 44,`liked_id` = 30,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861683,`liked_user_id` = 1 WHERE `likes`.`like_id` = 44;
UPDATE `likes` SET `like_id` = 45,`liked_id` = 30,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861683,`liked_user_id` = 1 WHERE `likes`.`like_id` = 45;
UPDATE `likes` SET `like_id` = 46,`liked_id` = 30,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861683,`liked_user_id` = 1 WHERE `likes`.`like_id` = 46;
UPDATE `likes` SET `like_id` = 47,`liked_id` = 20,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861893,`liked_user_id` = 4 WHERE `likes`.`like_id` = 47;
UPDATE `likes` SET `like_id` = 48,`liked_id` = 20,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861893,`liked_user_id` = 4 WHERE `likes`.`like_id` = 48;
UPDATE `likes` SET `like_id` = 49,`liked_id` = 20,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861893,`liked_user_id` = 4 WHERE `likes`.`like_id` = 49;
UPDATE `likes` SET `like_id` = 50,`liked_id` = 20,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861894,`liked_user_id` = 4 WHERE `likes`.`like_id` = 50;
UPDATE `likes` SET `like_id` = 51,`liked_id` = 20,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861894,`liked_user_id` = 4 WHERE `likes`.`like_id` = 51;
UPDATE `likes` SET `like_id` = 52,`liked_id` = 20,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400861894,`liked_user_id` = 4 WHERE `likes`.`like_id` = 52;
UPDATE `likes` SET `like_id` = 53,`liked_id` = 11,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869377,`liked_user_id` = 35 WHERE `likes`.`like_id` = 53;
UPDATE `likes` SET `like_id` = 54,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869379,`liked_user_id` = 1 WHERE `likes`.`like_id` = 54;
UPDATE `likes` SET `like_id` = 55,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869379,`liked_user_id` = 1 WHERE `likes`.`like_id` = 55;
UPDATE `likes` SET `like_id` = 56,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869379,`liked_user_id` = 1 WHERE `likes`.`like_id` = 56;
UPDATE `likes` SET `like_id` = 57,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869379,`liked_user_id` = 1 WHERE `likes`.`like_id` = 57;
UPDATE `likes` SET `like_id` = 58,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869379,`liked_user_id` = 1 WHERE `likes`.`like_id` = 58;
UPDATE `likes` SET `like_id` = 59,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869380,`liked_user_id` = 1 WHERE `likes`.`like_id` = 59;
UPDATE `likes` SET `like_id` = 60,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869380,`liked_user_id` = 1 WHERE `likes`.`like_id` = 60;
UPDATE `likes` SET `like_id` = 61,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869380,`liked_user_id` = 1 WHERE `likes`.`like_id` = 61;
UPDATE `likes` SET `like_id` = 62,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869380,`liked_user_id` = 1 WHERE `likes`.`like_id` = 62;
UPDATE `likes` SET `like_id` = 63,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869380,`liked_user_id` = 1 WHERE `likes`.`like_id` = 63;
UPDATE `likes` SET `like_id` = 64,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869380,`liked_user_id` = 1 WHERE `likes`.`like_id` = 64;
UPDATE `likes` SET `like_id` = 65,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869380,`liked_user_id` = 1 WHERE `likes`.`like_id` = 65;
UPDATE `likes` SET `like_id` = 66,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869381,`liked_user_id` = 1 WHERE `likes`.`like_id` = 66;
UPDATE `likes` SET `like_id` = 67,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869381,`liked_user_id` = 1 WHERE `likes`.`like_id` = 67;
UPDATE `likes` SET `like_id` = 68,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869381,`liked_user_id` = 1 WHERE `likes`.`like_id` = 68;
UPDATE `likes` SET `like_id` = 69,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869381,`liked_user_id` = 1 WHERE `likes`.`like_id` = 69;
UPDATE `likes` SET `like_id` = 70,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869381,`liked_user_id` = 1 WHERE `likes`.`like_id` = 70;
UPDATE `likes` SET `like_id` = 71,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869381,`liked_user_id` = 1 WHERE `likes`.`like_id` = 71;
UPDATE `likes` SET `like_id` = 72,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869381,`liked_user_id` = 1 WHERE `likes`.`like_id` = 72;
UPDATE `likes` SET `like_id` = 73,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869382,`liked_user_id` = 1 WHERE `likes`.`like_id` = 73;
UPDATE `likes` SET `like_id` = 74,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869382,`liked_user_id` = 1 WHERE `likes`.`like_id` = 74;
UPDATE `likes` SET `like_id` = 75,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869382,`liked_user_id` = 1 WHERE `likes`.`like_id` = 75;
UPDATE `likes` SET `like_id` = 76,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869382,`liked_user_id` = 1 WHERE `likes`.`like_id` = 76;
UPDATE `likes` SET `like_id` = 77,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869382,`liked_user_id` = 1 WHERE `likes`.`like_id` = 77;
UPDATE `likes` SET `like_id` = 78,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869382,`liked_user_id` = 1 WHERE `likes`.`like_id` = 78;
UPDATE `likes` SET `like_id` = 79,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869382,`liked_user_id` = 1 WHERE `likes`.`like_id` = 79;
UPDATE `likes` SET `like_id` = 80,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869383,`liked_user_id` = 1 WHERE `likes`.`like_id` = 80;
UPDATE `likes` SET `like_id` = 81,`liked_id` = 59,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400869383,`liked_user_id` = 1 WHERE `likes`.`like_id` = 81;
UPDATE `likes` SET `like_id` = 82,`liked_id` = 63,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400955324,`liked_user_id` = 1 WHERE `likes`.`like_id` = 82;
UPDATE `likes` SET `like_id` = 83,`liked_id` = 67,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400960774,`liked_user_id` = 1 WHERE `likes`.`like_id` = 83;
UPDATE `likes` SET `like_id` = 84,`liked_id` = 67,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400960774,`liked_user_id` = 1 WHERE `likes`.`like_id` = 84;
UPDATE `likes` SET `like_id` = 85,`liked_id` = 67,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400960774,`liked_user_id` = 1 WHERE `likes`.`like_id` = 85;
UPDATE `likes` SET `like_id` = 86,`liked_id` = 67,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400960774,`liked_user_id` = 1 WHERE `likes`.`like_id` = 86;
UPDATE `likes` SET `like_id` = 87,`liked_id` = 67,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400960775,`liked_user_id` = 1 WHERE `likes`.`like_id` = 87;
UPDATE `likes` SET `like_id` = 88,`liked_id` = 67,`user_id` = 1,`liked_type_id` = 3,`like_date` = 1400960775,`liked_user_id` = 1 WHERE `likes`.`like_id` = 88;
UPDATE `likes` SET `like_id` = 89,`liked_id` = 61,`user_id` = 4,`liked_type_id` = 3,`like_date` = 1401315534,`liked_user_id` = 1 WHERE `likes`.`like_id` = 89;
UPDATE `likes` SET `like_id` = 90,`liked_id` = 65,`user_id` = 50,`liked_type_id` = 3,`like_date` = 1401539739,`liked_user_id` = 1 WHERE `likes`.`like_id` = 90;
UPDATE `likes` SET `like_id` = 91,`liked_id` = 85,`user_id` = 50,`liked_type_id` = 3,`like_date` = 1401539745,`liked_user_id` = 50 WHERE `likes`.`like_id` = 91;
UPDATE `likes` SET `like_id` = 92,`liked_id` = 87,`user_id` = 51,`liked_type_id` = 3,`like_date` = 1401548349,`liked_user_id` = 51 WHERE `likes`.`like_id` = 92;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=296 ;

--
-- Dumping data for table `notifications`
--

UPDATE `notifications` SET `notification_id` = 1,`notifier_id` = 17,`notified_id` = 20,`notification_type_id` = 4,`notificated_item_id` = 0,`notification_date` = 1400350567 WHERE `notifications`.`notification_id` = 1;
UPDATE `notifications` SET `notification_id` = 5,`notifier_id` = 17,`notified_id` = 4,`notification_type_id` = 3,`notificated_item_id` = 1,`notification_date` = 1400354376 WHERE `notifications`.`notification_id` = 5;
UPDATE `notifications` SET `notification_id` = 7,`notifier_id` = 17,`notified_id` = 20,`notification_type_id` = 4,`notificated_item_id` = 0,`notification_date` = 1400521579 WHERE `notifications`.`notification_id` = 7;
UPDATE `notifications` SET `notification_id` = 8,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 3,`notificated_item_id` = 1,`notification_date` = 1400529209 WHERE `notifications`.`notification_id` = 8;
UPDATE `notifications` SET `notification_id` = 9,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 3,`notificated_item_id` = 1,`notification_date` = 1400566036 WHERE `notifications`.`notification_id` = 9;
UPDATE `notifications` SET `notification_id` = 10,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 3,`notificated_item_id` = 1,`notification_date` = 1400566136 WHERE `notifications`.`notification_id` = 10;
UPDATE `notifications` SET `notification_id` = 11,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 3,`notificated_item_id` = 3,`notification_date` = 1400566164 WHERE `notifications`.`notification_id` = 11;
UPDATE `notifications` SET `notification_id` = 12,`notifier_id` = 0,`notified_id` = 0,`notification_type_id` = 3,`notificated_item_id` = 0,`notification_date` = 1400566445 WHERE `notifications`.`notification_id` = 12;
UPDATE `notifications` SET `notification_id` = 13,`notifier_id` = 4,`notified_id` = 2,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400566727 WHERE `notifications`.`notification_id` = 13;
UPDATE `notifications` SET `notification_id` = 14,`notifier_id` = 4,`notified_id` = 2,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400566789 WHERE `notifications`.`notification_id` = 14;
UPDATE `notifications` SET `notification_id` = 15,`notifier_id` = 4,`notified_id` = 2,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400570015 WHERE `notifications`.`notification_id` = 15;
UPDATE `notifications` SET `notification_id` = 16,`notifier_id` = 4,`notified_id` = 2,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400570020 WHERE `notifications`.`notification_id` = 16;
UPDATE `notifications` SET `notification_id` = 17,`notifier_id` = 4,`notified_id` = 0,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400570258 WHERE `notifications`.`notification_id` = 17;
UPDATE `notifications` SET `notification_id` = 18,`notifier_id` = 4,`notified_id` = 0,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400570407 WHERE `notifications`.`notification_id` = 18;
UPDATE `notifications` SET `notification_id` = 19,`notifier_id` = 4,`notified_id` = 0,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400570477 WHERE `notifications`.`notification_id` = 19;
UPDATE `notifications` SET `notification_id` = 20,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400570502 WHERE `notifications`.`notification_id` = 20;
UPDATE `notifications` SET `notification_id` = 21,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 3,`notificated_item_id` = 1,`notification_date` = 1400570803 WHERE `notifications`.`notification_id` = 21;
UPDATE `notifications` SET `notification_id` = 22,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 3,`notificated_item_id` = 1,`notification_date` = 1400570816 WHERE `notifications`.`notification_id` = 22;
UPDATE `notifications` SET `notification_id` = 23,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 3,`notificated_item_id` = 1,`notification_date` = 1400570822 WHERE `notifications`.`notification_id` = 23;
UPDATE `notifications` SET `notification_id` = 24,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400570859 WHERE `notifications`.`notification_id` = 24;
UPDATE `notifications` SET `notification_id` = 25,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400570886 WHERE `notifications`.`notification_id` = 25;
UPDATE `notifications` SET `notification_id` = 26,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400570947 WHERE `notifications`.`notification_id` = 26;
UPDATE `notifications` SET `notification_id` = 27,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571066 WHERE `notifications`.`notification_id` = 27;
UPDATE `notifications` SET `notification_id` = 28,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571191 WHERE `notifications`.`notification_id` = 28;
UPDATE `notifications` SET `notification_id` = 29,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571615 WHERE `notifications`.`notification_id` = 29;
UPDATE `notifications` SET `notification_id` = 30,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571667 WHERE `notifications`.`notification_id` = 30;
UPDATE `notifications` SET `notification_id` = 31,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571669 WHERE `notifications`.`notification_id` = 31;
UPDATE `notifications` SET `notification_id` = 32,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571669 WHERE `notifications`.`notification_id` = 32;
UPDATE `notifications` SET `notification_id` = 33,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571670 WHERE `notifications`.`notification_id` = 33;
UPDATE `notifications` SET `notification_id` = 34,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571670 WHERE `notifications`.`notification_id` = 34;
UPDATE `notifications` SET `notification_id` = 35,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571670 WHERE `notifications`.`notification_id` = 35;
UPDATE `notifications` SET `notification_id` = 36,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571795 WHERE `notifications`.`notification_id` = 36;
UPDATE `notifications` SET `notification_id` = 37,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571797 WHERE `notifications`.`notification_id` = 37;
UPDATE `notifications` SET `notification_id` = 38,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571798 WHERE `notifications`.`notification_id` = 38;
UPDATE `notifications` SET `notification_id` = 39,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571799 WHERE `notifications`.`notification_id` = 39;
UPDATE `notifications` SET `notification_id` = 40,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571799 WHERE `notifications`.`notification_id` = 40;
UPDATE `notifications` SET `notification_id` = 41,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571799 WHERE `notifications`.`notification_id` = 41;
UPDATE `notifications` SET `notification_id` = 42,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571799 WHERE `notifications`.`notification_id` = 42;
UPDATE `notifications` SET `notification_id` = 43,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571799 WHERE `notifications`.`notification_id` = 43;
UPDATE `notifications` SET `notification_id` = 44,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571799 WHERE `notifications`.`notification_id` = 44;
UPDATE `notifications` SET `notification_id` = 45,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571800 WHERE `notifications`.`notification_id` = 45;
UPDATE `notifications` SET `notification_id` = 46,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571800 WHERE `notifications`.`notification_id` = 46;
UPDATE `notifications` SET `notification_id` = 47,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571800 WHERE `notifications`.`notification_id` = 47;
UPDATE `notifications` SET `notification_id` = 48,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571800 WHERE `notifications`.`notification_id` = 48;
UPDATE `notifications` SET `notification_id` = 49,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571800 WHERE `notifications`.`notification_id` = 49;
UPDATE `notifications` SET `notification_id` = 50,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571800 WHERE `notifications`.`notification_id` = 50;
UPDATE `notifications` SET `notification_id` = 51,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571800 WHERE `notifications`.`notification_id` = 51;
UPDATE `notifications` SET `notification_id` = 52,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571801 WHERE `notifications`.`notification_id` = 52;
UPDATE `notifications` SET `notification_id` = 53,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571801 WHERE `notifications`.`notification_id` = 53;
UPDATE `notifications` SET `notification_id` = 54,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571801 WHERE `notifications`.`notification_id` = 54;
UPDATE `notifications` SET `notification_id` = 55,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571801 WHERE `notifications`.`notification_id` = 55;
UPDATE `notifications` SET `notification_id` = 56,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571801 WHERE `notifications`.`notification_id` = 56;
UPDATE `notifications` SET `notification_id` = 57,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571801 WHERE `notifications`.`notification_id` = 57;
UPDATE `notifications` SET `notification_id` = 58,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571802 WHERE `notifications`.`notification_id` = 58;
UPDATE `notifications` SET `notification_id` = 59,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571802 WHERE `notifications`.`notification_id` = 59;
UPDATE `notifications` SET `notification_id` = 60,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571802 WHERE `notifications`.`notification_id` = 60;
UPDATE `notifications` SET `notification_id` = 61,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571804 WHERE `notifications`.`notification_id` = 61;
UPDATE `notifications` SET `notification_id` = 62,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571941 WHERE `notifications`.`notification_id` = 62;
UPDATE `notifications` SET `notification_id` = 63,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571943 WHERE `notifications`.`notification_id` = 63;
UPDATE `notifications` SET `notification_id` = 64,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400571944 WHERE `notifications`.`notification_id` = 64;
UPDATE `notifications` SET `notification_id` = 65,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400571946 WHERE `notifications`.`notification_id` = 65;
UPDATE `notifications` SET `notification_id` = 66,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400571946 WHERE `notifications`.`notification_id` = 66;
UPDATE `notifications` SET `notification_id` = 67,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400571947 WHERE `notifications`.`notification_id` = 67;
UPDATE `notifications` SET `notification_id` = 68,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400571947 WHERE `notifications`.`notification_id` = 68;
UPDATE `notifications` SET `notification_id` = 69,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400571947 WHERE `notifications`.`notification_id` = 69;
UPDATE `notifications` SET `notification_id` = 70,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400571947 WHERE `notifications`.`notification_id` = 70;
UPDATE `notifications` SET `notification_id` = 71,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400571947 WHERE `notifications`.`notification_id` = 71;
UPDATE `notifications` SET `notification_id` = 72,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400571947 WHERE `notifications`.`notification_id` = 72;
UPDATE `notifications` SET `notification_id` = 73,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400571948 WHERE `notifications`.`notification_id` = 73;
UPDATE `notifications` SET `notification_id` = 74,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571972 WHERE `notifications`.`notification_id` = 74;
UPDATE `notifications` SET `notification_id` = 75,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571975 WHERE `notifications`.`notification_id` = 75;
UPDATE `notifications` SET `notification_id` = 76,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571975 WHERE `notifications`.`notification_id` = 76;
UPDATE `notifications` SET `notification_id` = 77,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571975 WHERE `notifications`.`notification_id` = 77;
UPDATE `notifications` SET `notification_id` = 78,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571976 WHERE `notifications`.`notification_id` = 78;
UPDATE `notifications` SET `notification_id` = 79,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571994 WHERE `notifications`.`notification_id` = 79;
UPDATE `notifications` SET `notification_id` = 80,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571996 WHERE `notifications`.`notification_id` = 80;
UPDATE `notifications` SET `notification_id` = 81,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571996 WHERE `notifications`.`notification_id` = 81;
UPDATE `notifications` SET `notification_id` = 82,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571996 WHERE `notifications`.`notification_id` = 82;
UPDATE `notifications` SET `notification_id` = 83,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571996 WHERE `notifications`.`notification_id` = 83;
UPDATE `notifications` SET `notification_id` = 84,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571997 WHERE `notifications`.`notification_id` = 84;
UPDATE `notifications` SET `notification_id` = 85,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571997 WHERE `notifications`.`notification_id` = 85;
UPDATE `notifications` SET `notification_id` = 86,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571997 WHERE `notifications`.`notification_id` = 86;
UPDATE `notifications` SET `notification_id` = 87,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571997 WHERE `notifications`.`notification_id` = 87;
UPDATE `notifications` SET `notification_id` = 88,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571997 WHERE `notifications`.`notification_id` = 88;
UPDATE `notifications` SET `notification_id` = 89,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571997 WHERE `notifications`.`notification_id` = 89;
UPDATE `notifications` SET `notification_id` = 90,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571997 WHERE `notifications`.`notification_id` = 90;
UPDATE `notifications` SET `notification_id` = 91,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571998 WHERE `notifications`.`notification_id` = 91;
UPDATE `notifications` SET `notification_id` = 92,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571999 WHERE `notifications`.`notification_id` = 92;
UPDATE `notifications` SET `notification_id` = 93,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571999 WHERE `notifications`.`notification_id` = 93;
UPDATE `notifications` SET `notification_id` = 94,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571999 WHERE `notifications`.`notification_id` = 94;
UPDATE `notifications` SET `notification_id` = 95,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400571999 WHERE `notifications`.`notification_id` = 95;
UPDATE `notifications` SET `notification_id` = 96,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400572046 WHERE `notifications`.`notification_id` = 96;
UPDATE `notifications` SET `notification_id` = 97,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400572046 WHERE `notifications`.`notification_id` = 97;
UPDATE `notifications` SET `notification_id` = 98,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400572047 WHERE `notifications`.`notification_id` = 98;
UPDATE `notifications` SET `notification_id` = 99,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400572047 WHERE `notifications`.`notification_id` = 99;
UPDATE `notifications` SET `notification_id` = 100,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400572047 WHERE `notifications`.`notification_id` = 100;
UPDATE `notifications` SET `notification_id` = 101,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400572125 WHERE `notifications`.`notification_id` = 101;
UPDATE `notifications` SET `notification_id` = 102,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400572377 WHERE `notifications`.`notification_id` = 102;
UPDATE `notifications` SET `notification_id` = 103,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400572411 WHERE `notifications`.`notification_id` = 103;
UPDATE `notifications` SET `notification_id` = 104,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400572427 WHERE `notifications`.`notification_id` = 104;
UPDATE `notifications` SET `notification_id` = 105,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400572436 WHERE `notifications`.`notification_id` = 105;
UPDATE `notifications` SET `notification_id` = 106,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576382 WHERE `notifications`.`notification_id` = 106;
UPDATE `notifications` SET `notification_id` = 107,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576382 WHERE `notifications`.`notification_id` = 107;
UPDATE `notifications` SET `notification_id` = 108,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576383 WHERE `notifications`.`notification_id` = 108;
UPDATE `notifications` SET `notification_id` = 109,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576383 WHERE `notifications`.`notification_id` = 109;
UPDATE `notifications` SET `notification_id` = 110,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576383 WHERE `notifications`.`notification_id` = 110;
UPDATE `notifications` SET `notification_id` = 111,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576383 WHERE `notifications`.`notification_id` = 111;
UPDATE `notifications` SET `notification_id` = 112,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576383 WHERE `notifications`.`notification_id` = 112;
UPDATE `notifications` SET `notification_id` = 113,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576384 WHERE `notifications`.`notification_id` = 113;
UPDATE `notifications` SET `notification_id` = 114,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576384 WHERE `notifications`.`notification_id` = 114;
UPDATE `notifications` SET `notification_id` = 115,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576384 WHERE `notifications`.`notification_id` = 115;
UPDATE `notifications` SET `notification_id` = 116,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576425 WHERE `notifications`.`notification_id` = 116;
UPDATE `notifications` SET `notification_id` = 117,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576426 WHERE `notifications`.`notification_id` = 117;
UPDATE `notifications` SET `notification_id` = 118,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576426 WHERE `notifications`.`notification_id` = 118;
UPDATE `notifications` SET `notification_id` = 119,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576427 WHERE `notifications`.`notification_id` = 119;
UPDATE `notifications` SET `notification_id` = 120,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576427 WHERE `notifications`.`notification_id` = 120;
UPDATE `notifications` SET `notification_id` = 121,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576427 WHERE `notifications`.`notification_id` = 121;
UPDATE `notifications` SET `notification_id` = 122,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576427 WHERE `notifications`.`notification_id` = 122;
UPDATE `notifications` SET `notification_id` = 123,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576429 WHERE `notifications`.`notification_id` = 123;
UPDATE `notifications` SET `notification_id` = 124,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576607 WHERE `notifications`.`notification_id` = 124;
UPDATE `notifications` SET `notification_id` = 125,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576608 WHERE `notifications`.`notification_id` = 125;
UPDATE `notifications` SET `notification_id` = 126,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576609 WHERE `notifications`.`notification_id` = 126;
UPDATE `notifications` SET `notification_id` = 127,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576610 WHERE `notifications`.`notification_id` = 127;
UPDATE `notifications` SET `notification_id` = 128,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576611 WHERE `notifications`.`notification_id` = 128;
UPDATE `notifications` SET `notification_id` = 129,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576613 WHERE `notifications`.`notification_id` = 129;
UPDATE `notifications` SET `notification_id` = 130,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576614 WHERE `notifications`.`notification_id` = 130;
UPDATE `notifications` SET `notification_id` = 131,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576614 WHERE `notifications`.`notification_id` = 131;
UPDATE `notifications` SET `notification_id` = 132,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576614 WHERE `notifications`.`notification_id` = 132;
UPDATE `notifications` SET `notification_id` = 133,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576614 WHERE `notifications`.`notification_id` = 133;
UPDATE `notifications` SET `notification_id` = 134,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576614 WHERE `notifications`.`notification_id` = 134;
UPDATE `notifications` SET `notification_id` = 135,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576615 WHERE `notifications`.`notification_id` = 135;
UPDATE `notifications` SET `notification_id` = 136,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400576664 WHERE `notifications`.`notification_id` = 136;
UPDATE `notifications` SET `notification_id` = 137,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400576664 WHERE `notifications`.`notification_id` = 137;
UPDATE `notifications` SET `notification_id` = 138,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400576664 WHERE `notifications`.`notification_id` = 138;
UPDATE `notifications` SET `notification_id` = 139,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400576665 WHERE `notifications`.`notification_id` = 139;
UPDATE `notifications` SET `notification_id` = 140,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400576665 WHERE `notifications`.`notification_id` = 140;
UPDATE `notifications` SET `notification_id` = 141,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576710 WHERE `notifications`.`notification_id` = 141;
UPDATE `notifications` SET `notification_id` = 142,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576712 WHERE `notifications`.`notification_id` = 142;
UPDATE `notifications` SET `notification_id` = 143,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576713 WHERE `notifications`.`notification_id` = 143;
UPDATE `notifications` SET `notification_id` = 144,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576713 WHERE `notifications`.`notification_id` = 144;
UPDATE `notifications` SET `notification_id` = 145,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576713 WHERE `notifications`.`notification_id` = 145;
UPDATE `notifications` SET `notification_id` = 146,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576713 WHERE `notifications`.`notification_id` = 146;
UPDATE `notifications` SET `notification_id` = 147,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576713 WHERE `notifications`.`notification_id` = 147;
UPDATE `notifications` SET `notification_id` = 148,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576722 WHERE `notifications`.`notification_id` = 148;
UPDATE `notifications` SET `notification_id` = 149,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576725 WHERE `notifications`.`notification_id` = 149;
UPDATE `notifications` SET `notification_id` = 150,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576772 WHERE `notifications`.`notification_id` = 150;
UPDATE `notifications` SET `notification_id` = 151,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400576786 WHERE `notifications`.`notification_id` = 151;
UPDATE `notifications` SET `notification_id` = 152,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576787 WHERE `notifications`.`notification_id` = 152;
UPDATE `notifications` SET `notification_id` = 153,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 5,`notification_date` = 1400576793 WHERE `notifications`.`notification_id` = 153;
UPDATE `notifications` SET `notification_id` = 154,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576853 WHERE `notifications`.`notification_id` = 154;
UPDATE `notifications` SET `notification_id` = 155,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576854 WHERE `notifications`.`notification_id` = 155;
UPDATE `notifications` SET `notification_id` = 156,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576857 WHERE `notifications`.`notification_id` = 156;
UPDATE `notifications` SET `notification_id` = 157,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400576858 WHERE `notifications`.`notification_id` = 157;
UPDATE `notifications` SET `notification_id` = 158,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 4,`notification_date` = 1400576866 WHERE `notifications`.`notification_id` = 158;
UPDATE `notifications` SET `notification_id` = 159,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 5,`notification_date` = 1400576869 WHERE `notifications`.`notification_id` = 159;
UPDATE `notifications` SET `notification_id` = 160,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 5,`notification_date` = 1400576871 WHERE `notifications`.`notification_id` = 160;
UPDATE `notifications` SET `notification_id` = 161,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 5,`notification_date` = 1400576871 WHERE `notifications`.`notification_id` = 161;
UPDATE `notifications` SET `notification_id` = 162,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 5,`notification_date` = 1400576871 WHERE `notifications`.`notification_id` = 162;
UPDATE `notifications` SET `notification_id` = 163,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576891 WHERE `notifications`.`notification_id` = 163;
UPDATE `notifications` SET `notification_id` = 164,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576892 WHERE `notifications`.`notification_id` = 164;
UPDATE `notifications` SET `notification_id` = 165,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576892 WHERE `notifications`.`notification_id` = 165;
UPDATE `notifications` SET `notification_id` = 166,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576892 WHERE `notifications`.`notification_id` = 166;
UPDATE `notifications` SET `notification_id` = 167,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576892 WHERE `notifications`.`notification_id` = 167;
UPDATE `notifications` SET `notification_id` = 168,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576892 WHERE `notifications`.`notification_id` = 168;
UPDATE `notifications` SET `notification_id` = 169,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400576955 WHERE `notifications`.`notification_id` = 169;
UPDATE `notifications` SET `notification_id` = 170,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400576956 WHERE `notifications`.`notification_id` = 170;
UPDATE `notifications` SET `notification_id` = 171,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 3,`notification_date` = 1400576958 WHERE `notifications`.`notification_id` = 171;
UPDATE `notifications` SET `notification_id` = 172,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400577229 WHERE `notifications`.`notification_id` = 172;
UPDATE `notifications` SET `notification_id` = 173,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 2,`notification_date` = 1400577235 WHERE `notifications`.`notification_id` = 173;
UPDATE `notifications` SET `notification_id` = 174,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400577284 WHERE `notifications`.`notification_id` = 174;
UPDATE `notifications` SET `notification_id` = 175,`notifier_id` = 4,`notified_id` = 5,`notification_type_id` = 1,`notificated_item_id` = 1,`notification_date` = 1400577300 WHERE `notifications`.`notification_id` = 175;
UPDATE `notifications` SET `notification_id` = 176,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 3,`notificated_item_id` = 9,`notification_date` = 1400579378 WHERE `notifications`.`notification_id` = 176;
UPDATE `notifications` SET `notification_id` = 177,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 3,`notificated_item_id` = 9,`notification_date` = 1400579379 WHERE `notifications`.`notification_id` = 177;
UPDATE `notifications` SET `notification_id` = 178,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400579391 WHERE `notifications`.`notification_id` = 178;
UPDATE `notifications` SET `notification_id` = 179,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 3,`notificated_item_id` = 8,`notification_date` = 1400579436 WHERE `notifications`.`notification_id` = 179;
UPDATE `notifications` SET `notification_id` = 180,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 3,`notificated_item_id` = 8,`notification_date` = 1400579438 WHERE `notifications`.`notification_id` = 180;
UPDATE `notifications` SET `notification_id` = 181,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 3,`notificated_item_id` = 8,`notification_date` = 1400579439 WHERE `notifications`.`notification_id` = 181;
UPDATE `notifications` SET `notification_id` = 182,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 3,`notificated_item_id` = 8,`notification_date` = 1400579440 WHERE `notifications`.`notification_id` = 182;
UPDATE `notifications` SET `notification_id` = 183,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 3,`notificated_item_id` = 8,`notification_date` = 1400579442 WHERE `notifications`.`notification_id` = 183;
UPDATE `notifications` SET `notification_id` = 184,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 3,`notificated_item_id` = 8,`notification_date` = 1400579443 WHERE `notifications`.`notification_id` = 184;
UPDATE `notifications` SET `notification_id` = 185,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 3,`notificated_item_id` = 8,`notification_date` = 1400579444 WHERE `notifications`.`notification_id` = 185;
UPDATE `notifications` SET `notification_id` = 186,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 3,`notificated_item_id` = 8,`notification_date` = 1400579446 WHERE `notifications`.`notification_id` = 186;
UPDATE `notifications` SET `notification_id` = 187,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 1,`notificated_item_id` = 8,`notification_date` = 1400581813 WHERE `notifications`.`notification_id` = 187;
UPDATE `notifications` SET `notification_id` = 188,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581815 WHERE `notifications`.`notification_id` = 188;
UPDATE `notifications` SET `notification_id` = 189,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581815 WHERE `notifications`.`notification_id` = 189;
UPDATE `notifications` SET `notification_id` = 190,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581815 WHERE `notifications`.`notification_id` = 190;
UPDATE `notifications` SET `notification_id` = 191,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581815 WHERE `notifications`.`notification_id` = 191;
UPDATE `notifications` SET `notification_id` = 192,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581815 WHERE `notifications`.`notification_id` = 192;
UPDATE `notifications` SET `notification_id` = 193,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581815 WHERE `notifications`.`notification_id` = 193;
UPDATE `notifications` SET `notification_id` = 194,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581816 WHERE `notifications`.`notification_id` = 194;
UPDATE `notifications` SET `notification_id` = 195,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581816 WHERE `notifications`.`notification_id` = 195;
UPDATE `notifications` SET `notification_id` = 196,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581816 WHERE `notifications`.`notification_id` = 196;
UPDATE `notifications` SET `notification_id` = 197,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581816 WHERE `notifications`.`notification_id` = 197;
UPDATE `notifications` SET `notification_id` = 198,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581816 WHERE `notifications`.`notification_id` = 198;
UPDATE `notifications` SET `notification_id` = 199,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581816 WHERE `notifications`.`notification_id` = 199;
UPDATE `notifications` SET `notification_id` = 200,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400581817 WHERE `notifications`.`notification_id` = 200;
UPDATE `notifications` SET `notification_id` = 201,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 1,`notificated_item_id` = 8,`notification_date` = 1400583034 WHERE `notifications`.`notification_id` = 201;
UPDATE `notifications` SET `notification_id` = 202,`notifier_id` = 4,`notified_id` = 35,`notification_type_id` = 3,`notificated_item_id` = 11,`notification_date` = 1400583090 WHERE `notifications`.`notification_id` = 202;
UPDATE `notifications` SET `notification_id` = 203,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 1,`notificated_item_id` = 8,`notification_date` = 1400587777 WHERE `notifications`.`notification_id` = 203;
UPDATE `notifications` SET `notification_id` = 204,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 1,`notificated_item_id` = 8,`notification_date` = 1400587778 WHERE `notifications`.`notification_id` = 204;
UPDATE `notifications` SET `notification_id` = 205,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 1,`notificated_item_id` = 8,`notification_date` = 1400587778 WHERE `notifications`.`notification_id` = 205;
UPDATE `notifications` SET `notification_id` = 206,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 1,`notificated_item_id` = 8,`notification_date` = 1400587778 WHERE `notifications`.`notification_id` = 206;
UPDATE `notifications` SET `notification_id` = 207,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 1,`notificated_item_id` = 8,`notification_date` = 1400587898 WHERE `notifications`.`notification_id` = 207;
UPDATE `notifications` SET `notification_id` = 208,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 1,`notificated_item_id` = 8,`notification_date` = 1400592079 WHERE `notifications`.`notification_id` = 208;
UPDATE `notifications` SET `notification_id` = 209,`notifier_id` = 4,`notified_id` = 33,`notification_type_id` = 1,`notificated_item_id` = 9,`notification_date` = 1400592082 WHERE `notifications`.`notification_id` = 209;
UPDATE `notifications` SET `notification_id` = 210,`notifier_id` = 4,`notified_id` = 34,`notification_type_id` = 3,`notificated_item_id` = 10,`notification_date` = 1400593481 WHERE `notifications`.`notification_id` = 210;
UPDATE `notifications` SET `notification_id` = 211,`notifier_id` = 4,`notified_id` = 35,`notification_type_id` = 3,`notificated_item_id` = 11,`notification_date` = 1400593490 WHERE `notifications`.`notification_id` = 211;
UPDATE `notifications` SET `notification_id` = 212,`notifier_id` = 4,`notified_id` = 34,`notification_type_id` = 3,`notificated_item_id` = 10,`notification_date` = 1400660389 WHERE `notifications`.`notification_id` = 212;
UPDATE `notifications` SET `notification_id` = 213,`notifier_id` = 4,`notified_id` = 34,`notification_type_id` = 3,`notificated_item_id` = 10,`notification_date` = 1400660391 WHERE `notifications`.`notification_id` = 213;
UPDATE `notifications` SET `notification_id` = 214,`notifier_id` = 4,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400787915 WHERE `notifications`.`notification_id` = 214;
UPDATE `notifications` SET `notification_id` = 215,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 1,`notificated_item_id` = 8,`notification_date` = 1400787926 WHERE `notifications`.`notification_id` = 215;
UPDATE `notifications` SET `notification_id` = 216,`notifier_id` = 4,`notified_id` = 32,`notification_type_id` = 1,`notificated_item_id` = 8,`notification_date` = 1400787927 WHERE `notifications`.`notification_id` = 216;
UPDATE `notifications` SET `notification_id` = 217,`notifier_id` = 4,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400787928 WHERE `notifications`.`notification_id` = 217;
UPDATE `notifications` SET `notification_id` = 218,`notifier_id` = 4,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400787928 WHERE `notifications`.`notification_id` = 218;
UPDATE `notifications` SET `notification_id` = 219,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 29,`notification_date` = 1400861675 WHERE `notifications`.`notification_id` = 219;
UPDATE `notifications` SET `notification_id` = 220,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 29,`notification_date` = 1400861675 WHERE `notifications`.`notification_id` = 220;
UPDATE `notifications` SET `notification_id` = 221,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 29,`notification_date` = 1400861675 WHERE `notifications`.`notification_id` = 221;
UPDATE `notifications` SET `notification_id` = 222,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 29,`notification_date` = 1400861675 WHERE `notifications`.`notification_id` = 222;
UPDATE `notifications` SET `notification_id` = 223,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861676 WHERE `notifications`.`notification_id` = 223;
UPDATE `notifications` SET `notification_id` = 224,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861680 WHERE `notifications`.`notification_id` = 224;
UPDATE `notifications` SET `notification_id` = 225,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861680 WHERE `notifications`.`notification_id` = 225;
UPDATE `notifications` SET `notification_id` = 226,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861680 WHERE `notifications`.`notification_id` = 226;
UPDATE `notifications` SET `notification_id` = 227,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861681 WHERE `notifications`.`notification_id` = 227;
UPDATE `notifications` SET `notification_id` = 228,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861681 WHERE `notifications`.`notification_id` = 228;
UPDATE `notifications` SET `notification_id` = 229,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861681 WHERE `notifications`.`notification_id` = 229;
UPDATE `notifications` SET `notification_id` = 230,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861682 WHERE `notifications`.`notification_id` = 230;
UPDATE `notifications` SET `notification_id` = 231,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861682 WHERE `notifications`.`notification_id` = 231;
UPDATE `notifications` SET `notification_id` = 232,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861682 WHERE `notifications`.`notification_id` = 232;
UPDATE `notifications` SET `notification_id` = 233,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 30,`notification_date` = 1400861683 WHERE `notifications`.`notification_id` = 233;
UPDATE `notifications` SET `notification_id` = 234,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 30,`notification_date` = 1400861683 WHERE `notifications`.`notification_id` = 234;
UPDATE `notifications` SET `notification_id` = 235,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 30,`notification_date` = 1400861683 WHERE `notifications`.`notification_id` = 235;
UPDATE `notifications` SET `notification_id` = 236,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 30,`notification_date` = 1400861683 WHERE `notifications`.`notification_id` = 236;
UPDATE `notifications` SET `notification_id` = 237,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861892 WHERE `notifications`.`notification_id` = 237;
UPDATE `notifications` SET `notification_id` = 238,`notifier_id` = 1,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 20,`notification_date` = 1400861893 WHERE `notifications`.`notification_id` = 238;
UPDATE `notifications` SET `notification_id` = 239,`notifier_id` = 1,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 20,`notification_date` = 1400861893 WHERE `notifications`.`notification_id` = 239;
UPDATE `notifications` SET `notification_id` = 240,`notifier_id` = 1,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 20,`notification_date` = 1400861893 WHERE `notifications`.`notification_id` = 240;
UPDATE `notifications` SET `notification_id` = 241,`notifier_id` = 1,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 20,`notification_date` = 1400861894 WHERE `notifications`.`notification_id` = 241;
UPDATE `notifications` SET `notification_id` = 242,`notifier_id` = 1,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 20,`notification_date` = 1400861894 WHERE `notifications`.`notification_id` = 242;
UPDATE `notifications` SET `notification_id` = 243,`notifier_id` = 1,`notified_id` = 4,`notification_type_id` = 1,`notificated_item_id` = 20,`notification_date` = 1400861894 WHERE `notifications`.`notification_id` = 243;
UPDATE `notifications` SET `notification_id` = 244,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861895 WHERE `notifications`.`notification_id` = 244;
UPDATE `notifications` SET `notification_id` = 245,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400861895 WHERE `notifications`.`notification_id` = 245;
UPDATE `notifications` SET `notification_id` = 246,`notifier_id` = 1,`notified_id` = 35,`notification_type_id` = 1,`notificated_item_id` = 11,`notification_date` = 1400869377 WHERE `notifications`.`notification_id` = 246;
UPDATE `notifications` SET `notification_id` = 247,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869379 WHERE `notifications`.`notification_id` = 247;
UPDATE `notifications` SET `notification_id` = 248,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869379 WHERE `notifications`.`notification_id` = 248;
UPDATE `notifications` SET `notification_id` = 249,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869379 WHERE `notifications`.`notification_id` = 249;
UPDATE `notifications` SET `notification_id` = 250,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869379 WHERE `notifications`.`notification_id` = 250;
UPDATE `notifications` SET `notification_id` = 251,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869379 WHERE `notifications`.`notification_id` = 251;
UPDATE `notifications` SET `notification_id` = 252,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869380 WHERE `notifications`.`notification_id` = 252;
UPDATE `notifications` SET `notification_id` = 253,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869380 WHERE `notifications`.`notification_id` = 253;
UPDATE `notifications` SET `notification_id` = 254,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869380 WHERE `notifications`.`notification_id` = 254;
UPDATE `notifications` SET `notification_id` = 255,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869380 WHERE `notifications`.`notification_id` = 255;
UPDATE `notifications` SET `notification_id` = 256,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869380 WHERE `notifications`.`notification_id` = 256;
UPDATE `notifications` SET `notification_id` = 257,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869380 WHERE `notifications`.`notification_id` = 257;
UPDATE `notifications` SET `notification_id` = 258,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869380 WHERE `notifications`.`notification_id` = 258;
UPDATE `notifications` SET `notification_id` = 259,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869381 WHERE `notifications`.`notification_id` = 259;
UPDATE `notifications` SET `notification_id` = 260,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869381 WHERE `notifications`.`notification_id` = 260;
UPDATE `notifications` SET `notification_id` = 261,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869381 WHERE `notifications`.`notification_id` = 261;
UPDATE `notifications` SET `notification_id` = 262,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869381 WHERE `notifications`.`notification_id` = 262;
UPDATE `notifications` SET `notification_id` = 263,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869381 WHERE `notifications`.`notification_id` = 263;
UPDATE `notifications` SET `notification_id` = 264,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869381 WHERE `notifications`.`notification_id` = 264;
UPDATE `notifications` SET `notification_id` = 265,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869381 WHERE `notifications`.`notification_id` = 265;
UPDATE `notifications` SET `notification_id` = 266,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869382 WHERE `notifications`.`notification_id` = 266;
UPDATE `notifications` SET `notification_id` = 267,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869382 WHERE `notifications`.`notification_id` = 267;
UPDATE `notifications` SET `notification_id` = 268,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869382 WHERE `notifications`.`notification_id` = 268;
UPDATE `notifications` SET `notification_id` = 269,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869382 WHERE `notifications`.`notification_id` = 269;
UPDATE `notifications` SET `notification_id` = 270,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869382 WHERE `notifications`.`notification_id` = 270;
UPDATE `notifications` SET `notification_id` = 271,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869382 WHERE `notifications`.`notification_id` = 271;
UPDATE `notifications` SET `notification_id` = 272,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869382 WHERE `notifications`.`notification_id` = 272;
UPDATE `notifications` SET `notification_id` = 273,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869383 WHERE `notifications`.`notification_id` = 273;
UPDATE `notifications` SET `notification_id` = 274,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 59,`notification_date` = 1400869383 WHERE `notifications`.`notification_id` = 274;
UPDATE `notifications` SET `notification_id` = 275,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 63,`notification_date` = 1400955324 WHERE `notifications`.`notification_id` = 275;
UPDATE `notifications` SET `notification_id` = 276,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 67,`notification_date` = 1400960774 WHERE `notifications`.`notification_id` = 276;
UPDATE `notifications` SET `notification_id` = 277,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 67,`notification_date` = 1400960774 WHERE `notifications`.`notification_id` = 277;
UPDATE `notifications` SET `notification_id` = 278,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 67,`notification_date` = 1400960774 WHERE `notifications`.`notification_id` = 278;
UPDATE `notifications` SET `notification_id` = 279,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 67,`notification_date` = 1400960774 WHERE `notifications`.`notification_id` = 279;
UPDATE `notifications` SET `notification_id` = 280,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 67,`notification_date` = 1400960775 WHERE `notifications`.`notification_id` = 280;
UPDATE `notifications` SET `notification_id` = 281,`notifier_id` = 1,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 67,`notification_date` = 1400960775 WHERE `notifications`.`notification_id` = 281;
UPDATE `notifications` SET `notification_id` = 282,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400960776 WHERE `notifications`.`notification_id` = 282;
UPDATE `notifications` SET `notification_id` = 283,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400960776 WHERE `notifications`.`notification_id` = 283;
UPDATE `notifications` SET `notification_id` = 284,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400960776 WHERE `notifications`.`notification_id` = 284;
UPDATE `notifications` SET `notification_id` = 285,`notifier_id` = 1,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1400960776 WHERE `notifications`.`notification_id` = 285;
UPDATE `notifications` SET `notification_id` = 286,`notifier_id` = 4,`notified_id` = 37,`notification_type_id` = 3,`notificated_item_id` = 14,`notification_date` = 1401315524 WHERE `notifications`.`notification_id` = 286;
UPDATE `notifications` SET `notification_id` = 287,`notifier_id` = 4,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 61,`notification_date` = 1401315534 WHERE `notifications`.`notification_id` = 287;
UPDATE `notifications` SET `notification_id` = 288,`notifier_id` = 4,`notified_id` = 4,`notification_type_id` = 3,`notificated_item_id` = 78,`notification_date` = 1401315727 WHERE `notifications`.`notification_id` = 288;
UPDATE `notifications` SET `notification_id` = 289,`notifier_id` = 4,`notified_id` = 40,`notification_type_id` = 3,`notificated_item_id` = 17,`notification_date` = 1401316828 WHERE `notifications`.`notification_id` = 289;
UPDATE `notifications` SET `notification_id` = 290,`notifier_id` = 4,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1401316837 WHERE `notifications`.`notification_id` = 290;
UPDATE `notifications` SET `notification_id` = 291,`notifier_id` = 50,`notified_id` = 1,`notification_type_id` = 1,`notificated_item_id` = 65,`notification_date` = 1401539739 WHERE `notifications`.`notification_id` = 291;
UPDATE `notifications` SET `notification_id` = 292,`notifier_id` = 50,`notified_id` = 50,`notification_type_id` = 1,`notificated_item_id` = 85,`notification_date` = 1401539745 WHERE `notifications`.`notification_id` = 292;
UPDATE `notifications` SET `notification_id` = 293,`notifier_id` = 50,`notified_id` = 0,`notification_type_id` = 2,`notificated_item_id` = 0,`notification_date` = 1401539758 WHERE `notifications`.`notification_id` = 293;
UPDATE `notifications` SET `notification_id` = 294,`notifier_id` = 51,`notified_id` = 51,`notification_type_id` = 1,`notificated_item_id` = 87,`notification_date` = 1401548349 WHERE `notifications`.`notification_id` = 294;
UPDATE `notifications` SET `notification_id` = 295,`notifier_id` = 51,`notified_id` = 51,`notification_type_id` = 3,`notificated_item_id` = 87,`notification_date` = 1401548354 WHERE `notifications`.`notification_id` = 295;

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE IF NOT EXISTS `notification_types` (
  `notification_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type` varchar(20) NOT NULL,
  UNIQUE KEY `notification_type_id` (`notification_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `notification_types`
--

UPDATE `notification_types` SET `notification_type_id` = 1,`notification_type` = 'like' WHERE `notification_types`.`notification_type_id` = 1;
UPDATE `notification_types` SET `notification_type_id` = 2,`notification_type` = 'share' WHERE `notification_types`.`notification_type_id` = 2;
UPDATE `notification_types` SET `notification_type_id` = 3,`notification_type` = 'comment' WHERE `notification_types`.`notification_type_id` = 3;
UPDATE `notification_types` SET `notification_type_id` = 4,`notification_type` = 'fellowship' WHERE `notification_types`.`notification_type_id` = 4;

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

UPDATE `pm` SET `message_id` = 1,`user_one` = 4,`user_two` = 5,`message` = 'dededeega  dfdfdf dgds',`message_date` = 1400521775,`conversation_id` = 1 WHERE `pm`.`message_id` = 1;
UPDATE `pm` SET `message_id` = 2,`user_one` = 5,`user_two` = 4,`message` = '12412412421 sada as fas fa sa asfsaf fa a',`message_date` = 1400529000,`conversation_id` = 1 WHERE `pm`.`message_id` = 2;
UPDATE `pm` SET `message_id` = 3,`user_one` = 4,`user_two` = 17,`message` = 'dededeega  dfdfdf dgds',`message_date` = 1400521910,`conversation_id` = 2 WHERE `pm`.`message_id` = 3;
UPDATE `pm` SET `message_id` = 4,`user_one` = 17,`user_two` = 4,`message` = '12412412421 sada as fas fa sa asfsaf fa a',`message_date` = 1400531000,`conversation_id` = 2 WHERE `pm`.`message_id` = 4;
UPDATE `pm` SET `message_id` = 5,`user_one` = 4,`user_two` = 23,`message` = 'dededeega  dfdfdf dgds',`message_date` = 1400523910,`conversation_id` = 3 WHERE `pm`.`message_id` = 5;
UPDATE `pm` SET `message_id` = 6,`user_one` = 23,`user_two` = 4,`message` = '12412412421 sada as fas fa sa asfsaf fa a',`message_date` = 1400535000,`conversation_id` = 3 WHERE `pm`.`message_id` = 6;
UPDATE `pm` SET `message_id` = 7,`user_one` = 27,`user_two` = 4,`message` = 'bla bla',`message_date` = 1400535000,`conversation_id` = 4 WHERE `pm`.`message_id` = 7;
UPDATE `pm` SET `message_id` = 8,`user_one` = 4,`user_two` = 5,`message` = 'Naber fıstık?;)',`message_date` = 1400666922,`conversation_id` = 1 WHERE `pm`.`message_id` = 8;
UPDATE `pm` SET `message_id` = 9,`user_one` = 4,`user_two` = 5,`message` = 'asdf',`message_date` = 1400667027,`conversation_id` = 1 WHERE `pm`.`message_id` = 9;
UPDATE `pm` SET `message_id` = 10,`user_one` = 4,`user_two` = 5,`message` = 'deneme',`message_date` = 1400667321,`conversation_id` = 1 WHERE `pm`.`message_id` = 10;
UPDATE `pm` SET `message_id` = 11,`user_one` = 4,`user_two` = 5,`message` = 'Esra naber ya?',`message_date` = 1400668500,`conversation_id` = 1 WHERE `pm`.`message_id` = 11;
UPDATE `pm` SET `message_id` = 12,`user_one` = 4,`user_two` = 4,`message` = 'Oldu mu?',`message_date` = 1400668696,`conversation_id` = 4 WHERE `pm`.`message_id` = 12;
UPDATE `pm` SET `message_id` = 13,`user_one` = 4,`user_two` = 4,`message` = 'asdf',`message_date` = 1400668701,`conversation_id` = 4 WHERE `pm`.`message_id` = 13;
UPDATE `pm` SET `message_id` = 14,`user_one` = 4,`user_two` = 17,`message` = 'deneme',`message_date` = 1400668725,`conversation_id` = 2 WHERE `pm`.`message_id` = 14;
UPDATE `pm` SET `message_id` = 15,`user_one` = 4,`user_two` = 17,`message` = 'olur mu',`message_date` = 1400668731,`conversation_id` = 2 WHERE `pm`.`message_id` = 15;
UPDATE `pm` SET `message_id` = 16,`user_one` = 4,`user_two` = 17,`message` = '',`message_date` = 1400668743,`conversation_id` = 2 WHERE `pm`.`message_id` = 16;
UPDATE `pm` SET `message_id` = 17,`user_one` = 4,`user_two` = 5,`message` = 'asdf',`message_date` = 1400677290,`conversation_id` = 1 WHERE `pm`.`message_id` = 17;
UPDATE `pm` SET `message_id` = 18,`user_one` = 4,`user_two` = 4,`message` = 'asdf',`message_date` = 1400677304,`conversation_id` = 4 WHERE `pm`.`message_id` = 18;
UPDATE `pm` SET `message_id` = 19,`user_one` = 4,`user_two` = 4,`message` = 'asdf',`message_date` = 1400677314,`conversation_id` = 4 WHERE `pm`.`message_id` = 19;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `report_id` int(11) NOT NULL,
  `reporter_id` int(11) NOT NULL,
  `reported_id` int(11) NOT NULL,
  `report_date` int(11) NOT NULL,
  `report_comment` text NOT NULL,
  FULLTEXT KEY `report_comment` (`report_comment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `share`
--

UPDATE `share` SET `share_id` = 1,`hanger_id` = 1,`user_id` = 4,`share_date` = 1400101125,`shared_user_id` = 0 WHERE `share`.`share_id` = 1;
UPDATE `share` SET `share_id` = 2,`hanger_id` = 1,`user_id` = 5,`share_date` = 1400101125,`shared_user_id` = 0 WHERE `share`.`share_id` = 2;
UPDATE `share` SET `share_id` = 3,`hanger_id` = 2,`user_id` = 4,`share_date` = 1400101125,`shared_user_id` = 0 WHERE `share`.`share_id` = 3;
UPDATE `share` SET `share_id` = 4,`hanger_id` = 6,`user_id` = 5,`share_date` = 1400101125,`shared_user_id` = 0 WHERE `share`.`share_id` = 4;
UPDATE `share` SET `share_id` = 5,`hanger_id` = 4,`user_id` = 4,`share_date` = 1400101125,`shared_user_id` = 0 WHERE `share`.`share_id` = 5;
UPDATE `share` SET `share_id` = 6,`hanger_id` = 11,`user_id` = 4,`share_date` = 1400787915,`shared_user_id` = 35 WHERE `share`.`share_id` = 6;
UPDATE `share` SET `share_id` = 7,`hanger_id` = 8,`user_id` = 4,`share_date` = 1400787928,`shared_user_id` = 32 WHERE `share`.`share_id` = 7;
UPDATE `share` SET `share_id` = 8,`hanger_id` = 8,`user_id` = 4,`share_date` = 1400787928,`shared_user_id` = 32 WHERE `share`.`share_id` = 8;
UPDATE `share` SET `share_id` = 9,`hanger_id` = 29,`user_id` = 1,`share_date` = 1400861676,`shared_user_id` = 1 WHERE `share`.`share_id` = 9;
UPDATE `share` SET `share_id` = 10,`hanger_id` = 29,`user_id` = 1,`share_date` = 1400861680,`shared_user_id` = 1 WHERE `share`.`share_id` = 10;
UPDATE `share` SET `share_id` = 11,`hanger_id` = 29,`user_id` = 1,`share_date` = 1400861680,`shared_user_id` = 1 WHERE `share`.`share_id` = 11;
UPDATE `share` SET `share_id` = 12,`hanger_id` = 29,`user_id` = 1,`share_date` = 1400861680,`shared_user_id` = 1 WHERE `share`.`share_id` = 12;
UPDATE `share` SET `share_id` = 13,`hanger_id` = 29,`user_id` = 1,`share_date` = 1400861681,`shared_user_id` = 1 WHERE `share`.`share_id` = 13;
UPDATE `share` SET `share_id` = 14,`hanger_id` = 29,`user_id` = 1,`share_date` = 1400861681,`shared_user_id` = 1 WHERE `share`.`share_id` = 14;
UPDATE `share` SET `share_id` = 15,`hanger_id` = 29,`user_id` = 1,`share_date` = 1400861681,`shared_user_id` = 1 WHERE `share`.`share_id` = 15;
UPDATE `share` SET `share_id` = 16,`hanger_id` = 30,`user_id` = 1,`share_date` = 1400861682,`shared_user_id` = 1 WHERE `share`.`share_id` = 16;
UPDATE `share` SET `share_id` = 17,`hanger_id` = 30,`user_id` = 1,`share_date` = 1400861682,`shared_user_id` = 1 WHERE `share`.`share_id` = 17;
UPDATE `share` SET `share_id` = 18,`hanger_id` = 30,`user_id` = 1,`share_date` = 1400861682,`shared_user_id` = 1 WHERE `share`.`share_id` = 18;
UPDATE `share` SET `share_id` = 19,`hanger_id` = 20,`user_id` = 1,`share_date` = 1400861892,`shared_user_id` = 4 WHERE `share`.`share_id` = 19;
UPDATE `share` SET `share_id` = 20,`hanger_id` = 20,`user_id` = 1,`share_date` = 1400861895,`shared_user_id` = 4 WHERE `share`.`share_id` = 20;
UPDATE `share` SET `share_id` = 21,`hanger_id` = 20,`user_id` = 1,`share_date` = 1400861895,`shared_user_id` = 4 WHERE `share`.`share_id` = 21;
UPDATE `share` SET `share_id` = 22,`hanger_id` = 67,`user_id` = 1,`share_date` = 1400960776,`shared_user_id` = 1 WHERE `share`.`share_id` = 22;
UPDATE `share` SET `share_id` = 23,`hanger_id` = 67,`user_id` = 1,`share_date` = 1400960776,`shared_user_id` = 1 WHERE `share`.`share_id` = 23;
UPDATE `share` SET `share_id` = 24,`hanger_id` = 67,`user_id` = 1,`share_date` = 1400960776,`shared_user_id` = 1 WHERE `share`.`share_id` = 24;
UPDATE `share` SET `share_id` = 25,`hanger_id` = 67,`user_id` = 1,`share_date` = 1400960776,`shared_user_id` = 1 WHERE `share`.`share_id` = 25;
UPDATE `share` SET `share_id` = 26,`hanger_id` = 17,`user_id` = 4,`share_date` = 1401316837,`shared_user_id` = 40 WHERE `share`.`share_id` = 26;
UPDATE `share` SET `share_id` = 27,`hanger_id` = 85,`user_id` = 50,`share_date` = 1401539758,`shared_user_id` = 50 WHERE `share`.`share_id` = 27;

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

UPDATE `type` SET `type_id` = 1,`type_name` = 'hanger' WHERE `type`.`type_id` = 1;
UPDATE `type` SET `type_id` = 2,`type_name` = 'gardrobe' WHERE `type`.`type_id` = 2;

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
  `confirmation_code` varchar(16) NOT NULL,
  `city` varchar(40) NOT NULL,
  `phone` int(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `users`
--

UPDATE `users` SET `user_id` = 1,`name` = 'Tunç',`surname` = 'Akın',`birth_date` = 392508000,`login_date` = 1399810339,`mail` = 'tuncak30@hotmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 1;
UPDATE `users` SET `user_id` = 4,`name` = 'Mutaz',`surname` = 'Alkabir',`birth_date` = 392508000,`login_date` = 1399810339,`mail` = 'mutazalkabir@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 4;
UPDATE `users` SET `user_id` = 5,`name` = 'mumtaz',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'mutaz_alkabir@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 5;
UPDATE `users` SET `user_id` = 17,`name` = 'sinem',`surname` = 'deneme',`birth_date` = 392508000,`login_date` = 1399998580,`mail` = 'mmm@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 17;
UPDATE `users` SET `user_id` = 19,`name` = 'ahmet',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810339,`mail` = 'mutaz_alkabir13@hotmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 19;
UPDATE `users` SET `user_id` = 20,`name` = 'mehmet',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'mutaz_alkabir20@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 20;
UPDATE `users` SET `user_id` = 21,`name` = 'ali',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810339,`mail` = 'mutaz_alkabir31@hotmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 21;
UPDATE `users` SET `user_id` = 22,`name` = 'berk',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'mutaz_alkabir4@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 22;
UPDATE `users` SET `user_id` = 24,`name` = 'rumeysa',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'mutaz_alkabir6@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 24;
UPDATE `users` SET `user_id` = 25,`name` = 'emine',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810339,`mail` = 'mutaz_alkabir7@hotmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 25;
UPDATE `users` SET `user_id` = 26,`name` = 'sezin',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'mutaz_alkabir8@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 26;
UPDATE `users` SET `user_id` = 27,`name` = 'savas',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810339,`mail` = 'mutaz_alkabir9@hotmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 27;
UPDATE `users` SET `user_id` = 28,`name` = 'murat',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'mutaz_alkabir10@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 28;
UPDATE `users` SET `user_id` = 29,`name` = 'esra',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810339,`mail` = 'mutaz_alkabir11@hotmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 29;
UPDATE `users` SET `user_id` = 30,`name` = 'didem',`surname` = 'alkabir',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'mutaz_alkabir12@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 30;
UPDATE `users` SET `user_id` = 32,`name` = 'Selen',`surname` = 'Bayramin',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'selenbayramin@gmail.com',`confirm` = 1,`gender` = 1,`pass` = '123456',`about` = 'sadas',`profession` = 'dsa',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 32;
UPDATE `users` SET `user_id` = 33,`name` = 'Berre',`surname` = 'Tekeoğlu',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'berretekeoglu@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 33;
UPDATE `users` SET `user_id` = 34,`name` = 'Günsu Dilek',`surname` = 'Kobya',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'gunsukobya@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 34;
UPDATE `users` SET `user_id` = 35,`name` = 'Meral',`surname` = 'Görgülü',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'meralgorgulu@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '1',`profession` = '1',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 35;
UPDATE `users` SET `user_id` = 36,`name` = 'Sezgincan',`surname` = 'Mailmail',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'sezgincan@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 36;
UPDATE `users` SET `user_id` = 37,`name` = 'Esma',`surname` = 'Yemeztaşlıca',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'esma@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 37;
UPDATE `users` SET `user_id` = 38,`name` = 'Elif',`surname` = 'Oran',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'eliforan@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 38;
UPDATE `users` SET `user_id` = 39,`name` = 'Gözde',`surname` = 'Asena Olcay',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'gozde@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 39;
UPDATE `users` SET `user_id` = 40,`name` = 'Batuhan',`surname` = 'Sezgin',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'batuhansezgin@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 40;
UPDATE `users` SET `user_id` = 41,`name` = 'Ecem',`surname` = 'Yalız',`birth_date` = 392508000,`login_date` = 1399810995,`mail` = 'ecemyaliz@gmail.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = 'avatar.png',`confirmation_code` = '123456789qwertyu',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 41;
UPDATE `users` SET `user_id` = 42,`name` = 'deneme',`surname` = 'deneme',`birth_date` = 2147483647,`login_date` = 1401534904,`mail` = 'mutaz@deneme.com',`confirm` = 0,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = '',`confirmation_code` = 'u091gkjq3zs2ftvh',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 42;
UPDATE `users` SET `user_id` = 44,`name` = 'deneme',`surname` = 'deneme',`birth_date` = 2147483647,`login_date` = 1401535141,`mail` = 'mutaz@deneme2.com',`confirm` = 2,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = '',`confirmation_code` = 'mv0pltfvaaurps61',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 44;
UPDATE `users` SET `user_id` = 45,`name` = 'deneme',`surname` = 'deneme',`birth_date` = 2147483647,`login_date` = 1401535394,`mail` = 'mutaz@deneme3.com',`confirm` = 0,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = '',`confirmation_code` = 'vizqt09cnoqixhua',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 45;
UPDATE `users` SET `user_id` = 46,`name` = 'das',`surname` = 'dasd',`birth_date` = 820504800,`login_date` = 1401536550,`mail` = 'a@aaa.com',`confirm` = 0,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = '',`confirmation_code` = '24rrhzxwkibf14dz',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 46;
UPDATE `users` SET `user_id` = 47,`name` = 'sda',`surname` = 'asdas',`birth_date` = 0,`login_date` = 1401537267,`mail` = 's@sa.com',`confirm` = 0,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = '',`confirmation_code` = '8wh0kvbhr3grtq7t',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 47;
UPDATE `users` SET `user_id` = 49,`name` = '123',`surname` = '123',`birth_date` = 0,`login_date` = 1401537423,`mail` = 'a@qqqqq.com',`confirm` = 0,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = '',`confirmation_code` = '4b5ioplciv93covt',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 49;
UPDATE `users` SET `user_id` = 50,`name` = 'la',`surname` = 'bebe',`birth_date` = 820504800,`login_date` = 1401537827,`mail` = 'b@b.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = '50.png',`confirmation_code` = 'k69hxkupaja51ff0',`city` = 'ADANA',`phone` = 0 WHERE `users`.`user_id` = 50;
UPDATE `users` SET `user_id` = 51,`name` = 'sezin',`surname` = 'alkabir',`birth_date` = 473781600,`login_date` = 1401548038,`mail` = 'sezin@alkabir.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = '51.png',`confirmation_code` = 'c9go9er1pd7gmnkz',`city` = 'ADANA',`phone` = 0 WHERE `users`.`user_id` = 51;
UPDATE `users` SET `user_id` = 52,`name` = '123',`surname` = '123',`birth_date` = 0,`login_date` = 1401629065,`mail` = 'a@dsada.com',`confirm` = 1,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = 'avatar.png',`confirmation_code` = 'urxqa5hfu1or673c',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 52;
UPDATE `users` SET `user_id` = 53,`name` = '123456',`surname` = '123456',`birth_date` = 0,`login_date` = 1401629261,`mail` = 'urxqa5hfu1or673c@ss.com',`confirm` = 0,`gender` = 0,`pass` = '123456',`about` = '',`profession` = '',`pic_id` = 'avatar.png',`confirmation_code` = 'bhg955lekpv7urjx',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 53;
UPDATE `users` SET `user_id` = 54,`name` = '123456',`surname` = '123456',`birth_date` = 0,`login_date` = 1401629425,`mail` = 'asad@sad.com',`confirm` = 0,`gender` = 0,`pass` = 'asdasd',`about` = '',`profession` = '',`pic_id` = 'avatar.png',`confirmation_code` = 'm7npdlumzr53rut3',`city` = '',`phone` = 0 WHERE `users`.`user_id` = 54;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
