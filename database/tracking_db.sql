-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 06:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicdep`
--

CREATE TABLE `academicdep` (
  `id` int(225) NOT NULL,
  `country_id` int(100) NOT NULL,
  `academicdep` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academicdep`
--

INSERT INTO `academicdep` (`id`, `country_id`, `academicdep`) VALUES
(1, 4, 'Computer Science And Engineering'),
(2, 4, 'Electrical Communications And Engineering'),
(3, 4, 'Electrical Electronics And Engineering'),
(4, 4, 'Information Science And Engineering'),
(5, 4, 'Information Technology'),
(6, 4, 'Computer Technology'),
(7, 4, 'AERONAUTICAL ENGINEERING'),
(8, 4, 'AGRICULTURAL ENGINEERING'),
(9, 4, ' ARTIFICIAL INTELLIGENCE AND DATA SCIENCE'),
(10, 4, 'ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING'),
(11, 4, 'AUTOMOBILE ENGINEERING'),
(12, 4, 'BIOMEDICAL ENGINEERING'),
(13, 4, ' BIOTECHNOLOGY'),
(14, 4, ' CIVIL ENGINEERING'),
(15, 4, 'COMPUTER SCIENCE AND BUSINESS SYSTEMS'),
(16, 4, 'COMPUTER SCIENCE AND DESIGN'),
(17, 4, 'FASHION TECHNOLOGY'),
(18, 4, 'FOOD TECHNOLOGY'),
(19, 4, ' TEXTILE TECHNOLOGY'),
(20, 2, 'ARVR'),
(21, 2, 'Artificail Intelligence'),
(22, 2, 'Data Science'),
(23, 2, 'BLOCKCHAIN TECHNOLOGY'),
(24, 2, 'EPD Lab'),
(25, 2, 'Product Development Lab'),
(26, 2, 'IIOT'),
(27, 2, 'IOT');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(2) NOT NULL,
  `category` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category`) VALUES
(1, 'Fruits'),
(2, 'Colors'),
(3, 'Games'),
(4, 'Vehicles');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `state_id`, `city`) VALUES
(1, 1, 'Consumable'),
(2, 1, 'New Equipment'),
(3, 1, 'Service and maintenance'),
(4, 1, 'Software'),
(5, 1, 'Research Center Renewal'),
(6, 1, 'Consumable'),
(7, 2, 'Organizing'),
(8, 2, 'Attending'),
(9, 3, 'Resign'),
(10, 3, 'Recruitment'),
(11, 3, 'Soft Loan'),
(12, 3, 'Material leave'),
(13, 3, 'Long Leave'),
(14, 4, 'Consumable'),
(15, 4, 'New Equipment'),
(16, 4, 'Service and MAintenance'),
(17, 4, 'Patent Charges'),
(18, 4, 'Mark Sheet'),
(19, 5, 'Organizing '),
(20, 5, 'Attending'),
(21, 6, 'Long Leave'),
(22, 6, 'Resign'),
(23, 6, 'Recruitement'),
(24, 6, 'Soft Loan'),
(25, 6, 'Material Leave'),
(26, 7, 'New Equipment'),
(27, 7, 'Consumable'),
(28, 7, 'Mark Sheet'),
(29, 8, 'Organizing '),
(30, 8, 'Attending'),
(31, 9, 'Long Leave'),
(32, 9, 'Resign'),
(33, 9, 'Recruitement'),
(34, 9, 'Soft Loan'),
(35, 12, 'Material leave'),
(36, 13, 'Consumable'),
(37, 13, 'New Equipment'),
(38, 13, 'Service and maintenance'),
(39, 13, 'Software'),
(40, 14, 'Organizing'),
(41, 14, 'Attending'),
(42, 15, 'Resign'),
(43, 15, 'Recruitment'),
(44, 15, 'Long Leave'),
(45, 15, 'Material leave'),
(46, 16, 'Consumable'),
(47, 16, 'New Equipment'),
(48, 16, 'Service and maintenance'),
(49, 16, 'Software'),
(50, 17, 'Organizing'),
(51, 17, 'Attending'),
(52, 18, 'Resign'),
(53, 18, 'Recruitment'),
(54, 18, 'Long Leave'),
(55, 18, 'Material leave'),
(56, 19, 'Consumable'),
(57, 19, 'New Equipment'),
(58, 19, 'Service and maintenance'),
(59, 19, 'Software'),
(60, 20, 'Organizing'),
(61, 20, 'Attending'),
(62, 21, 'Resign'),
(63, 21, 'Recruitment'),
(64, 21, 'Long Leave'),
(65, 21, 'Material leave'),
(66, 22, 'Consumable'),
(67, 22, 'New Equipment'),
(68, 22, 'Service and maintenance'),
(69, 22, 'Software'),
(70, 23, 'Organizing'),
(71, 23, 'Attending'),
(72, 24, 'Resign'),
(73, 24, 'Recruitment'),
(74, 24, 'Long Leave'),
(75, 24, 'Material leave'),
(76, 4, 'Service and MAintenance'),
(77, 12, 'Long Leave'),
(78, 12, 'Resign'),
(79, 12, 'Recruitment'),
(80, 12, 'Material leave'),
(81, 12, 'Soft Loan'),
(82, 11, 'Organizing'),
(83, 11, 'Attending'),
(84, 10, 'Consumable'),
(85, 10, 'New Equipment'),
(86, 10, 'Service and maintenance'),
(87, 10, 'Software'),
(88, 10, 'Research Center Renewal');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `Technicain_id` varchar(225) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Lab_Name` varchar(225) NOT NULL,
  `Working_Products` varchar(225) NOT NULL,
  `Non_working_Products` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Gurugulam'),
