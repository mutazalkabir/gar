-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 14 May 2014, 23:03:28
-- Sunucu sürümü: 5.6.16
-- PHP Sürümü: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `thegardrobe`
--
CREATE DATABASE IF NOT EXISTS `thegardrobe` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `thegardrobe`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` int(11) NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'spor'),
(2, 'gece');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `date` int(11) NOT NULL,
  `hanger_id` bigint(20) NOT NULL,
  `comment` varchar(400) COLLATE utf8_turkish_ci NOT NULL,
  UNIQUE KEY `comment_id` (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=6 ;

--
-- Tablo döküm verisi `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `date`, `hanger_id`, `comment`) VALUES
(1, 4, 2147483647, 1, 'deneme 123'),
(2, 5, 2147483647, 2, 'denemeeeee dadaasafasf '),
(3, 4, 2147483647, 1, 'dada asdfas a das da sa sad'),
(4, 0, 2147483647, 1, 'asdfasfagadsgs sadgsg sg gsadg'),
(5, 4, 2147483647, 4, 'asdasgads asfa  fas af as fa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `emails`
--

DROP TABLE IF EXISTS `emails`;
CREATE TABLE IF NOT EXISTS `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` char(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=5 ;

--
-- Tablo döküm verisi `emails`
--

INSERT INTO `emails` (`id`, `mail`) VALUES
(1, 'mutazalkabir@gmail.com'),
(2, '.eewre.'),
(3, 'mutazalkabir@hotmail.com'),
(4, 'mutaz_alkabir@hotmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fellowship`
--

DROP TABLE IF EXISTS `fellowship`;
CREATE TABLE IF NOT EXISTS `fellowship` (
  `fellower_id` int(11) NOT NULL,
  `fellowed_id` int(11) NOT NULL,
  `fellowship_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`fellowship_id`),
  UNIQUE KEY `fellowship_id` (`fellowship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gardrobe`
--

DROP TABLE IF EXISTS `gardrobe`;
CREATE TABLE IF NOT EXISTS `gardrobe` (
  `gardrobe_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_turkish_ci NOT NULL,
  `about` text COLLATE utf8_turkish_ci NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`gardrobe_id`),
  UNIQUE KEY `gardrobe_id` (`gardrobe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `gardrobe`
--

INSERT INTO `gardrobe` (`gardrobe_id`, `user_id`, `title`, `about`, `create_date`) VALUES
(1, 4, 'deneme', 'denme deneme deneme', 1399826280);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hanger`
--

DROP TABLE IF EXISTS `hanger`;
CREATE TABLE IF NOT EXISTS `hanger` (
  `hanger_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `gardrobe_id` int(11) NOT NULL,
  `about` text COLLATE utf8_turkish_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `place` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `pic_id` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  UNIQUE KEY `hanger_id` (`hanger_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=8 ;

--
-- Tablo döküm verisi `hanger`
--

INSERT INTO `hanger` (`hanger_id`, `user_id`, `category_id`, `gardrobe_id`, `about`, `city`, `place`, `pic_id`, `create_date`) VALUES
(1, 4, 1, 1, 'denme deneme deneme', 'ankara', 'ankara', 1, 1387756800),
(2, 4, 1, 1, 'sadd', 'ankara', 'burasu', 1, 1387756800),
(3, 4, 1, 1, '11', '1', '1', 23, 1387756800),
(4, 4, 1, 1, 'sadd', 'ankara', 'burasu', 1, 1387756800),
(5, 4, 1, 1, '11', '1', '1', 23, 1387756800),
(6, 4, 1, 1, 'sadd', 'ankara', 'burasu', 1, 1387756800),
(7, 4, 1, 1, '11', '1', '1', 23, 1387756800);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `like_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `liked_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `like_date` int(11) NOT NULL,
  UNIQUE KEY `like_id` (`like_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=7 ;

--
-- Tablo döküm verisi `likes`
--

INSERT INTO `likes` (`like_id`, `liked_id`, `user_id`, `type`, `like_date`) VALUES
(1, 1, 4, 1, 0),
(2, 2, 4, 1, 0),
(3, 1, 4, 1, 0),
(4, 1, 5, 1, 0),
(5, 1, 4, 1, 0),
(6, 1, 5, 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `share`
--

DROP TABLE IF EXISTS `share`;
CREATE TABLE IF NOT EXISTS `share` (
  `share_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hanger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `share_date` int(11) NOT NULL,
  UNIQUE KEY `share_id` (`share_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=6 ;

--
-- Tablo döküm verisi `share`
--

INSERT INTO `share` (`share_id`, `hanger_id`, `user_id`, `share_date`) VALUES
(1, 1, 4, 1400101125),
(2, 1, 5, 1400101125),
(3, 2, 4, 1400101125),
(4, 6, 5, 1400101125),
(5, 4, 4, 1400101125);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tag`
--

DROP TABLE IF EXISTS `tag`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  UNIQUE KEY `type_id` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(1, 'hanger'),
(2, 'gardrobe');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `surname` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `birth_date` int(10) NOT NULL,
  `login_date` int(11) NOT NULL,
  `mail` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  `confirm` tinyint(1) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `pass` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `about` text COLLATE utf8_turkish_ci NOT NULL,
  `profession` text COLLATE utf8_turkish_ci NOT NULL,
  `pic_id` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=19 ;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`user_id`, `name`, `surname`, `birth_date`, `login_date`, `mail`, `confirm`, `gender`, `pass`, `about`, `profession`, `pic_id`) VALUES
(4, 'mutaz', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir@hotmail.com', 0, 0, 'ddd', '', '', ''),
(5, 'mutaz', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir@gmail.com', 0, 0, 'ddd', '', '', ''),
(17, 'iÃ§Ã¶', 'IÃ–Ã§Ã¼ÄŸÄžÃœ', 392508000, 1399998580, 'mmm@gmail.com', 0, 0, 'ddd', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
