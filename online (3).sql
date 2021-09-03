-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2021 at 06:02 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(10) DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `role`) VALUES
('123@gmail.com', '123', 'admin'),
('head@gmail.com', 'head', 'head'),
('mychance2001@gmail.com', 'sanket', 'admin'),
('teacher1@gmail.com', 'sanket', 'admin'),
('teacher2@gmail.com', 'sanket', 'admin'),
('teacher3@gmail.com', 'teacher3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c'),
('5bd1a29b0514c', '5bd1a29b1c417'),
('5bd1a29b7d4b8', '5bd1a29b8ae6e'),
('5f7033ec5988e', '5f7033ec8345f'),
('5f70553f590d5', '5f70553f6daf2'),
('5f70559f25d71', '5f70559f50823'),
('5f705bcf25c9b', '5f705bcf25dc0'),
('5f705d8c09468', '5f705d8c1fd69'),
('5f705e1925e04', '5f705e194c640'),
('5f75a62a6ceba', '5f75a62aa25e9'),
('5f75a62b02c12', '5f75a62b0e01d'),
('5f76c8c1410b4', '5f76c8c157be7'),
('5f76d272cec52', '5f76d272ed315'),
('5f76d759812cb', '5f76d7598ffd1'),
('5f76e43e35e25', '5f76e43e5f084'),
('5f801c0f93f61', '5f801c0fb68a9');

-- --------------------------------------------------------

--
-- Table structure for table `examstu`
--

