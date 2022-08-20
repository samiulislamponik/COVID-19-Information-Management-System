-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2021 at 06:32 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid_19_informations`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `affected_peoples`
-- (See below for the actual view)
--
CREATE TABLE `affected_peoples` (
`Kit_Id` int(11)
,`Name` varchar(255)
,`Gender` varchar(255)
,`Age` varchar(255)
,`Phone` varchar(255)
,`Occupation` varchar(255)
,`Address` varchar(255)
,`Division` varchar(255)
,`Religion` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `age_type`
-- (See below for the actual view)
--
CREATE TABLE `age_type` (
`Children` decimal(22,0)
,`Teens` decimal(22,0)
,`Adults` decimal(22,0)
,`Older_Adults` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `caller_info`
--

CREATE TABLE `caller_info` (
  `Serial_Number` int(11) NOT NULL,
  `Caller_Name` varchar(255) DEFAULT NULL,
  `Caller_Area` varchar(255) DEFAULT NULL,
  `Caller_Division` varchar(255) DEFAULT NULL,
  `Caller_Phone_No` varchar(255) DEFAULT NULL,
  `Date_Of_Call` date DEFAULT NULL,
  `Symptoms` varchar(255) DEFAULT NULL,
  `Body_Temperature(F)` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `caller_info`
--

INSERT INTO `caller_info` (`Serial_Number`, `Caller_Name`, `Caller_Area`, `Caller_Division`, `Caller_Phone_No`, `Date_Of_Call`, `Symptoms`, `Body_Temperature(F)`) VALUES
(101, 'Kilo', 'Mirpur', 'Dhaka', '0186666666', '2020-04-22', 'fever\r\ndry cough\r\ntiredness', 100),
(102, 'Jokili', 'Gazipur', 'Dhaka', '017366746', '2020-03-16', 'difficulty breathing ', 98),
(103, 'Tonnaat', 'Feni', 'Chittagong', '0154444444', '2020-05-10', 'loss of taste or smell', 104),
(104, 'Rokio', 'Magora', 'Magora', '01877656555', '2020-05-20', 'fever\r\ndry cough\r\ntiredness', 101),
(105, 'Ohona', 'Moulvibazer', 'Sylhet', '0147298759', '2020-06-11', 'dry cough,\r\ntiredness', 97),
(106, 'Bithika', 'Elenga', 'Tangail', '019739457398', '2020-02-19', 'Fiver', 105),
(107, 'Rakib', 'Kishoreganj', 'Dhaka', '015987198723', '2020-07-01', 'Fiver', 102),
(108, 'Tohin', 'Naindail', 'Mymansing', '01975634876538', '2020-08-22', 'loss of taste or smell\r\na rash on skin', 98),
(109, 'Porna', 'Brahmanbaria', 'Sylhet', '01539485739', '2020-09-17', 'Fiver', 96),
(110, 'Hafcha', 'Chandina', 'Cumilla', '01375398573', '2020-10-17', 'loss of speech\r\nheadache', 106),
(111, 'Bano', 'Mirsharai', 'Sitakunnd', '014345739845', '2020-11-23', 'fever\r\ndry cough\r\ntiredness', 100),
(112, 'Suboj', 'Sichni', 'Laksham', '01745473978', '2020-09-29', 'Fiver', 102),
(113, 'Ronjona', 'Nobiganj', 'Hobiganj', '01976827346', '2020-10-23', 'loss of speech\r\nheadache', 97),
(114, 'Nilanjona', 'ullapara', 'Shirajganj', '013573957398', '2020-09-29', 'Fiver', 99);

-- --------------------------------------------------------

--
-- Stand-in structure for view `death`
-- (See below for the actual view)
--
CREATE TABLE `death` (
`Patient_Id` int(11)
,`Name` varchar(255)
,`Gender` varchar(255)
,`Age` varchar(255)
,`Phone` varchar(255)
,`Address` varchar(255)
,`Admitted_Date` date
,`Date_Of_Death` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `divisions`
-- (See below for the actual view)
--
CREATE TABLE `divisions` (
`Division` varchar(255)
,`Total_Positive_Cases` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `not_infected`
-- (See below for the actual view)
--
CREATE TABLE `not_infected` (
`Kit_Id` int(11)
,`Name` varchar(255)
,`Gender` varchar(255)
,`Age` varchar(255)
,`Phone_Number` varchar(255)
,`Occupation` varchar(255)
,`Address` varchar(255)
,`Division` varchar(255)
,`Religion` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `occupations`
-- (See below for the actual view)
--
CREATE TABLE `occupations` (
`Occupation` varchar(255)
,`Total_Positive_Cases` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `Patient_Id` int(11) NOT NULL,
  `Kit_Id` int(11) DEFAULT NULL,
  `Admitted_Date` date DEFAULT NULL,
  `Patient_Progress` float DEFAULT NULL,
  `Patient_Status` varchar(256) DEFAULT NULL,
  `Released_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`Patient_Id`, `Kit_Id`, `Admitted_Date`, `Patient_Progress`, `Patient_Status`, `Released_Date`) VALUES
