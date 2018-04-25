-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2017 at 03:21 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `caturl` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `caturl`, `description`, `image`) VALUES
(3, 'Web Design', 'web-design', 'Web Design Description', ''),
(4, 'Web Development', 'web-development', 'Web Development Description', ''),
(5, 'Mobile App Development', 'mobile-app-development', 'Mobile App Development Desription', '');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `submittime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cid`, `name`, `email`, `subject`, `submittime`, `status`) VALUES
(1, 17, 'OmacyS 1', 'gmail@gmail.com', 'test comment one', '2017-09-28 12:53:31', 'publish'),
(2, 17, 'OmacyS 2', 'gmail@gmail.com', 'test comment two', '2017-09-28 12:54:17', 'publish'),
(3, 19, 'OmacyS 3', 'gmail@gmail.com', 'test comment three', '2017-09-28 12:57:27', 'publish'),
(4, 20, 'OmacyS 4 upd', 'gmail@gmail.com', 'test comment four', '2017-09-28 12:57:40', 'publish'),
(4, 17, 'OmacyS 5', 'gmail@gmail.com', 'test message new', '2017-09-28 15:13:11', 'draft'),
(6, 17, 'OmacyS 6', 'gmail@gmail.com', 'test comment new again', '2017-09-28 15:14:35', 'draft'),
(7, 17, 'OmacyS 7', 'gmail@gmail.com', 'new test message', '2017-09-28 15:15:11', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `catid` varchar(255) NOT NULL,
  `subcatid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime NOT NULL,
  `publishtime` datetime NOT NULL,
  `featuredimage` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `catid`, `subcatid`, `title`, `content`, `url`, `status`, `createtime`, `updatetime`, `publishtime`, `featuredimage`, `userid`) VALUES
(1, '3', '', 'Lorem ipsum dolor sit amet', '<h4 style=\"box-sizing: border-box; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 18px;\"><span style=\"box-sizing: border-box;\">Duis elementum metus felis, nec pellentesque sem auctor ut.</span></h4>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non porttitor felis. Nullam eu elit sollicitudin orci varius lacinia vitae eu diam.</span></p>', 'lorem-ipsum-dolor-sit-amet', 'published', '2017-09-28 12:19:29', '2017-09-28 08:49:29', '0000-00-00 00:00:00', 'uploads/Word Power Made Easy.jpg', 0),
(2, '4', '', 'consectetur adipiscing elit', '<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Praesent vitae ex d<strong>apibus, malesuada neque ut</strong>, <em>pellentesque nisi</em>. Nam blandit et dui et tincidunt. Fusce sodales vulputate sapien ac egestas. Maecenas lorem orci, pellentesque vel sollicitudin id, porttitor non risus. Nulla mi eros, viverra consequat tincidunt quis, facilisis eget massa.&nbsp;</span></p>', 'consectetur-adipiscing-elit', 'published', '2017-09-28 12:20:26', '2017-09-28 08:50:26', '0000-00-00 00:00:00', 'uploads/Think and Grow Rich.jpg', 0),
(3, '3', '', 'Duis elementum metus felis', '<p><span style=\"box-sizing: border-box; font-weight: bold; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">. Proin vitae ante laoreet, iaculis augue quis, tincidunt felis. Morbi ac facilisis mauris, at venenatis urna. Donec viverra, lorem gravida tristique placerat, massa nibh consectetur metus, ac efficitur urna dolor vitae ante. Aliquam nec mollis arcu. Phasellus vel felis lorem. Nulla ut ullamcorper ex. Sed fermentum non tortor id interdum. Sed ut augue ac tellus tristique porta.</span></p>', 'duis-elementum-metus-felis', 'published', '2017-09-28 12:21:17', '2017-09-28 08:51:17', '0000-00-00 00:00:00', 'uploads/The Power of your Subconscious Mind.jpg', 0),
(4, '3', '', 'Praesent vitae ex dapibus', '<h3 style=\"box-sizing: border-box; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: #333333; margin-top: 20px; margin-bottom: 10px; font-size: 24px;\"><span style=\"box-sizing: border-box;\">Mauris non nulla est. Nam blandit diam ut purus efficitur, sit amet ultrices leo sagittis.</span></h3>', 'praesent-vitae-ex-dapibus', 'published', '2017-09-28 12:22:00', '2017-09-28 08:52:00', '0000-00-00 00:00:00', 'uploads/General Knowledge 2018.jpg', 0),
(5, '3', '', 'Nec pellentesque sem auctor ut at', '<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Praesent vitae ex d</span><span style=\"box-sizing: border-box; font-weight: bold; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">apibus, malesuada neque ut</span><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">,&nbsp;</span><em style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">pellentesque nisi</em><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">. Nam blandit et dui et tincidunt. Fusce sodales vulputate sapien ac egestas. Maecenas lorem orci, pellentesque vel sollicitudin id, porttitor non risus. Nulla mi eros, viverra consequat tincidunt quis, facilisis eget massa.&nbsp;</span></p>', 'Nec-pellentesque-sem-auctor-ut-at', 'published', '2017-09-28 13:10:25', '2017-09-28 09:40:44', '0000-00-00 00:00:00', 'uploads/Hit Refresh- The Quest to Rediscover Microsoftâ€™s Soul and Imagine a Better Future for Everyone.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'logo', 'img/site-logo.png'),
(2, 'ad', 'your ad code here'),
(3, 'perpage', '2'),
(4, 'sitename', 'CMS Cyber');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`id`, `catid`, `name`, `description`, `image`) VALUES
(1, 3, 'HTML', 'Hyper Text Markup Language', ''),
(2, 3, 'CSS', '', ''),
(3, 3, 'HTML 5', 'HTML 5', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `active`) VALUES
(1, 'Shams Omacy', 'OmacyS@gmail.com', '26e0eca228b42a520565415246513c0d', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
