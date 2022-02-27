-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2022 at 10:21 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `se_project2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `image_result`
--

CREATE TABLE `image_result` (
  `id` int(11) NOT NULL,
  `image_url` varchar(256) NOT NULL,
  `create_at` datetime NOT NULL,
  `result` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_result`
--

INSERT INTO `image_result` (`id`, `image_url`, `create_at`, `result`, `user_id`) VALUES
(2, 'https://www.cbc.ca/kidsnews/content/equation.jpg', '2022-02-26 11:42:35', '1+1=2', 1),
(4, 'https://i.insider.com/4fed8e8aecad042e72000009?width=600&format=jpeg&auto=webp', '2022-02-26 11:43:41', '123', 2),
(5, 'https://p.kindpng.com/picc/s/113-1130637_15-math-equation-png-for-free-download-on.png', '2022-02-26 12:07:40', '123', 2),
(24, 'uploads/274581206_1591082404577466_4673768237591873586_n.jpg', '2022-02-26 10:51:58', 'abc', 2),
(25, 'uploads/274581206_1591082404577466_4673768237591873586_n.jpg', '2022-02-26 10:52:56', 'abc', 2),
(26, 'uploads/274581206_1591082404577466_4673768237591873586_n.jpg', '2022-02-26 10:53:12', 'abc', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'minh', '123'),
(2, 'tuan', '321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image_result`
--
ALTER TABLE `image_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image_result`
--
ALTER TABLE `image_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
