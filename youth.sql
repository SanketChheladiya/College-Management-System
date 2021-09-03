-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2021 at 06:06 AM
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
-- Database: `youth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admit_program`
--

CREATE TABLE `admit_program` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `admit_date` datetime NOT NULL,
  `admit_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admit_program`
--

INSERT INTO `admit_program` (`id`, `student_id`, `program_id`, `batch_id`, `admit_date`, `admit_by`) VALUES
(2, 10001, 2, 6, '2020-09-08 15:17:36', 10),
(3, 10002, 2, 4, '2020-09-08 16:33:49', 10),
(4, 10003, 2, 5, '2020-09-27 15:44:37', 9),
(5, 10005, 2, 6, '2020-10-08 17:31:43', 9),
(6, 10002, 2, 6, '2020-10-08 18:34:03', 9),
(7, 10001, 2, 5, '2020-10-08 23:32:33', 9),
(8, 10001, 2, 4, '2020-10-08 23:32:44', 9),
(9, 10002, 2, 21, '2020-10-08 23:34:04', 9),
(13, 10001, 2, 18, '2020-10-09 00:18:55', 9),
(14, 10001, 2, 20, '2020-10-09 00:19:06', 9),
(15, 10003, 2, 23, '2020-10-16 09:02:54', 9);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `start` text DEFAULT NULL,
  `end` text NOT NULL,
  `day` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `name`, `start`, `end`, `day`) VALUES
