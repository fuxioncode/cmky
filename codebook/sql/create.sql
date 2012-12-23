-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1:3306
-- 生成日期: 2012 年 12 月 13 日 13:02
-- 服务器版本: 5.1.28
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `codebook`
--

-- --------------------------------------------------------
use codebook
--
-- 表的结构 `t_codebook`
--

CREATE TABLE IF NOT EXISTS `t_codebook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `describe` text NOT NULL,
  `code` text NOT NULL,
  `language` int(10) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language` (`title`,`update_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `t_index`
--

CREATE TABLE IF NOT EXISTS `t_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `codebook_id` int(11) NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_id` (`problem_id`,`language_id`,`codebook_id`),
  KEY `update_time` (`update_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `t_language`
--

CREATE TABLE IF NOT EXISTS `t_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `t_problem`
--

CREATE TABLE IF NOT EXISTS `t_problem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `describe` text NOT NULL,
  `update_time` datetime NOT NULL,
  `index_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;


CREATE TABLE  `codebook`.`t_user` (
`id` INT( 20 ) NOT NULL AUTO_INCREMENT COMMENT  'userid',
`username` VARCHAR( 64 ) NOT NULL ,
`passwd` VARCHAR( 64 ) NOT NULL ,
PRIMARY KEY (  `id` ,  `username` )
) ENGINE = MYISAM COMMENT =  '登陆用户名和密码';