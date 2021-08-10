-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2021 at 08:31 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

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
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`ID`, `FirstName`, `LastName`, `Email`, `phone_no`, `Password`, `about_me`, `Type`, `isActive`) VALUES
(1, 'kirtan', 'patel', 'kirtan09322@gmail.com', '0', '6a01bfa30172639e770a6aacb78a3ed4', '', 'student', 0),
(2, 'kirtan', 'patel', 'kp@gmail.com', '0700116183', '6a01bfa30172639e770a6aacb78a3ed4', 'Hello am donnnn omar!! lol', 'landlord', 0),
(3, 'himanshu', 'parmar', 'hp@gmail.com', '075561718188', '6a01bfa30172639e770a6aacb78a3ed4', 'AM nice', 'landlord', 0),
(4, 'DON', 'OMAR', 'don@gmail.com', '0', '6a01bfa30172639e770a6aacb78a3ed4', '', 'admin', 0),
(7, 'maxx', 'patel', 'max@gmail.com', '0755995104', '2ffe4e77325d9a7152f7086ea7aa5114', 'Hello my name is maxx patel and i am the owner of 2 hostels', 'landlord', 0),
(8, 'sam', 'sam', 'sam@gmail.com', '0788995167', '332532dcfaa1cbf61e2a266bd723612c', 'Hello', 'landlord', 0);

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
  `uploaded_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hos_details`
--

INSERT INTO `hos_details` (`ID`, `agent_id`, `hos_name`, `hos_type`, `price`, `description`, `ft_img`, `location`, `friendly_add`, `services`, `rules`, `uploaded_on`, `isActive`) VALUES
(1, 2, 'IKO', 'SINGLE ROOM', '10000', 'aaaaaaaa', '../../images/uploads/IKO.png', 'uphill', 'Butere road, milimani', 'aaa', 'none', '2021-08-03 18:20:40', 0),
(2, 2, 'Amazing ', 'qqqq', '10000', 'aaaaa', '../images/uploads/Amazing .png', 'uphill', 'Butere road, milimani', 'aaaaaaaaaaaaaa', 'none\r\n', '2021-08-03 18:20:40', 0),
(3, 2, 'qqqq', 'SINGLE ROOM', '15000', 'dope', '../../../images/uploads/qqqq.png', 'uphill', 'Butere road, milimani', 'aa', 'aa', '2021-08-03 18:20:40', 0),
(4, 2, 'Amazing2', 'SINGLE ROOM', '10000', 'qqqqq', '../images/uploads/Amazing2.png', 'uphill', 'Butere road, milimani', 'none', 'none', '2021-08-03 18:20:40', 0),
(5, 3, 'qqqqqw', 'SINGLE ROOM', '15000', 'akakaka', 'images/uploads/qqqqqw.png', 'Butere road, milimani', 'Butere road, milimani', 'm', 'mmm', '2021-08-03 18:20:40', 0),
(6, 3, 'hphouse', 'SINGLE ROOM', '10000', 'dope house', 'images/uploads/hphouse.jpeg', 'uphill', 'Butere road, milimani', 'aaaa', 'kirta', '2021-08-03 18:20:40', 0),
(7, 2, 'kirtan', 'SINGLE ROOM', '10000', 'Nice place', 'images/uploads/kirtan.png', 'uphill', 'Butere road, milimani', 'All', 'none', '2021-08-03 18:20:40', 0);

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
(1, 7, 'images/uploads/kirtan_JAVA ques.PNG'),
(2, 7, 'images/uploads/kirtan_note (1).png'),
(3, 7, 'images/uploads/kirtan_IS project.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`ID`);

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
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hos_details`
--
ALTER TABLE `hos_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `img_table`
--
ALTER TABLE `img_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
