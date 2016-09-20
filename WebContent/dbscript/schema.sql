CREATE TABLE `cutsomer` (
  `CUTSOMER_ID` int(11) NOT NULL,
  `CUTSOMER_NAME` varchar(45) DEFAULT NULL,
  `ADDRESS` varchar(45) DEFAULT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `EMAIL_ID` varchar(45) DEFAULT NULL,
  `MODEL` varchar(45) DEFAULT NULL,
  `SUFFIX` varchar(45) DEFAULT NULL,
  `ICROP_NUMBER` varchar(45) DEFAULT NULL,
  `PURPOSE` varchar(45) DEFAULT NULL,
  `SO` varchar(45) DEFAULT NULL,
  `TL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CUTSOMER_ID`),
  UNIQUE KEY `PHONE_NUMBER_UNIQUE` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `dealer` (
  `DEALER_ID` int(11) NOT NULL,
  `DEALER_NAME` varchar(45) NOT NULL,
  `ADDRESS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DEALER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `enquiry` (
  `ENQUIRY_ID` int(11) NOT NULL,
  `ENQUIRY` varchar(100) NOT NULL,
  `SO` varchar(45) DEFAULT NULL,
  `TEAM` varchar(45) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `MODEL` varchar(45) DEFAULT NULL,
  `DEALER_ID` int(11) DEFAULT NULL,
  `COLOUR` varchar(45) DEFAULT NULL,
  `SUFFIX` varchar(45) DEFAULT NULL,
  `MODE` varchar(45) DEFAULT NULL,
  `SOURCE` varchar(45) DEFAULT NULL,
  `PHONE_NUMBER` bigint(20) NOT NULL,
  `CATEGORY` varchar(45) DEFAULT NULL,
  `STATUS` varchar(45) DEFAULT NULL,
  `ENGINE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ENQUIRY_ID`),
  UNIQUE KEY `ENQUIRY_UNIQUE` (`ENQUIRY`),
  KEY `PHONE_FK_idx` (`PHONE_NUMBER`),
  KEY `DEALER_ID_FK_idx` (`DEALER_ID`),
  CONSTRAINT `DEALER_ID_FK` FOREIGN KEY (`DEALER_ID`) REFERENCES `dealer` (`DEALER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PHONE_FK` FOREIGN KEY (`PHONE_NUMBER`) REFERENCES `cutsomer` (`PHONE_NUMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `enquiry_followup` (
  `ENQUIRY_FOLLOWUP_ID` int(11) NOT NULL,
  `ENQUIRY` varchar(45) NOT NULL,
  `ENQUIRY_FOLLOW_UP_DATE` datetime DEFAULT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ENQUIRY_FOLLOWUP_ID`),
  KEY `ENQUIRY_FK_idx` (`ENQUIRY`),
  CONSTRAINT `ENQUIRY_FK1` FOREIGN KEY (`ENQUIRY`) REFERENCES `enquiry` (`ENQUIRY`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `invoice` (
  `INVOICE_ID` int(11) NOT NULL,
  `ENQUIRY` varchar(45) NOT NULL,
  `INVOICE_DATE` datetime DEFAULT NULL,
  `INVOICE_GENERATE` int(11) DEFAULT NULL,
  `DEALER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`INVOICE_ID`),
  KEY `ENQUIRY_FK_idx` (`ENQUIRY`),
  KEY `DEALER_ID_FK_idx` (`DEALER_ID`),
  CONSTRAINT `DEALER_ID_FK3` FOREIGN KEY (`DEALER_ID`) REFERENCES `dealer` (`DEALER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ENQUIRY_FK3` FOREIGN KEY (`ENQUIRY`) REFERENCES `enquiry` (`ENQUIRY`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order_booking` (
  `ORDER_BOOKING_ID` int(11) NOT NULL,
  `ENQUIRY` varchar(45) NOT NULL,
  `MODEL` varchar(45) DEFAULT NULL,
  `ENGINE` varchar(45) DEFAULT NULL,
  `FUEL` varchar(45) DEFAULT NULL,
  `DEALER_ID` int(11) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ORDER_BOOKING_ID`),
  KEY `ENQUIRY_FK_idx` (`ENQUIRY`),
  KEY `DEALER_ID_FK_idx` (`DEALER_ID`),
  CONSTRAINT `DEALER_ID_FK2` FOREIGN KEY (`DEALER_ID`) REFERENCES `dealer` (`DEALER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ENQUIRY_FK2` FOREIGN KEY (`ENQUIRY`) REFERENCES `enquiry` (`ENQUIRY`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `test_drive` (
  `TEST_DRIVE_ID` int(11) NOT NULL,
  `ENQUIRY` varchar(45) NOT NULL,
  `DEALER_ID` int(11) DEFAULT NULL,
  `MODEL` varchar(45) DEFAULT NULL,
  `DRIVING_LICENCE` varchar(45) DEFAULT NULL,
  `SO` varchar(45) DEFAULT NULL,
  `DATE` varchar(45) DEFAULT NULL,
  `REMARKS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TEST_DRIVE_ID`),
  KEY `ENQUIRY_FK_idx` (`ENQUIRY`),
  KEY `DEALER_ID_FK_idx` (`DEALER_ID`),
  CONSTRAINT `DEALER_ID_FK1` FOREIGN KEY (`DEALER_ID`) REFERENCES `dealer` (`DEALER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ENQUIRY_FK` FOREIGN KEY (`ENQUIRY`) REFERENCES `enquiry` (`ENQUIRY`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `ROLE` varchar(45) DEFAULT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
