-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2022 at 11:59 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `saved_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `password`, `name`, `phone`, `email`, `gender`, `saved_at`) VALUES
(1, 'Madge_Murazik', '382245f39505906d3dc9351ea4205a98', 'Hazel Weber', '352', 'your.email+fakedata16625@gmail.com', 'female', '2022-02-03 12:20:29'),
(2, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin', '8888888888', 'admin@gmail.com', '', '2022-02-05 11:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(20) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `attendance_date` varchar(100) NOT NULL,
  `saved_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_name`, `status`, `attendance_date`, `saved_at`) VALUES
(1, 'Test Student-596', 'Present', '2022-02-24', '2022-02-08 09:07:05'),
(2, 'Willa Renner-633', 'Present', '2022-03-04', '2022-03-04 09:23:02'),
(3, 'Test Student-596', 'Present', '2022-03-04', '2022-03-04 09:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(20) NOT NULL,
  `branch_name` varchar(200) NOT NULL,
  `saved_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`, `saved_at`) VALUES
(1, 'Diploma in Electronics Engineering', '2022-02-12 08:42:32'),
(2, 'Diploma in Information Technology', '2022-02-12 08:42:41'),
(3, 'Diploma in Electronics Engineering', '2022-02-12 08:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(20) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `course_id` varchar(20) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `course` varchar(100) DEFAULT NULL,
  `teacher` varchar(200) NOT NULL,
  `saved_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `semester`, `course_id`, `branch`, `course`, `teacher`, `saved_at`) VALUES
(1, 'PHP Project Training', NULL, '596', 'Diploma in Information Technology', NULL, 'Test Testing', '2022-02-08 09:06:38'),
(2, 'SQL', 'dsgdg', '45645', 'Diploma in Electronics Engineering', NULL, 'Test Testing', '2022-03-04 09:37:59'),
(3, 'Javascript', 'dfgfdg', '5435', 'Diploma in Electronics Engineering', NULL, 'Test Testing', '2022-03-04 09:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(20) NOT NULL,
  `notice` varchar(500) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice`, `branch`) VALUES
(1, 'dfhd sdhdfh fdgdfh dfhfdh dfhd sdhdfh fdgdfh dfhfdh dfhd sdhdfh fdgdfh dfhfdh dfhd sdhdfh fdgdfh dfhfdh dfhd sdhdfh fdgdfh dfhfdh dfhd sdhdfh fdgdfh dfhfdh1.', 'Diploma in Electronics Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(20) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `faculty_no` varchar(20) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `grades` varchar(20) NOT NULL,
  `saved_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_name`, `faculty_no`, `branch`, `grades`, `saved_at`) VALUES
(1, 'Willa Renner', '45457', 'Diploma in Electronics Engineering', '457', '2022-03-04 10:28:39'),
(2, 'Test Student', '45452', 'Diploma in Electronics Engineering', '454', '2022-03-04 10:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(20) NOT NULL,
  `student_id` int(20) NOT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `faculty_no` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `course` varchar(500) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `enrollment_no` varchar(100) DEFAULT NULL,
  `saved_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `semester`, `name`, `password`, `faculty_no`, `phone`, `email`, `branch`, `course`, `gender`, `enrollment_no`, `saved_at`) VALUES
(3, 32, NULL, 'Test Student', '1aedb8d9dc4751e229a335e371db8058', '596', '8789654892', 'test@gmail.com', 'Diploma in Information Technology', NULL, 'Male', '34543', '2022-02-06 06:56:03'),
(4, 0, 'Error nulla dicta aspernatur explicabo laudantium omnis et.', 'Willa Renner', '5cc1063b6b812f6171524c0a8c79d354', '633', '227-652-28', 'your.email+fakedata88331@gmail.com', 'Diploma in Information Technology', NULL, 'Female', '507', '2022-03-04 09:14:24'),
(5, 0, 'dfgdf', 'New Test', '993d44ce27fe1086ecca903e1ac12fda', '78687', '8888888888', 'teststude@gmail.com', 'Diploma in Electronics Engineering', 'Javascript', 'Male', '507', '2022-03-04 12:30:13'),
(6, 0, 'Dolor similique perspiciatis rem quia ut rerum iusto.', 'reudrueu', '5235ad655805ff30fd13ec9b0f69230e', '588', '8888888888', 'your.emailfakedata96682@gmail.com', 'Diploma in Electronics Engineering', '', 'Female', '212', '2022-03-04 15:40:34'),
(7, 0, 'Quae voluptate quod dicta.', 'Claire Lockman', '7e4847139a469e1b89946a16a3aa778e', '439', '130-892-97', 'your.email+fakedata63388@gmail.com', 'Diploma in Electronics Engineering', 'Javascript,PHP Project Training', 'Male', '352', '2022-03-04 15:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `saved_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `password`, `phone`, `email`, `course`, `gender`, `saved_at`) VALUES
(4, 'Test Testing', '827ccb0eea8a706c4c34a16891f84e7b', '8888888888', 'teacher@gmail.com', 'PHP Project Training', 'Male', '2022-02-06 11:00:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
