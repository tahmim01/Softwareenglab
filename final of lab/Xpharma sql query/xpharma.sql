-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2019 at 11:58 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xpharma`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `username`, `password`, `created_at`) VALUES
(2, 'lionelsharmi10@gmail.com', '$2y$10$OHxWBfhFNttjsbVSa7b5l.165wXJa0w02laxKMIDRdPmeChN6EKf.', '2019-11-29 10:45:25'),
(6, 'tahmim0007@gmail.com', '$2y$10$zCZepWtXwCiKbvaZ7HUqpuHwK4JjYVxztrBEv.b81.o2HuwjsvuXq', '2019-12-10 21:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` text NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `subject`, `message`) VALUES
('tahmim', 'tahmimtayan@yahoo.com', 'go', 'pagol hoye jabo'),
('<script>alert(1)</script>', 'tahmimtayan@yahoo.com', 'wefe', 'wqde');

-- --------------------------------------------------------

--
-- Table structure for table `generic`
--

CREATE TABLE `generic` (
  `generic_id` int(11) NOT NULL,
  `generic_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL,
  `medicine_name` varchar(50) NOT NULL,
  `others_common_name` varchar(50) NOT NULL,
  `generic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmaproduct`
--

CREATE TABLE `pharmaproduct` (
  `id` int(11) NOT NULL,
  `generic_name` varchar(250) NOT NULL,
  `medicine_name` varchar(250) NOT NULL,
  `related_med_name` varchar(250) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmaproduct`
--

INSERT INTO `pharmaproduct` (`id`, `generic_name`, `medicine_name`, `related_med_name`, `price`) VALUES
(1, 'perasitemol', 'napa 500mg', 'atopen', 20),
(2, 'omniprazole', 'seclo 40', 'sargel 20', 20),
(3, 'ace', 'ACE 500', 'NAPA', 20),
(4, 'xyz', 'finding', 'cinamin ', 30),
(5, 'xyz', 'wer', 'poro', 50),
(6, 'aaaaa', 'bbbb', 'cccc', 150),
(7, 'omniprazole', 'seclo 40', 'sargel 20', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(200) NOT NULL,
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `image`, `date`) VALUES
(1, 'tayan', 'ashik', 'tahmim@yahoo.com', '0123456', '', '0000-00-00'),
(2, 'ashik', 'tayan', 'shopan0123@gmail.com', '$2y$10$N1st/CdYaYJk/IFLLrTG0.WSF1Oh4Bu/8a4T5JU0656IbEE71a/kK', '2334587836568511574932450.JPG', '0000-00-00'),
(3, 'ashik', 'tayan', 'tahmim0007@gmail.com', '$2y$10$g0tQK2AfLQgC1BRhFam2e.kQLXcVW4Kaov33NG2igjsNlbIU9jGru', '8300915128584451575051335.jpg', '0000-00-00'),
(5, 'asaduzzaman', 'masum', 'masum@gmail.com', '$2y$10$.LT71k4wPJb2X4lEfkVbOOc9zWNZr0mNNlMAZtnLaxPPYz.pRh9qa', '255674881065561575091085.jpg', '0000-00-00'),
(6, 'ashik', 'shamim', 'shamim000@gmail.com', '$2y$10$anBQVWceMWw6aFfl5gCuxe0KPMmyFxH/VrMabV/ohkQ7a1L23v6Ti', '1355999983309751575694414.jpg', '0000-00-00'),
(7, 'sharmi', 'mondal', 'lionelsharmi10@gmail.com', '$2y$10$M7lbsy9xQznGAGwh27zgme896thoRsHehd380chBXMOgo0QidIE82', '6601212625322571575992314.jpg', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `generic`
--
ALTER TABLE `generic`
  ADD PRIMARY KEY (`generic_id`),
  ADD KEY `generic_id` (`generic_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicine_id`),
  ADD KEY `medicine_id` (`medicine_id`),
  ADD KEY `generic_id` (`generic_id`);

--
-- Indexes for table `pharmaproduct`
--
ALTER TABLE `pharmaproduct`
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
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `generic`
--
ALTER TABLE `generic`
  MODIFY `generic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmaproduct`
--
ALTER TABLE `pharmaproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`generic_id`) REFERENCES `generic` (`generic_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
