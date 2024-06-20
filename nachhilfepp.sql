-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 10:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nachhilfepp`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `simpleproc` ()   BEGIN
  SELECT * FROM user;
END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `add_func2` (`a` INT, `b` INT) RETURNS INT(11)  BEGIN
    RETURN a + b;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `add_func3` (`a` INT, `b` INT) RETURNS INT(11)  BEGIN
    RETURN a + b;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `beitraege`
--

CREATE TABLE `beitraege` (
  `BeitragsID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Titel` varchar(25) NOT NULL,
  `Inhalt` text DEFAULT NULL,
  `Datum` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beitraege`
--

INSERT INTO `beitraege` (`BeitragsID`, `UserID`, `Titel`, `Inhalt`, `Datum`) VALUES
(1, 0, 'Cooler Beitrag', 'Inhalt620', '2024-06-06'),
(2, 0, 'Toller Beitrag', 'Inhalt367', '2024-06-06'),
(3, 0, 'Toller Beitrag0.140097376', 'Inhalt974', '2024-06-06'),
(4, 0, 'Int Beitrag7499', 'Inhalt773', '2024-06-06'),
(5, 1, 'Beitrag', 'Inhalt940', '2024-06-07'),
(6, 1, 'Beitrag2', 'Inhalt383', '2024-06-07'),
(7, 1, 'Beitrag3', 'Inhalt95', '2024-06-07'),
(8, 1, 'Beitrag4', 'Inhalt325', '2024-06-07'),
(9, 1, 'Beitrag4', 'Inhalt343', '2024-06-07'),
(10, 1, 'Beitrag4', 'Inhalt738', '2024-06-07'),
(11, 1, 'Beitrag4', 'Inhalt660', '2024-06-07'),
(12, 2, 'Beitrag5', 'Inhalt90', '2024-06-07'),
(13, 4, 'Beitrag6', 'Inhalt471', '2024-06-07'),
(14, 2, 'Beitrag5', 'Inhalt86', '2024-06-07'),
(15, 4, 'Beitrag6', 'Inhalt16', '2024-06-07'),
(16, 2, 'Beitrag5', 'Inhalt824', '2024-06-07'),
(17, 4, 'Beitrag6', 'Inhalt70', '2024-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `EventID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Title` varchar(256) DEFAULT NULL,
  `Beschreibung` varchar(256) DEFAULT NULL,
  `Datum` date NOT NULL,
  `Zeit` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kommentare`
--

CREATE TABLE `kommentare` (
  `KommentarID` int(13) NOT NULL,
  `BeitragsID` int(12) NOT NULL,
  `userID` int(11) NOT NULL,
  `Titel` varchar(256) NOT NULL,
  `Inhalt` text NOT NULL,
  `Datum2` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `LikeID` int(11) NOT NULL,
  `BeitragsID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Datum` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t1`
--

CREATE TABLE `t1` (
  `c1` int(11) DEFAULT NULL,
  `c2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t1`
--

INSERT INTO `t1` (`c1`, `c2`) VALUES
(11, 10),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(256) NOT NULL,
  `Beschreibung` text DEFAULT NULL,
  `Lieblingsfach` varchar(256) DEFAULT NULL,
  `Datum` timestamp NOT NULL DEFAULT current_timestamp(),
  `RollenID` int(100) DEFAULT NULL,
  `Passwort` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `UserName`, `Beschreibung`, `Lieblingsfach`, `Datum`, `RollenID`, `Passwort`) VALUES
(1, 'Perfekte Pippa', 'Ich find Datenbanken megageil!', NULL, '2024-05-22 22:00:00', 9, 'fe6fa98138ffab6339e4adeee157538c'),
(2, 'Perfekte Pippa', 'Ich find Datenbanken megageil!', NULL, '2024-05-22 22:00:00', 9, 'fe6fa98138ffab6339e4adeee157538c'),
(3, 'PerfektePippa3077', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:43:43', NULL, 'Password3919'),
(4, 'PerfektePippa7606', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:36', NULL, 'Password4961'),
(5, 'PerfektePippa5790', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password5664'),
(6, 'PerfektePippa949', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password7753'),
(7, 'PerfektePippa5921', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password6345'),
(8, 'PerfektePippa3964', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password785'),
(9, 'PerfektePippa2032', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password7808'),
(10, 'PerfektePippa2942', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password1287'),
(11, 'PerfektePippa7608', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password4181'),
(12, 'PerfektePippa8082', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password7866'),
(13, 'PerfektePippa5084', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password1824'),
(14, 'PerfektePippa3866', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password3861'),
(15, 'PerfektePippa7708', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:45:45', NULL, 'Password6956'),
(16, 'PerfektePippa6984', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:18', NULL, 'Password2782'),
(17, 'PerfektePippa4424', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password5832'),
(18, 'PerfektePippa5887', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password1940'),
(19, 'PerfektePippa2039', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password4375'),
(20, 'PerfektePippa5759', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password5670'),
(21, 'PerfektePippa1076', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password8369'),
(22, 'PerfektePippa8617', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password7977'),
(23, 'PerfektePippa4037', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password6255'),
(24, 'PerfektePippa9163', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password7053'),
(25, 'PerfektePippa7775', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password7715'),
(26, 'PerfektePippa5251', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password3111'),
(27, 'PerfektePippa9801', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password9675'),
(28, 'PerfektePippa8973', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password5839'),
(29, 'PerfektePippa2275', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password3859'),
(30, 'PerfektePippa2473', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password788'),
(31, 'PerfektePippa6519', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password233'),
(32, 'PerfektePippa1607', 'Ich find Datenbanken megageil!', NULL, '2024-06-06 08:46:52', NULL, 'Password7338'),
(66, 'Frolockender Filip9767', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:00', NULL, ''),
(67, 'Frolockender Filip6787', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(68, 'Frolockender Filip886', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(69, 'Frolockender Filip4071', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(70, 'Frolockender Filip7696', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(71, 'Frolockender Filip6269', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(72, 'Frolockender Filip8256', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(73, 'Frolockender Filip2475', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(74, 'Frolockender Filip7608', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(75, 'Frolockender Filip615', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(76, 'Frolockender Filip250', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(77, 'Frolockender Filip9405', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(78, 'Frolockender Filip6277', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(79, 'Frolockender Filip3171', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(80, 'Frolockender Filip7024', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(81, 'Frolockender Filip5608', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(82, 'Frolockender Filip6967', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(83, 'Frolockender Filip8011', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(84, 'Frolockender Filip9155', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(85, 'Frolockender Filip1741', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(86, 'Frolockender Filip1241', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(87, 'Frolockender Filip984', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(88, 'Frolockender Filip1198', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(89, 'Frolockender Filip3039', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(90, 'Frolockender Filip1601', 'C++ ist auch OK!', NULL, '2024-06-07 06:47:31', NULL, ''),
(91, 'Allwissender Alex947', 'C ist Kuhl!', NULL, '2024-06-07 06:49:06', NULL, ''),
(92, 'Allwissender Alex890', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(93, 'Allwissender Alex4605', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(94, 'Allwissender Alex354', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(95, 'Allwissender Alex7954', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(96, 'Allwissender Alex8709', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(97, 'Allwissender Alex9683', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(98, 'Allwissender Alex2288', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(99, 'Allwissender Alex2392', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(100, 'Allwissender Alex5097', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(101, 'Allwissender Alex8309', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(102, 'Allwissender Alex6255', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(103, 'Allwissender Alex6348', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(104, 'Allwissender Alex2976', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(105, 'Allwissender Alex5836', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(106, 'Allwissender Alex255', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(107, 'Allwissender Alex3764', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(108, 'Allwissender Alex8058', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(109, 'Allwissender Alex8997', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(110, 'Allwissender Alex813', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(111, 'Allwissender Alex7074', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(112, 'Allwissender Alex2930', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(113, 'Allwissender Alex3427', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(114, 'Allwissender Alex8349', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(115, 'Allwissender Alex1461', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(116, 'Allwissender Alex2262', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(117, 'Allwissender Alex6926', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(118, 'Allwissender Alex7845', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(119, 'Allwissender Alex8446', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(120, 'Allwissender Alex8696', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(121, 'Allwissender Alex8141', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(122, 'Allwissender Alex4618', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, ''),
(123, 'Allwissender Alex8666', 'C ist Kuhl!', NULL, '2024-06-07 06:49:24', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beitraege`
--
ALTER TABLE `beitraege`
  ADD PRIMARY KEY (`BeitragsID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`EventID`);

--
-- Indexes for table `kommentare`
--
ALTER TABLE `kommentare`
  ADD PRIMARY KEY (`KommentarID`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`LikeID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `EventID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kommentare`
--
ALTER TABLE `kommentare`
  MODIFY `KommentarID` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `LikeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
