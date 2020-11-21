-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: efilm
-- ------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;

DROP SCHEMA IF EXISTS `efilm` ;
CREATE SCHEMA `efilm` ;

USE `efilm`;

--
-- Table structure for table `Film`
--
DROP TABLE IF EXISTS `Film`;
CREATE TABLE `Film` (
  `FilmId`      INT(11) NOT NULL AUTO_INCREMENT,
  `FilmKey`     VARCHAR(50) NOT NULL,
  `FilmName`    VARCHAR(100) NOT NULL,
  `FilmName_EN` VARCHAR(100) DEFAULT NULL,
  `FilmName_VI` VARCHAR(100) DEFAULT NULL,
  `ImageKey`    VARCHAR(250) DEFAULT NULL,
  `Description` VARCHAR(250) DEFAULT NULL,
  `Liked`       INT(11) DEFAULT 0,
  `Created`     DATETIME DEFAULT NULL,
  `Updated`     TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author`      VARCHAR(50) DEFAULT NULL,
  `Editor`      VARCHAR(50) DEFAULT NULL,
  `Deleted`     TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`FilmId`),
  UNIQUE KEY `FilmId_UNIQUE` (`FilmId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;	

--
-- Sample data for table `Film`
--
INSERT INTO `Film` (`FilmKey`,`FilmName`,`Author`,`Editor`) 
VALUES (uuid(),'300 The rise of Empire II','SYSTEM','SYSTEM');


--
-- Table structure for table `FilmCategory`
--
DROP TABLE IF EXISTS `FilmCategory`;
CREATE TABLE `FilmCategory` (
  `FilmCategoryId`      INT(11) NOT NULL AUTO_INCREMENT,
  `FilmCategoryKey`     VARCHAR(50) NOT NULL,
  `FilmCategoryName`    VARCHAR(100) NOT NULL,
  `FilmCategoryName_EN` VARCHAR(100) DEFAULT NULL,
  `FilmCategoryName_VI` VARCHAR(100) DEFAULT NULL,
  `Description`         VARCHAR(250) DEFAULT NULL,
  `Created`             DATETIME DEFAULT NULL,
  `Updated`             TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author`              VARCHAR(50) DEFAULT NULL,
  `Editor`              VARCHAR(50) DEFAULT NULL,
  `Deleted`             TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`FilmCategoryId`),
  UNIQUE KEY `FilmCategoryId_UNIQUE` (`FilmCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

INSERT INTO `FilmCategory` (`FilmCategoryKey`, `FilmCategoryName`, `Author`, `Editor`)
VALUES (uuid(), 'Film le', 'SYSTEM', 'SYSTEM');

INSERT INTO `FilmCategory` (`FilmCategoryKey`, `FilmCategoryName`, `Author`, `Editor`)
VALUES (uuid(), 'Phim bo', 'SYSTEM', 'SYSTEM');
