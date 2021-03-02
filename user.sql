-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2021 at 08:11 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `BirthDate` date NOT NULL,
  `Address` varchar(250) NOT NULL,
  `City` varchar(40) NOT NULL,
  `ZipCode` char(5) NOT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Phone` char(10) NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `LastLoginTimestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `FirstName`, `LastName`, `Email`, `Password`, `BirthDate`, `Address`, `City`, `ZipCode`, `Country`, `Phone`, `CreationTimestamp`, `LastLoginTimestamp`) VALUES
(13, 'Lany', 'Drak', 'lanydrak@gmail.com', '$2y$11$da49ee0166983095e516dOBi2NgIUK/LtPMI7nJz6grrrX458Ak4i', '1980-09-18', '4 rue Robert Aylé', 'Asnières-sur-Seine', '92600', 'France', '0612562798', '2016-03-04 10:54:16', NULL),
(14, 'Yann', 'Amarre', 'yanamarre@laposte.fr', '$2y$11$cafed1e6068a72ed41ebbu70q8kDo3bwl1UlLjfhLRLmYeMtWn3Gm', '1985-06-12', '18 rue Du Ralbolle', 'Nice', '06000', 'France', '0644328599', '2016-03-08 14:50:01', NULL),
(15, 'Jean', '', 'jean@yahoo.fr', '$2y$11$2f7b7170d65112f5957e8ez7CDymXyJ6gF4Mj9eRO.DBqeDW4wzey', '0000-00-00', '', '', '', '', '', '2016-03-08 15:07:47', NULL),
(16, 'Vincent', 'Tim', '20cent@caramail.com', '$2y$11$244ed51efc8ad70ca1e54O99tttnqTySf.cWMNRJZr4zJue933dCW', '2016-03-26', '15 rue Victor Hugo', 'Poitiers', '86000', 'France', '0645847710', '2016-03-10 11:45:10', NULL),
(17, 'Marie-Odile2', 'Duchemin', 'mo@coucou', '$2y$11$441546026f24de3bbbd01eJ4RaWveSpe9K7GsylqhKUwjch80oaY.', '1995-06-16', 'btrsbtrzesgbtersbvtersv', 'vfreqzfvrevre', 'AAAAA', 'cfrsqezvfreqgresq', '125123', '2016-03-10 12:05:00', NULL),
(18, 'Michel', 'Moustache', 'michel.moustache@csvs', '$2y$11$b3e71948269136c994facew9ccZNQcpiWWYaZMRm8SzWrHYru//EO', '1966-08-24', 'vfqdsvreqsvrsevres', 'vresvresvres', 'AAAAA', 'vfdsvrfqsevrfqse', '100100', '2016-03-10 12:07:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
