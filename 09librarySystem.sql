-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2001 年 12 月 31 日 18:02
-- 服务器版本: 5.5.8
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `09library_db`
--
CREATE DATABASE `09library_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `09library_db`;

-- --------------------------------------------------------

--
-- 表的结构 `09book`
--

CREATE TABLE IF NOT EXISTS `09book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) CHARACTER SET gbk NOT NULL,
  `author` char(30) CHARACTER SET gbk NOT NULL,
  `description` text CHARACTER SET gbk NOT NULL,
  `date_of_add` date NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `name` (`name`),
  KEY `name_2` (`name`),
  KEY `name_3` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `09book`
--

INSERT INTO `09book` (`book_id`, `name`, `author`, `description`, `date_of_add`) VALUES
(1, '我们都一样，年轻又彷徨', '苑子文、苑子豪', '20个正能量的故事告诉我们每个无比努力的日子都值得被记住，要用最大的勇气过想要的一生。', '2017-01-16'),
(2, '人生若只如初见', '安意如', '以感性的笔调描绘出古典诗词背后唯美的历史爱情故事。', '2017-02-10'),
(3, '假如给我三天光明', '海伦．凯勒', '以一个身残志坚的柔弱女子的视角，告诫人们应珍惜生命。', '2017-03-30'),
(4, '平凡的世界', '路遥', '浓缩了中国西北农村的历史变迁过程，全景式的表现了当代城乡的社会生活。', '2017-04-04'),
(5, '时间简史', '霍金', '讲述了宇宙的起源和命运。', '2017-07-31'),
(6, '老人与海', '海明威', '叙述了一位老年渔夫与巨大的马林鱼搏斗的故事。', '2017-12-25'),
(7, '茶花女', '小仲马', '讲述了一个青年人与巴黎上流社会一位交际花曲折凄婉的爱情故事。', '2017-10-03'),
(8, '西游记', '吴承恩', '唐僧师徒四人历经九九八十一难，终到西天，取得真经。', '2017-08-17'),
(9, '边城', '沈从文', '以兼具抒情诗和小品文的优美笔触，描述了湘西地区特有的风土人情。', '2017-05-14'),
(10, '麦田里的守望者', '塞林格', '客观又深刻地指出了青少年在成长过程中所面临的种种问题。', '2017-11-04'),
(23, '2', '2', '2', '0000-00-00'),
(34, '4', '3', '4', '0000-00-00');

-- --------------------------------------------------------

--
-- 表的结构 `09category`
--

CREATE TABLE IF NOT EXISTS `09category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) CHARACTER SET gbk NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `09category`
--

INSERT INTO `09category` (`id`, `name`) VALUES
(8, '边城'),
(2, '茶花女'),
(10, '假如给我三天光明'),
(5, '老人与海'),
(3, '麦田里的守望者'),
(4, '平凡的世界'),
(9, '人生若只如初见'),
(6, '时间简史'),
(1, '我们都一样，年轻又彷徨'),
(7, '西游记');

-- --------------------------------------------------------

--
-- 表的结构 `09user`
--

CREATE TABLE IF NOT EXISTS `09user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET gbk NOT NULL,
  `passWord` char(32) CHARACTER SET gbk NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `09user`
--

INSERT INTO `09user` (`id`, `userName`, `passWord`) VALUES
(4, '1', '12'),
(5, '12', '14'),
(6, '41', '0'),
(7, '3', '0'),
(8, '2', '0'),
(9, '22', '10');