CREATE TABLE `examstu` (
  `eid` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examstu`
--

INSERT INTO `examstu` (`eid`, `email`) VALUES
('d41d8cd98f00b204e9800998ecf8427e', ''),
('e4da3b7fbbce2345d7772b0674a318d5', 'ramesh@gmail.com'),
('c81e728d9d4c2f636f067f89cc14862c', 'ramesh@gmail.com'),
('2HS102', 'mychance2001@gmail.com'),
('2HE102', 'mychance2001@gmail.com'),
('2HS1021', 'mychance2001@gmail.com'),
('3HS301', 'mychance2001@gmail.com'),
('568JQR', 'mychance2001@gmail.com'),
('2CS201', 'mychance2001@gmail.com'),
('abc123', '18BCE043@nirmauni.ac.in'),
('18BCE', ''),
('H123', '18BCE043@nirmauni.ac.in'),
('2HS301', 'mychance2001@gmail.com'),
('2ME503', 'mychance2001@gmail.com'),
('2ME501', '18BCE043@nirmauni.ac.in'),
('', ''),
('3HS301', '18BCE048@nirmauni.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('mychance2001@gmail.com', '5bd1a1a3c5e5b', 2, 2, 2, 0, '2020-09-26 05:32:22'),
('mychance2001@gmail.com', '558920ff906b8', 1, 2, 1, 1, '2020-09-26 06:50:38'),
('mychance2001@gmail.com', '2HS102', 1, 1, 1, 0, '2020-09-27 09:07:32'),
('mychance2001@gmail.com', '2HS1021', 2, 1, 1, 0, '2020-09-27 09:39:10'),
('mychance2001@gmail.com', '3HS301', 2, 1, 1, 0, '2020-09-27 09:41:49'),
('mychance2001@gmail.com', '568JQR', 0, 2, 0, 2, '2020-10-01 09:57:26'),
('mychance2001@gmail.com', '2ME503', 2, 1, 1, 0, '2020-10-02 07:32:22'),
('18BCE043@nirmauni.ac.in', 'H123', 2, 1, 1, 0, '2020-10-02 07:56:40'),
('18BCE043@nirmauni.ac.in', '2ME501', 0, 1, 0, 1, '2020-10-02 08:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', 'usermod', '55892169d2efc'),
('55892169bf6a7', 'useradd', '55892169d2f05'),
('55892169bf6a7', 'useralter', '55892169d2f09'),
('55892169bf6a7', 'groupmod', '55892169d2f0c'),
('5589216a3646e', '751', '5589216a48713'),
('5589216a3646e', '752', '5589216a4871a'),
('5589216a3646e', '754', '5589216a4871f'),
('5589216a3646e', '755', '5589216a48722'),
('558922117fcef', 'echo', '5589221195248'),
('558922117fcef', 'print', '558922119525a'),
('558922117fcef', 'printf', '5589221195265'),
('558922117fcef', 'cout', '5589221195270'),
('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),
('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('558973f4389ac', 'containing root file-system required during bootup', '558973f462e44'),
('558973f4389ac', ' Contains only scripts to be executed during bootup', '558973f462e56'),
('558973f4389ac', ' Contains root-file system and drivers required to be preloaded during bootup', '558973f462e61'),
('558973f4389ac', 'None of the above', '558973f462e6b'),
('558973f4c46f2', 'Kernel', '558973f4d4abe'),
('558973f4c46f2', 'Shell', '558973f4d4acf'),
('558973f4c46f2', 'Commands', '558973f4d4ad9'),
('558973f4c46f2', 'Script', '558973f4d4ae3'),
('558973f51600d', 'Boot Loading', '558973f526f9d'),
('558973f51600d', ' Boot Record', '558973f526fb9'),
('558973f51600d', ' Boot Strapping', '558973f526fc5'),
('558973f51600d', ' Booting', '558973f526fce'),
('558973f55d269', ' Quick boot', '558973f57aef1'),
('558973f55d269', 'Cold boot', '558973f57af07'),
('558973f55d269', ' Hot boot', '558973f57af17'),
('558973f55d269', ' Fast boot', '558973f57af27'),
('558973f5abb1a', 'bash', '558973f5e7623'),
('558973f5abb1a', ' Csh', '558973f5e7636'),
('558973f5abb1a', ' ksh', '558973f5e7640'),
('558973f5abb1a', ' sh', '558973f5e764a'),
('5589751a63091', 'q', '5589751a81bd6'),
('5589751a63091', 'wq', '5589751a81be8'),
('5589751a63091', ' both (a) and (b)', '5589751a81bf4'),
('5589751a63091', ' none of the mentioned', '5589751a81bfd'),
('5589751ad32b8', ' moves screen down one page', '5589751adbdbd'),
('5589751ad32b8', 'moves screen up one page', '5589751adbdce'),
('5589751ad32b8', 'moves screen up one line', '5589751adbdd8'),
('5589751ad32b8', ' moves screen down one line', '5589751adbde2'),
('5589751b304ef', ' yy', '5589751b3b04d'),
('5589751b304ef', 'yw', '5589751b3b05e'),
('5589751b304ef', 'yc', '5589751b3b069'),
('5589751b304ef', ' none of the mentioned', '5589751b3b073'),
('5589751b749c9', 'X', '5589751b9a98c'),
('5589751b749c9', 'x', '5589751b9a9a5'),
('5589751b749c9', 'D', '5589751b9a9b7'),
('5589751b749c9', 'd', '5589751b9a9c9'),
('5589751bd02ec', 'autoindentation is not possible in vi editor', '5589751bdadaa'),
('5bd1a29b0514c', 'left-root-right', '5bd1a29b1c417'),
('5bd1a29b0514c', 'root-left-right', '5bd1a29b1c42c'),
('5bd1a29b0514c', 'right-left-root', '5bd1a29b1c42d'),
('5bd1a29b0514c', 'none of these', '5bd1a29b1c42e'),
('5bd1a29b7d4b8', 'left-root-right', '5bd1a29b8ae62'),
('5bd1a29b7d4b8', 'root-left-right', '5bd1a29b8ae6e'),
('5bd1a29b7d4b8', 'right-left-root', '5bd1a29b8ae70'),
('5bd1a29b7d4b8', 'none of these', '5bd1a29b8ae71'),
('5f7033ec5988e', 'Motor', '5f7033ec83458'),
('5f7033ec5988e', 'Intellectual', '5f7033ec8345d'),
('5f7033ec5988e', 'Physical', '5f7033ec8345e'),
('5f7033ec5988e', 'All of above', '5f7033ec8345f'),
('5f70553f590d5', 'Null Hypothesis', '5f70553f6daf2'),
('5f70553f590d5', 'Full Hypothesis', '5f70553f6daf6'),
('5f70553f590d5', 'A and b', '5f70553f6daf7'),
('5f70553f590d5', 'Non of above', '5f70553f6daf8'),
('5f70559f25d71', 'A', '5f70559f5081e'),
('5f70559f25d71', 'C', '5f70559f50823'),
('5f70559f25d71', 'F', '5f70559f50825'),
('5f70559f25d71', 'S', '5f70559f50826'),
('5f705bcf25c9b', 'Family', '5f705bcf25dbb'),
('5f705bcf25c9b', 'Money', '5f705bcf25dbf'),
('5f705bcf25c9b', 'Both', '5f705bcf25dc0'),
('5f705bcf25c9b', 'None', '5f705bcf25dc1'),
('5f705d8c09468', 'fdgfdg', '5f705d8c1fd69'),
('5f705d8c09468', 'fgs', '5f705d8c1fd6d'),
('5f705d8c09468', 'hhfhf', '5f705d8c1fd6e'),
('5f705d8c09468', 'rte', '5f705d8c1fd6f'),
('5f705e1925e04', 'dsd', '5f705e194c640'),
('5f705e1925e04', 'ass', '5f705e194c647'),
('5f705e1925e04', 'dfvdf', '5f705e194c649'),
('5f705e1925e04', 'dfdf', '5f705e194c64a'),
('5f75a62a6ceba', 'Front Members', '5f75a62aa25d5'),
('5f75a62a6ceba', 'Fast Movers', '5f75a62aa25e1'),
('5f75a62a6ceba', 'Financeal mgt', '5f75a62aa25e9'),
('5f75a62a6ceba', 'Fraud mgt.', '5f75a62aa25f6'),
('5f75a62b02c12', 'Statement shows', '5f75a62b0e00f'),
('5f75a62b02c12', 'Assets and liabilitiies', '5f75a62b0e01b'),
('5f75a62b02c12', 'a and b', '5f75a62b0e01d'),
('5f75a62b02c12', 'none of above', '5f75a62b0e01f'),
('5f76c8c1410b4', 'a', '5f76c8c157bda'),
('5f76c8c1410b4', 'as', '5f76c8c157be7'),
('5f76c8c1410b4', 's', '5f76c8c157bee'),
('5f76c8c1410b4', 'Non of above', '5f76c8c157bf2'),
('5f76d272cec52', 'H', '5f76d272ed2fe'),
('5f76d272cec52', 'E', '5f76d272ed30c'),
('5f76d272cec52', 'LLOW', '5f76d272ed310'),
('5f76d272cec52', 'ABC all', '5f76d272ed315'),
('5f76d759812cb', 'docs', '5f76d7598ffd1'),
('5f76d759812cb', 'excel', '5f76d7598ffde'),
('5f76d759812cb', 'nice', '5f76d7598ffe2'),
('5f76d759812cb', 'good', '5f76d7598ffe5'),
('5f76e43e35e25', 'Hey', '5f76e43e5f084'),
('5f76e43e35e25', 'Hello', '5f76e43e5f088'),
('5f76e43e35e25', 'A and b', '5f76e43e5f089'),
('5f76e43e35e25', 'None', '5f76e43e5f08a'),
('5f801c0f93f61', 'a', '5f801c0fb68a9'),
('5f801c0f93f61', 'a', '5f801c0fb68b2'),
('5f801c0f93f61', 'd', '5f801c0fb68b4'),
('5f801c0f93f61', 'd', '5f801c0fb68b5');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),
('558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),
('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
('55897338a6659', '558973f4389ac', 'On Linux, initrd is a file', 4, 1),
('55897338a6659', '558973f4c46f2', 'Which is loaded into memory when system is booted?', 4, 2),
('55897338a6659', '558973f51600d', ' The process of starting up a computer is known as', 4, 3),
('55897338a6659', '558973f55d269', ' Bootstrapping is also known as', 4, 4),
('55897338a6659', '558973f5abb1a', 'The shell used for Single user mode shell is:', 4, 5),
('5589741f9ed52', '5589751a63091', ' Which command is used to close the vi editor?', 4, 1),
('5589741f9ed52', '5589751ad32b8', ' In vi editor, the key combination CTRL+f', 4, 2),
('5589741f9ed52', '5589751b304ef', ' Which vi editor command copies the current line of the file?', 4, 3),
('5589741f9ed52', '5589751b749c9', ' Which command is used to delete the character before the cursor location in vi editor?', 4, 4),
('5589741f9ed52', '5589751bd02ec', ' Which one of the following statement is true?', 4, 5),
('5bd1a1a3c5e5b', '5bd1a29b0514c', 'What is inorder?', 4, 1),
('5bd1a1a3c5e5b', '5bd1a29b7d4b8', 'what is pre order?', 4, 2),
('5f7033b9c4a6a', '5f7033ec5988e', 'What are/is the type of habits?', 4, 1),
('2HS102', '5f70553f590d5', 'What is h0?', 4, 1),
('2HS102', '5f70559f25d71', 'what\r\n\r\n?', 4, 1),
('2HS1021', '5f705d8c09468', 'sdsdsd', 4, 1),
('3HS301', '5f705e1925e04', 'asasas', 4, 1),
('568JQR', '5f75a62a6ceba', 'What is Full form of FM?', 4, 1),
('568JQR', '5f75a62b02c12', 'What is blancesheet?', 4, 2),
('abc123', '5f76c8c1410b4', 'as', 4, 1),
('H123', '5f76d272cec52', 'Hello', 4, 1),
('2ME503', '5f76d759812cb', 'word', 4, 1),
('2ME501', '5f76e43e35e25', 'Hey', 4, 1),
('2CS503', '5f801c0f93f61', 'What?', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`, `email`) VALUES
('558920ff906b8', 'Linux : File Managment', 2, 1, 2, 5, '', 'linux', '2018-10-20 14:47:56', 'teacher2@gmail.com'),
('558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2018-10-20 14:47:04', 'teacher1@gmail.com'),
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2018-10-20 14:47:04', 'teacher1@gmail.com'),
('558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2018-10-20 14:47:04', 'teacher1@gmail.com'),
('55897338a6659', 'Linux:startup', 2, 1, 5, 10, '', 'linux', '2018-10-20 14:47:56', 'teacher2@gmail.com'),
('5589741f9ed52', 'Linux :vi Editor', 2, 1, 5, 10, '', 'linux', '2018-10-20 14:47:56', 'teacher2@gmail.com'),
('5bd1a1a3c5e5b', 'Data Structure', 1, 0, 2, 1, 'ds exam', 'ds', '2018-10-25 10:57:39', 'teacher2@gmail.com'),
('5f7033b9c4a6a', 'Pd', 1, 0, 1, 2, 'Complete within 2 minutes...', 'theory', '2020-09-27 06:39:53', 'teacher1@gmail.com'),
('2HS102', 'Economics2', 1, 0, 1, 2, 'sas', 'software', '2020-09-27 09:04:07', 'teacher1@gmail.com'),
('2HS1021', 'Economics', 2, 0, 1, 2, 'dss', 'k', '2020-09-27 09:38:07', 'teacher2@gmail.com'),
('3HS301', 'Hello', 2, 0, 1, 5, 'sd', 'j', '2020-09-27 09:40:29', 'teacher3@gmail.com'),
('568JQR', 'Finincial Managememtn', 15, 0, 2, 15, 'All Quentions are comgjsdsgd.\r\n', '#Finiancial Influencer', '2020-10-01 09:46:01', 'teacher1@gmail.com'),
('abc123', 'Demo', 2, 0, 1, 2, 'good lich', 'j', '2020-10-02 06:29:00', 'teacher1@gmail.com'),
('H123', 'Hass', 2, 0, 1, 2, 'Suceed', 'Hey', '2020-10-02 07:10:16', 'teacher1@gmail.com'),
('2ME503', 'Docs', 2, 0, 1, 5, 'nice', 'word', '2020-10-02 07:31:17', 'teacher2@gmail.com'),
('2ME501', 'Hey Hello', 5, 0, 1, 2, 'Complite whith in timelimit', 'Good luck', '2020-10-02 08:26:14', 'teacher1@gmail.com'),
('2CS503', 'Se', 5, 0, 1, 5, 'sas', 'sas', '2020-10-09 08:14:56', 'teacher1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('mychance2001@gmail.com', 9, '2020-10-02 07:32:22'),
('18BCE043@nirmauni.ac.in', 2, '2020-10-02 08:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `rollno` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `rollno`, `email`, `mob`, `password`) VALUES
('Sanket Chheladiya', 'M', 'Nirma University', 'mychance2001@gmail.com', 7043944540, 'sanket123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
