/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - invertory
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `invertory`;

USE `invertory`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `itemslist` */

DROP TABLE IF EXISTS `itemslist`;

CREATE TABLE `itemslist` (
  `id` int(30) NOT NULL auto_increment,
  `qty` varchar(30) default NULL,
  `items` varchar(30) default NULL,
  `sales` varchar(30) default NULL,
  UNIQUE KEY `S.no` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `itemslist` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(60) default NULL,
  `password` varchar(60) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`) values ('admin','admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
