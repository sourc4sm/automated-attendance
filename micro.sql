-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2017 at 11:49 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `micro`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_student`
--

CREATE TABLE `attendance_student` (
  `attendance_index` int(11) NOT NULL,
  `student_index` int(11) NOT NULL,
  `student_name` varchar(225) NOT NULL,
  `date_attended` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_student`
--

INSERT INTO `attendance_student` (`attendance_index`, `student_index`, `student_name`, `date_attended`) VALUES
(2, 1, 'Kevin', '2017-10-11 10:57:10'),
(3, 1, 'Kevin', '2017-10-11 11:05:23'),
(4, 1, 'Kevin', '2017-10-11 11:07:29'),
(5, 1, 'Kevin', '2017-10-11 11:15:24'),
(6, 1, 'Kevin', '2017-10-11 16:44:50'),
(7, 1, 'Kevin', '2017-10-11 16:46:23'),
(8, 1, 'Kevin', '2017-10-11 16:52:40'),
(9, 1, 'Kevin', '2017-10-11 16:53:37'),
(10, 1, 'Kevin', '2017-10-11 16:54:09'),
(11, 1, 'Kevin', '2017-10-11 16:54:17'),
(12, 1, 'Kevin', '2017-10-11 16:55:07'),
(13, 1, 'Kevin', '2017-10-11 16:57:16'),
(14, 1, 'Kevin', '2017-10-11 16:59:03'),
(15, 1, 'Kevin', '2017-10-11 17:01:41'),
(16, 1, 'Kevin', '2017-10-11 17:05:54'),
(17, 1, 'Kevin', '2017-10-11 17:17:36'),
(18, 1, 'Kevin', '2017-10-11 17:18:59'),
(19, 1, 'Kevin', '2017-10-11 17:20:25'),
(20, 1, 'Kevin', '2017-10-11 17:22:25'),
(21, 1, 'Kevin', '2017-10-11 17:23:11'),
(22, 1, 'Kevin', '2017-10-11 17:25:41'),
(23, 1, 'Kevin', '2017-10-11 17:27:28'),
(24, 1, 'Kevin', '2017-10-12 01:48:07'),
(25, 1, 'Kevin', '2017-10-13 12:53:42'),
(26, 1, 'Kevin', '2017-10-13 13:03:50'),
(27, 1, 'Kevin', '2017-10-13 13:05:12'),
(28, 1, 'Kevin', '2017-10-13 13:06:29'),
(29, 1, 'Kevin', '2017-10-13 13:07:53'),
(30, 1, 'Kevin', '2017-10-13 13:57:18'),
(31, 1, 'Kevin', '2017-10-13 14:17:15'),
(32, 1, 'Kevin', '2017-10-13 16:27:34'),
(33, 1, 'Kevin', '2017-10-13 16:28:33'),
(35, 1, 'Kevin', '2017-10-13 18:27:19'),
(37, 1, 'Kevin', '2017-10-13 18:33:00'),
(38, 1, 'Kevin', '2017-10-13 19:05:23'),
(39, 1, 'Kevin', '2017-10-13 19:07:33'),
(40, 1, 'Kevin', '2017-10-13 19:11:16'),
(41, 1, 'Kevin', '2017-10-13 19:16:50'),
(42, 1, 'Kevin', '2017-10-13 19:21:17'),
(43, 1, 'Kevin', '2017-10-13 20:00:35'),
(44, 1, 'Kevin', '2017-10-13 20:19:15'),
(45, 1, 'Kevin', '2017-10-13 20:21:59'),
(46, 1, 'Kevin', '2017-10-13 20:23:14'),
(47, 1, 'Kevin', '2017-10-13 20:35:01'),
(48, 1, 'Kevin', '2017-10-13 20:41:24'),
(49, 1, 'Kevin', '2017-10-13 20:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `registered_students`
--

CREATE TABLE `registered_students` (
  `student_index` int(11) NOT NULL,
  `student_id` text NOT NULL,
  `student_first_name` varchar(225) NOT NULL,
  `student_last_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_students`
--

INSERT INTO `registered_students` (`student_index`, `student_id`, `student_first_name`, `student_last_name`) VALUES
(1, 'A6DB4346', 'Kevin', 'Pallado');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `test_number` int(11) NOT NULL,
  `id_number` text NOT NULL,
  `student_name` varchar(225) NOT NULL,
  `date_record` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`test_number`, `id_number`, `student_name`, `date_record`) VALUES
(1, '5', '5', '2017-10-08 15:57:39'),
(2, '12', '12', '2017-10-08 16:03:54'),
(3, '', '', '2017-10-08 16:35:59'),
(4, '', '', '2017-10-08 16:36:40'),
(5, '', '', '2017-10-08 16:40:39'),
(6, '', '', '2017-10-08 16:41:57'),
(7, '', '', '2017-10-08 16:43:12'),
(8, '5', '5', '2017-10-08 16:44:09'),
(9, 'A6R34GT', 'A6R34GT', '2017-10-08 16:44:37'),
(10, '', '', '2017-10-08 16:46:56'),
(11, '', '', '2017-10-08 16:51:04'),
(12, '', '', '2017-10-08 16:56:24'),
(13, '', '', '2017-10-08 17:43:03'),
(14, '', '', '2017-10-08 17:46:06'),
(15, '', '', '2017-10-08 17:47:52'),
(16, '', '', '2017-10-08 17:50:46'),
(17, '', '', '2017-10-08 18:20:36'),
(18, '9039C380', '9039C380', '2017-10-08 18:21:34'),
(19, '9039C380', '9039C380', '2017-10-08 18:21:43'),
(20, '', '', '2017-10-08 18:22:02'),
(21, '', '', '2017-10-08 18:23:13'),
(22, '123456', '123456', '2017-10-08 18:24:54'),
(23, '', '', '2017-10-08 18:27:50'),
(24, '', '', '2017-10-08 18:29:30'),
(25, '', '', '2017-10-08 18:29:47'),
(26, '9039C380', '9039C380', '2017-10-09 03:59:29'),
(27, 'A6DB4346', 'A6DB4346', '2017-10-09 03:59:56'),
(28, '', '', '2017-10-09 04:01:02'),
(29, '', '', '2017-10-09 04:02:02'),
(30, '5', '5', '2017-10-09 04:03:22'),
(31, '', '', '2017-10-09 04:04:26'),
(32, '', '', '2017-10-09 04:06:24'),
(33, '5', '5', '2017-10-09 04:16:00'),
(34, '5', '5', '2017-10-09 04:19:03'),
(35, '9039C380', '9039C380', '2017-10-09 04:24:33'),
(36, 'A6DB4346', 'A6DB4346', '2017-10-09 04:24:50'),
(37, '9039C380', '9039C380', '2017-10-09 04:25:05'),
(38, 'A6DB4346', 'A6DB4346', '2017-10-10 17:23:32'),
(39, 'A6DB4346', 'A6DB4346', '2017-10-10 17:30:14'),
(40, '9039C380', '9039C380', '2017-10-10 17:46:22'),
(41, 'A6DB4346', 'A6DB4346', '2017-10-10 17:59:03'),
(42, '9039C380', '9039C380', '2017-10-10 18:09:50'),
(43, '9039C380', '9039C380', '2017-10-10 18:12:33'),
(44, 'A6DB4346', 'A6DB4346', '2017-10-10 18:14:36'),
(45, '9039C380', '9039C380', '2017-10-10 18:14:41'),
(46, '9039C380', '9039C380', '2017-10-10 18:17:30'),
(47, '', '', '2017-10-10 18:17:30'),
(48, 'A6DB4346', 'A6DB4346', '2017-10-10 18:17:40'),
(49, '', '', '2017-10-10 18:17:41'),
(50, '9039C380', '9039C380', '2017-10-10 18:19:45'),
(51, '', '', '2017-10-10 18:19:45'),
(52, 'A6DB4346', 'A6DB4346', '2017-10-10 18:19:50'),
(53, '', '', '2017-10-10 18:19:50'),
(54, '9039C380', '9039C380', '2017-10-10 18:20:51'),
(55, '', '', '2017-10-10 18:20:51'),
(56, 'A6DB4346', 'A6DB4346', '2017-10-10 18:21:10'),
(57, '', '', '2017-10-10 18:21:10'),
(58, 'A6DB4346', 'A6DB4346', '2017-10-10 18:22:15'),
(59, 'A6DB4346', 'A6DB4346', '2017-10-10 18:22:55'),
(60, '', '', '2017-10-10 18:22:55'),
(61, 'A6DB4346', 'A6DB4346', '2017-10-10 18:24:39'),
(62, '', '', '2017-10-10 18:24:39'),
(63, '9039C380', '9039C380', '2017-10-10 18:27:31'),
(64, '', '', '2017-10-10 18:27:31'),
(65, 'A6DB4346', 'A6DB4346', '2017-10-10 18:28:49'),
(66, '', '', '2017-10-10 18:28:49'),
(67, '9039C380', '9039C380', '2017-10-10 18:36:42'),
(68, '', '', '2017-10-10 18:36:42'),
(69, 'A6DB4346', 'A6DB4346', '2017-10-10 18:38:58'),
(70, '', '', '2017-10-10 18:38:58'),
(71, '9039C380', '9039C380', '2017-10-10 18:39:01'),
(72, '', '', '2017-10-10 18:39:01'),
(73, 'A6DB4346', 'A6DB4346', '2017-10-10 18:43:25'),
(74, '9039C380', '9039C380', '2017-10-10 18:43:30'),
(75, 'A6DB4346', 'A6DB4346', '2017-10-10 21:05:48'),
(76, '', '', '2017-10-10 21:05:48'),
(77, 'A6DB4346', 'A6DB4346', '2017-10-10 21:21:49'),
(78, 'A6DB4346', 'A6DB4346', '2017-10-10 21:22:58'),
(79, '9039C380', '9039C380', '2017-10-10 21:23:13'),
(80, '9039C380', '9039C380', '2017-10-10 21:24:19'),
(81, 'A6DB4346', 'A6DB4346', '2017-10-10 21:24:32'),
(82, '9039C380', '9039C380', '2017-10-10 21:24:55'),
(83, 'A6DB4346', 'A6DB4346', '2017-10-10 21:26:41'),
(84, '9039C380', '9039C380', '2017-10-10 21:30:48'),
(85, '9039C380', '9039C380', '2017-10-10 21:31:17'),
(86, '9039C380', '9039C380', '2017-10-10 21:32:42'),
(87, 'A6DB4346', 'A6DB4346', '2017-10-10 21:33:39'),
(88, 'A6DB4346', 'A6DB4346', '2017-10-10 21:35:39'),
(89, 'A6DB4346', 'A6DB4346', '2017-10-10 21:37:43'),
(90, 'A6DB4346', 'A6DB4346', '2017-10-10 21:39:10'),
(91, '9039C380', '9039C380', '2017-10-10 21:42:03'),
(92, '9039C380', '9039C380', '2017-10-10 21:44:08'),
(93, '9039C380', '9039C380', '2017-10-10 21:45:58'),
(94, 'A6DB4346', 'A6DB4346', '2017-10-10 21:47:46'),
(95, '9039C380', '9039C380', '2017-10-10 21:50:37'),
(96, 'A6DB4346', 'A6DB4346', '2017-10-10 21:51:52'),
(97, '9039C380', '9039C380', '2017-10-10 21:55:47'),
(98, 'A6DB4346', 'A6DB4346', '2017-10-10 21:55:58'),
(99, '9039C380', '9039C380', '2017-10-10 21:57:14'),
(100, 'A6DB4346', 'A6DB4346', '2017-10-10 21:59:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_student`
--
ALTER TABLE `attendance_student`
  ADD PRIMARY KEY (`attendance_index`),
  ADD KEY `student_index` (`student_index`);

--
-- Indexes for table `registered_students`
--
ALTER TABLE `registered_students`
  ADD PRIMARY KEY (`student_index`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`test_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_student`
--
ALTER TABLE `attendance_student`
  MODIFY `attendance_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `registered_students`
--
ALTER TABLE `registered_students`
  MODIFY `student_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `test_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_student`
--
ALTER TABLE `attendance_student`
  ADD CONSTRAINT `attendance_student_ibfk_1` FOREIGN KEY (`student_index`) REFERENCES `registered_students` (`student_index`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