(2, 'Special Lab'),
(3, 'IQAC'),
(4, 'Academic Dept'),
(5, 'Research Park'),
(6, 'Skill'),
(7, 'World Skill'),
(8, 'COE'),
(9, 'Alumni office'),
(10, 'Library');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_name`) VALUES
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('');

-- --------------------------------------------------------

--
-- Table structure for table `establishments`
--

CREATE TABLE `establishments` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `establishments`
--

INSERT INTO `establishments` (`id`, `name`, `address`) VALUES
(13, 'APPROVAL TEAM', 'Can manage all'),
(14, 'HOD', 'Requirements\r\n'),
(15, 'IQAC HEAD', 'IQAC approval'),
(16, 'M TEAM HEAD', 'Can manage all'),
(17, 'TECHNICIAN ', 'Technician Report');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option`) VALUES
('yes');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `tracking_id` text NOT NULL,
  `hod_name` text NOT NULL,
  `m_team` text NOT NULL,
  `RequiredComponents` text DEFAULT NULL,
  `AdvancedAmount` text NOT NULL,
  `Context` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `firstname`, `tracking_id`, `hod_name`, `m_team`, `RequiredComponents`, `AdvancedAmount`, `Context`, `status`) VALUES
(0, 'POOVARASAN ', '3321029521\n', 'SUNDAR S', 'M Team 1', NULL, '5000', ' eervrr', 1),
(0, 'POOVARASAN ', '6721651515\n', 'SUNDAR S', 'M Team 1', NULL, 'sdsd', 'vwev', 0),
(0, 'POOVARASAN SIVAN', '3801923258\n', 'PREMALATHA K', 'M Team 2', NULL, 'wvwe', 'ewvew', 0),
(0, 'Principal', '3042209215\n', 'PREMALATHA K', 'M Team 3', NULL, 'evwe', 'ewve', 0),
(0, 'praveen', '8263624782\n', 'KARTHIGHA R', 'M Team 4', NULL, 'dvwe', 'wevwe', 0),
(0, 'ebwen', '9268533008\n', 'PRIYA L', 'M Team 4', NULL, 'we', 'evwe', 0),
(0, 'Principal', '3253301499\n', 'PREMALATHA K', 'M Team 5', NULL, 'ewvew', 'vwev', 0),
(0, 'POOVARASAN ', '3430196823\n', 'SUNDAR S', 'M Team 2', NULL, '100', 'poovarsan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `person_tracks`
--

CREATE TABLE `person_tracks` (
  `id` int(30) NOT NULL,
  `person_id` int(30) NOT NULL,
  `establishment_id` int(30) NOT NULL,
  `temperature` varchar(10) NOT NULL,
  `transaction` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person_tracks`
--

INSERT INTO `person_tracks` (`id`, `person_id`, `establishment_id`, `temperature`, `transaction`, `date_created`) VALUES
(1, 1, 1, '36.7', '', '2020-10-06 14:59:22'),
(2, 1, 2, '38.6', '', '2020-10-06 15:46:21'),
(3, 2, 1, '36.6', '', '2020-10-06 15:46:41'),
(4, 2, 2, '36.6', '', '2020-10-06 16:00:32'),
(0, 1, 1, '', '', '2023-02-17 12:34:53'),
(0, 1, 2, 'wqf3', '', '2023-02-17 12:35:14'),
(0, 0, 0, '', '', '2023-02-17 13:43:59'),
(0, 0, 0, '', '', '2023-02-17 16:27:53'),
(0, 0, 0, '', '', '2023-02-17 16:29:49'),
(0, 1, 6, '', '', '2023-02-17 16:31:45'),
(0, 0, 0, 'qwwv', '', '2023-02-18 03:04:06'),
(0, 0, 0, '', '', '2023-02-18 03:04:15'),
(0, 0, 12, 'qwwv', '', '2023-02-18 09:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `academicdep_id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `academicdep_id`, `state`) VALUES
(1, 1, 'Purchase'),
(2, 1, 'Events'),
(3, 1, 'HR Activity'),
(4, 2, 'Purchase'),
(5, 2, 'Events'),
(6, 2, 'HR Activity'),
(7, 3, 'Purchase'),
(8, 3, 'Events'),
(9, 3, 'HR Activity'),
(10, 4, 'Purchase'),
(11, 4, 'Events'),
(12, 4, 'HR Activity'),
(13, 5, 'Purchase'),
(14, 5, 'Events'),
(15, 5, 'HR Activity'),
(16, 6, 'Purchase'),
(17, 6, 'Events'),
(18, 6, 'HR Activity'),
(19, 7, 'Purchase'),
(20, 7, 'Events'),
(21, 7, 'HR Activity'),
(22, 8, 'Purchase'),
(23, 8, 'Events'),
(24, 8, 'HR Activity'),
(25, 9, 'Purchase'),
(26, 9, 'Events'),
(27, 9, 'HR Activity'),
(28, 10, 'Purchase'),
(29, 10, 'Events'),
(30, 10, 'HR Activity');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1 = Admin, 2= establishment_staff',
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `establishment_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `type`, `username`, `password`, `establishment_id`) VALUES
(0, 'APPROVAL TEAM', 1, 'Approve', '2700a2220734da19927e824a55ecbf1e', 0),
(0, 'HOD', 2, 'hodcharge', '9ad110b6373ea8e60d3e6df0270e4271', 14),
(0, 'IQAC HEAD', 3, 'IQAC', '8c7dda980a911e89db78a6abd302bc73', 15),
(4, 'M TEAM HEAD', 4, 'mteam', '1405a7616166f05e597b8597e0c5255a', 0),
(5, 'TECHNICIAN ', 5, 'techlab', '7b591a2a55585e166465a838c28a2c5f', 17),
(0, 'M TEAM 1', 6, 'mteam1', '1405a7616166f05e597b8597e0c5255a', 0),
(0, 'M TEAM 2', 7, 'mteam2', '1405a7616166f05e597b8597e0c5255a', 0),
(0, 'M TEAM 3', 8, 'mteam3', '1405a7616166f05e597b8597e0c5255a', 0),
(0, 'M TEAM 4', 9, 'mteam4', '1405a7616166f05e597b8597e0c5255a', 0),
(0, 'M TEAM 5', 10, 'mteam5', '1405a7616166f05e597b8597e0c5255a', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `establishments`
--
ALTER TABLE `establishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `establishments`
--
ALTER TABLE `establishments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
