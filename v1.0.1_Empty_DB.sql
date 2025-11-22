-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql110.byetcluster.com
-- Generation Time: Nov 22, 2025 at 01:13 PM
-- Server version: 11.4.7-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_40309763_ABSDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `ABS_customer_details`
--

CREATE TABLE `ABS_customer_details` (
  `Aadhar_Number` varchar(12) NOT NULL,
  `Full_Name` varchar(150) NOT NULL,
  `Parent_Name` varchar(150) DEFAULT NULL,
  `Mobile_Number` varchar(10) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `House_No` varchar(80) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Place` varchar(100) DEFAULT NULL,
  `Taluk` varchar(100) DEFAULT NULL,
  `District` varchar(100) DEFAULT NULL,
  `Pincode` varchar(6) DEFAULT NULL,
  `Created_By` varchar(100) DEFAULT NULL,
  `Created_At` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ABS_Gold_Scheme_Details`
--

CREATE TABLE `ABS_Gold_Scheme_Details` (
  `Scheme_Card_Number` varchar(50) NOT NULL,
  `Aadhar_Number` varchar(12) NOT NULL,
  `Full_Name` varchar(255) NOT NULL,
  `Parent_Name` varchar(255) DEFAULT NULL,
  `Mobile_Number` varchar(15) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `House_No` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Place` varchar(150) DEFAULT NULL,
  `Taluk` varchar(150) DEFAULT NULL,
  `District` varchar(150) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Winning_Status` varchar(20) DEFAULT 'RUNNER',
  `Winning_Category` varchar(100) DEFAULT 'RUNNER',
  `Win_Date` date DEFAULT '0000-00-00',
  `Created_By` varchar(100) DEFAULT NULL,
  `Created_At` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ABS_GS_Dip_Table`
--

CREATE TABLE `ABS_GS_Dip_Table` (
  `Scheme_Card_Number` varchar(50) NOT NULL,
  `Aadhar_Number` varchar(12) NOT NULL,
  `Full_Name` varchar(255) NOT NULL,
  `Parent_Name` varchar(255) DEFAULT NULL,
  `Mobile_Number` varchar(15) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `House_No` varchar(100) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Place` varchar(150) DEFAULT NULL,
  `Taluk` varchar(150) DEFAULT NULL,
  `District` varchar(150) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Winning_Status` varchar(20) DEFAULT 'WINNER',
  `Winning_Category` varchar(100) DEFAULT NULL,
  `Win_Date` date DEFAULT NULL,
  `Created_By` varchar(100) DEFAULT NULL,
  `Created_At` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ABS_GS_Receipts`
--

CREATE TABLE `ABS_GS_Receipts` (
  `Scheme_Card_Number` varchar(50) NOT NULL,
  `Aadhar_Number` varchar(12) NOT NULL,
  `Mobile_Number` varchar(15) DEFAULT NULL,
  `Receipt_Number` varchar(50) NOT NULL,
  `Receipt_Amount` decimal(10,2) NOT NULL,
  `Receipt_Date` date NOT NULL,
  `Created_By` varchar(100) DEFAULT NULL,
  `Created_At` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ABS_Login_Creds`
--

CREATE TABLE `ABS_Login_Creds` (
  `Username` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Created_At` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ABS_Login_Creds`
--

INSERT INTO `ABS_Login_Creds` (`Username`, `Password`, `Role`, `DateOfBirth`, `Created_At`) VALUES
('anil', '$2y$10$wgI9TGGwKuEDcPfgpHsJtuJ8GxpupD7Q9uksXO6EIB23171DLEgpO', 'DEV', '1993-03-15', '0000-00-00 00:00:00'),
('admin1', '$2y$10$mioOve7d8IsB2uZ25Ddzp.rdd9.TLvE9HwGMXC6B8QOKQHTZeJ/0q', 'ADMIN', '2025-08-15', '2025-10-30 07:00:00'),
('admin2', '$2y$10$YSKaLYYpvOukIJ0yMYEWW.f.iHuDNB6MlmSqdBGXLDB64K2XkWlB.', 'ADMIN', '2025-08-15', '2025-10-30 07:00:00'),
('user1', '$2y$10$R1iNijwQ.p5Gta2s5zkmpulCbFbKzB6sfi8pMRzmvIf6ppQpl7lQ.', 'USER', '2025-08-15', '2025-10-30 07:00:00'),
('user2', '$2y$10$Lk5Vk79oE4tMEfPfqR/D1eWayj.WZnPlHr/6guUs4FMrSfNAdkFl2', 'USER', '2025-08-15', '2025-10-30 07:00:00'),
('ABSdig1', '$2y$10$ZZOcAqUbt46ZM/RzvBWlXe1ntyPkOjtRGV/S7gloDdtKuO1oBzyjq', 'ADMIN', '1993-07-05', '2025-11-18 03:47:15'),
('ABSdig2', '$2y$10$zkeX7myt3pflTX7IJ.3hwucQjijgA9erN6K2rji4Z5BdxTPiWbF2.', 'ADMIN', '1986-06-01', '2025-11-18 03:47:38'),
('MadanABS', '$2y$10$9aVE/gXc1FuHrvy5tUPTQOITqdHQ3IbvzbaNOLcWBVAIwOVARfopa', 'USER', '2025-08-15', '2025-11-18 03:48:23'),
('AlimaABS', '$2y$10$obaDgnNIXQl16wJMeFTj7.H19g39hy/zuQU.YP0yMfJXJLTan6GuW', 'USER', '2025-08-15', '2025-11-18 03:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `ABS_Login_Members_Creds`
--

CREATE TABLE `ABS_Login_Members_Creds` (
  `Userid` varchar(50) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(50) DEFAULT 'MEMBER',
  `DateOfBirth` date DEFAULT NULL,
  `Created_By` varchar(100) DEFAULT NULL,
  `Created_At` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ABS_Schemes_Details`
--

CREATE TABLE `ABS_Schemes_Details` (
  `id` int(11) NOT NULL,
  `scheme_name` varchar(255) NOT NULL,
  `scheme_table_name` varchar(255) NOT NULL,
  `receipt_table_name` varchar(100) DEFAULT NULL,
  `Dip_Info_table_name` varchar(100) DEFAULT NULL,
  `Dip_Day` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'ACTIVE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ABS_Schemes_Details`
--

INSERT INTO `ABS_Schemes_Details` (`id`, `scheme_name`, `scheme_table_name`, `receipt_table_name`, `Dip_Info_table_name`, `Dip_Day`, `description`, `start_date`, `end_date`, `status`) VALUES
(1, 'ABS Gold Scheme', 'ABS_Gold_Scheme_Details', 'ABS_GS_Receipts', 'ABS_GS_Dip_Table', '15', 'ABS Gold Scheme 1K/M', '2025-07-01', '2027-06-30', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ABS_customer_details`
--
ALTER TABLE `ABS_customer_details`
  ADD PRIMARY KEY (`Aadhar_Number`);

--
-- Indexes for table `ABS_Gold_Scheme_Details`
--
ALTER TABLE `ABS_Gold_Scheme_Details`
  ADD PRIMARY KEY (`Scheme_Card_Number`);

--
-- Indexes for table `ABS_GS_Dip_Table`
--
ALTER TABLE `ABS_GS_Dip_Table`
  ADD PRIMARY KEY (`Scheme_Card_Number`);

--
-- Indexes for table `ABS_GS_Receipts`
--
ALTER TABLE `ABS_GS_Receipts`
  ADD PRIMARY KEY (`Receipt_Number`);

--
-- Indexes for table `ABS_Login_Creds`
--
ALTER TABLE `ABS_Login_Creds`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `ABS_Login_Members_Creds`
--
ALTER TABLE `ABS_Login_Members_Creds`
  ADD PRIMARY KEY (`Userid`);

--
-- Indexes for table `ABS_Schemes_Details`
--
ALTER TABLE `ABS_Schemes_Details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ABS_Schemes_Details`
--
ALTER TABLE `ABS_Schemes_Details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
