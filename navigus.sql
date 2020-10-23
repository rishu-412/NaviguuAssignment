-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 07:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `navigus`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(45) NOT NULL,
  `correct_answer` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `exam_id`, `question`, `answer`, `correct_answer`, `status`) VALUES
(37, 42, 'Is Java an Object Oriented Programing Language?', 'True', 'True', 'correct'),
(38, 43, 'Is Java an Object Oriented Programing Language?', 'True', 'True', 'correct'),
(39, 47, 'Is Java an Object Oriented Programing Language?', 'True', 'True', 'correct'),
(40, 50, 'Is Java an Object Oriented Programing Language?', 'True', 'True', 'correct'),
(41, 52, 'Is Java an Object Oriented Programing Language?', 'almost true', 'True', 'incorrect');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_name` varchar(25) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_name`, `total_marks`, `time`) VALUES
('C++', 12, '5'),
('Java', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL,
  `std_id` varchar(45) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `total_marks` varchar(45) NOT NULL,
  `obt_marks` varchar(45) DEFAULT NULL,
  `date` varchar(45) NOT NULL,
  `start_time` varchar(45) NOT NULL,
  `end_time` varchar(45) DEFAULT NULL,
  `exam_time` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exam_id`, `std_id`, `course_name`, `total_marks`, `obt_marks`, `date`, `start_time`, `end_time`, `exam_time`, `status`) VALUES
(41, '6', 'Java', '1', '0', '21-10-2020', '23:59:51.520357200', '23:59:55.882121800', '1', 'Fail'),
(42, '6', 'Java', '1', '1', '22-10-2020', '00:03:21.538757700', '00:03:25.005558300', '1', 'Pass'),
(43, '6', 'Java', '1', '1', '22-10-2020', '18:10:24.380407300', '18:10:31.320356400', '1', 'Pass'),
(47, '6', 'Java', '1', '1', '23-10-2020', '00:42:28.772133900', '00:42:49.631048100', '1', 'Pass'),
(48, '6', 'C++', '12', NULL, '23-10-2020', '10:09:22.407006', NULL, '5', NULL),
(49, '6', 'C++', '12', NULL, '23-10-2020', '10:09:37.562429800', NULL, '5', NULL),
(50, '6', 'Java', '1', '1', '23-10-2020', '10:09:48.134126400', '10:10:43.732577400', '1', 'Pass'),
(51, '6', 'C++', '12', NULL, '23-10-2020', '10:18:53.043462400', NULL, '5', NULL),
(52, '6', 'Java', '1', '0', '23-10-2020', '10:19:02.713544300', '10:19:11.759475500', '1', 'Fail'),
(53, '6', 'C++', '12', NULL, '23-10-2020', '10:21:08.153138500', NULL, '5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(85) NOT NULL,
  `opt2` varchar(85) NOT NULL,
  `opt3` varchar(85) NOT NULL,
  `opt4` varchar(85) NOT NULL,
  `correct` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `course_name`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `correct`) VALUES
(9, 'Java', 'Is Java an Object Oriented Programing Language?', 'True', 'False', 'almost true', 'almost false', 'True'),
(11, 'C++', 'Is c++ is a full object oriented language', 'True', 'False', 'almost true', 'Partially False', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `name` varchar(25) NOT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='		';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `user_name`, `email`, `password`, `user_type`, `contact_no`, `city`, `address`) VALUES
(5, 'Rishabh', 'Harish', 'rishu_412', 'rharish991555@gmail.com', '987654321', 'admin', '9915550789', 'Banga', 'Punjab'),
(6, 'John', 'Watson', 'john_watson', 'john@example.com', '123456789', 'student', '9876543210', 'Jubail', 'Saudi Arab'),
(7, 'Johnny', 'English', 'jhonny', 'jhonny@example.com', '123456789', 'student', '991550789', 'Balachaur', 'Punjab'),
(8, 'Janta', 'Bazar', 'janta', 'janta@gmail.com', '987654321', 'student', '123456789', 'Lahore', 'Pakistan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_name`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
