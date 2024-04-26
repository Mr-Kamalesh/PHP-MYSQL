-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 06:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examform`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedetails`
--

CREATE TABLE `feedetails` (
  `theory_total_paper` int(10) NOT NULL,
  `theory_total_fee` int(10) NOT NULL,
  `practical_total_paper` int(10) NOT NULL,
  `practical_total_fee` int(10) NOT NULL,
  `penalty` int(10) NOT NULL,
  `exam_application_cost` int(10) NOT NULL,
  `mark_statement_cost` int(10) NOT NULL,
  `consolidated_cost` int(10) NOT NULL,
  `Provisional_cost` int(10) NOT NULL,
  `convocation_cost` int(10) NOT NULL,
  `grand_total` int(10) NOT NULL,
  `Challan` int(28) NOT NULL,
  `Amount_Rs` int(28) NOT NULL,
  `C_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedetails`
--

INSERT INTO `feedetails` (`theory_total_paper`, `theory_total_fee`, `practical_total_paper`, `practical_total_fee`, `penalty`, `exam_application_cost`, `mark_statement_cost`, `consolidated_cost`, `Provisional_cost`, `convocation_cost`, `grand_total`, `Challan`, `Amount_Rs`, `C_Date`) VALUES
(7, 455, 3, 300, 0, 100, 100, 200, 200, 1000, 2355, 23650165, 2355, '2023-11-02'),
(7, 455, 6, 600, 0, 100, 200, 200, 200, 1000, 2755, 341776, 27555, '2023-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `login_information`
--

CREATE TABLE `login_information` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_information`
--

INSERT INTO `login_information` (`id`, `name`, `password`) VALUES
(2, 'Kamalesh R', '$2y$10$Ajqs2hxuxIsZ2bGOdOkOq.sXNnNyikx1aZYmRMmIc05dLwm01Mb5W'),
(4, 'kamalesh', '$2y$10$9hRTYgyVg6V3ALW2TTUC5ulrHNLvGnnQPI.ygeZRQr06Yy9nKlq.u'),
(5, 'sadam', '$2y$10$pPRPVfBI8JefQ728JaGiNOoca0FEOOlDvMIwdWewdXkK4EZBXIBRG');

-- --------------------------------------------------------

--
-- Table structure for table `papercode`
--

CREATE TABLE `papercode` (
  `paper_1` varchar(100) NOT NULL,
  `paper1_sem1` varchar(100) NOT NULL,
  `paper1_sem2` varchar(100) NOT NULL,
  `paper1_sem3` varchar(100) NOT NULL,
  `paper1_sem4` varchar(100) NOT NULL,
  `paper1_sem5` varchar(100) NOT NULL,
  `paper1_sem6` varchar(100) NOT NULL,
  `paper_2` varchar(100) NOT NULL,
  `paper2_sem1` varchar(100) NOT NULL,
  `paper2_sem2` varchar(100) NOT NULL,
  `paper2_sem3` varchar(100) NOT NULL,
  `paper2_sem4` varchar(100) NOT NULL,
  `paper2_sem5` varchar(100) NOT NULL,
  `paper2_sem6` varchar(100) NOT NULL,
  `paper_3` varchar(100) NOT NULL,
  `paper3_sem1` varchar(100) NOT NULL,
  `paper3_sem2` varchar(100) NOT NULL,
  `paper3_sem3` varchar(100) NOT NULL,
  `paper3_sem4` varchar(100) NOT NULL,
  `paper3_sem5` varchar(100) NOT NULL,
  `paper3_sem6` varchar(100) NOT NULL,
  `paper_4` varchar(100) NOT NULL,
  `paper4_sem1` varchar(100) NOT NULL,
  `paper4_sem2` varchar(100) NOT NULL,
  `paper4_sem3` varchar(100) NOT NULL,
  `paper4_sem4` varchar(100) NOT NULL,
  `paper4_sem5` varchar(100) NOT NULL,
  `paper4_sem6` varchar(100) NOT NULL,
  `paper_5` varchar(100) NOT NULL,
  `paper5_sem1` varchar(100) NOT NULL,
  `paper5_sem2` varchar(100) NOT NULL,
  `paper5_sem3` varchar(100) NOT NULL,
  `paper5_sem4` varchar(100) NOT NULL,
  `paper5_sem5` varchar(100) NOT NULL,
  `paper5_sem6` varchar(100) NOT NULL,
  `paper_6` varchar(100) NOT NULL,
  `paper6_sem1` varchar(100) NOT NULL,
  `paper6_sem2` varchar(100) NOT NULL,
  `paper6_sem3` varchar(100) NOT NULL,
  `paper6_sem4` varchar(100) NOT NULL,
  `paper6_sem5` varchar(100) NOT NULL,
  `paper6_sem6` varchar(100) NOT NULL,
  `paper_7` varchar(100) NOT NULL,
  `paper7_sem1` varchar(100) NOT NULL,
  `paper7_sem2` varchar(100) NOT NULL,
  `paper7_sem3` varchar(100) NOT NULL,
  `paper7_sem4` varchar(100) NOT NULL,
  `paper7_sem5` varchar(100) NOT NULL,
  `paper7_sem6` varchar(100) NOT NULL,
  `paper_8` varchar(100) NOT NULL,
  `paper8_sem1` varchar(100) NOT NULL,
  `paper8_sem2` varchar(100) NOT NULL,
  `paper8_sem3` varchar(100) NOT NULL,
  `paper8_sem4` varchar(100) NOT NULL,
  `paper8_sem5` varchar(100) NOT NULL,
  `paper8_sem6` varchar(100) NOT NULL,
  `practical_1` varchar(100) NOT NULL,
  `practical1_sem1` varchar(100) NOT NULL,
  `practical1_sem2` varchar(100) NOT NULL,
  `practical1_sem3` varchar(100) NOT NULL,
  `practical1_sem4` varchar(100) NOT NULL,
  `practical1_sem5` varchar(100) NOT NULL,
  `practical1_sem6` varchar(100) NOT NULL,
  `practical_2` varchar(100) NOT NULL,
  `practical2_sem1` varchar(100) NOT NULL,
  `practical2_sem2` varchar(100) NOT NULL,
  `practical2_sem3` varchar(100) NOT NULL,
  `practical2_sem4` varchar(100) NOT NULL,
  `practical2_sem5` varchar(100) NOT NULL,
  `practical2_sem6` varchar(100) NOT NULL,
  `practical_3` varchar(100) NOT NULL,
  `practical3_sem1` varchar(100) NOT NULL,
  `practical3_sem2` varchar(100) NOT NULL,
  `practical3_sem3` varchar(100) NOT NULL,
  `practical3_sem4` varchar(100) NOT NULL,
  `practical3_sem5` varchar(100) NOT NULL,
  `practical3_sem6` varchar(100) NOT NULL,
  `practical_4` varchar(100) NOT NULL,
  `practical4_sem1` varchar(100) NOT NULL,
  `practical4_sem2` varchar(100) NOT NULL,
  `practical4_sem3` varchar(100) NOT NULL,
  `practical4_sem4` varchar(100) NOT NULL,
  `practical4_sem5` varchar(100) NOT NULL,
  `practical4_sem6` varchar(100) NOT NULL,
  `practical_5` varchar(100) NOT NULL,
  `practical5_sem1` varchar(100) NOT NULL,
  `practical5_sem2` varchar(100) NOT NULL,
  `practical5_sem3` varchar(100) NOT NULL,
  `practical5_sem4` varchar(100) NOT NULL,
  `practical5_sem5` varchar(100) NOT NULL,
  `practical5_sem6` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `papercode`
--

INSERT INTO `papercode` (`paper_1`, `paper1_sem1`, `paper1_sem2`, `paper1_sem3`, `paper1_sem4`, `paper1_sem5`, `paper1_sem6`, `paper_2`, `paper2_sem1`, `paper2_sem2`, `paper2_sem3`, `paper2_sem4`, `paper2_sem5`, `paper2_sem6`, `paper_3`, `paper3_sem1`, `paper3_sem2`, `paper3_sem3`, `paper3_sem4`, `paper3_sem5`, `paper3_sem6`, `paper_4`, `paper4_sem1`, `paper4_sem2`, `paper4_sem3`, `paper4_sem4`, `paper4_sem5`, `paper4_sem6`, `paper_5`, `paper5_sem1`, `paper5_sem2`, `paper5_sem3`, `paper5_sem4`, `paper5_sem5`, `paper5_sem6`, `paper_6`, `paper6_sem1`, `paper6_sem2`, `paper6_sem3`, `paper6_sem4`, `paper6_sem5`, `paper6_sem6`, `paper_7`, `paper7_sem1`, `paper7_sem2`, `paper7_sem3`, `paper7_sem4`, `paper7_sem5`, `paper7_sem6`, `paper_8`, `paper8_sem1`, `paper8_sem2`, `paper8_sem3`, `paper8_sem4`, `paper8_sem5`, `paper8_sem6`, `practical_1`, `practical1_sem1`, `practical1_sem2`, `practical1_sem3`, `practical1_sem4`, `practical1_sem5`, `practical1_sem6`, `practical_2`, `practical2_sem1`, `practical2_sem2`, `practical2_sem3`, `practical2_sem4`, `practical2_sem5`, `practical2_sem6`, `practical_3`, `practical3_sem1`, `practical3_sem2`, `practical3_sem3`, `practical3_sem4`, `practical3_sem5`, `practical3_sem6`, `practical_4`, `practical4_sem1`, `practical4_sem2`, `practical4_sem3`, `practical4_sem4`, `practical4_sem5`, `practical4_sem6`, `practical_5`, `practical5_sem1`, `practical5_sem2`, `practical5_sem3`, `practical5_sem4`, `practical5_sem5`, `practical5_sem6`) VALUES
('cloud computing ', '', '', '17p1cs1', '', '', '', 'java', '', '', '17P1CS2', '', '', '', 'html', '', '', '17P1CS3', '', '', '', 'mysql', '', '', '17P1CS4', '', '', '', 'ost', '', '', '17P1CS5', '', '', '', 'pc', '', '', '17P1CS6', '', '', '', 'css', '', '', '17P1CS7', '', '', '', '', '', '', '', '', '', '', 'sql', '', '', '17p1cspr1', '', '', '', 'mysql', '', '', '17p1cspr2', '', '', '', 'java', '', '', '17P1CSPR3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('cloud computing ', '', '', '17p1cs1', '', '', '', 'java', '', '', '17P1CS2', '', '', '', 'html', '', '', '17P1CS3', '', '', '', 'mysql', '', '', '17P1CS4', '', '', '', 'ost', '', '', '17P1CS5', '', '', '', 'pc', '', '', '17P1CS6', '', '', '', 'css', '', '', '17P1CS7', '', '', '', '', '', '', '', '', '', '', 'sql', '', '', '17p1cspr1', '', '', '', 'mysql', '', '', '17p1cspr2', '', '', '', 'java', '', '', '17P1CSPR3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `studetails`
--

CREATE TABLE `studetails` (
  `degree` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `photo` mediumblob NOT NULL,
  `regno` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `dob` date NOT NULL,
  `nationality` text NOT NULL,
  `religion` text NOT NULL,
  `category` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `medium_of_study` text NOT NULL,
  `physically_challenged` text NOT NULL,
  `admission` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studetails`
--

INSERT INTO `studetails` (`degree`, `department`, `photo`, `regno`, `name`, `gender`, `dob`, `nationality`, `religion`, `category`, `father_name`, `mother_name`, `medium_of_study`, `physically_challenged`, `admission`, `address`) VALUES
('', '', 0x4172726179, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
('M.sc', 'COMPUTER SCIENCE', 0x4172726179, '32122P15005', 'Kamalesh R', 'Male', '2002-01-15', 'INDIAN', 'HINDU', 'BC', 'RAVICHANDRAN R', 'JAYANTHI R', 'English', 'No', '2022-2024', '202,SAVADI STREET,VEDIYANGADU.'),
('B.A', 'TAMIL', 0x4172726179, '32122p15007', 'sadam', 'Male', '2000-10-22', 'indian', 'muslim', 'BCM', 'HUSSAIN', 'BEGAM', 'English', 'No', '2022-2024', '101,ARCOT MAIN STREET,ARCOT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_information`
--
ALTER TABLE `login_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `studetails`
--
ALTER TABLE `studetails`
  ADD PRIMARY KEY (`regno`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_information`
--
ALTER TABLE `login_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
