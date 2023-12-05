CREATE TABLE `Invoice` (
  `invoice_ID` varchar(10),
  `customer_ID` varchar(10),
  `boat_ID` varchar(10),
  `repair_ID` varchar(10),
  `date` DATE,
  `total` DECIMAL,
  PRIMARY KEY (`invoice_ID`),
  KEY `FK1` (`customer_ID`),
  KEY `FK2` (`boat_ID`),
  KEY `FK3` (`repair_ID`)
);

CREATE TABLE `Part` (
  `part_ID` varchar(10),
  `title` varchar(10),
  `description` TEXT,
  `vendor_ID` varchar(10),
  `price` DECIMAL,
  PRIMARY KEY (`part_ID`)
);

CREATE TABLE `Motorboat` (
  `motorboat_ID` varchar(10),
  `enginetype` varchar(10),
  `cylinders` varchar(10),
  `power` varchar(10),
  PRIMARY KEY (`motorboat_ID`)
);

CREATE TABLE `Boat_Type` (
  `boat_ID` varchar(10),
  `Date` DATE,
  `wIDth` varchar(10),
  `displacement` varchar(10),
  `motorboat_ID` varchar(10),
  `sailboat_ID` varchar(10),
  `rowboat_ID` varchar(10),
  PRIMARY KEY (`boat_ID`),
  KEY `FK1` (`motorboat_ID`),
  KEY `FK2` (`sailboat_ID`),
  KEY `FK3` (`rowboat_ID`)
);

CREATE TABLE `workers` (
  `worker_ID` varchar(10),
  `wk_ssn` varchar(10),
  `wk_Fname` varchar(10),
  `wk_Minitit` varchar(10),
  `Lname` varchar(10),
  `contact` varchar(10),
  `wage/hr` DECIMAL,
  PRIMARY KEY (`worker_ID`)
);

CREATE TABLE `Repaired_job` (
  `repair_ID` varchar(10),
  `date` DATE,
  `work_labor` varchar(10),
  `worker_ID` varchar(10),
  `part_ID` varchar(10),
  `issue-ID` varchar(10),
  `cost` DECIMAL,
  `boat_ID` varchar(10),
  PRIMARY KEY (`repair_ID`),
  KEY `FK1` (`worker_ID`),
  KEY `FK2` (`part_ID`),
  KEY `FK3` (`issue-ID`),
  KEY `FK4` (`boat_ID`)
);

CREATE TABLE `Sailboat` (
  `sailboat_ID` varchar(10),
  `masttheight` varchar(10),
  `sail_area` varchar(10),
  `draf` varchar(10),
  PRIMARY KEY (`sailboat_ID`)
);

CREATE TABLE `Customer` (
  `customer_ID` varchar(10),
  `cst_Fname` varchar(10),
  `cstm_minit` varchar(10),
  `cst_Lname` varchar(10),
  `cst-ssn` varchar(10),
  `cst_contact` varchar(10),
  PRIMARY KEY (`customer_ID`)
);

CREATE TABLE `issue_list` (
  `Issue_ID` varchar(10),
  `Issue_title` varchar(10),
  PRIMARY KEY (`Issue_ID`)
);

CREATE TABLE `Vendors` (
  `vendor_ID` varchar(10),
  `Fname` varchar(10),
  `Minitit` varchar(10),
  `Lname` varchar(10),
  `contact` varchar(10),
  PRIMARY KEY (`vendor_ID`)
);

CREATE TABLE `Rowboat` (
  `rowboat_ID` varchar(10),
  `oars` varchar(10),
  PRIMARY KEY (`rowboat_ID`)
);



