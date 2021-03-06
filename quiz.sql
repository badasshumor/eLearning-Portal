-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2016 at 12:14 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questionBank`
--
DROP DATABASE IF EXISTS quiz;
CREATE DATABASE quiz;
USE quiz;

CREATE TABLE `questionBank` (
  `questionId` int(25) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `optionA` text NOT NULL,
  `optionB` text NOT NULL,
  `optionC` text NOT NULL,
  `optionD` text NOT NULL,
  `subject` varchar(25) NOT NULL,
  `setBy` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionBank`
--

INSERT INTO `questionBank` (`questionId`, `question`, `answer`, `optionA`, `optionB`, `optionC`, `optionD`, `subject`, `setBy`) VALUES
(1, 'fuck off', 'fjfklj', 'kljflkj', 'jlkjlk', 'jk', 'jlkjkj', 'daa', 'parshant'),
(2, 'hello', 'ljlkjlkjk', 'kjlkjkj', 'lkjkljlkj', 'kjlkjkjj', 'lkljlkjkj', 'daa', 'parshant'),
(3, 'Not entered', 'None', 'None', 'None', 'None', 'None', 'maths', 'hello'),
(4, 'kjlkjlj', 'lkjlj', 'jlkjk', 'jjkljklj', 'kjkljkj', 'lkjkljk', 'jkjlkj', 'kjlkjkj'),
(5, 'fkjsdflsdjf,kjl', 'jjfsjldffj', 'ljkjfkdljlkjskfl', 'jlkjkj', 'kljlk', 'jkl', 'maths', 'hello'),
(6, 'Not entered', 'None', 'None', 'None', 'None', 'None', 'daa', 'parshant'),
(7, 'hello', 'ljlkjlkjk', 'kjlkjkj', 'lkjkljlkj', 'kjlkjkjj', 'lkljlkjkj', 'daa', 'parshant'),
(8, 'fdjsl', '', '', '', '', '', '', ''),
(9, 'fdsjkj', '', '', '', '', '', '', ''),
(10, 'q', 'w', 'e', 'r', 't', 'y', 'daa', 'username'),
(11, 'fdslk', 'None', 'ljdkljsk', 'jlkjlkj', 'kklk', 'llj', 'daa', 'username');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `StudentId` int(11) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `marks` int(4) NOT NULL,
  `max marks` int(4) NOT NULL,
  `percent` float NOT NULL,
  `result` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sessionId` int(11) NOT NULL,
  `username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sessionId`, `username`) VALUES
(483523, 'ps'),
(631458, 'username');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentId` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `college` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentId`, `name`, `college`) VALUES
(1, 'fdfdffd', 'fddff'),
(2, 'bharat', 'bharat'),
(4, 'fdfrrr', 'fdfdfdfdfd'),
(6, 'fdfrrr', 'fdfdfdfdfd'),
(12, 'helllo', 'hello'),
(13, 'hell', 'hell'),
(14, 'fdfrrr', 'fdfdfdfdfd'),
(18, 'ppdfrrr', 'fdfdfdfdfd'),
(20, 'ppdfrrr', 'fdfdfdfdfd'),
(21, 'ppdfrrr', 'fdfdfdfdfd'),
(22, 'fdffkdl', 'ljllkjk'),
(23, 'fdffkdlfdjfk', 'ljllkjk'),
(24, 'fdjskljk', 'lkjkljkj'),
(25, 'my', 'hell'),
(26, 'helll', 'fds');

-- --------------------------------------------------------

--
-- Table structure for table `studentAnswer`
--

CREATE TABLE `studentAnswer` (
  `StudentId` int(11) NOT NULL,
  `questionId` int(25) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentRegister`
--

CREATE TABLE `studentRegister` (
  `StudentId` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentRegister`
--

INSERT INTO `studentRegister` (`StudentId`, `username`, `password`) VALUES
(2, 'bg', 'bg'),
(23, 'dfksdlljdkl', 'djfkljf'),
(22, 'dkfdsll', 'kddfkldsdj'),
(18, 'errerer', 'gfgffgf'),
(1, 'fdfdfdf', 'bbbvb'),
(20, 'klpd', 'passsss'),
(21, 'klpddd', 'passsss'),
(26, 'lllllllllll', 'dffdfd'),
(24, 'lssjflkdsjkl', 'dfsd'),
(25, 'myl', 'my'),
(2, 'user', 'pass'),
(4, 'userr', 'passsss'),
(14, 'userrdfdf', 'passsss'),
(2, 'usert', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `TeacherId` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `college` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`TeacherId`, `name`, `subject`, `college`) VALUES
(1, 'parshant', 'daa', 'parshant'),
(2, 'fdjskljk', 'fdsfd', 'lkjkljkj'),
(3, 'my', 'my', 'my'),
(5, 'my', 'my', 'my'),
(6, 'hel', 'dfldjslk', 'fds'),
(7, 'hell', 'dfldjslk', 'fds'),
(8, 'helll', 'dfldjslk', 'fds');

-- --------------------------------------------------------

--
-- Table structure for table `teacherRegister`
--

CREATE TABLE `teacherRegister` (
  `TeacherId` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherRegister`
--

INSERT INTO `teacherRegister` (`TeacherId`, `username`, `password`) VALUES
(6, 'jflj', 'fdff'),
(7, 'llll', 'lll'),
(8, 'lllllllllll', 'llllllllll'),
(2, 'lssjflkdsjkl', 'fdsffd'),
(3, 'my', 'my'),
(5, 'myle', 'mljkjkl'),
(1, 'ps', 'ps'),
(1, 'username', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questionBank`
--
ALTER TABLE `questionBank`
  ADD PRIMARY KEY (`questionId`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD KEY `stunid` (`StudentId`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sessionId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `studentAnswer`
--
ALTER TABLE `studentAnswer`
  ADD KEY `stuid` (`StudentId`),
  ADD KEY `queid` (`questionId`);

--
-- Indexes for table `studentRegister`
--
ALTER TABLE `studentRegister`
  ADD PRIMARY KEY (`username`),
  ADD KEY `stu_id` (`StudentId`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`TeacherId`);

--
-- Indexes for table `teacherRegister`
--
ALTER TABLE `teacherRegister`
  ADD PRIMARY KEY (`username`),
  ADD KEY `tea_id` (`TeacherId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questionBank`
--
ALTER TABLE `questionBank`
  MODIFY `questionId` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `TeacherId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `stunid` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`);

--
-- Constraints for table `studentAnswer`
--
ALTER TABLE `studentAnswer`
  ADD CONSTRAINT `queid` FOREIGN KEY (`questionId`) REFERENCES `questionBank` (`questionId`),
  ADD CONSTRAINT `stuid` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`);

--
-- Constraints for table `studentRegister`
--
ALTER TABLE `studentRegister`
  ADD CONSTRAINT `stu_id` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`);

--
-- Constraints for table `teacherRegister`
--
ALTER TABLE `teacherRegister`
  ADD CONSTRAINT `tea_id` FOREIGN KEY (`TeacherId`) REFERENCES `teacher` (`TeacherId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
