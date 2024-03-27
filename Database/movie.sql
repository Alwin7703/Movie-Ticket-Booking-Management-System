/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 5.5.62 : Database - movie
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`movie` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `movie`;

/*Table structure for table `adminauth` */

DROP TABLE IF EXISTS `adminauth`;

CREATE TABLE `adminauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` text,
  `adname` text,
  `mobile` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `permission` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `adminauth` */

insert  into `adminauth`(`id`,`password`,`adname`,`mobile`,`dob`,`gender`,`pin`,`permission`) values 
(20,'anand123','anand','9945393423','9-5-1997','m','533223','Yes'),
(21,'kiran123','kiran','9652422666','23-11-2000','m','533226','Yes'),
(22,'nikhil123','nikhil','9652522444','23-9-2002','m','533220','Yes');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` text,
  `custname` text,
  `mobile` text,
  `age` text,
  `email` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`id`,`username`,`password`,`custname`,`mobile`,`age`,`email`) values 
(20,'harideep1','12345','harideep','9800218018','21','harideepmit@gmail.com');

/*Table structure for table `customerlogin` */

DROP TABLE IF EXISTS `customerlogin`;

CREATE TABLE `customerlogin` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `password` text,
  `custname` text,
  `mobile` text,
  `dob` text,
  `gender` text,
  `pin` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

/*Data for the table `customerlogin` */

insert  into `customerlogin`(`id`,`password`,`custname`,`mobile`,`dob`,`gender`,`pin`) values 
(66,'123','rahul','9756568333','20-07-01','m','247451');

/*Table structure for table `custtranscation` */

DROP TABLE IF EXISTS `custtranscation`;

CREATE TABLE `custtranscation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `custname` text,
  `noofmovie` int(11) DEFAULT NULL,
  `selectmovie` text,
  `moneytopay` int(11) DEFAULT NULL,
  `paymentmode` text,
  `semoviename` text,
  `mobile` text,
  `pin` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `custtranscation` */

insert  into `custtranscation`(`id`,`custname`,`noofmovie`,`selectmovie`,`moneytopay`,`paymentmode`,`semoviename`,`mobile`,`pin`) values 
(20,'vasu',0,'1',180,'hand','Dead Pool-2','',''),
(21,'rahul',0,'1',250,'hand','Rampage','','');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `empname` text,
  `mobile` text,
  `age` text,
  `email` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`id`,`empname`,`mobile`,`age`,`email`) values 
(20,'ranga','8816506950','25','ranga123@gmail.com'),
(21,'gauti','8809833710','22','chowthagowtham@gmail.com'),
(22,'naresh','9909813567','21','naresh@1234gmail.com'),
(23,'abhiroop','9820831067','22','abhiroopbahuballi@gmail.com'),
(24,'srikanth','6815291074','21','kgsreekanth@gmail.com'),
(25,'krishna','9872740171','23','krishnachaitanaya@gmail.com'),
(26,'rahul','911919','21','r@gmail.com');

/*Table structure for table `employeelogin` */

DROP TABLE IF EXISTS `employeelogin`;

CREATE TABLE `employeelogin` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `password` text,
  `empname` text,
  `mobile` text,
  `age` text,
  `gender` text,
  `email` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `employeelogin` */

insert  into `employeelogin`(`id`,`password`,`empname`,`mobile`,`age`,`gender`,`email`) values 
(27,'123','rahul','911919','21','m','null'),
(40,'ranga@19','ranga','8816506950','25','m','ranga123@gmail.com'),
(41,'gauti@147','gauti','8809833710','22','m','chowthagowtham@gmail.com'),
(42,'naresh@6579','naresh','9909813567','21','m','naresh@1234gmail.com'),
(43,'abhiroop@123','abhiroop','9820831067','24','m','abhiroopbahuballi@gmail.com'),
(44,'srikanth@123','srikanth','6815291074','21','m','kgsreekanth@gmail.com'),
(45,'krishna@141','krishna','987274017','23','m','krishnachaitanaya@gmail.com');

/*Table structure for table `employeetranscation` */

DROP TABLE IF EXISTS `employeetranscation`;

CREATE TABLE `employeetranscation` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `empname` text,
  `mobile` text,
  `age` text,
  `email` text,
  `price` int(11) DEFAULT NULL,
  `nofseats` int(11) DEFAULT NULL,
  `paymentmode` text,
  `moviename` text,
  `screen` int(11) DEFAULT NULL,
  `theatrename` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `employeetranscation` */

insert  into `employeetranscation`(`id`,`empname`,`mobile`,`age`,`email`,`price`,`nofseats`,`paymentmode`,`moviename`,`screen`,`theatrename`) values 
(10,'ranga','8816506950','25','ranga123@gmail.com',130,100,'hand','Black Mirror',1,'imax'),
(11,'gauti','8809833710','22','chowthagowtham@gmail.com',150,120,'hand','Game of Thrones',2,'imax'),
(12,'naresh','9909813567','21','naresh@1234gmail.com',180,120,'hand','Avengers',3,'imax'),
(13,'abhiroop','9820831067','22','abhiroopbahuballi@gmail.com',200,140,'hand','Pacific Rim',4,'imax'),
(14,'srikanth','6815291074','21','kgsreekanth@gmail.com',450,20,'hand','Dead Pool-2',5,'Manipal Mall'),
(15,'krishna','987274017','23','krishnachaitanaya@gmail.com',300,100,'hand','Rampage',6,'Manipal Mall');

/*Table structure for table `movieschedule` */

DROP TABLE IF EXISTS `movieschedule`;

CREATE TABLE `movieschedule` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `moviename` text,
  `length` int(11) DEFAULT NULL,
  `schedule` text,
  `screeno` int(11) DEFAULT NULL,
  `theatre` text,
  `city` text,
  `genre` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `movieschedule` */

insert  into `movieschedule`(`id`,`moviename`,`length`,`schedule`,`screeno`,`theatre`,`city`,`genre`) values 
(10,'Black Mirror',192,' Sunday 3:50pm',1,'imax','Manipal','Sci-Fi'),
(11,'Game of Thrones',50,'Monday 9:30AM',2,'imax','Manipal','Fantasy'),
(12,'Avengers',200,'Friday 9:30AM',3,'imax','Manipal','Action'),
(13,'Pacific Rim',250,'Tuesday 11:30AM',4,'imax','Manipal','Action'),
(14,'Dead Pool-2',200,'Wednesday 4:30PM',5,'Manipal Mall','Manipal','Action'),
(15,'Rampage',200,'Saturday 3:30PM',6,'Manipal Mall','Manipal','Action');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
