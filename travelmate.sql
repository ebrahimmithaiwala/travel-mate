# Host: localhost  (Version 5.5.25)
# Date: 2017-05-19 18:05:38
# Generator: MySQL-Front 6.0  (Build 1.189)


#
# Structure for table "admin"
#

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(255) DEFAULT NULL,
  `AdminEmail` varchar(255) DEFAULT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for table "securityquestions"
#

CREATE TABLE `securityquestions` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SecurityQuestions` varchar(550) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for table "travelhistory"
#

CREATE TABLE `travelhistory` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) DEFAULT NULL,
  `TravelName` varchar(300) DEFAULT NULL,
  `TravelLocation` varchar(500) DEFAULT NULL,
  `TravelStartDate` varchar(10) DEFAULT NULL,
  `TravelEndDate` varchar(10) DEFAULT NULL,
  `ModeOfTransportation` varchar(255) DEFAULT NULL,
  `TravelDetails` varchar(550) DEFAULT NULL,
  `TravellingWith` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Structure for table "travelinventory"
#

CREATE TABLE `travelinventory` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TravelName` varchar(255) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `ProductCategory` varchar(255) DEFAULT NULL,
  `ProductPic` mediumblob,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductQuantity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `UserEmail` varchar(255) DEFAULT NULL,
  `ContactNumber` varchar(13) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `UserPassword` varchar(16) DEFAULT NULL,
  `SecurityQuestion` varchar(255) DEFAULT NULL,
  `SecurityAnswer` varchar(350) DEFAULT NULL,
  `UserGender` varchar(255) DEFAULT NULL,
  `UserProfilePic` mediumblob,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
