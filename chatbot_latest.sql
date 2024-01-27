-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 27, 2024 at 11:45 AM
-- Server version: 10.4.14-MariaDB-1:10.4.14+maria~focal
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admn`
--

CREATE TABLE `admn` (
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admn`
--

INSERT INTO `admn` (`name`, `password`) VALUES
('Pouspo', 'admin'),
('Trisha', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_hints`
--

CREATE TABLE `chatbot_hints` (
  `id` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `reply` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbot_hints`
--

INSERT INTO `chatbot_hints` (`id`, `question`, `reply`) VALUES
(1, 'Hi', 'Hello'),
(2, 'Hey!', 'Hello.How can I help you?'),
(3, 'What is the admission process of JNU?', 'The admission process typically involves submitting an online application.'),
(4, 'Can you tell me the location of JNU?', '9-10,Chittaranjan Avenue,Dhaka-1100.'),
(5, 'Can you provide me the contact information of JNU?', 'Certainly!.E-mail:info@jnu.ac.bd. Phn: +88-02-9534255'),
(6, 'Bye||See you later||Have a Good Day', 'Sad to see you are going. Have a nice day'),
(7, 'What are the academies of JNU?', ' Faculty of Arts Faculty of Science Faculty of Social Science Faculty of business studies Faculty of Law Faculty of Life And Earth Sciences Institute of Modern Language Institute of Education and Research'),
(8, 'I am fine and you?', 'I am pretty good too'),
(9, 'What is your identity', 'I am a part of Jagannath University and a creation of team \"FourFold\" '),
(10, 'See you later', 'Sad to see you are going. Have a nice day'),
(11, 'Have a Good Day', 'Sad to see you are going. Have a nice day'),
(12, 'whats your name', 'My name is JnURobo'),
(13, 'Can you give me some information about CSE department', 'Yeah sure.CSE department is one of the top departments in JnU.Currently 14th batch is running.Teachers and Academic curriculums are too good.'),
(14, 'What are the top departments in JNU?', 'CSE,Pharmacy and BBA..'),
(15, 'How many students in JNU?', 'Almost 12000'),
(16, 'Is it fully residential?', ' No.But recently, a new hall exclusively for female students was established, named Begum Fajilatunnesa Mujib Hall.'),
(17, 'Is the clubs of JNU are active?', 'Yes.Even they arrange several eye casting program also.'),
(18, 'Who is the vice-chancellor of JNU?', 'Professor Sadeka Halim, PhD.'),
(19, 'Is the university provide transport service to the students?', 'Yes.There are almost 65 buses in Jagannath University which provide transportation service to the students and teachers  in different route.'),
(20, 'Can you provide the website link of JNU?', 'https://jnu.ac.bd/#'),
(21, 'Can you tell me about the environment of  JNU?', 'Certainly! Jagannath University offers a dynamic and stimulating environment that fosters academic excellence, cultural diversity, and personal growth among its students.'),
(22, 'What is your name?', 'My name is JnUBot');

-- --------------------------------------------------------

--
-- Table structure for table `invalid`
--

CREATE TABLE `invalid` (
  `id` int(11) NOT NULL,
  `messages` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invalid`
--

INSERT INTO `invalid` (`id`, `messages`) VALUES
(1, 'dijh'),
(2, 'dijh'),
(3, 'dijh'),
(4, 'sd'),
(5, 'a'),
(6, 'anbasfnsdkghb nlegyfbnyfudkgajhg'),
(7, 'afc'),
(8, 'abra ka debra'),
(9, 'snffksvlkvvf');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `added_on`, `type`) VALUES
(1, 'Hi', '2020-04-22 12:41:04', 'user'),
(2, 'Hello, how are you.', '2020-04-22 12:41:05', 'bot'),
(3, 'what is your name', '2020-04-22 12:41:22', 'user'),
(4, 'My name is JnURobo', '2020-04-22 12:41:22', 'bot'),
(5, 'Where are your from', '2020-04-22 12:41:30', 'user'),
(6, 'I m from Bangladesh', '2020-04-22 12:41:30', 'bot'),
(7, 'Go to hell', '2020-04-22 12:41:41', 'user'),
(8, 'Sorry not be able to understand you', '2020-04-22 12:41:41', 'bot'),
(9, 'bye', '2020-04-22 12:41:46', 'user'),
(10, 'Sad to see you are going. Have a nice day.hello', '2020-04-22 12:41:46', 'bot'),
(12, 'What about canteen?', '2024-01-06 07:20:59', 'user'),
(13, 'What about canteen?', '2024-01-06 07:22:06', 'user'),
(14, 'Not bad', '2024-01-06 07:22:06', 'bot'),
(15, 'Hello', '2024-01-06 07:52:27', 'user'),
(16, 'Hello, how are you.', '2024-01-06 07:52:27', 'bot'),
(17, 'Hello', '2024-01-06 07:57:45', 'user'),
(18, 'Hello, how are you.', '2024-01-06 07:57:45', 'bot'),
(19, 'Hello', '2024-01-06 08:01:16', 'user'),
(20, 'Hello, how are you.', '2024-01-06 08:01:16', 'bot'),
(21, 'Hello', '2024-01-06 08:03:12', 'user'),
(22, 'Hello, how are you.', '2024-01-06 08:03:12', 'bot'),
(23, 'Hi', '2024-01-06 08:03:45', 'user'),
(24, 'Hello, how are you.', '2024-01-06 08:03:45', 'bot'),
(25, 'Hello', '2024-01-06 08:09:19', 'user'),
(26, 'Hello, how are you.', '2024-01-06 08:09:19', 'bot'),
(27, 'Hello', '2024-01-09 10:49:54', 'user'),
(28, 'Hello, how are you.', '2024-01-09 10:49:54', 'bot'),
(29, 'Can you give me some information about CSE department', '2024-01-09 10:50:16', 'user'),
(30, 'Yeah sure.CSE department is one of the top departments in JnU.Currently 14th batch is running.Teachers and Academic curriculums are too good.', '2024-01-09 10:50:16', 'bot'),
(31, 'Hello', '2024-01-10 10:29:42', 'user'),
(32, 'Hello, how are you.', '2024-01-10 10:29:42', 'bot'),
(33, 'Can you give me some information about CSE department', '2024-01-10 10:30:02', 'user'),
(34, 'Yeah sure.CSE department is one of the top departments in JnU.Currently 14th batch is running.Teachers and Academic curriculums are too good.', '2024-01-10 10:30:02', 'bot'),
(35, 'Hello', '2024-01-26 07:41:42', 'user'),
(36, 'Hello, how are you.', '2024-01-26 07:41:42', 'bot'),
(37, 'Hi', '2024-01-26 09:54:00', 'user'),
(38, 'Hello, how are you.', '2024-01-26 09:54:00', 'bot'),
(39, 'What is your identity', '2024-01-26 09:54:22', 'user'),
(40, 'I am a part of Jagannath University and a creation of team \"FourFold\" ', '2024-01-26 09:54:22', 'bot'),
(41, 'Hi', '2024-01-26 10:44:38', 'user'),
(42, 'Hello, how are you.', '2024-01-26 10:44:38', 'bot'),
(43, 'sd', '2024-01-26 10:45:40', 'user'),
(44, 'Sorry not be able to understand you', '2024-01-26 10:45:40', 'bot'),
(45, 'Hi', '2024-01-27 12:15:45', 'user'),
(46, 'Hello', '2024-01-27 12:15:45', 'bot'),
(47, 'Hi', '2024-01-27 12:18:43', 'user'),
(48, 'Hello', '2024-01-27 12:18:43', 'bot'),
(49, 'hi', '2024-01-27 12:50:14', 'user'),
(50, 'Hello', '2024-01-27 12:50:14', 'bot'),
(51, 'Hi', '2024-01-27 12:58:10', 'user'),
(52, 'Hello', '2024-01-27 12:58:10', 'bot'),
(53, 'How many students in JNU?', '2024-01-27 01:09:06', 'user'),
(54, 'Almost 12000', '2024-01-27 01:09:06', 'bot'),
(55, '	Is it fully residential?', '2024-01-27 01:12:00', 'user'),
(56, 'Sorry not be able to understand you', '2024-01-27 01:12:00', 'bot'),
(57, 'Is it fully residential?', '2024-01-27 01:12:22', 'user'),
(58, ' No.But recently, a new hall exclusively for female students was established, named Begum Fajilatunnesa Mujib Hall.', '2024-01-27 01:12:22', 'bot'),
(59, 'Can you provide the website link of JNU?', '2024-01-27 01:13:45', 'user'),
(60, 'https://jnu.ac.bd/#', '2024-01-27 01:13:45', 'bot'),
(61, 'hey', '2024-01-27 12:54:16', 'user'),
(62, 'Sorry not be able to understand you', '2024-01-27 12:54:16', 'bot');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'ansh17', 'rajansh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'aaaaa', 'aa@gmail.com', '74b87337454200d4d33f80c4663dc5e5'),
(3, 'shweta', 'shweta@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'abcd', 'abcd@gmail.com', '4321'),
(7, 'sfjq', 'hk@gmail.com', '0cc175b9c0f1b6a831c399e269772661'),
(8, 'Tasnim', 'p@gmail.com', '1234'),
(9, 'Tarique', 'tarik@gmail.com', '1234'),
(10, 'Moriom', 'ma@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invalid`
--
ALTER TABLE `invalid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
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
-- AUTO_INCREMENT for table `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `invalid`
--
ALTER TABLE `invalid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
