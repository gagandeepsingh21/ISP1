-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2021 at 01:47 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `draft`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ID` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `hos_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `start_stay` varchar(50) NOT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `agent_id`, `hos_id`, `name`, `email`, `phone_no`, `message`, `start_stay`, `uploaded_on`) VALUES
(1, 2, 3, 'pizza', 'pizza@gmail.com', '0716869602', 'none', '2021-08-25', '2021-08-23 16:26:12'),
(2, 2, 4, 'gagan', 'gagandeepgahir@gmail.com', '0716869602', 'i want to stay here!', '2021-08-25', '2021-08-23 16:29:12'),
(3, 2, 1, 'gagan', 'gagandeepgahir@gmail.com', '0716869602', 'qwerfg', '2021-08-27', '2021-08-23 16:31:17'),
(4, 2, 3, 'gagan123', 'gagandeepgahir@gmail.com', '0716869602', 'dsrftgh', '2021-08-28', '2021-08-27 17:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `about_me` varchar(255) DEFAULT NULL,
  `Type` varchar(50) NOT NULL,
  `Religion` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `mstatus` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`ID`, `FirstName`, `LastName`, `Email`, `phone_no`, `Password`, `about_me`, `Type`, `Religion`, `location`, `mstatus`, `gender`, `isActive`) VALUES
(1, 'kirtan', 'patel', 'kirtan09322@gmail.com', '0', '6a01bfa30172639e770a6aacb78a3ed4', '', 'student', '', '', '', '', 0),
(2, 'kirtan', 'patel', 'kp@gmail.com', '0700116183', '6a01bfa30172639e770a6aacb78a3ed4', 'hello am kirtan patel, and am just trying this out', 'landlord', '', '', '', '', 0),
(3, 'himanshu', 'parmar', 'hp@gmail.com', '075561718188', '6a01bfa30172639e770a6aacb78a3ed4', 'AM nice', 'landlord', '', '', '', '', 0),
(4, 'DON', 'OMAR', 'don@gmail.com', '0', '6a01bfa30172639e770a6aacb78a3ed4', '', 'admin', '', '', '', '', 0),
(7, 'maxx', 'patel', 'max@gmail.com', '0755995104', '2ffe4e77325d9a7152f7086ea7aa5114', 'Hello my name is maxx patel and i am the owner of 2 hostels', 'landlord', '', '', '', '', 0),
(8, 'sam', 'sam', 'sam@gmail.com', '0788995167', '332532dcfaa1cbf61e2a266bd723612c', 'Hello', 'landlord', '', '', '', '', 0),
(9, 'gagandeep', 'gahir', 'gahir@gmail.com', '111111111111', '6627415e807ee33c7302917216e7da68', NULL, 'admin', '', '', '', '', 0),
(10, 'Gagandeep Singh', 'Gahir', 'gagandeep.gahir@strathmore.edu', '234567890', '202cb962ac59075b964b07152d234b70', 'nothing!', 'Student', '', '', '', '', 0),
(11, 'gagandeep', 'singh', 'test@gmail.com', '12345678', '827ccb0eea8a706c4c34a16891f84e7b', 'hey yoo!', 'landlord', '', '', '', '', 0),
(12, 'gagandeep', 'singh', 'gagandeepgahir@gmail.com', '0716869602', 'e10adc3949ba59abbe56e057f20f883e', 'this is the admin', 'admin', '', '', '', '', 0),
(14, 'gagan', 'gahir', 'gagan.gahir21@gmail.com', '1234567890', '202cb962ac59075b964b07152d234b70', NULL, 'student', 'sikh', 'south c', 'single', 'Male', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`) VALUES
(1, 'wsedfg', 'gagandeep.gahir@strathmore.edu', 'efdg'),
(2, 'wsedfg', 'gagandeepgahir@gmail.com', 'wedrf'),
(3, 'Gagandeep Singh', 'gagandeep.gahir@strathmore.edu', 'wedrfgb');

-- --------------------------------------------------------

--
-- Table structure for table `hos_details`
--

CREATE TABLE `hos_details` (
  `ID` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `hos_name` varchar(50) NOT NULL,
  `hos_type` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `ft_img` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `friendly_add` varchar(255) NOT NULL,
  `services` varchar(50) NOT NULL,
  `rules` varchar(50) NOT NULL,
  `uploaded_on` datetime NOT NULL DEFAULT current_timestamp(),
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `agent_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hos_details`
--

INSERT INTO `hos_details` (`ID`, `agent_id`, `hos_name`, `hos_type`, `price`, `description`, `ft_img`, `location`, `friendly_add`, `services`, `rules`, `uploaded_on`, `isActive`, `agent_active`) VALUES
(1, 2, 'kilimani', 'Private room', '19988', 'nothing', 'images/uploads/kilimani.png', 'kilimani', 'kilimani', 'nothing', 'nothing', '2021-08-19 20:29:27', 0, 0),
(2, 2, 'somethinf', 'Shared room', '2300', 'something', 'images/uploads/somethinf.png', 'kodi road', 'somethinf', 'none', 'none', '2021-08-22 15:05:00', 0, 0),
(3, 2, 'nothing', 'Shared room', '10000', 'nothing', 'images/uploads/nothing.jpeg', 'south c', 'south c', 'nothing', 'none', '2021-08-23 09:11:50', 0, 0),
(4, 2, 'nothing1', 'Private room', '100000', 'none', 'images/uploads/nothing1.jpeg', 'south b', 'south c', 'none', 'none', '2021-08-23 18:42:12', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `img_table`
--

CREATE TABLE `img_table` (
  `ID` int(11) NOT NULL,
  `hos_id` int(11) NOT NULL,
  `more_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `img_table`
--

INSERT INTO `img_table` (`ID`, `hos_id`, `more_img`) VALUES
(1, 1, 'images/uploads/kilimani_2016-10-09.png'),
(2, 1, 'images/uploads/kilimani_2016-12-07.png'),
(3, 2, 'images/uploads/somethinf_2017-03-09 (1).png'),
(4, 3, 'images/uploads/nothing_food.jpg'),
(5, 3, 'images/uploads/nothing_food1.jpg'),
(6, 3, 'images/uploads/nothing_food2.jpg'),
(7, 4, 'images/uploads/nothing1_rest1.jpg'),
(8, 4, 'images/uploads/nothing1_rest2.jpg'),
(9, 4, 'images/uploads/nothing1_rest3.jpg'),
(10, 4, 'images/uploads/nothing1_rest5.jpg'),
(11, 4, 'images/uploads/nothing1_rest6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hos_details`
--
ALTER TABLE `hos_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `img_table`
--
ALTER TABLE `img_table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hos_details`
--
ALTER TABLE `hos_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `img_table`
--
ALTER TABLE `img_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
