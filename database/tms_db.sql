-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 06:51 PM
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
-- Database: `tms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(7, 'Task Management PT XYZ', 'Task Manager for employee PT XYZ', 0, '2024-04-08', '2024-10-07', 7, '10,11', '2024-05-15 01:44:13'),
(8, 'Company Profile PT XYZ', 'Create a simple website for company profile PT XYZ', 0, '2024-04-08', '2024-08-07', 9, '6', '2024-05-15 01:46:39'),
(9, 'Company Profile PT ABC', 'Company profile webiste for PT ABC', 5, '2024-01-17', '2024-04-17', 7, '6', '2024-05-15 02:01:34'),
(10, 'Company Profile PT KLM', 'company profile for PT KLM', 3, '2024-03-06', '2024-07-05', 9, '11', '2024-05-15 02:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Task Management System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Sample Task 1', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Fusce ullamcorper mattis semper. Nunc vel risus ipsum. Sed maximus dapibus nisl non laoreet. Pellentesque quis mauris odio. Donec fermentum facilisis odio, sit amet aliquet purus scelerisque eget.&amp;nbsp;&lt;/span&gt;													', 3, '2020-12-03 11:08:58'),
(2, 1, 'Sample Task 2', 'Sample Task 2							', 1, '2020-12-03 13:50:15'),
(3, 2, 'Task Test', 'Sample', 1, '2020-12-03 13:52:25'),
(4, 2, 'test 23', 'Sample test 23', 1, '2020-12-03 13:52:40'),
(5, 3, 'saya pintar', 'test', 1, '2024-04-01 09:01:40'),
(6, 4, 'hiu', '				awas ada hiu			', 3, '2024-04-01 09:04:05'),
(7, 4, 'xixixi', '				xixixixixi			', 2, '2024-04-01 09:04:17'),
(8, 4, 'login bang', '				hehehehe			', 3, '2024-04-01 09:04:33'),
(9, 5, 'saya pintar', '								hiihhhihi xixixixixiixi						', 3, '2024-04-28 20:36:59'),
(10, 5, 'hiu', '								hiu hiu hiu hiu hiu hiu			', 3, '2024-04-28 20:37:18'),
(11, 6, 'task 1', '				task 1			', 3, '2024-04-29 16:51:21'),
(12, 6, 'task 2', 'task2', 1, '2024-04-29 16:51:33'),
(13, 6, 'task 3', '&lt;p&gt;task 3&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, '2024-04-29 16:51:45'),
(14, 6, 'task 4', 'task 4', 1, '2024-04-29 16:52:01'),
(15, 7, 'Task 1', 'Task 1', 1, '2024-05-15 01:47:05'),
(16, 7, 'Task 2', 'Task 2', 1, '2024-05-15 01:47:18'),
(17, 7, 'Task 3', 'Task 3', 1, '2024-05-15 01:47:39'),
(18, 8, 'Profile page', 'profile page', 1, '2024-05-15 01:50:01'),
(19, 8, 'Home page', '				Simple and elegant homepage&amp;nbsp;			', 2, '2024-05-15 01:50:47'),
(20, 8, 'Login page', 'Login page', 3, '2024-05-15 01:58:24'),
(21, 9, 'Test 1', 'Test 1', 3, '2024-05-15 02:02:02'),
(22, 9, 'Test 2', 'Test 2', 3, '2024-05-15 02:02:19'),
(23, 9, 'Test 3', 'Test 3', 3, '2024-05-15 02:02:35'),
(24, 10, 'Login page', 'LOGIN', 3, '2024-05-15 02:08:56'),
(25, 10, 'Home page', 'HOMEPAGE', 2, '2024-05-15 02:09:11'),
(26, 10, 'Profile page', 'PROFILE PAGE', 2, '2024-05-15 02:09:28'),
(27, 10, 'Service Page', 'service page', 1, '2024-05-15 02:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Administrator', 'Admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 1, '1711938060_Screenshot 2024-03-25 183204.png', '2020-11-26 10:57:04'),
(6, 'Shakta', 'Satwika', 'shakta@gmail.com', '39091db2d0b3a8ac6811b30cea0dccb1', 3, 'no-image-available.png', '2024-04-01 08:58:13'),
(7, 'faris', 'satrio', 'faris@gmail.com', 'c73f227db1b523334ea3aef35bf06af8', 2, '1711936920_uhdpaper.com-download-pc-hd-wallpaper-147@0@f.jpg', '2024-04-01 09:02:35'),
(9, 'Muhammad', 'Farhan', 'farhan@gmail.com', '1ac5012170b65fb99f171ad799d045ac', 2, '1714310460_Screenshot 2024-03-25 183559.png', '2024-04-28 20:21:36'),
(10, 'Andrew', 'Andrew', 'andrew@gmail.com', '47fab60bdcd2ffce91447d19fe9ce7f1', 3, '1714310580_boy_night_headphones_145031_1920x1080.jpg', '2024-04-28 20:23:42'),
(11, 'Furqan', 'Furqan', 'furqan@gmail.com', '9aa647b6a197360c7eb419e65688a939', 3, 'no-image-available.png', '2024-04-28 20:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(1, 1, 1, '							&lt;p&gt;Sample Progress&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Test 1&lt;/li&gt;&lt;li&gt;Test 2&lt;/li&gt;&lt;li&gt;Test 3&lt;/li&gt;&lt;/ul&gt;																			', 'Sample Progress', '2020-12-03', '08:00:00', '10:00:00', 1, 2, '2020-12-03 12:13:28'),
(2, 1, 1, '							Sample Progress						', 'Sample Progress 2', '2020-12-03', '13:00:00', '14:00:00', 1, 1, '2020-12-03 13:48:28'),
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30'),
(5, 2, 4, '&lt;p&gt;Test test&lt;/p&gt;&lt;p&gt;test&lt;/p&gt;&lt;p&gt;test&lt;/p&gt;', 'test', '2024-04-01', '00:00:00', '00:00:00', 1, 0, '2024-04-01 09:00:42'),
(6, 4, 8, 'almost is never enough', 'test', '2024-04-01', '09:05:00', '09:05:00', 7, 0, '2024-04-01 09:06:03'),
(7, 3, 5, 'betul betul betul', 'test', '2024-04-02', '12:53:00', '15:05:00', 6, 2.2, '2024-04-01 09:07:28'),
(8, 4, 6, 'bang udh bang&amp;nbsp;', 'test', '2024-04-01', '00:00:00', '00:00:00', 6, 0, '2024-04-01 09:08:14'),
(9, 4, 7, 'mantap bosquu', 'test', '2024-04-01', '00:00:00', '00:00:00', 6, 0, '2024-04-01 09:08:38'),
(10, 4, 8, 'menyala abang kuh', 'test', '2024-04-01', '00:00:00', '00:00:00', 6, 0, '2024-04-01 09:09:07'),
(11, 4, 6, '													', '', '0000-00-00', '00:00:00', '00:00:00', 1, 0, '2024-04-03 08:54:46'),
(12, 5, 10, '							tolong ini di utamakan', 'test', '2024-04-28', '20:37:00', '22:51:00', 9, 2.23333, '2024-04-28 20:38:15'),
(13, 5, 10, 'So far so good sir &lt;b&gt;hehe&lt;/b&gt;', 'test', '2024-04-29', '05:50:00', '09:35:00', 6, 3.75, '2024-04-28 20:41:17'),
(14, 7, 15, 'Please contact UI/UX designer staff for more information about this project', 'About UI design', '0000-00-00', '00:00:00', '00:00:00', 1, 0, '2024-05-15 01:49:21'),
(15, 8, 18, 'Please contact ui/ux design staff for more information', 'UI design', '2024-05-02', '00:00:00', '00:00:00', 1, 0, '2024-05-15 01:59:58'),
(16, 9, 21, 'Test 1 is done', 'Test', '2024-01-30', '00:00:00', '00:00:00', 1, 0, '2024-05-15 02:03:22'),
(17, 10, 25, 'This project in on hold because they don&amp;#x2019;t pay for 2 month', 'Pending', '0000-00-00', '00:00:00', '00:00:00', 1, 0, '2024-05-15 02:11:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
