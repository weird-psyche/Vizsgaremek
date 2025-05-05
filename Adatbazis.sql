-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2025 at 04:32 AM
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
-- Database: `cafeum`
--

-- --------------------------------------------------------

--
-- Table structure for table `kontakt`
--

CREATE TABLE `kontakt` (
  `Id` int(11) NOT NULL,
  `TeljesNev` longtext NOT NULL,
  `Email` longtext NOT NULL,
  `Tema` longtext NOT NULL,
  `Uzenet` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kontakt`
--

INSERT INTO `kontakt` (`Id`, `TeljesNev`, `Email`, `Tema`, `Uzenet`) VALUES
(1, 'Fejes Mate', 'fejes@gmail.com', 'Test #1', 'Ha minden igaz, most már használható az oldal teljsen, hiba: kapcsolat küldés után elveszik a vasarloId és a kosár lehetne szebb is'),
(2, 'Bodis Patrik', 'bodisp@gmailc.com', 'Targy?', 'Maga a tökély'),
(3, 'Vizi Áron', 'AronVizi414@gmail.com', 'Fail', 'Ha be vagyok jelentkezve telefonon, nem mukodik a “tovabb a termekeinkre” gomb\n(Safarin)'),
(4, 'Kecske Met', 'kecskes@gmail.com', 'Nagyon jo', 'Marmint az oldal, igazan szenvedelyesen, negedesen finomkodo'),
(5, 'Kolbasz Istvan', 'kolbaszol@gmail.com', 'Szinek', 'Kicsit osszevissza vannak a szinek, azokat alakithatnatok'),
(6, 'ÉnvagyokAz', 'ezazemailem@gmail.com', 'Vélemény', 'Elég fasza az oldal'),

-- --------------------------------------------------------

--
-- Table structure for table `rendelesek`
--

CREATE TABLE `rendelesek` (
  `index` int(11) NOT NULL,
  `termekId` int(11) NOT NULL,
  `vasarloId` int(11) NOT NULL,
  `rendelesszam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rendelesek`
--

INSERT INTO `rendelesek` (`index`, `termekId`, `vasarloId`, `rendelesszam`) VALUES
(1, 5, 1, 1),
(2, 107, 1, 1),
(5, 15, 5, 3),
(6, 17, 5, 3),
(7, 10, 5, 3),
(8, 2, 5, 3),
(9, 9, 5, 3),
(10, 41, 5, 4),
(11, 105, 5, 4),
(12, 106, 5, 4),
(13, 108, 5, 4),
(14, 2, 2, 5),
(15, 24, 2, 6),
(16, 29, 2, 6),
(17, 42, 2, 6),
(18, 105, 4, 7),
(19, 107, 4, 7),
(20, 110, 4, 7),
(21, 112, 4, 7),
(22, 2, 7, 7),
(23, 2, 7, 7),
(24, 2, 7, 7),
(25, 5, 1, 8),
(26, 6, 1, 8),
(27, 5, 1, 8),
(28, 18, 1, 9),
(29, 18, 1, 9),
(30, 18, 1, 9),
(31, 15, 1, 9),
(32, 18, 1, 0),
(33, 18, 1, 0),
(34, 18, 1, 10),
(35, 27, 1, 10),
(36, 3, 4, 11),
(37, 3, 4, 11),
(38, 3, 4, 11),
(39, 111, 1, 12),
(40, 106, 1, 12),
(41, 103, 1, 12),
(42, 51, 1, 12),
(43, 53, 1, 12),
(44, 41, 1, 13),
(45, 42, 1, 13),
(46, 31, 1, 14),
(47, 31, 1, 14),
(48, 5, 12, 15),
(49, 6, 12, 15),
(50, 2, 13, 16),
(51, 6, 13, 16),
(52, 46, 13, 16),
(53, 101, 13, 16),
(54, 106, 13, 16),
(55, 107, 13, 16),
(56, 110, 13, 16),
(57, 111, 13, 16),
(58, 112, 13, 16),
(59, 2, 13, 17),
(60, 3, 13, 17),
(61, 35, 4, 18),
(62, 11, 4, 19),
(63, 27, 4, 19),
(64, 2, 5, 20),
(65, 3, 5, 20),
(66, 2, 1, 21),
(67, 3, 1, 21),
(68, 6, 2, 22),
(69, 3, 2, 22),
(70, 6, 1, 23),
(71, 102, 1, 23),
(72, 6, 1, 24),
(73, 6, 1, 24),
(74, 6, 1, 24),
(75, 6, 1, 24),
(76, 6, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `termek`
--

CREATE TABLE `termek` (
  `termekId` int(11) NOT NULL,
  `termekNev` longtext NOT NULL,
  `termekAr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `termek`
--

INSERT INTO `termek` (`termekId`, `termekNev`, `termekAr`) VALUES
(1, 'Kicsi Espresso', 690),
(2, 'Közepes Espresso', 790),
(3, 'Nagy Espresso', 890),
(4, 'Kicsi Espresso Macchiato', 750),
(5, 'Közepes Espresso Macchiato', 850),
(6, 'Nagy Espresso Macchiato', 950),
(7, 'Kicsi Espresso Con Panna', 750),
(8, 'Közepes Espresso Con Panna', 850),
(9, 'Nagy Espresso Con Panna', 950),
(10, 'Kicsi Cappuccino', 1190),
(11, 'Közepes Cappuccino', 1290),
(12, 'Nagy Cappuccino', 1390),
(13, 'Kicsi Freddo Cappuccino', 1290),
(14, 'Közepes Freddo Cappuccino', 1390),
(15, 'Nagy Freddo Cappuccino', 1490),
(16, 'Kicsi Karamellás Cappuccino', 1390),
(17, 'Közepes Karamellás Cappuccino', 1490),
(18, 'Nagy Karamellás Cappuccino', 1590),
(19, 'Kicsi Caffé Americano', 1050),
(20, 'Közepes Caffé Americano', 1150),
(21, 'Nagy Caffé Americano', 1250),
(22, 'Kicsi Caffé Americano on Ice', 1390),
(23, 'Közepes Caffé Americano on Ice', 1490),
(24, 'Nagy Caffé Americano on Ice', 1590),
(25, 'Kicsi Vanilliás Caffé Americano', 1490),
(26, 'Közepes Vanilliás Caffé Americano', 1590),
(27, 'Nagy Vanilliás Caffé Americano', 1690),
(28, 'Kicsi Caffé Latte', 1250),
(29, 'Közepes Caffé Latte', 1350),
(30, 'Nagy Caffé Latte', 1450),
(31, 'Kicsi Macadam Latte', 1290),
(32, 'Közepes Macadam Latte', 1390),
(33, 'Nagy Macadam Latte', 1490),
(34, 'Kicsi Pistachio Latte', 1290),
(35, 'Közepes Pistachio Latte', 1390),
(36, 'Nagy Pistachio Latte', 1490),
(37, 'Kicsi Matcha Latte', 1290),
(38, 'Közepes Matcha Latte', 1390),
(39, 'Nagy Matcha Latte', 1490),
(40, 'Kicsi Matcha Latte on Ice', 1390),
(41, 'Közepes Matcha Latte on Ice', 1490),
(42, 'Nagy Matcha Latte on Ice', 1590),
(43, 'Kicsi Vanilliás Matcha', 1490),
(44, 'Közepes Vanilliás Matcha', 1590),
(45, 'Nagy Vanilliás Matcha', 1690),
(46, 'Kicsi Flat White', 1290),
(47, 'Közepes Flat White', 1390),
(48, 'Nagy Flat White', 1490),
(49, 'Kicsi Forró Csokoládé', 1390),
(50, 'Közepes Forró Csokoládé', 1490),
(51, 'Nagy Forró Csokoládé', 1590),
(52, 'Kicsi Chai Latte Tea', 1290),
(53, 'Közepes Chai Latte Tea', 1390),
(54, 'Nagy Chai Latte Tea', 1490),
(101, 'Brownie', 450),
(102, 'Dupla csokis Brownie', 550),
(103, 'Cherry Brownie', 550),
(104, 'Sonkás Bagel', 2200),
(105, 'Erdélyi padlizsánkrémes Bagel', 2200),
(106, 'Csirkés majonézes Bagel', 2200),
(107, 'Almás Pite', 990),
(108, 'Meggyes Pite', 990),
(109, 'Vegán szilvás Pite', 790),
(110, 'Epres Sajttorta', 1450),
(111, 'New York Sajttorta', 1550),
(112, 'Almás Sajttorta', 1450),
(113, 'Croissant lekvárral, vajjal', 780),
(114, 'Mogyorókrémes Croissant', 880),
(115, 'Sajtos, sonkás Croissant', 880);

-- --------------------------------------------------------

--
-- Table structure for table `vasarlok`
--

CREATE TABLE `vasarlok` (
  `vasarloId` int(11) NOT NULL,
  `vasarloNev` longtext NOT NULL,
  `vasarloMail` longtext NOT NULL,
  `vasarloJelszo` longtext NOT NULL,
  `vasarloCim` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vasarlok`
--

INSERT INTO `vasarlok` (`vasarloId`, `vasarloNev`, `vasarloMail`, `vasarloJelszo`, `vasarloCim`) VALUES
(1, 'Fejes Mate', 'fejes@gmail.com', 'crazyjelszo', 'Budapest, Forreal ut, 7'),
(2, 'Jakab Pál', 'jakab.pal@gmail.com', '12345', '8100.Várpalota Bakonyi u. 12'),
(4, 'rakos david', 'szex@gmail.com', '123', 'wallstreet 3'),
(5, 'asd asd1', 'gtx1660@gmail.com', '1234', 'heble 3'),
(6, 'Bódis Patrik', 'patrikbodis523@gmail.com', 'Matekavezo', 'Varpalota fehérvári ut 8 2/10'),
(7, 'Владимир  Путин', 'szerivan@gmail.com', 'Szerivan', 'Budapest '),
(8, 'Merse Gabor', 'gabormerse@gmail.com', 'hablaty', 'Csokonai utca 39'),
(9, 'Vizi Áron', 'sziamate@gmail.com', 'quccan-9dusqu-qYqqag', 'Nunu'),
(10, 'Igen Nem', 'tung', 'tung', 'Tungtungsahur'),
(12, 'Kecske Met', 'kecskes@gmail.com', 'halao', 'Budapest, Nagyon Vadon, 89'),
(13, 'Enyem Én vagyok', 'ezazenemailem@gmail.com', 'EzEgyBiztonsagosJelszoAmitMégÉnIsElFogokFelejteni123', 'Kell ez?'),
(14, 'Test Suli', 'sulis@gmail.com', 'asd', 'Nem'),
(15, 'Bmo Bmo', 'bmo@gmail.com', 'asd', 'Rohadt, dog 11'),
(16, 'Bíró Patrik Tivadar', 'asd@gmail.com', '2003_2025', 'Nyíregyháza');

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20250407160414_CimzesTorles', '6.0.33'),
('20250407160601_CimzesTorlesStuff', '6.0.33'),
('20250410145924_Contact', '6.0.33'),
('20250410160717_Contact2', '6.0.33'),
('20250414132535_PanasonicStuff', '6.0.33'),
('20250417145038_Csutortoki_torekves', '6.0.33'),
('20250418082726_Revert_The_Thingies', '6.0.33'),
('20250418083035_NowItShouldWork', '6.0.33'),
('20250418120020_Idontevenknowanymore', '6.0.33'),
('20250419142426_csittcsatt', '6.0.33'),
('20250420100837_Update-From-Pest', '6.0.33'),
('20250425165530_Laptop-server', '6.0.33'),
('20250502071313_May2', '6.0.33'),
('20250505023042_MennyisegTorles', '6.0.33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD PRIMARY KEY (`index`),
  ADD KEY `IX_rendelesek_termekId` (`termekId`),
  ADD KEY `IX_rendelesek_vasarloId` (`vasarloId`);

--
-- Indexes for table `termek`
--
ALTER TABLE `termek`
  ADD PRIMARY KEY (`termekId`);

--
-- Indexes for table `vasarlok`
--
ALTER TABLE `vasarlok`
  ADD PRIMARY KEY (`vasarloId`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rendelesek`
--
ALTER TABLE `rendelesek`
  MODIFY `index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `termek`
--
ALTER TABLE `termek`
  MODIFY `termekId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `vasarlok`
--
ALTER TABLE `vasarlok`
  MODIFY `vasarloId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD CONSTRAINT `FK_rendelesek_termek_termekId` FOREIGN KEY (`termekId`) REFERENCES `termek` (`termekId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_rendelesek_vasarlok_vasarloId` FOREIGN KEY (`vasarloId`) REFERENCES `vasarlok` (`vasarloId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
