-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 11:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trictroc`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(10) NOT NULL,
  `titre` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `img` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(50) NOT NULL,
  `governerat` varchar(50) NOT NULL,
  `idc` int(50) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `titre`, `date`, `description`, `img`, `email`, `phone`, `governerat`, `idc`, `prix`) VALUES
(38, 'Test', '2022-12-14', 'test', 'robe.jpg', 'isra.zribi@esprit.tn', 12345678, 'Ariana', 2, 1000),
(39, 'Costume', '2022-12-13', 'test', 'custome.jpg', 'sameh.benamor@gmail.tn', 98765432, 'Gafsa', 6, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` int(8) NOT NULL,
  `feedback` text NOT NULL,
  `suggestions` text NOT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `avis`
--

INSERT INTO `avis` (`id`, `name`, `email`, `phone`, `feedback`, `suggestions`, `state`) VALUES
(23, 'isra', 'isra.zribi@esprit.tn', 25019058, 'excellent', 'Test', 'to be reviewed'),
(24, 'isra', 'isra.zribi@esprit.tn', 25019058, 'neutral', 'ppp', 'Reviewed');

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(50) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(2, 'test2'),
(3, 'Sameh'),
(6, 'aicha'),
(8, 'hh'),
(12, 'aichaa');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `commentP` varchar(255) NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rating` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `idu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `echange`
--

CREATE TABLE `echange` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `prix` int(8) NOT NULL,
  `typeE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jeton`
--

CREATE TABLE `jeton` (
  `id` int(11) NOT NULL,
  `idu` int(11) NOT NULL,
  `nbj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jeton`
--

INSERT INTO `jeton` (`id`, `idu`, `nbj`) VALUES
(1, 24, 10),
(2, 25, 21);

-- --------------------------------------------------------

--
-- Table structure for table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `idu` int(11) NOT NULL,
  `Rtype` varchar(255) NOT NULL,
  `reclamation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reclamation`
--

INSERT INTO `reclamation` (`id`, `idu`, `Rtype`, `reclamation`) VALUES
(3, 25, 'article', 'Test'),
(4, 25, 'livraison', 'yy'),
(5, 25, 'livraison', 'fff');

-- --------------------------------------------------------

--
-- Table structure for table `reponse`
--

CREATE TABLE `reponse` (
  `id` int(11) NOT NULL,
  `reponse` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pswd` varchar(50) NOT NULL,
  `phone` varchar(8) NOT NULL,
  `adress` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uname`, `email`, `pswd`, `phone`, `adress`, `image`) VALUES
(25, 'isra', 'isra.zribi@esprit.tn', '123456', '25019058', 'Ariana', 'user.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categorie` (`idc`);

--
-- Indexes for table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `echange`
--
ALTER TABLE `echange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jeton`
--
ALTER TABLE `jeton`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `echange`
--
ALTER TABLE `echange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jeton`
--
ALTER TABLE `jeton`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_categorie` FOREIGN KEY (`idc`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
