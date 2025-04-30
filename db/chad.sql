-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2025 at 06:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chad`
--

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `minutes` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `roles` text NOT NULL,
  `is_active` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `roles`, `is_active`) VALUES
(7, 'Elevator Operator', 'Y'),
(8, 'Elevator Installer', 'Y'),
(9, 'Elevator Estimation', 'Y'),
(18, 'Office Clerk', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `budget` int(11) NOT NULL,
  `location` text NOT NULL,
  `description` text NOT NULL,
  `teamleader_id` int(11) NOT NULL,
  `date_started` date NOT NULL,
  `date_end` date NOT NULL,
  `timeline` int(11) NOT NULL,
  `is_finished` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `budget`, `location`, `description`, `teamleader_id`, `date_started`, `date_end`, `timeline`, `is_finished`, `date`) VALUES
(30, 'Project Cebu 101', 959990000, 'Cebu, Cebu City', 'This is a 72-storey Cebu Building', 11, '0000-00-00', '0000-00-00', 0, 0, '2025-04-28 06:33:01'),
(31, 'Project BGC 72-storey', 69000000, 'Sa Kalsada ng BGC', 'Description of Project BGC 72-storey', 3, '0000-00-00', '0000-00-00', 0, 0, '2025-04-28 08:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `project_file`
--

CREATE TABLE `project_file` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `file_path` text NOT NULL,
  `file_name` text NOT NULL,
  `date_uploaded` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_leadership`
--

CREATE TABLE `project_leadership` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `teamleader_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_leadership`
--

INSERT INTO `project_leadership` (`id`, `project_id`, `teamleader_id`, `date`) VALUES
(1, 30, 11, '2025-04-28 06:33:01'),
(2, 31, 3, '2025-04-28 08:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `deadline` date NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` text NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `position` int(11) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `fullname`, `email`, `position`, `datecreated`) VALUES
(1, '12345', 'Gregorio Magalpok', 'magalpok@gmail.com', 9, '2025-04-19 12:31:21'),
(2, 'mFajQWsc4C', 'Juan Dela Cruz', 'sample@gmail.com', 7, '2025-04-22 07:07:02'),
(3, 'YX!rdZ(H^k', 'Pares Diwata', 'diwata@gmail.com', 9, '2025-04-27 23:44:39'),
(7, '$2y$10$SJ8n8NqjVryZRsytDN//te3ZrovQk/nxVU78UEqX0pP2/GjnfQPBS', 'Manny Pacquiao', 'jlouisuru@gmail.com', 18, '2025-04-28 02:24:43'),
(8, '$2y$10$3CyZFvSWjL.Oq1jRvhJpze51EW3b.Gz3Tjpy.lISN0jNnsTVhQ6W.', 'Justine Bieber', 'jlouisuru@gmail.com', 7, '2025-04-28 02:51:17'),
(9, '$2y$10$vlcglWQUcY2kcvDLeMSUc.8dunvoJPmDMNhn02fy4plhV3bf.heAe', 'Justine Bieber', 'jlouisuru@gmail.com', 7, '2025-04-28 02:54:22'),
(11, '$2y$10$0UW3xtNDqJI4RbIuIvt.W.EzCrGTU5aMaFv7qNthT5RhB57Q9i87K', 'GG Kanor', 'johnlouisuru@gmail.com', 18, '2025-04-28 04:33:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_file`
--
ALTER TABLE `project_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_leadership`
--
ALTER TABLE `project_leadership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `project_leadership`
--
ALTER TABLE `project_leadership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project_file`
--
ALTER TABLE `project_file`
  ADD CONSTRAINT `project_file_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
