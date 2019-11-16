-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2019 at 02:07 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_attila_takacs_biglibrary`
--
CREATE DATABASE IF NOT EXISTS `cr10_attila_takacs_biglibrary` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr10_attila_takacs_biglibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn` int(11) DEFAULT NULL,
  `image` varchar(2200) DEFAULT NULL,
  `author` varchar(128) DEFAULT NULL,
  `title` varchar(55) DEFAULT NULL,
  `publisher` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `image`, `author`, `title`, `publisher`) VALUES
(1, 2147483647, 'https://pictures.abebooks.com/isbn/9781848566781-us.jpg', 'Steven Spilberg', 'Shaun of the Dead', '20th Century'),
(2, 1784742325, 'https://images-eu.ssl-images-amazon.com/images/I/51-4a8iyfNL.jpg', 'Margaret Atwood', 'The Testaments', 'Chatto & Windus; 01 edition (10 Sept. 2019)'),
(3, 1787632199, 'https://images-na.ssl-images-amazon.com/images/I/51-LRhn1gnL._SX323_BO1,204,203,200_.jpg', 'Lee Child', 'Blue Moon', 'Bantam Press (29 Oct. 2019)'),
(4, 241401232, 'https://images-na.ssl-images-amazon.com/images/I/419U%2BXvFRzL._SX323_BO1,204,203,200_.jpg', 'John le Carré', 'Agent Running in the Field', 'Viking (17 Oct. 2019)'),
(5, 8126070, 'https://images-na.ssl-images-amazon.com/images/I/41b1Zp21fPL._SX344_BO1,204,203,200_.jpg', 'Dawn O’Porter', 'So Lucky', 'HarperCollins (31 Oct. 2019)'),
(6, 1473684439, 'https://images-na.ssl-images-amazon.com/images/I/41K3NTp6-rL._SX322_BO1,204,203,200_.jpg', 'John Grisham ', 'The Guardians', 'Hodder & Stoughton; 01 edition (15 Oct. 2019)'),
(7, 1847370292, 'https://images-na.ssl-images-amazon.com/images/I/51FGx8kUv-L._SX391_BO1,204,203,200_.jpg', 'Rhonda Byrne', 'The Secret', 'Simon & Schuster UK (4 Dec. 2006)'),
(8, 571356826, 'https://images-na.ssl-images-amazon.com/images/I/51WVtQhdCDL._SX309_BO1,204,203,200_.jpg', 'André Aciman', 'Find Me', 'Faber & Faber; Main edition (31 Oct. 2019)'),
(9, 1910701459, 'https://images-na.ssl-images-amazon.com/images/I/51KLBnZSVnL._SX336_BO1,204,203,200_.jpg', 'Erin Morgenstern', 'The Starless Sea', 'Harvill Secker (5 Nov. 2019)'),
(10, 1529355397, 'https://images-na.ssl-images-amazon.com/images/I/51as8-%2BRs1L._SX364_BO1,204,203,200_.jpg', 'Stephen King', 'The Institute', 'Hodder & Stoughton; 01 edition (10 Sept. 2019)'),
(11, 1529391539, 'https://images-na.ssl-images-amazon.com/images/I/51FJZS4uSZL._SX324_BO1,204,203,200_.jpg', 'Stephen King', 'If It Bleeds', 'Hodder & Stoughton; 01 edition (5 May 2020)'),
(12, 8297150, 'https://images-na.ssl-images-amazon.com/images/I/41lDMLZiPpL._SX324_BO1,204,203,200_.jpg', 'Lucy Foley ', 'The Hunting Party', 'HarperCollins (31 Oct. 2019)'),
(13, 830131, 'https://images-na.ssl-images-amazon.com/images/I/51%2B5LJfSNcL._SX323_BO1,204,203,200_.jpg', 'C.L. Taylor', 'Sleep', 'Avon (4 April 2019)'),
(14, 1472249402, 'https://images-eu.ssl-images-amazon.com/images/I/51X84aN3tML.jpg', 'K.L. Slater', 'The Visitor', 'Headline (15 Oct. 2019)'),
(15, 1780899203, 'https://images-na.ssl-images-amazon.com/images/I/51nu3OFzqPL._SX326_BO1,204,203,200_.jpg', 'Lisa Jewell', 'The Family Upstairs', 'Century; First Edition, First Printing edition (8 Aug. 2019)'),
(16, 2147483647, 'data:image/jpeg;base64,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', 'Teresa Driscoll', 'I Am Watching You', 'Thomas & Mercer (1 Oct. 2017)'),
(19, 1785769049, 'https://images-na.ssl-images-amazon.com/images/I/41m0qkxUg%2BL._SX323_BO1,204,203,200_.jpg', 'dan brown', 'So Lucky', 'Viking (17 Oct. 2019)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