(1001, 201, '2020-02-22', 33, 'Alive', NULL),
(1002, 203, '2020-07-08', 98, 'Dead', '2020-07-22'),
(1003, 204, '2020-05-09', 30, 'Alive', NULL),
(1004, 204, '2020-11-20', 78, 'Dead', '2020-03-26'),
(1005, 206, '2020-08-23', 11, 'Alive', NULL),
(1006, 209, '2021-02-25', 96, 'Alive', '2021-02-27'),
(1007, 211, '2021-02-13', 90, 'Alive', '2021-02-28'),
(1008, 212, '2020-03-01', 22, 'Alive', NULL),
(1009, 210, '2020-09-28', 2, 'Dead', '2021-01-22'),
(1010, 211, '2021-01-01', 89, 'Alive', NULL),
(1011, 212, '2020-03-16', 98, 'Alive', '2020-04-22'),
(1012, 205, '2021-03-18', 40, 'Alive', NULL),
(1013, 210, '2021-03-25', 70, 'Alive', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `released`
-- (See below for the actual view)
--
CREATE TABLE `released` (
`Patient_Id` int(11)
,`Name` varchar(255)
,`Gender` varchar(255)
,`Age` varchar(255)
,`Phone` varchar(255)
,`Address` varchar(255)
,`Admitted_Date` date
,`Released_Date` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `serious_patients`
-- (See below for the actual view)
--
CREATE TABLE `serious_patients` (
`Patient_Id` int(11)
,`Name` varchar(255)
,`Gender` varchar(255)
,`Age` varchar(255)
,`Phone` varchar(255)
,`Admitted_Date` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `suggestions`
-- (See below for the actual view)
--
CREATE TABLE `suggestions` (
`Serial_Number` int(11)
,`Caller_Name` varchar(255)
,`Caller_Phone_No` varchar(255)
,`Suggestion` varchar(24)
);

-- --------------------------------------------------------

--
-- Table structure for table `test_report`
--

CREATE TABLE `test_report` (
  `Kit_Id` int(11) NOT NULL,
  `Tester_Name` varchar(255) DEFAULT NULL,
  `Tester_Gender` varchar(255) DEFAULT NULL,
  `Tester_Age` varchar(255) DEFAULT NULL,
  `Test_Date` date DEFAULT NULL,
  `Tester_Phone_Number` varchar(255) DEFAULT NULL,
  `Tester_Occupation` varchar(255) NOT NULL,
  `Tester_Address` varchar(255) DEFAULT NULL,
  `Tester_Division` varchar(255) NOT NULL,
  `Test_Result` varchar(255) DEFAULT NULL,
  `Tester_Religion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_report`
--

INSERT INTO `test_report` (`Kit_Id`, `Tester_Name`, `Tester_Gender`, `Tester_Age`, `Test_Date`, `Tester_Phone_Number`, `Tester_Occupation`, `Tester_Address`, `Tester_Division`, `Test_Result`, `Tester_Religion`) VALUES
(201, 'Khaled', 'Male', '33', '2020-01-22', '018363636366', 'Business man', 'Mirpur', 'Dhaka', 'Positive', 'Bangladeshi'),
(202, 'Rokkata', 'Female', '45', '2020-09-11', '01577788889', 'Teacher', 'Cox-Bazar', 'Chittagong', 'Negative', 'Foreigner'),
(203, 'Barak', 'Male', '66', '2021-01-23', '01766665857', 'Teacher', 'Sylhet', 'Sylhet', 'Positive', 'Bangali'),
(204, 'Tarek', 'Male', '55', '2020-11-13', '01766665857', 'Labour', 'Dinajpur', 'Rajshahi', 'Positive', 'Bangladeshi'),
(205, 'Jomo', 'Female', '16', '2020-12-26', '01766665857', 'Student', 'Kishoreganj', 'Dhaka', 'Positive', 'Bangladeshi'),
(206, 'Nadim', 'Male', '54', '2020-04-26', '016453898', 'Business man', 'Brahmanbaria', 'Chittagong', 'Positive', 'Bangladeshi'),
(207, 'Razib', 'Male', '54', '2020-01-13', '01734735769347', 'Doctor', 'Comilla', 'Comilla', 'Negative', 'Bangladeshi'),
(208, 'Dipa', 'Female', '43', '2020-07-21', '01875397859', 'Nurse', 'Narsingdi', 'Dhaka', 'Posiive', 'Foreigner'),
(209, 'Hamon', 'Male', '43', '2020-12-24', '013745347567', 'Doctor', 'Gazipur', 'Dhaka', 'Positive', 'Foreigner'),
(210, 'Toba', 'Female', '11', '2021-01-20', '0167347563897', 'Student', 'Mymensingh', 'Mymensingh', 'Positive', 'Bangladeshi'),
(211, 'Jolfika', 'Female', '67', '2020-11-17', '013539447', 'Nurse', 'Nethrokona', 'Mymensingh', 'Positive', 'Bangladeshi'),
(212, 'Ponik', 'Male', '88', '2020-09-23', '01976384756', 'Teacher', 'Noakhali', 'Chittagong', 'Positive', 'Foreigner');

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_statistics`
-- (See below for the actual view)
--
CREATE TABLE `total_statistics` (
`Called` bigint(21)
,`Tested` bigint(21)
,`Positive` bigint(21)
,`Negative` bigint(21)
,`Total_Released` bigint(21)
,`Serious_Case` bigint(21)
,`Total_Death` bigint(21)
,`Male` bigint(21)
,`Female` bigint(21)
,`Bangladeshi` bigint(21)
,`Foreigner` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `year_2020`
-- (See below for the actual view)
--
CREATE TABLE `year_2020` (
`January` decimal(22,0)
,`Februray` decimal(22,0)
,`March` decimal(22,0)
,`April` decimal(22,0)
,`May` decimal(22,0)
,`June` decimal(22,0)
,`July` decimal(22,0)
,`August` decimal(22,0)
,`September` decimal(22,0)
,`October` decimal(22,0)
,`November` decimal(22,0)
,`December` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `year_2021`
-- (See below for the actual view)
--
CREATE TABLE `year_2021` (
`January` decimal(22,0)
,`Februray` decimal(22,0)
,`March` decimal(22,0)
,`April` decimal(22,0)
,`May` decimal(22,0)
,`June` decimal(22,0)
,`July` decimal(22,0)
,`August` decimal(22,0)
,`September` decimal(22,0)
,`October` decimal(22,0)
,`November` decimal(22,0)
,`December` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Structure for view `affected_peoples`
--
DROP TABLE IF EXISTS `affected_peoples`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `affected_peoples`  AS SELECT `test_report`.`Kit_Id` AS `Kit_Id`, `test_report`.`Tester_Name` AS `Name`, `test_report`.`Tester_Gender` AS `Gender`, `test_report`.`Tester_Age` AS `Age`, `test_report`.`Tester_Phone_Number` AS `Phone`, `test_report`.`Tester_Occupation` AS `Occupation`, `test_report`.`Tester_Address` AS `Address`, `test_report`.`Tester_Division` AS `Division`, `test_report`.`Tester_Religion` AS `Religion` FROM `test_report` WHERE `test_report`.`Test_Result` = 'Positive' ;

-- --------------------------------------------------------

--
-- Structure for view `age_type`
--
DROP TABLE IF EXISTS `age_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `age_type`  AS SELECT sum(case when `affected_peoples`.`Age` between 1 and 11 then 1 else 0 end) AS `Children`, sum(case when `affected_peoples`.`Age` between 12 and 17 then 1 else 0 end) AS `Teens`, sum(case when `affected_peoples`.`Age` between 18 and 64 then 1 else 0 end) AS `Adults`, sum(case when `affected_peoples`.`Age` >= 65 then 1 else 0 end) AS `Older_Adults` FROM `affected_peoples` ;

-- --------------------------------------------------------

--
-- Structure for view `death`
--
DROP TABLE IF EXISTS `death`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `death`  AS SELECT `p`.`Patient_Id` AS `Patient_Id`, `a`.`Name` AS `Name`, `a`.`Gender` AS `Gender`, `a`.`Age` AS `Age`, `a`.`Phone` AS `Phone`, `a`.`Address` AS `Address`, `p`.`Admitted_Date` AS `Admitted_Date`, `p`.`Released_Date` AS `Date_Of_Death` FROM (`affected_peoples` `a` join `patients` `p` on(`a`.`Kit_Id` = `p`.`Kit_Id` and `p`.`Patient_Status` = 'Dead')) ;

-- --------------------------------------------------------

--
-- Structure for view `divisions`
--
DROP TABLE IF EXISTS `divisions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `divisions`  AS SELECT `affected_peoples`.`Division` AS `Division`, count(0) AS `Total_Positive_Cases` FROM `affected_peoples` GROUP BY `affected_peoples`.`Division` ;

-- --------------------------------------------------------

--
-- Structure for view `not_infected`
--
DROP TABLE IF EXISTS `not_infected`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `not_infected`  AS SELECT `test_report`.`Kit_Id` AS `Kit_Id`, `test_report`.`Tester_Name` AS `Name`, `test_report`.`Tester_Gender` AS `Gender`, `test_report`.`Tester_Age` AS `Age`, `test_report`.`Tester_Phone_Number` AS `Phone_Number`, `test_report`.`Tester_Occupation` AS `Occupation`, `test_report`.`Tester_Address` AS `Address`, `test_report`.`Tester_Division` AS `Division`, `test_report`.`Tester_Religion` AS `Religion` FROM `test_report` WHERE `test_report`.`Test_Result` = 'Negative' ;

-- --------------------------------------------------------

--
-- Structure for view `occupations`
--
DROP TABLE IF EXISTS `occupations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `occupations`  AS SELECT `affected_peoples`.`Occupation` AS `Occupation`, count(0) AS `Total_Positive_Cases` FROM `affected_peoples` GROUP BY `affected_peoples`.`Occupation` ;

-- --------------------------------------------------------

--
-- Structure for view `released`
--
DROP TABLE IF EXISTS `released`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `released`  AS SELECT `p`.`Patient_Id` AS `Patient_Id`, `a`.`Name` AS `Name`, `a`.`Gender` AS `Gender`, `a`.`Age` AS `Age`, `a`.`Phone` AS `Phone`, `a`.`Address` AS `Address`, `p`.`Admitted_Date` AS `Admitted_Date`, `p`.`Released_Date` AS `Released_Date` FROM (`affected_peoples` `a` join `patients` `p` on(`a`.`Kit_Id` = `p`.`Kit_Id` and `p`.`Patient_Progress` >= 90 and `p`.`Patient_Status` = 'Alive')) ;

-- --------------------------------------------------------

--
-- Structure for view `serious_patients`
--
DROP TABLE IF EXISTS `serious_patients`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `serious_patients`  AS SELECT `p`.`Patient_Id` AS `Patient_Id`, `a`.`Name` AS `Name`, `a`.`Gender` AS `Gender`, `a`.`Age` AS `Age`, `a`.`Phone` AS `Phone`, `p`.`Admitted_Date` AS `Admitted_Date` FROM (`affected_peoples` `a` join `patients` `p` on(`a`.`Kit_Id` = `p`.`Kit_Id` and `p`.`Patient_Progress` <= 30 and `p`.`Patient_Status` = 'Alive')) ;

-- --------------------------------------------------------

--
-- Structure for view `suggestions`
--
DROP TABLE IF EXISTS `suggestions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `suggestions`  AS SELECT `caller_info`.`Serial_Number` AS `Serial_Number`, `caller_info`.`Caller_Name` AS `Caller_Name`, `caller_info`.`Caller_Phone_No` AS `Caller_Phone_No`, CASE WHEN `caller_info`.`Symptoms` like '%fever%' AND `caller_info`.`Symptoms` like '%dry cough%' AND `caller_info`.`Symptoms` like '%tiredness%' OR `caller_info`.`Symptoms` like '%difficulty breathing%' AND `caller_info`.`Symptoms` like '%chest pain%' OR `caller_info`.`Symptoms` like '%loss of speech%' OR (`caller_info`.`Symptoms` like '%headache%' OR `caller_info`.`Symptoms` like '%loss of taste or smell%' OR `caller_info`.`Symptoms` like '%rash on skin%5') AND (`caller_info`.`Body_Temperature(F)` >= 100.4 OR `caller_info`.`Body_Temperature(F)` <= 96.5) THEN 'You Should Test COVID-19' ELSE 'See a Doctor' END AS `Suggestion` FROM `caller_info` ;

-- --------------------------------------------------------

--
-- Structure for view `total_statistics`
--
DROP TABLE IF EXISTS `total_statistics`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_statistics`  AS SELECT (select count(0) from `caller_info`) AS `Called`, (select count(0) from `test_report`) AS `Tested`, (select count(0) from `affected_peoples`) AS `Positive`, (select count(0) from `not_infected`) AS `Negative`, (select count(0) from `released`) AS `Total_Released`, (select count(0) from `serious_patients`) AS `Serious_Case`, (select count(0) from `death`) AS `Total_Death`, (select count(0) from `affected_peoples` where `affected_peoples`.`Gender` = 'Male') AS `Male`, (select count(0) from `affected_peoples` where `affected_peoples`.`Gender` = 'Female') AS `Female`, (select count(0) from `affected_peoples` where `affected_peoples`.`Religion` = 'Bangladeshi') AS `Bangladeshi`, (select count(0) from `affected_peoples` where `affected_peoples`.`Religion` = 'Foreigner') AS `Foreigner` ;

-- --------------------------------------------------------

--
-- Structure for view `year_2020`
--
DROP TABLE IF EXISTS `year_2020`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `year_2020`  AS SELECT sum(case when `test_report`.`Test_Date` between '2020-01-01' and '2020-01-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `January`, sum(case when `test_report`.`Test_Date` between '2020-02-01' and '2020-02-29' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `Februray`, sum(case when `test_report`.`Test_Date` between '2020-03-01' and '2020-03-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `March`, sum(case when `test_report`.`Test_Date` between '2020-04-01' and '2020-04-30' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `April`, sum(case when `test_report`.`Test_Date` between '2020-05-01' and '2020-05-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `May`, sum(case when `test_report`.`Test_Date` between '2020-06-01' and '2020-06-30' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `June`, sum(case when `test_report`.`Test_Date` between '2020-07-01' and '2020-07-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `July`, sum(case when `test_report`.`Test_Date` between '2020-08-01' and '2020-08-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `August`, sum(case when `test_report`.`Test_Date` between '2020-09-01' and '2020-09-30' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `September`, sum(case when `test_report`.`Test_Date` between '2020-10-01' and '2020-10-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `October`, sum(case when `test_report`.`Test_Date` between '2020-11-01' and '2020-11-30' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `November`, sum(case when `test_report`.`Test_Date` between '2020-12-01' and '2020-12-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `December` FROM `test_report` ;

-- --------------------------------------------------------

--
-- Structure for view `year_2021`
--
DROP TABLE IF EXISTS `year_2021`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `year_2021`  AS SELECT sum(case when `test_report`.`Test_Date` between '2021-01-01' and '2021-01-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `January`, sum(case when `test_report`.`Test_Date` between '2021-02-01' and '2021-02-28' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `Februray`, sum(case when `test_report`.`Test_Date` between '2021-03-01' and '2021-03-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `March`, sum(case when `test_report`.`Test_Date` between '2021-04-01' and '2021-04-30' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `April`, sum(case when `test_report`.`Test_Date` between '2021-05-01' and '2021-05-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `May`, sum(case when `test_report`.`Test_Date` between '2021-06-01' and '2021-06-30' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `June`, sum(case when `test_report`.`Test_Date` between '2021-07-01' and '2021-07-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `July`, sum(case when `test_report`.`Test_Date` between '2021-08-01' and '2021-08-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `August`, sum(case when `test_report`.`Test_Date` between '2021-09-01' and '2021-09-30' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `September`, sum(case when `test_report`.`Test_Date` between '2021-10-01' and '2021-10-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `October`, sum(case when `test_report`.`Test_Date` between '2021-11-01' and '2021-11-30' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `November`, sum(case when `test_report`.`Test_Date` between '2021-12-01' and '2021-12-31' and `test_report`.`Test_Result` = 'Positive' then 1 else 0 end) AS `December` FROM `test_report` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caller_info`
--
ALTER TABLE `caller_info`
  ADD PRIMARY KEY (`Serial_Number`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`Patient_Id`);

--
-- Indexes for table `test_report`
--
ALTER TABLE `test_report`
  ADD PRIMARY KEY (`Kit_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caller_info`
--
ALTER TABLE `caller_info`
  MODIFY `Serial_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `Patient_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1014;

--
-- AUTO_INCREMENT for table `test_report`
--
ALTER TABLE `test_report`
  MODIFY `Kit_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
