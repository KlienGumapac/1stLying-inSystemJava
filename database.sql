-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 01:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(225) NOT NULL,
  `account_name` varchar(225) NOT NULL,
  `account_username` varchar(225) NOT NULL,
  `account_password` varchar(225) NOT NULL,
  `account_type` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account_name`, `account_username`, `account_password`, `account_type`) VALUES
(1, 'Admin', 'Admin', 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `newborn_information`
--

CREATE TABLE `newborn_information` (
  `newborn_id` int(225) NOT NULL,
  `newborn_name` varchar(225) NOT NULL,
  `newborn_birth` date NOT NULL,
  `newborn_time` varchar(225) NOT NULL,
  `newborn_gender` varchar(225) NOT NULL,
  `newborn_mother` varchar(225) NOT NULL,
  `newborn_weight` int(225) NOT NULL,
  `newborn_height` int(225) NOT NULL,
  `newborn_midwife` varchar(225) NOT NULL,
  `newborn_room` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newborn_information`
--

INSERT INTO `newborn_information` (`newborn_id`, `newborn_name`, `newborn_birth`, `newborn_time`, `newborn_gender`, `newborn_mother`, `newborn_weight`, `newborn_height`, `newborn_midwife`, `newborn_room`) VALUES
(28, 'yana O. Corcoro', '2023-01-12', '12:00', 'female', 'Kyan O. Corcoro', 20, 11, 'Derm G. Fernandez', 3),
(29, 'Ten G. Hernane', '2023-01-13', '12:09', 'male', 'Teodolfo G. Hernane', 11, 11, 'Pon T. Switch', 2),
(30, 'Klien', '2022-01-12', '12:22', 'female', 'Klien B. Gumapac', 12, 10, 'Dayna', 2),
(31, 'Monir ', '2023-01-06', '12:00', 'female', 'Daynalyn J. Daque', 1, 120, 'Noemilyn Semeniego', 3),
(32, 'Nena See', '2023-01-31', '12:26', 'female', 'Daque', 12, 9, 'Noemilyn Semeniego', 3),
(33, 'Klien1', '2023-01-04', '', 'male', 'Kyan', 20, 20, 'Ako', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newborn_room`
--

CREATE TABLE `newborn_room` (
  `newborn_id` int(225) NOT NULL,
  `newborn_name` varchar(225) NOT NULL,
  `patient_room` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newborn_room`
--

INSERT INTO `newborn_room` (`newborn_id`, `newborn_name`, `patient_room`) VALUES
(33, 'Nena See', 3);

-- --------------------------------------------------------

--
-- Table structure for table `patient_information`
--

CREATE TABLE `patient_information` (
  `patient_name` varchar(225) NOT NULL,
  `patient_age` int(225) NOT NULL,
  `patient_birthdate` varchar(225) NOT NULL,
  `patient_address` varchar(225) NOT NULL,
  `patient_number` varchar(225) NOT NULL,
  `patient_room` int(225) NOT NULL,
  `patient_id` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_information`
--

INSERT INTO `patient_information` (`patient_name`, `patient_age`, `patient_birthdate`, `patient_address`, `patient_number`, `patient_room`, `patient_id`) VALUES
('Kyan O. Corcoro', 20, '2023-01-11', 'Gensan', '098766785543', 2, 18),
('Teodolfo G. Hernane', 21, '2023-01-12', 'Anastacio Subdivision', '098877543324', 2, 19),
('Klien', 20, '2002-01-09', 'polomolok', '09123456789', 1, 20),
('Daynalyn J. Daque', 52, '1983-01-14', 'USA', '09123456123', 2, 21),
('Daque', 100, '1960-01-26', 'Spain', '09012345678', 1, 22),
('pong', 12, '2023-01-03', 'fgasdghashj', '0854237273', 1, 23),
('Kyan', 21, '2023-01-17', 'Manatad', '0912345677', 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `patient_room`
--

CREATE TABLE `patient_room` (
  `patient_id` int(225) NOT NULL,
  `patient_name` varchar(225) NOT NULL,
  `patient_room` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_room`
--

INSERT INTO `patient_room` (`patient_id`, `patient_name`, `patient_room`) VALUES
(23, 'Kyan', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `newborn_information`
--
ALTER TABLE `newborn_information`
  ADD PRIMARY KEY (`newborn_id`);

--
-- Indexes for table `newborn_room`
--
ALTER TABLE `newborn_room`
  ADD PRIMARY KEY (`newborn_id`);

--
-- Indexes for table `patient_information`
--
ALTER TABLE `patient_information`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_room`
--
ALTER TABLE `patient_room`
  ADD PRIMARY KEY (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newborn_information`
--
ALTER TABLE `newborn_information`
  MODIFY `newborn_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `newborn_room`
--
ALTER TABLE `newborn_room`
  MODIFY `newborn_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `patient_information`
--
ALTER TABLE `patient_information`
  MODIFY `patient_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `patient_room`
--
ALTER TABLE `patient_room`
  MODIFY `patient_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
