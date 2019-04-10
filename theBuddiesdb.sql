-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 04:42 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(9, 'great', '', 'david_degea', '2019-04-04 15:41:36', 'no', 70),
(10, 'Hi, David', '', 'david_degea', '2019-04-04 15:47:33', 'no', 71),
(11, 'how are things?', '', 'david_degea', '2019-04-04 15:55:28', 'no', 71),
(12, 'sap, mate', 'david_degea', 'david_degea', '2019-04-04 21:31:40', 'no', 73),
(13, 'cool', 'eric_bailly', 'eric_bailly', '2019-04-04 22:55:44', 'no', 72),
(14, 'If you would like to attend ', 'david_degea', 'david_degea', '2019-04-05 23:35:46', 'no', 79),
(15, 'Welcome', 'david_degea', 'eric_abidal', '2019-04-07 00:00:43', 'no', 80);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(20, 'david_james', 'david_degea');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(26, '', 70),
(28, '', 73),
(29, '', 72),
(32, '', 79);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(44, 'eric_bailly', 'eric_bailly', 'Hello, Eric', '2019-04-05 03:07:13', 'yes', 'yes', 'no'),
(45, 'eric_bailly', 'eric_bailly', 'I understand you gona be my mentor, mate', '2019-04-05 03:08:19', 'yes', 'yes', 'no'),
(46, 'luke_shaw', 'eric_bailly', 'Sap, Luke?', '2019-04-05 03:09:30', 'yes', 'yes', 'no'),
(47, 'paul_scholes', 'paul_scholes', 'Greeetings', '2019-04-05 08:12:31', 'yes', 'yes', 'no'),
(48, 'david_degea', 'paul_scholes', 'Nice connecting with you, mate.\r\nPaul.', '2019-04-05 08:13:45', 'yes', 'yes', 'no'),
(49, 'paul_scholes', 'david_degea', 'David SAVES!!!', '2019-04-05 08:39:14', 'no', 'no', 'no'),
(50, 'eric_bailly', 'david_degea', 'Hi, Eric', '2019-04-05 09:02:47', 'yes', 'yes', 'no'),
(51, 'luke_shaw', 'david_degea', 'Luke, Sap, bro', '2019-04-05 09:08:03', 'yes', 'yes', 'no'),
(52, 'jaafar_jaafar', 'david_degea', 'Hello Jaafar', '2019-04-05 09:11:32', 'no', 'no', 'no'),
(53, 'jaafar_jaafar', 'david_degea', 'Hi there', '2019-04-05 10:04:15', 'no', 'no', 'no'),
(54, 'luke_shaw', 'david_degea', 'Morning, Luke', '2019-04-05 10:52:17', 'yes', 'yes', 'no'),
(55, 'luke_shaw', 'david_degea', 'How are thing?', '2019-04-05 10:52:26', 'yes', 'yes', 'no'),
(56, 'david_degea', 'luke_shaw', 'sap, dude', '2019-04-05 10:55:33', 'yes', 'yes', 'no'),
(57, 'david_degea', 'malang_kuanyin', 'Hello, I just signed up', '2019-04-05 23:31:59', 'yes', 'yes', 'no'),
(58, 'malang_kuanyin', 'malang_kuanyin', 'test', '2019-04-05 23:32:36', 'yes', 'yes', 'no'),
(59, 'david_degea', 'malang_kuanyin', 'Hello', '2019-04-05 23:33:07', 'yes', 'yes', 'no'),
(60, 'david_degea', 'eric_abidal', 'Hi, David', '2019-04-07 00:09:05', 'yes', 'yes', 'no'),
(61, 'eric_abidal', 'david_degea', 'Hello, Eric', '2019-04-07 00:09:35', 'no', 'no', 'no'),
(62, 'david_degea', 'eric_bailly', 'Hi, Saviour', '2019-04-07 00:40:24', 'yes', 'yes', 'no'),
(63, 'eric_bailly', 'luke_shaw', 'Hi Eric', '2019-04-08 16:14:40', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(19, 'luke_shaw', 'david_degea', 'David Degea liked your post', 'post.php?id=71', '2019-04-04 15:45:48', 'yes', 'yes'),
(20, 'david_degea', '', '  commented on your post', 'post.php?id=71', '2019-04-04 15:47:33', 'yes', 'yes'),
(21, 'luke_shaw', '', '  commented on your profile post', 'post.php?id=71', '2019-04-04 15:47:33', 'yes', 'yes'),
(22, 'david_degea', '', '  commented on your post', 'post.php?id=71', '2019-04-04 15:55:28', 'yes', 'yes'),
(23, 'luke_shaw', '', '  commented on your profile post', 'post.php?id=71', '2019-04-04 15:55:28', 'yes', 'yes'),
(24, 'david_degea', 'eric_bailly', 'Eric Bailly liked your post', 'post.php?id=72', '2019-04-04 16:04:55', 'yes', 'yes'),
(25, 'david_degea', '', '  liked your post', 'post.php?id=73', '2019-04-04 22:55:30', 'yes', 'yes'),
(26, 'david_degea', 'eric_bailly', 'Eric Bailly commented on your profile post', 'post.php?id=72', '2019-04-04 22:55:44', 'yes', 'yes'),
(27, 'david_degea', '', '  liked your post', 'post.php?id=73', '2019-04-04 23:12:07', 'yes', 'yes'),
(28, 'eric_bailly', '', '  liked your post', 'post.php?id=72', '2019-04-04 23:12:11', 'yes', 'yes'),
(29, 'eric_bailly', 'david_degea', 'David Degea liked your post', 'post.php?id=74', '2019-04-05 00:33:53', 'no', 'yes'),
(30, 'eric_bailly', 'luke_shaw', 'Luke Shaw liked your post', 'post.php?id=75', '2019-04-05 01:05:41', 'no', 'yes'),
(31, 'eric_bailly', 'luke_shaw', 'Luke Shaw liked your post', 'post.php?id=76', '2019-04-05 01:06:21', 'no', 'yes'),
(32, 'eric_bailly', 'luke_shaw', 'Luke Shaw liked your post', 'post.php?id=78', '2019-04-05 02:34:19', 'no', 'yes'),
(33, 'david_degea', '', '  liked your post', 'post.php?id=79', '2019-04-05 23:35:58', 'yes', 'yes'),
(34, 'david_degea', '', '  liked your post', 'post.php?id=79', '2019-04-06 23:30:30', 'yes', 'yes'),
(35, 'david_degea', '', '  liked your post', 'post.php?id=79', '2019-04-06 23:30:33', 'yes', 'yes'),
(36, 'eric_abidal', '', '  liked your post', 'post.php?id=80', '2019-04-07 00:00:37', 'yes', 'yes'),
(37, 'eric_abidal', 'david_degea', 'David Degea commented on your post', 'post.php?id=80', '2019-04-07 00:00:43', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(66, 'hello', 'david_degea', 'none', '2019-04-04 13:08:35', 'no', 'yes', 0),
(67, 'hello', 'david_degea', 'none', '2019-04-04 13:10:12', 'no', 'yes', 0),
(68, 'hello', 'david_degea', 'none', '2019-04-04 13:11:08', 'no', 'no', 0),
(69, 'hello', '', 'none', '2019-04-04 13:11:51', 'no', 'no', 0),
(70, 'We are Here !!', 'david_degea', 'none', '2019-04-04 15:00:58', 'no', 'no', 1),
(71, 'Hi, Luke', 'david_degea', 'luke_shaw', '2019-04-04 15:45:48', 'no', 'no', 0),
(72, 'Hi, David. Im here, Mate.', 'eric_bailly', 'david_degea', '2019-04-04 16:04:55', 'no', 'no', 1),
(73, 'Hi, Eric. Welcome onboard', 'david_degea', 'none', '2019-04-04 16:07:31', 'no', 'yes', 1),
(74, 'What\'s up, soldier:)?', 'david_degea', 'eric_bailly', '2019-04-05 00:33:53', 'no', 'no', 0),
(75, 'Thanks for the add, Eric.', 'luke_shaw', 'eric_bailly', '2019-04-05 01:05:41', 'no', 'yes', 0),
(76, 'Thanks for the add, Eric.', 'luke_shaw', 'eric_bailly', '2019-04-05 01:06:21', 'no', 'no', 0),
(77, 'Hi, Luke', 'luke_shaw', 'none', '2019-04-05 02:33:35', 'no', 'no', 0),
(78, 'Hi, Eric', 'luke_shaw', 'eric_bailly', '2019-04-05 02:34:19', 'no', 'no', 0),
(79, 'RGU Welcome Party tonight, mates.', 'david_degea', 'none', '2019-04-05 23:35:18', 'no', 'no', 1),
(80, 'Im onboard, everyone!!', 'eric_abidal', 'none', '2019-04-07 00:00:10', 'no', 'no', 0),
(81, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/FFpRfnKdsy0\'></iframe><br>', 'luke_shaw', 'none', '2019-04-07 23:07:45', 'no', 'no', 0),
(82, 'Who is here ?', 'luke_shaw', 'none', '2019-04-08 16:14:01', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `contact_number` varchar(64) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(512) NOT NULL,
  `access_level` varchar(16) NOT NULL,
  `access_code` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=pending,1=confirmed',
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='admin and student users';

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `lastname`, `email`, `contact_number`, `address`, `password`, `access_level`, `access_code`, `status`, `created`, `modified`) VALUES
(1, 'Mike', 'Dalisay', 'mike@example.com', '0999999999', 'Blk. 24 A, Lot 6, Ph. 3, Peace Village', '$2y$10$AUBptrm9sQF696zr8Hv31On3x4wqnTihdCLocZmGLbiDvyLpyokL.', 'Admin', '', 1, '0000-00-00 00:00:00', '2016-06-13 17:17:47'),
(4, 'Darwin', 'Dalisay', 'darwin@example.com', '9331868359', 'Blk 24 A Lot 6 Ph 3\r\nPeace Village, San Luis', '$2y$10$tLq9lTKDUt7EyTFhxL0QHuen/BgO9YQzFYTUyH50kJXLJ.ISO3HAO', 'Student', 'ILXFBdMAbHVrJswNDnm231cziO8FZomn', 1, '2014-10-29 17:31:09', '2019-04-06 15:55:12'),
(22, 'David', 'Degea', 'ddegea@manutd.com', '11111111', 'Old Trafford, Manchester', '$2y$10$iJhnRQRaTjd/EOaH0q98v.AMtPN0NDXhYw.9P7Ln.ch7p6FIGRq9e', 'Student', 'Ilv6S4Yk5vYBBl9hDXbChllE8balIElv', 1, '2019-04-06 17:02:18', '2019-04-06 16:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 4),
('Hi', 5),
('Luke', 2),
('David', 1),
('Mate', 1),
('Eric', 4),
('Welcome', 2),
('Onboard', 2),
('Whats', 1),
('Soldier', 1),
('Thanks', 2),
('Add', 2),
('RGU', 1),
('Party', 1),
('Tonight', 1),
('Mates', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(11, 'Wayne ', 'Rooney', 'david_degea', 'wrooney@manutd.com', 'c53e479b03b3220d3d56da88c4cace20', '2019-04-04', 'assets/images/profile_pics/david_degea076e70fe659f408b04d758ad5c85937cn.jpeg', 9, 3, 'no', ',luke_shaw,jaafar_jaafar,paul_scholes,malang_kuanyin,eric_abidal,david_degea_1,eric_bailly,'),
(12, 'Luke', 'Shaw', 'luke_shaw', 'Lshaw@manutd.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2019-04-04', 'assets/images/profile_pics/defaults/head_emerald.png', 6, 0, 'no', ',david_degea,eric_bailly,malang_kuanyin,eric_abidal,'),
(13, 'Eric', 'Bailly', 'eric_bailly', 'Ebailly@manutd.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2019-04-04', 'assets/images/profile_pics/eric_baillya54a1789ab79b60d238d6b3828ad2fd9n.jpeg', 1, 1, 'no', ',luke_shaw,eric_abidal,david_degea,'),
(14, 'Jaafar', 'Jaafar', 'jaafar_jaafar', 'Jaafar@manutd.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2019-04-04', 'assets/images/profile_pics/jaafar_jaafarfa08f4bdd4f3979e88ea69712ee11069n.jpeg', 0, 0, 'no', ',david_degea,'),
(15, 'Paul', 'Scholes', 'paul_scholes', 'Pscholes@manutd.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2019-04-05', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',david_degea,'),
(16, 'Malang', 'Kuanyin', 'malang_kuanyin', 'Malang@manutd.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2019-04-05', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',david_degea,luke_shaw,'),
(17, 'James', 'Wilson', 'james_wilson', 'Jwilson@manutd.com', 'c53e479b03b3220d3d56da88c4cace20', '2019-04-06', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(18, 'Jaafar', 'Jamal', 'jaafar_jamal', 'Jjamal@manutd.com', 'c53e479b03b3220d3d56da88c4cace20', '2019-04-06', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(19, 'Rob', 'Lothian', 'rob_lothian', 'Rlothian@manutd.com', 'c53e479b03b3220d3d56da88c4cace20', '2019-04-06', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(20, 'David', 'James', 'david_james', 'Djames@city.com', 'c53e479b03b3220d3d56da88c4cace20', '2019-04-06', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(21, 'Eric', 'Abidal', 'eric_abidal', 'Eabidal@barca.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2019-04-06', 'assets/images/profile_pics/defaults/head_deep_blue.png', 1, 0, 'no', ',david_degea,eric_bailly,luke_shaw,'),
(22, 'David', 'Degea', 'david_degea_1', 'Kakech@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2019-04-07', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',david_degea,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
