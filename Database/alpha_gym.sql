-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 12:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alpha gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_pass`) VALUES
(1, 'karimkurda99@yahoo.com', '12345'),
(5, 'kakkarim@gmail.com', 'Ibrahemovic');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `day_id` int(10) NOT NULL,
  `day_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`day_id`, `day_name`) VALUES
(1, 'Sunday'),
(2, 'Monday'),
(3, 'Tuesday'),
(4, 'Wednesday'),
(5, 'Thursday'),
(6, 'Friday'),
(7, 'Saturday');

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `exer_id` int(10) NOT NULL,
  `exer_name` varchar(20) NOT NULL,
  `sets` varchar(10) NOT NULL,
  `day_id` int(10) NOT NULL,
  `exer_img` text NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`exer_id`, `exer_name`, `sets`, `day_id`, `exer_img`, `user_id`) VALUES
(20, 'Barbell hip thrust', '10', 1, 'Barbell hip thrust.jpg', 3),
(21, 'Bench Press', '15', 2, 'Bench Press.jpg', 3),
(22, 'Deadlift', '20', 3, 'Deadlift.jpg', 3),
(23, 'Dumbbell romanian de', '25', 4, 'Dumbbell romanian deadlift.jpg', 3),
(24, 'Farmer Walk', '20', 5, 'Farmer Walk.jpg', 3),
(25, 'Hamstring curl', '15', 6, 'Hamstring curl.jpg', 3),
(26, 'Pullup', '10', 6, 'Pullup.jpg', 3),
(27, 'Suspended inverted r', '14', 7, 'Suspended inverted row.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `tran_id` int(10) NOT NULL,
  `tran_name` varchar(20) NOT NULL,
  `tran_class` varchar(30) NOT NULL,
  `tran_contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`tran_id`, `tran_name`, `tran_class`, `tran_contact`) VALUES
(1, 'Ali', 'Barbell hip thrust', '00000'),
(2, 'Mohsin', 'Bench Press', '11111'),
(3, 'Awais', 'Deadlift', '22222'),
(5, 'Ahsan', 'Farmer Walk', '44444'),
(6, 'Ahmad', 'Hamstring curl', '55555'),
(7, 'Hamza', 'Pullup', '66666'),
(8, 'Talha', 'Suspended inverted r', '66666'),
(9, 'omer dabaaba', 'Dumbbell romanian de', '07506033722');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_pass` varchar(20) NOT NULL,
  `user_weight` int(10) NOT NULL,
  `user_age` int(10) NOT NULL,
  `user_contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `user_weight`, `user_age`, `user_contact`) VALUES
(4, 'mohammed', 'karim@email.com', '12345', 58, 21, '7571920'),
(5, 'sewa ', 'sewa@gmail.com', '987654321', 75, 26, '7504625009'),
(6, 'shex', 'shex@gmail.com', '55555555', 85, 20, '07510495114'),
(7, 'ali', 'ali@gmail.com', '00000000', 80, 22, '07504306857'),
(8, 'yara', 'yara@yahoo.com', 'yyyy', 50, 22, '07504444546'),
(9, 'hama dizayee', 'hama99@gmail.com', 'qurbantbm', 84, 20, '07506632001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`day_id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`exer_id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`tran_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `day_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `exer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `tran_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
