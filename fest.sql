-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 21, 2022 at 04:14 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `email`, `pass`) VALUES
('nagaraj', 'rock@gmail.com', 'admin'),
('rahul', 'rahul@gmial.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `applied`
--

DROP TABLE IF EXISTS `applied`;
CREATE TABLE IF NOT EXISTS `applied` (
  `usn` varchar(20) NOT NULL,
  `eid` int(10) NOT NULL,
  PRIMARY KEY (`usn`,`eid`),
  KEY `eid` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied`
--

INSERT INTO `applied` (`usn`, `eid`) VALUES
('007', 103),
('1400', 101),
('1410', 108),
('14420', 103);

-- --------------------------------------------------------

--
-- Table structure for table `coordinator`
--

DROP TABLE IF EXISTS `coordinator`;
CREATE TABLE IF NOT EXISTS `coordinator` (
  `cname` varchar(20) DEFAULT NULL,
  `cid` int(10) NOT NULL,
  `pass` varchar(20) NOT NULL DEFAULT 'co123',
  `did` int(10) DEFAULT NULL,
  `phno` bigint(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `eventid` int(10) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `did` (`did`),
  KEY `eventid` (`eventid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coordinator`
--

INSERT INTO `coordinator` (`cname`, `cid`, `pass`, `did`, `phno`, `email`, `eventid`) VALUES
('Shiva', 14220, 'co123', 1002, 85542138, 'shiva@gmail.com', 112),
('Akash', 140005, 'co123', 1002, 776054955, 'akash@gmail.com', 103),
('Raja', 15001, 'co123', 1001, 9345535658, 'raj@gmail.com', 104),
('tony', 16001, 'co123', 1005, 6595857545, 'tony@gmail.com', 107),
('danush', 1701, 'co123', 1003, 7795857545, 'danush@gmail.com', 108);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
CREATE TABLE IF NOT EXISTS `dept` (
  `dname` varchar(20) DEFAULT NULL,
  `did` int(10) NOT NULL,
  `pass` varchar(20) NOT NULL DEFAULT 'dedpt123',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dname`, `did`, `pass`) VALUES
('ME', 1001, 'dedpt123'),
('CSE', 1002, 'dedpt123'),
('CV', 1003, 'dedpt123'),
('EC', 1004, 'dedpt123'),
('EEE', 1005, 'dedpt123'),
('Sports', 1006, 'dedpt123'),
('Architecture', 1007, 'dedpt123'),
('cultural', 10088, 'cul123'),
('waste', 1, 'dept123');

-- --------------------------------------------------------

--
-- Table structure for table `eventt`
--

DROP TABLE IF EXISTS `eventt`;
CREATE TABLE IF NOT EXISTS `eventt` (
  `name` varchar(20) DEFAULT NULL,
  `eid` int(10) NOT NULL,
  `descp` varchar(50) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `did` int(10) DEFAULT NULL,
  `loc` varchar(20) DEFAULT NULL,
  `stime` time DEFAULT NULL,
  `etime` time DEFAULT NULL,
  `fee` int(10) DEFAULT NULL,
  `noapplied` int(10) DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `cid` (`cid`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventt`
--

INSERT INTO `eventt` (`name`, `eid`, `descp`, `cid`, `did`, `loc`, `stime`, `etime`, `fee`, `noapplied`) VALUES
('Logomania', 103, 'identify the logos', 140005, 1002, 'mech block 11', '18:00:00', '19:01:00', 250, 0),
('Coding', 101, 'Coding and Testing', 14001, 1002, 'PG Block ', '09:00:00', '12:00:00', 50, 0),
('TurtleJam', 112, 'Dance Competition\r\n', 14220, 1002, 'Indoor Stadium', '17:00:00', '20:00:00', 500, 0),
('craftting', 104, 'making useful things from the waste provided', 15001, 1001, 'Library lawn', '05:00:00', '07:30:00', 500, 0),
('Shock', 107, 'Find the fault in circuit', 16001, 1005, 'EC block', '12:00:00', '14:00:00', 50, 0),
('build', 108, 'Apartment modeling', 1701, 1003, 'CivilBlock', '15:00:00', '20:00:00', 70, 0),
('RoboWar', 116, 'Robot Wars', 14026, 1001, 'Mech Block', '05:00:00', '07:00:00', 500, 0),
('Counter Strike', 125, 'Counter Strike PC game', 14025, 1001, 'CSE LAB', '08:00:00', '09:00:00', 250, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `name` varchar(20) DEFAULT NULL,
  `usn` varchar(20) NOT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `phno` bigint(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `clg` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`usn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `usn`, `pass`, `phno`, `email`, `clg`) VALUES
('Arjun ', '1455', 'arj123', 8553105483, 'arjun22gu@gmail.com', 'NewHorizon'),
('a', '1234', 'a', 855420886, ' abi@gmail.com', 'BMSCE'),
('Chethu', '999', 'chethu123', 9365862456, 'chethu@gmail.com', 'BMSCE'),
('tonysatrk', '007', 'tony123', 8889945888, 'tony@gmail.com', 'BMSCE'),
('Sneha', '2222', 'SNEHA', 855412484, 'SNEHA@gmail.com', 'cmr'),
('Ajay Chiller', '1400', 'ajay123', 8553105483, 'ajay22gu@gmail.com', 'BMSCE'),
('nagaraj', '4pm20cs406', 'nagaraj', 9874561230, 'rocknet@gmail.com', 'pesitm');

-- --------------------------------------------------------

--
-- Table structure for table `win`
--

DROP TABLE IF EXISTS `win`;
CREATE TABLE IF NOT EXISTS `win` (
  `eid` int(10) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `price` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `win`
--

INSERT INTO `win` (`eid`, `usn`, `place`, `price`) VALUES
(125, '1546', 'third', 330),
(107, '1455', 'second', 220),
(108, '1524', 'first', 100),
(101, '1666', 'first', 1000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
