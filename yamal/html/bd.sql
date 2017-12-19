-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 24, 2017 at 10:37 AM
-- Server version: 5.5.58-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kth-ethical`
--

-- --------------------------------------------------------

--
-- Table structure for table `groupe`
--

CREATE TABLE IF NOT EXISTS `groupe` (
  `id_group` int(11) NOT NULL AUTO_INCREMENT,
  `lible_group` varchar(40) NOT NULL,
  `id_session` int(11) NOT NULL,
  PRIMARY KEY (`id_group`,`id_session`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groupe`
--

INSERT INTO `groupe` (`id_group`, `lible_group`, `id_session`) VALUES
(1, 'group1', 1),
(2, 'group2', 1),
(3, 'group3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `id_student` int(11) NOT NULL,
  `id_vulnerability` int(11) NOT NULL,
  `result` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id_session` int(11) NOT NULL AUTO_INCREMENT,
  `date_session` date NOT NULL,
  `libele_session` varchar(40) NOT NULL,
  PRIMARY KEY (`id_session`),
  KEY `date_session` (`date_session`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id_session`, `date_session`, `libele_session`) VALUES
(1, '2017-11-01', 'second session');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id_student` int(11) NOT NULL AUTO_INCREMENT,
  `name_student` varchar(100) NOT NULL,
  `email_student` varchar(100) NOT NULL,
  `id_group` int(11) NOT NULL,
  `pass_student` varchar(40) NOT NULL,
  PRIMARY KEY (`id_student`,`email_student`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_student`, `name_student`, `email_student`, `id_group`, `pass_student`) VALUES
(1, 'bendaoui', 'menouar@kth.se', 1, '5067341679032100'),
(100, 'moho', 'ka@kht.s', 2, 'Noor3333-1');

-- --------------------------------------------------------

--
-- Table structure for table `vu_groupe`
--

CREATE TABLE IF NOT EXISTS `vu_groupe` (
  `id_group` int(11) NOT NULL,
  `id_vulnerability` int(11) NOT NULL,
  PRIMARY KEY (`id_vulnerability`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vu_groupe`
--

INSERT INTO `vu_groupe` (`id_group`, `id_vulnerability`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vulnerability`
--

CREATE TABLE IF NOT EXISTS `vulnerability` (
  `id_vulnerability` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`id_vulnerability`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vulnerability`
--

INSERT INTO `vulnerability` (`id_vulnerability`, `description`) VALUES
(1, 'unprivileged user linux\r\nkernal version 4.4.0-47-generic\r\nexploit :CVE-2016-8655'),
(2, 'sql injection');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