(6, 'ML - LAB - A3', '2:10 PM', '4:00 PM', '3'),
(5, 'DAA - Tut - AT3', '12:10 PM', '1:00 PM', '3'),
(4, 'ML - A', '11:10 AM', '12:00 PM', '3'),
(7, 'SE - A', '11:00 AM ', '12:00 PM', '4'),
(8, 'ML - A', '12:10 PM', '01:00 PM', '4'),
(9, 'DAA - LAB - A3', '02:10 PM', '04:00 PM', '4'),
(10, 'CN - A', '11:10 AM', '12:00 PM', '5'),
(11, 'DAA - A', '12:10 PM', '01:00 PM', '5'),
(12, 'CN - LAB - A3', '02:10 PM', '04:00 PM', '5'),
(13, 'CN - A', '11:10 AM ', '12:00 PM', '6'),
(14, 'SE - A', '12:10 PM', '01:00 PM', '6'),
(15, 'SE - LAB - A3', '02:10 PM', '04:00 PM', '6'),
(16, 'DAA - A', '11:10 AM', '12:00 PM', '7'),
(17, 'SE - A', '12:10 PM', '01:00 PM', '7'),
(18, 'CN - A', '02:10 PM', '03:00 PM', '7'),
(19, 'ML - A', '03:10 PM', '04:00 PM', '7'),
(20, 'PD - All Batch', '9:10 AM', '10:00 AM', '5'),
(21, 'Eco - Tut - Batch 1', '9:10 AM', '10:00 AM', '4'),
(22, 'PD -Tut - Batch1', '10:10 AM', '11:00 AM', '5'),
(23, 'Eco - All Batch(Vellala sir)', '09:10 AM', '10:00 AM', '7'),
(24, 'Eco - All Batch(Samir Sir)', '10:10 AM', '11:00 AM', '7');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `user_id`, `message`, `date`) VALUES
(5, 17, 'good morning', '2021-09-03 09:14:02'),
(4, 13, 'Good morning', '2020-10-16 09:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `classid` int(11) NOT NULL,
  `classname` text NOT NULL,
  `subject_code` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expence`
--

CREATE TABLE `expence` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `amount` int(11) NOT NULL,
  `notes` text DEFAULT NULL,
  `add_by` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expence_category`
--

CREATE TABLE `expence_category` (
  `id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `amount` int(11) NOT NULL,
  `notes` text DEFAULT NULL,
  `add_by` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mark_category`
--

CREATE TABLE `mark_category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `add_by` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `paid` double NOT NULL,
  `next_date` date DEFAULT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_sms`
--

CREATE TABLE `pending_sms` (
  `id` int(11) NOT NULL,
  `number_list` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `batch` text DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `monthly_fee` int(11) NOT NULL DEFAULT 0,
  `add_by` int(11) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `name`, `start`, `end`, `subject`, `batch`, `fee`, `type`, `monthly_fee`, `add_by`, `date`) VALUES
(2, 'B.tech CSE 5th', '2020-06-16', '2020-12-05', '7,6,5,4,3,2', '24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4', 44000, 1, 0, 10, '2020-09-08 15:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `receive_payment`
--

CREATE TABLE `receive_payment` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `sms` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receive_payment`
--

INSERT INTO `receive_payment` (`id`, `payment_id`, `pay`, `sms`, `date`, `add_by`) VALUES
(4, 2, 15000, 0, '2020-09-08 16:14:10', 10),
(3, 2, 5200, 0, '2020-09-08 16:13:29', 10),
(5, 2, 23800, 0, '2020-09-08 16:14:28', 10),
(6, 3, 5500, 0, '2020-09-27 15:40:45', 9),
(7, 2, 5000, 0, '2020-10-01 14:56:16', 9),
(8, 3, 5000, 0, '2020-10-01 15:34:58', 9),
(9, 3, 5000, 0, '2020-10-02 14:00:15', 9);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `mcq` double DEFAULT NULL,
  `written` double DEFAULT NULL,
  `total` double NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL,
  `sms` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `option_name` text DEFAULT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `option_name`, `option_value`) VALUES
(1, 'site_name', 'Nirma University\r\n'),
(2, 'sort_name', 'Nirma'),
(3, 'address', 'SG Highway, Ahmedabad 382481'),
(4, 'logo', 'main_logo.jpg'),
(5, 'main_logo', 'logo.png'),
(6, 'phone', '7045346581'),
(7, 'email', 'nirma@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `set_payment`
--

CREATE TABLE `set_payment` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `add_by` int(11) NOT NULL,
  `last_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_add`
--

CREATE TABLE `sms_add` (
  `id` int(11) NOT NULL,
  `total_sms` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `total_send` int(11) NOT NULL DEFAULT 0,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_list`
--

CREATE TABLE `sms_list` (
  `id` int(11) NOT NULL,
  `number` text NOT NULL,
  `message` text NOT NULL,
  `len` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `gateway` text NOT NULL,
  `token` text NOT NULL,
  `sender` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_setting`
--

CREATE TABLE `sms_setting` (
  `id` int(11) NOT NULL,
  `gateway` text NOT NULL,
  `token` text NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `email` text DEFAULT NULL,
  `photo` text NOT NULL,
  `personal_mobile` text DEFAULT NULL,
  `father_mobile` text DEFAULT NULL,
  `mother_mobile` text DEFAULT NULL,
  `nick` text NOT NULL,
  `address` text DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `religion` text DEFAULT NULL,
  `school` text DEFAULT NULL,
  `ssc_rool` int(11) DEFAULT NULL,
  `ssc_reg` int(11) DEFAULT NULL,
  `ssc_board` text DEFAULT NULL,
  `ssc_result` double DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `email`, `photo`, `personal_mobile`, `father_mobile`, `mother_mobile`, `nick`, `address`, `birth_day`, `gender`, `religion`, `school`, `ssc_rool`, `ssc_reg`, `ssc_board`, `ssc_result`, `date`) VALUES
(10001, 'Kakadiya Raj Babubhai', 'Babubhai', 'Menaben', 'rajkakadiya@gmail.com', '10001.png', '7043944540', '7579862145', '7458963215', 'Raj', 'Kevadiya koloni, Narmada, 548678', '2001-02-02', 'Male', 'Hindu', 'Gautam vidhyamandir', 6245789, 774458, 'GHSEB', 92, '2020-09-08 15:16:59'),
(10002, 'Kakadiya savan jentibhai', 'jentibhai', 'Mayuriben', 'kakadiyasavan123@gmail.com', 'avatar.png', '0', '0', '0', 'savan', 'Gk high school, Lodhika', '2000-10-10', 'Male', 'Hindu', 'Dharmajivan Vidhyamandir', 7895524, 658475, 'GHSEB', 95, '2020-09-08 16:32:38'),
(10003, 'patel sanjay rameshbhai', 'Rajesh', 'Minaben', 'sanju@gmail.com', 'avatar.png', '6354395969', '5136148795', '8964523154', 'sanju', 'rajkot', '2001-09-30', 'Male', 'Hindu', 'skp', 123456, 786426, 'patel sanjay', 91, '2020-09-27 15:44:08'),
(10004, 'Kakadiya Raj1 Babubhai', 'Babu1', 'Mili1', '18BCE043@nirmauni.ac.in', 'avatar.png', '8564523154', '7856412352', '8964523154', 'Raj1', 'dangarvada., Rajkot, 365204', '2001-09-25', 'Male', 'Hindu', 'dsd', 646464646, 13213134, 'Rak', 85, '2020-09-27 16:08:34'),
(10005, 'Kakadiya Shivam Jentibhai', 'Jentibhai', 'Manishben', 'mychance2001@gmail.com', 'avatar.png', '8756942315', '8975463215', '9875468216', 'Shivo', 'Rajkot 223565', '2000-05-01', 'Male', 'Hindu', 'National', 856975, 8795421, 'GHSEB', 92, '2020-10-08 17:31:27'),
(10006, 'Bhut Ravi Rameshbhai', 'Rameshbhai', 'Reemaben', 'ravi@gmail.com', 'avatar.png', '8456321975', '7854963125', '7845897548', 'Ravo', 'jamnagar 360024', '2000-03-01', 'Male', 'Hindu', 'national', 879546, 874851, 'GHSEB', 82, '2020-10-08 18:17:20'),
(10007, 'Savaliya jay', 'kishorbhai', 'ramaben', 'jay@gmail.com', 'avatar.png', '7896542356', '8795642389', '7854123459', 'jay', 'fad', '2020-10-27', 'Male', 'Hindu', 'sa', 789654123, 987548695, 'ds', 91, '2020-10-15 18:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendence`
--

CREATE TABLE `student_attendence` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendence`
--

INSERT INTO `student_attendence` (`id`, `student_id`, `program_id`, `batch_id`, `status`, `date`) VALUES
(2, 10001, 2, 4, 1, '2020-09-08'),
(3, 10002, 2, 4, 0, '2020-09-08'),
(4, 10001, 2, 4, 0, '2020-09-26'),
(5, 10002, 2, 4, 1, '2020-09-26'),
(6, 10001, 2, 4, 1, '2020-09-27'),
(7, 10002, 2, 4, 0, '2020-09-27'),
(8, 10001, 2, 6, 1, '2020-10-08'),
(9, 10005, 2, 6, 1, '2020-10-08'),
(10, 10002, 2, 6, 0, '2020-10-08'),
(11, 10002, 2, 4, 1, '2020-10-08'),
(12, 10001, 2, 20, 1, '2020-10-09'),
(13, 10001, 2, 18, 1, '2020-10-09');

-- --------------------------------------------------------

--
-- Table structure for table `student_id`
--

CREATE TABLE `student_id` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `total_fee` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_payment`
--

INSERT INTO `student_payment` (`id`, `student_id`, `program_id`, `type`, `year`, `month`, `total_fee`, `note`, `date`, `add_by`) VALUES
(2, 10001, 2, 1, 0, 0, 44000, NULL, '2020-09-08 16:13:01', 10),
(3, 10002, 2, 1, 0, 0, 44000, NULL, '2020-09-08 16:38:07', 10),
(4, 10003, 2, 1, 0, 0, 44000, NULL, '2020-09-27 15:44:59', 9);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `sub_name` text NOT NULL,
  `sub_code` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `sub_name`, `sub_code`) VALUES
(2, 'Machine Learning', '2CS501'),
(3, 'Computer Network', '2CS502'),
(4, 'DAA', '2CS503'),
(5, 'Software Engineering', '2CS504'),
(6, 'Personality Development', '2HS0E01'),
(7, 'Introduction to Econometrics', '2HSOE52');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `bg_color` text NOT NULL,
  `sidebar_hover` text NOT NULL,
  `sidebar_list` text NOT NULL,
  `sidebar_list_hover` text NOT NULL,
  `font_color` text NOT NULL,
  `date` date NOT NULL,
  `added_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `name`, `bg_color`, `sidebar_hover`, `sidebar_list`, `sidebar_list_hover`, `font_color`, `date`, `added_by`) VALUES
(1, 'Default', '#2E363F', '#2A2D35', '#394152', '#313847', '#ffffff', '2020-06-13', 1),
(2, 'Red', '#CF0A2F', '#93021E', '#B54B5F', '#E33A5A', '#ffffff', '2020-06-13', 3),
(3, 'Blue', '#AB2567', '#AB2567', '#AB2567', '#AB2567', '#ffffff', '2020-06-13', 3),
(4, 'Green', '#088730', '#088730', '#4CAB41', '#1BAB2F', '#FFFFFF', '2020-06-13', 3),
(5, 'Yello', '#AB9803', '#AB9803', '#A3AB2E', '#AB9C37', '#000000', '2020-06-13', 3),
(6, 'Black', '#0F0000', '#1C0611', '#260817', '#2B091A', '#FFFFFF', '2020-06-13', 3),
(7, 'Orange', '#E74C3C', '#C0392B', '#E67E22', '#D35400', '#FFFFFF', '2020-06-13', 3),
(9, 'Pink', '#ED5FE9', '#ED3BA1', '#ED98D4', '#ED72CD', '#FFFFFF', '2020-06-13', 3),
(10, 'Blue1', '#564C9E', '#724EED', '#907EED', '#5867ED', '#FFFFFF', '2020-06-14', 3),
(23, 'CYAN', '#005154', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2020-09-16', 3),
(22, 'Web Dark', '#235A6B', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2020-09-16', 3),
(21, 'Web', '#378BA6', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2020-09-16', 3),
(14, 'Deep Rose', '#C44569', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2020-09-21', 3),
(15, 'Purple Corallite', '#574B90', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2020-09-21', 3),
(17, 'Red Color', '#A32929', '#6DEDC2', '#EDE6EC', '#EDE6EC', '#EDE6EC', '2020-09-08', 3),
(19, 'Google color', '#673AB7', '#EDC5D2', '#EDEDED', '#EDE6EC', '#FFFFFF', '2020-11-21', 3),
(20, 'Google Red', '#DB4437', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2020-11-21', 3),
(24, 'new theme', '#331F77', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2020-11-21', 3),
(25, 'apply', '#ED3B19', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2020-12-01', 3),
(26, 'dark blue', '#001E4C', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2020-12-08', 3),
(27, 'Copy Theme 1', '#2C293E', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#EDEDED', '2020-12-28', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uname` text NOT NULL,
  `fname` text DEFAULT NULL,
  `photo` text NOT NULL,
  `gender` text NOT NULL,
  `email` text DEFAULT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pass` varchar(100) NOT NULL,
  `permit` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `theme` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uname`, `fname`, `photo`, `gender`, `email`, `phone`, `address`, `pass`, `permit`, `status`, `theme`) VALUES
(11, 'Rashi', 'Rashi Mohan', '', 'Female', 'Rashi@gmail.com', 2126542315, 'goa, mumbai,253123', 'f6d2afdfcae701ba717eea96a12613a3e7ffd21200eec599f4791438b09f0778', 5, 1, 4),
(10, 'Ramesh', 'Ramesh', 'avatar.png', 'male', 'rameshpatel@gmail.com', 2016457895, 'Bandra, Mumbai,365245', '49e60a7c53c51ba018595353811cefaeb20b5a27d2567fdce469cb1e77fc2312', 5, 1, 4),
(13, 'admin', 'admin', 'avatar.png', 'male', 'xyz@gmail.com', 2016457895, 'abc,rajashthan, 358452', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1, 1, 4),
(14, 'admissionmanager', 'admissionmanager', 'avatar.png', 'Male', 'xyz@gmail.com', 1254785462, 'dfg, Banglore, 854756', 'ddf4d6f543f396307ed6fe986445220afe1b90402bba83cc699653dcc8398fa0', 2, 1, 4),
(3, 'feemanager', 'feemanager', 'avatar.png', 'Female', 'tsf@gmail.com', 7845989685, 'tfg, Ahmedabad, 854796', 'c1e9e553575c58e9a6c7538bc46df74e2133f52cd6ab3f94a8acde744eeec6d0', 3, 1, 4),
(15, 'accountant', 'accountant', 'avatar.png', 'Female', 'dgr@gmail.com', 9878546254, 'yhu, ranchi, 356235', '29d8c99ec25b271007f05eace87ec00959746687aa96ed783dd7a2f3bfdb398b', 4, 1, 4),
(16, 'teacher', 'teacher', 'avatar.png', 'Female', 'rft@gmail.com', 2126542315, 'rdf, kochi, 524635', '1057a9604e04b274da5a4de0c8f4b4868d9b230989f8c8c6a28221143cc5a755', 5, 1, 4),
(17, 'student', 'student', 'avatar.png', 'male', 'stu@gmail.com', 9878546254, 'rfgh, kolkata, 348596', '264c8c381bf16c982a4e59b0dd4c6f7808c51a05f64c35db42cc78a2a72875bb', 6, 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admit_program`
--
ALTER TABLE `admit_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `expence`
--
ALTER TABLE `expence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expence_category`
--
ALTER TABLE `expence_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_category`
--
ALTER TABLE `mark_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receive_payment`
--
ALTER TABLE `receive_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_payment`
--
ALTER TABLE `set_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_list`
--
ALTER TABLE `sms_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendence`
--
ALTER TABLE `student_attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_id`
--
ALTER TABLE `student_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admit_program`
--
ALTER TABLE `admit_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expence`
--
ALTER TABLE `expence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expence_category`
--
ALTER TABLE `expence_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mark_category`
--
ALTER TABLE `mark_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `receive_payment`
--
ALTER TABLE `receive_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `set_payment`
--
ALTER TABLE `set_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_list`
--
ALTER TABLE `sms_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10008;

--
-- AUTO_INCREMENT for table `student_attendence`
--
ALTER TABLE `student_attendence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_id`
--
ALTER TABLE `student_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
