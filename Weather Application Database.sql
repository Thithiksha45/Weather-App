/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - weather
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `weather`;

USE `weather`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `UserName` varchar(40) default NULL,
  `Email` varchar(50) default NULL,
  `Password` varchar(60) default NULL,
  `Cpass` varchar(70) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account` */

insert  into `account`(`UserName`,`Email`,`Password`,`Cpass`) values ('Thithiksha','thithikshabasuvoju@gmail.com','1234','1234');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `name` varchar(50) default NULL,
  `email` varchar(60) default NULL,
  `message` varchar(70) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`name`,`email`,`message`) values ('Thithiksha Basuvoju','thithikshabasuvoju@gmail.com','good');

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `location` varchar(30) default NULL,
  `temperature-unit` varchar(40) default NULL,
  `wind-speed-unit` varchar(50) default NULL,
  `display-humidity` varchar(60) default NULL,
  `display-wind` varchar(70) default NULL,
  `time-format` varchar(40) default NULL,
  `background-theme` varchar(50) default NULL,
  `show-extended-forecast` varchar(50) default NULL,
  `language` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `settings` */

insert  into `settings`(`location`,`temperature-unit`,`wind-speed-unit`,`display-humidity`,`display-wind`,`time-format`,`background-theme`,`show-extended-forecast`,`language`) values ('hyderabad','fahrenheit','km/h','on','on','12-hour','light','on','english');

/*Table structure for table `userpreference` */

DROP TABLE IF EXISTS `userpreference`;

CREATE TABLE `userpreference` (
  `default-location` varchar(40) default NULL,
  `preferred-units` varchar(40) default NULL,
  `notification-method` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userpreference` */

insert  into `userpreference`(`default-location`,`preferred-units`,`notification-method`) values ('hyderabad','imperial','email');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
