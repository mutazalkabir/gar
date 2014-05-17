-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 18 May 2014, 00:13:24
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
  `brand_name` varchar(30) NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Tablo döküm verisi `brands`
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
-- Tablo için tablo yapısı `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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
  `comment_date` int(11) NOT NULL,
  `hanger_id` bigint(20) NOT NULL,
  `comment` varchar(400) NOT NULL,
  `commented_user_id` int(11) NOT NULL,
  UNIQUE KEY `comment_id` (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Tablo döküm verisi `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `comment_date`, `hanger_id`, `comment`, `commented_user_id`) VALUES
(1, 4, 2147483647, 1, 'deneme 123', 5),
(2, 5, 2147483647, 2, 'denemeeeee dadaasafasf ', 4),
(3, 4, 2147483647, 1, 'dada asdfas a das da sa sad', 5),
(4, 17, 2147483647, 1, 'asdfasfagadsgs sadgsg sg gsadg', 4),
(5, 4, 2147483647, 4, 'asdasgads asfa  fas af as fa', 22),
(6, 5, 1400354197, 1, ' ooo çok güzel olmuş mis vallaha :)', 4),
(8, 17, 1400354376, 1, ' ooo çok güzel olmuş mis vallaha :)', 4),
(9, 17, 1400354378, 1, ' ooo çok güzel olmuş mis vallaha :)', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `conversation`
--

CREATE TABLE IF NOT EXISTS `conversation` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `tag_id` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

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
  `fellowship_date` int(11) NOT NULL,
  PRIMARY KEY (`fellowship_id`),
  UNIQUE KEY `fellowship_id` (`fellowship_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Tablo döküm verisi `fellowship`
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
(17, 20, 25, 1400350567);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gardrobe`
--

CREATE TABLE IF NOT EXISTS `gardrobe` (
  `gardrobe_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `gardrobe_name` text NOT NULL,
  `about` text NOT NULL,
  `create_date` int(11) NOT NULL,
  PRIMARY KEY (`gardrobe_id`),
  UNIQUE KEY `gardrobe_id` (`gardrobe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `gardrobe`
--

INSERT INTO `gardrobe` (`gardrobe_id`, `user_id`, `gardrobe_name`, `about`, `create_date`) VALUES
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
  `about` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `place` varchar(40) NOT NULL,
  `pic_id` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  UNIQUE KEY `hanger_id` (`hanger_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Tablo döküm verisi `hanger`
--

INSERT INTO `hanger` (`hanger_id`, `user_id`, `category_id`, `gardrobe_id`, `about`, `city`, `place`, `pic_id`, `create_date`) VALUES
(1, 5, 1, 1, 'denme deneme deneme', 'ankara', 'ankara', 1, 1387756800),
(2, 4, 1, 1, 'sadd', 'ankara', 'burasu', 1, 1387756800),
(3, 4, 1, 1, '11', '1', '1', 23, 1387756800),
(4, 5, 1, 1, 'sadd', 'ankara', 'burasu', 1, 1387756800),
(5, 4, 1, 1, '11', '1', '1', 23, 1387756800),
(6, 4, 1, 1, 'sadd', 'ankara', 'burasu', 1, 1387756800),
(7, 4, 1, 1, '11', '1', '1', 23, 1387756800);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `like_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `liked_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `liked_type_id` int(11) NOT NULL,
  `like_date` int(11) NOT NULL,
  `liked_user_id` int(11) NOT NULL,
  UNIQUE KEY `like_id` (`like_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Tablo döküm verisi `likes`
--

INSERT INTO `likes` (`like_id`, `liked_id`, `user_id`, `liked_type_id`, `like_date`, `liked_user_id`) VALUES
(1, 1, 4, 1, 0, 5),
(2, 2, 4, 1, 0, 5),
(3, 3, 4, 1, 0, 5),
(4, 1, 5, 1, 0, 4),
(5, 1, 4, 1, 0, 5),
(6, 1, 5, 2, 0, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `notifier_id` int(11) NOT NULL,
  `notified_id` int(11) NOT NULL,
  `notification_type_id` int(11) NOT NULL,
  `notificated_item_id` int(11) NOT NULL,
  `notification_date` int(11) NOT NULL,
  UNIQUE KEY `notification_id` (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Tablo döküm verisi `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notifier_id`, `notified_id`, `notification_type_id`, `notificated_item_id`, `notification_date`) VALUES
(1, 17, 20, 4, 0, 1400350567),
(5, 17, 4, 3, 1, 1400354376);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notification_types`
--

CREATE TABLE IF NOT EXISTS `notification_types` (
  `notification_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type` varchar(20) NOT NULL,
  UNIQUE KEY `notification_type_id` (`notification_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Tablo döküm verisi `notification_types`
--

INSERT INTO `notification_types` (`notification_type_id`, `notification_type`) VALUES
(1, 'like'),
(2, 'share'),
(3, 'comment'),
(4, 'fellowship');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pm`
--

CREATE TABLE IF NOT EXISTS `pm` (
  `message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `receiver_id` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `receiver_read` int(1) NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `brand_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `share`
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
-- Tablo döküm verisi `share`
--

INSERT INTO `share` (`share_id`, `hanger_id`, `user_id`, `share_date`, `shared_user_id`) VALUES
(1, 1, 4, 1400101125, 0),
(2, 1, 5, 1400101125, 0),
(3, 2, 4, 1400101125, 0),
(4, 6, 5, 1400101125, 0),
(5, 4, 4, 1400101125, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(11) NOT NULL,
  UNIQUE KEY `type_id` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(1, 'hanger'),
(2, 'gardrobe');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`, `birth_date`, `login_date`, `mail`, `confirm`, `gender`, `pass`, `about`, `profession`, `pic_id`) VALUES
(4, 'mutaz', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir@hotmail.com', 0, 0, 'ddd', '1', '1', '1'),
(5, 'mumtaz', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir@gmail.com', 0, 0, 'ddd', '1', '1', '1'),
(17, 'sinem', 'deneme', 392508000, 1399998580, 'mmm@gmail.com', 0, 0, 'ddd', '1', '1', '1'),
(19, 'ahmet', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir13@hotmail.com', 0, 0, 'ddd', '1', '1', '1'),
(20, 'mehmet', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir20@gmail.com', 0, 0, 'ddd', '1', '1', '1'),
(21, 'ali', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir31@hotmail.com', 0, 0, 'ddd', '1', '1', '1'),
(22, 'berk', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir4@gmail.com', 0, 0, 'ddd', '1', '1', '1'),
(23, 'tunç', 'akın', 392508000, 1399810339, 'mutaz_alkabir5@hotmail.com', 0, 0, 'ddd', '1', '1', '1'),
(24, 'rumeysa', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir6@gmail.com', 0, 0, 'ddd', '1', '1', '1'),
(25, 'emine', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir7@hotmail.com', 0, 0, 'ddd', '1', '1', '1'),
(26, 'sezin', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir8@gmail.com', 0, 0, 'ddd', '1', '1', '1'),
(27, 'savas', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir9@hotmail.com', 0, 0, 'ddd', '1', '1', '1'),
(28, 'murat', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir10@gmail.com', 0, 0, 'ddd', '1', '1', '1'),
(29, 'esra', 'alkabir', 392508000, 1399810339, 'mutaz_alkabir11@hotmail.com', 0, 0, 'ddd', '1', '1', '1'),
(30, 'didem', 'alkabir', 392508000, 1399810995, 'mutaz_alkabir12@gmail.com', 0, 0, 'ddd', '1', '1', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
