-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 13 May 2014, 21:02:07
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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
--

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

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hanger_id` bigint(20) NOT NULL,
  UNIQUE KEY `comment_id` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `emails`
--

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

CREATE TABLE IF NOT EXISTS `hanger` (
  `hanger_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `gardrobe_id` int(11) NOT NULL,
  `about` text COLLATE utf8_turkish_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `place` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `pic_id` int(11) NOT NULL,
  UNIQUE KEY `hanger_id` (`hanger_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=8 ;

--
-- Tablo döküm verisi `hanger`
--

INSERT INTO `hanger` (`hanger_id`, `user_id`, `category_id`, `gardrobe_id`, `about`, `city`, `place`, `pic_id`) VALUES
(1, 4, 1, 1, 'denme deneme deneme', 'ankara', 'ankara', 1),
(2, 4, 1, 1, 'sadd', 'ankara', 'burasu', 1),
(3, 4, 1, 1, '11', '1', '1', 23),
(4, 4, 1, 1, 'sadd', 'ankara', 'burasu', 1),
(5, 4, 1, 1, '11', '1', '1', 23),
(6, 4, 1, 1, 'sadd', 'ankara', 'burasu', 1),
(7, 4, 1, 1, '11', '1', '1', 23);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `like`
--

CREATE TABLE IF NOT EXISTS `like` (
  `like_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `liked_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  UNIQUE KEY `like_id` (`like_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tag`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=18 ;

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
