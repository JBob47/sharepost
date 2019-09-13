-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 01:37 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traversy-sharepost`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`) VALUES
(1, 12, 'First Post 2', 'This is my first post. Doesn\'t it rock? Yes. It does. 2', '2019-09-10 17:33:09'),
(2, 12, 'Post Two', 'This is my second post.', '2019-09-10 17:33:09'),
(3, 12, 'Third Post', 'This is my third post.', '2019-09-10 18:51:59'),
(4, 12, 'Post 4', 'This is the fourth post.', '2019-09-10 18:54:53'),
(5, 12, 'Post 4', 'This is the fourth post.', '2019-09-10 18:55:19'),
(9, 4, 'Validated Add Method', 'This was created after validation. Added id to posts/edit function.', '2019-09-11 05:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(4, 'Cowan Bobbitt', 'cowan@website.com', '$2y$10$WTgZs.94MLnc7QNAeVvPcuzpuMDaoQMatSKgACaEIN9lYWie.X5K2', '2019-09-05 13:50:42'),
(5, 'Nola Bobbitt', 'nola@website.com', '$2y$10$7BbmNgJvg2e3VMw6gp9yZ.vtQiTG4m4TmEGJbi6z/PX3T72QKxgG6', '2019-09-05 13:51:03'),
(9, 'Justin Bobbitt', 'justin@website.com', '$2y$10$8vd5hBdGBH7Kit2TjiJeHu2J4QAgbydBPnnkkqe.JCL1kXwv8jOwS', '2019-09-05 13:59:51'),
(10, 'Brandi Bobbitt', 'brandi@website.com', '$2y$10$JE7thu9uysgu1tH5.W8bieNdRaf9SNzmDuRN2EhdY8YNLtNPdql7i', '2019-09-05 14:07:05'),
(11, 'Justin Bobbitt', 'justin@justinbobbittdesign.com', '$2y$10$VGnplcNn72YfJLy6EXT0z.b47wSPXJqu9VDrIFZlrecqeErIU/fkK', '2019-09-05 16:11:43'),
(12, 'Cdiddy Bobbitt', 'cdiddy@website.com', '$2y$10$Tx4/4Cu2U9E2cTLYZG6/DOktE4IX5fZrMsdbWAsQ9P70o80NXmPfa', '2019-09-10 17:20:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
