-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 24. Jun 2024 um 14:12
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `huhu_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `benutzer`
--

CREATE TABLE `benutzer` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `vorname` varchar(50) NOT NULL,
  `nachname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefon` bigint(15) DEFAULT NULL,
  `profil_foto` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `klasse_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `benutzer`
--

INSERT INTO `benutzer` (`id`, `username`, `vorname`, `nachname`, `email`, `telefon`, `profil_foto`, `bio`, `klasse_id`) VALUES
(1, 'eric.kammann', 'Eric', 'Kammann', 'eric.kammann@web.de', NULL, NULL, NULL, 10),
(2, 'claus.pingen', 'Claus', 'Pingen', 'claus.pingen@gmail.com', NULL, NULL, NULL, 16),
(3, 'joern.krenner', 'Jörn', 'von Krenner', 'joern.krenner@proton.me', NULL, NULL, NULL, 18),
(4, 'nils.elspass', 'Nils', 'Elspaß', 'nils.elspass@proton.me', NULL, NULL, NULL, 12),
(5, 'hartmut.karnebogen', 'Hartmut', 'Karnebogen', 'hartmut.karnebogen@web.de', NULL, NULL, NULL, 13),
(6, 'ines.marstatt', 'Ines', 'Marstatt', 'ines.marstatt@web.de', NULL, NULL, NULL, 4),
(7, 'jannik.hopfer', 'Jannik', 'Hopfer', 'jannik.hopfer@pm.me', NULL, NULL, NULL, 20),
(8, 'kolja.lueck', 'Kolja', 'Lück', 'kolja.lueck@gmx.de', NULL, NULL, NULL, 7),
(9, 'monika.bettin', 'Monika', 'Bettin', 'monika.bettin@outlook.de', NULL, NULL, NULL, 11),
(10, 'wiebke.grunwald', 'Wiebke', 'Grunwald', 'wiebke.grunwald@outlook.de', NULL, NULL, NULL, 9),
(11, 'ruth.mittermaier', 'Ruth', 'Mittermaier', 'ruth.mittermaier@web.de', NULL, NULL, NULL, 10),
(12, 'margit.bittdorf', 'Margrit', 'Bittdorf', 'margit.bittdorf@outlook.de', NULL, NULL, NULL, 6),
(13, 'udo.lan', 'Udo', 'Lan', 'udo.lan@outlook.com', NULL, NULL, NULL, 15),
(14, 'jan.deutz', 'Jan-Hendrik', 'Deutz', 'jan.deutz@proton.me', NULL, NULL, NULL, 6),
(15, 'joerg.ende', 'Jörg', 'Ende', 'joerg.ende@gmail.com', NULL, NULL, NULL, 8),
(16, 'carmen.zuelke', 'Carmen', 'Zühlke', 'carmen.zuelke@proton.me', NULL, NULL, NULL, 8),
(17, 'irma.braune', 'Irma', 'Braune', 'irma.braune@gmail.com', NULL, NULL, NULL, 3),
(18, 'guenter.rosenfeld', 'Günther', 'Rosenfeld', 'guenter.rosenfeld@proton.me', NULL, NULL, NULL, 19),
(19, 'hendrik.kirchner', 'Hendrik', 'Kirchner', 'hendrik.kirchner@gmail.com', NULL, NULL, NULL, 4),
(20, 'silvia.ortsmeyer', 'Silvia', 'Ortmeyer', 'silvia.ortsmeyer@web.de', NULL, NULL, NULL, 6),
(21, 'chantal.wilutzky', 'Chantal', 'Wilutzky', 'chantal.wilutzky@web.de', NULL, NULL, NULL, 8),
(22, 'timo.neuhaus', 'Timo', 'Neuhaus', 'timo.neuhaus@pm.me', NULL, NULL, NULL, 2),
(23, 'leonard.figge', 'Leonard', 'Figge', 'leonard.figge@pm.me', NULL, NULL, NULL, 4),
(24, 'mark.keienburg', 'Mark', 'Keienburg', 'mark.keienburg@pm.me', NULL, NULL, NULL, 7),
(25, 'konstantin.rogotzki', 'Konstantin', 'Rogotzki', 'konstantin.rogotzki@proton.me', NULL, NULL, NULL, 9),
(26, 'frida.rogotzki', 'Frida', 'Rogotzki', 'frida.rogotzki@proton.me', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fach`
--

CREATE TABLE `fach` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `fach`
--

INSERT INTO `fach` (`id`, `name`) VALUES
(3, 'Deutsch'),
(5, 'Englisch'),
(8, 'Geografie'),
(1, 'Geschichte'),
(6, 'Informatik'),
(2, 'Kunst'),
(4, 'Mathe'),
(7, 'Musik'),
(10, 'Physik');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fachlehrer`
--

CREATE TABLE `fachlehrer` (
  `id` int(11) NOT NULL,
  `anrede` enum('Frau','Frau Dr.','Herr','Herr Dr.') DEFAULT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `fachlehrer`
--

INSERT INTO `fachlehrer` (`id`, `anrede`, `name`) VALUES
(1, 'Frau Dr.', 'Söhne'),
(2, 'Frau', 'Kehr'),
(3, 'Herr', 'Eggert'),
(4, 'Herr', 'Hunt'),
(5, 'Herr', 'Zarbock'),
(6, 'Frau Dr.', 'Rudek'),
(7, 'Herr Dr.', 'Melmar'),
(8, 'Herr Dr.', 'Prieß'),
(9, 'Herr', 'Harses'),
(10, 'Frau', 'Kümmerle'),
(11, 'Herr Dr.', 'Kucklick'),
(12, 'Frau', 'Planke'),
(13, 'Frau Dr.', 'Meus'),
(14, 'Frau', 'Matt'),
(15, 'Frau', 'Langnäse'),
(16, 'Herr', 'Barthen'),
(17, 'Herr Dr.', 'Thode'),
(18, 'Frau', 'Dirksen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `klasse`
--

CREATE TABLE `klasse` (
  `id` int(11) NOT NULL,
  `abi_jahr` smallint(6) NOT NULL,
  `name` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `klasse`
--

INSERT INTO `klasse` (`id`, `abi_jahr`, `name`) VALUES
(3, 2025, '1'),
(4, 2025, '2'),
(5, 2025, '3'),
(6, 2025, '4'),
(7, 2025, '5'),
(8, 2025, '6'),
(9, 2026, 'A'),
(10, 2026, 'B'),
(11, 2026, 'L'),
(12, 2027, 'A'),
(13, 2027, 'B'),
(14, 2027, 'L'),
(15, 2028, 'A'),
(16, 2028, 'B'),
(17, 2028, 'L'),
(18, 2029, 'A'),
(19, 2029, 'B'),
(20, 2029, 'L'),
(21, 2030, 'L'),
(22, 2031, 'L');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mentor`
--

CREATE TABLE `mentor` (
  `id` int(11) NOT NULL,
  `benutzer_id` int(11) NOT NULL,
  `fach_id` int(11) NOT NULL,
  `fachlehrer_id` int(11) NOT NULL,
  `jgs_ab` tinyint(4) NOT NULL,
  `jgs_bis` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `mentor`
--

INSERT INTO `mentor` (`id`, `benutzer_id`, `fach_id`, `fachlehrer_id`, `jgs_ab`, `jgs_bis`) VALUES
(1, 6, 3, 1, 7, 11),
(2, 13, 10, 3, 7, 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `schueler`
--

CREATE TABLE `schueler` (
  `id` int(11) NOT NULL,
  `benutzer_id` int(11) NOT NULL,
  `fach_id` int(11) NOT NULL,
  `fachlehrer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `schueler`
--

INSERT INTO `schueler` (`id`, `benutzer_id`, `fach_id`, `fachlehrer_id`) VALUES
(5, 1, 3, 1),
(6, 1, 7, 1),
(7, 2, 3, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `social_beitraege`
--

CREATE TABLE `social_beitraege` (
  `BeitragsID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Titel` varchar(25) NOT NULL,
  `Inhalt` text DEFAULT NULL,
  `Datum` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `social_beitraege`
--

INSERT INTO `social_beitraege` (`BeitragsID`, `UserID`, `Titel`, `Inhalt`, `Datum`) VALUES
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

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `benutzer`
--
ALTER TABLE `benutzer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `fach`
--
ALTER TABLE `fach`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `fachlehrer`
--
ALTER TABLE `fachlehrer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `klasse`
--
ALTER TABLE `klasse`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `schueler`
--
ALTER TABLE `schueler`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `social_beitraege`
--
ALTER TABLE `social_beitraege`
  ADD PRIMARY KEY (`BeitragsID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `benutzer`
--
ALTER TABLE `benutzer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT für Tabelle `fach`
--
ALTER TABLE `fach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `fachlehrer`
--
ALTER TABLE `fachlehrer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT für Tabelle `klasse`
--
ALTER TABLE `klasse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT für Tabelle `mentor`
--
ALTER TABLE `mentor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `schueler`
--
ALTER TABLE `schueler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
