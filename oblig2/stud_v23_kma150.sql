-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 05. Mar, 2023 17:47 PM
-- Tjener-versjon: 10.5.18-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stud_v23_kma150`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `ansatte`
--

CREATE TABLE `ansatte` (
  `AnsattNR` int(11) NOT NULL,
  `Fornavn` varchar(45) NOT NULL,
  `Etternavn` varchar(45) NOT NULL,
  `Avdeling` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dataark for tabell `ansatte`
--

INSERT INTO `ansatte` (`AnsattNR`, `Fornavn`, `Etternavn`, `Avdeling`) VALUES
(1, 'Kennet', 'Mathisen', 1),
(3, 'Ulf', 'Ulfsen', 2),
(4, 'Ola', 'Nordmann', 3),
(5, 'Kermit', 'Frog', 4),
(6, 'john', 'doe', 4);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `avdelinger`
--

CREATE TABLE `avdelinger` (
  `AvdelingNR` int(11) NOT NULL,
  `AvdelingsNavn` varchar(45) NOT NULL,
  `AvdelingsLeder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dataark for tabell `avdelinger`
--

INSERT INTO `avdelinger` (`AvdelingNR`, `AvdelingsNavn`, `AvdelingsLeder`) VALUES
(1, 'Administrasjons', 1),
(2, 'Poliklinisk', 1),
(3, 'Barn', 2),
(4, 'Åsgård', 3);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `basismatvarer`
--

CREATE TABLE `basismatvarer` (
  `Matvare` varchar(45) NOT NULL,
  `Edible` int(11) DEFAULT 0,
  `Warter` int(11) DEFAULT 0,
  `kJ` int(11) DEFAULT 0,
  `kcal` int(11) DEFAULT 0,
  `Fat` int(11) DEFAULT 0,
  `Carbs` int(11) DEFAULT 0,
  `Fiber` int(11) DEFAULT 0,
  `Protein` int(11) DEFAULT 0,
  `Alcho` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dataark for tabell `basismatvarer`
--

INSERT INTO `basismatvarer` (`Matvare`, `Edible`, `Warter`, `kJ`, `kcal`, `Fat`, `Carbs`, `Fiber`, `Protein`, `Alcho`) VALUES
('Asparges', 53, 94, 93, 22, 0, 2, 2, 2, 0),
('Bacon', 100, 51, 1402, 339, 32, 0, 0, 14, 0),
('Egg', 88, 76, 620, 149, 11, 0, 0, 13, 0),
('Erter', 100, 83, 267, 64, 1, 7, 5, 4, 0),
('Gulost', 100, 46, 1445, 348, 27, 0, 0, 27, 0),
('Gulrot', 89, 90, 152, 36, 0, 7, 3, 1, 0),
('Helmelk', 100, 89, 255, 61, 4, 4, 0, 3, 0),
('Hvetemel', 100, 14, 1392, 330, 2, 58, 13, 13, 0),
('Hvitløk', 79, 73, 450, 106, 1, 16, 2, 8, 0),
('Kjøttdeig', 100, 68, 814, 195, 14, 0, 0, 18, 0),
('Kremfløte', 100, 58, 1452, 353, 37, 3, 0, 2, 0),
('Kylling', 71, 69, 747, 179, 11, 0, 0, 20, 0),
('Laks', 65, 66, 760, 182, 12, 0, 0, 20, 0),
('Lutefisk', 0, 88, 211, 50, 1, 0, 0, 11, 0),
('Muskat', 100, 6, 2094, 506, 36, 29, 21, 6, 0),
('Parmesan', 100, 28, 1730, 416, 30, 1, 0, 36, 0),
('Pepper', 100, 13, 1159, 277, 3, 39, 25, 10, 9),
('Potet', 82, 78, 306, 72, 0, 15, 2, 2, 0),
('Potetmel', 100, 15, 1431, 337, 0, 84, 0, 0, 0),
('Rødvin', 100, 88, 308, 74, 0, 1, 2, 0, 10),
('Salt', 100, 1, 0, 0, 0, 0, 0, 0, 0),
('Sennep', 100, 63, 662, 158, 6, 19, 2, 6, 0),
('Smør', 100, 18, 3022, 735, 81, 1, 0, 1, 0),
('Spaghetti', 100, 9, 1471, 347, 2, 73, 4, 7, 0),
('Vann', 100, 100, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `basismatvarer_has_måltider`
--

CREATE TABLE `basismatvarer_has_måltider` (
  `basismatvarer_Matvare` varchar(45) NOT NULL,
  `måltider_MåltidNR` int(11) NOT NULL,
  `Mengde` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dataark for tabell `basismatvarer_has_måltider`
--

INSERT INTO `basismatvarer_has_måltider` (`basismatvarer_Matvare`, `måltider_MåltidNR`, `Mengde`) VALUES
('Asparges', 2, 300),
('Bacon', 2, 250),
('Bacon', 4, 400),
('Egg', 2, 4),
('Erter', 3, 500),
('Erter', 4, 400),
('Gulrot', 1, 2),
('Hvetemel', 3, 3),
('Hvitløk', 2, 2),
('Kjøttdeig', 3, 500),
('Kremfløte', 2, 1),
('Laks', 1, 2),
('Lutefisk', 4, 2),
('Muskat', 3, 1),
('Parmesan', 2, 3),
('pepper', 2, 1),
('Pepper', 3, 1),
('Potet', 1, 2),
('Potet', 3, 600),
('Potet', 4, 800),
('Potetmel', 3, 3),
('Salt', 2, 1),
('Salt', 3, 2),
('Salt', 4, 2),
('Sennep', 4, 4),
('Smør', 2, 3),
('Smør', 3, 2),
('Smør', 4, 50),
('Spaghetti', 2, 400),
('Vann', 2, 2),
('Vann', 3, 2);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `måltider`
--

CREATE TABLE `måltider` (
  `MåltidNR` int(11) NOT NULL,
  `MåltidNavn` varchar(45) NOT NULL,
  `Leveringsklokkeslett` time NOT NULL,
  `Pris` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dataark for tabell `måltider`
--

INSERT INTO `måltider` (`MåltidNR`, `MåltidNavn`, `Leveringsklokkeslett`, `Pris`) VALUES
(1, 'Laksefilet', '15:00:00', 100),
(2, 'Spagetti carbonara', '15:00:00', 75),
(3, 'Kjøttkater', '15:00:00', 80),
(4, 'Lutefisk', '15:00:00', 150);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `måltidsordrer`
--

CREATE TABLE `måltidsordrer` (
  `OrderNR` int(11) NOT NULL,
  `Måltid` int(11) NOT NULL,
  `Status` enum('ikke behandlet','under behandling','klar','effektuert') DEFAULT NULL,
  `Mottaker` int(11) NOT NULL,
  `LeveringsDato` date NOT NULL,
  `BestillingsDato` date DEFAULT current_timestamp()
) ;

--
-- Dataark for tabell `måltidsordrer`
--

INSERT INTO `måltidsordrer` (`OrderNR`, `Måltid`, `Status`, `Mottaker`, `LeveringsDato`, `BestillingsDato`) VALUES
(1, 2, 'ikke behandlet', 1, '2023-03-05', '2023-03-03'),
(2, 2, 'ikke behandlet', 2, '2023-03-10', '2023-03-04'),
(3, 2, 'ikke behandlet', 2, '2023-03-10', '2023-03-04'),
(4, 2, 'ikke behandlet', 2, '2023-03-10', '2023-03-04'),
(5, 3, 'ikke behandlet', 2, '2023-03-10', '2023-03-04'),
(6, 3, 'ikke behandlet', 2, '2023-03-10', '2023-03-04'),
(7, 3, 'ikke behandlet', 2, '2023-03-10', '2023-03-04'),
(8, 3, 'ikke behandlet', 2, '2023-03-10', '2023-03-04'),
(9, 3, 'ikke behandlet', 2, '2023-03-10', '2023-03-04'),
(10, 4, 'ikke behandlet', 2, '2023-03-10', '2023-03-04'),
(11, 4, 'ikke behandlet', 2, '2023-03-10', '2023-03-04'),
(12, 1, 'effektuert', 3, '2022-07-02', '2022-07-01'),
(13, 2, 'effektuert', 3, '2022-08-04', '2022-08-03'),
(14, 3, 'effektuert', 4, '2022-09-11', '2022-09-10'),
(15, 4, 'effektuert', 4, '2022-11-11', '2022-11-10'),
(16, 3, 'effektuert', 2, '2023-03-01', '2023-02-27'),
(17, 2, 'effektuert', 3, '2023-03-01', '2023-02-27'),
(18, 1, 'effektuert', 1, '2023-03-01', '2023-02-27'),
(19, 4, 'effektuert', 2, '2023-03-01', '2023-02-27'),
(20, 4, 'effektuert', 4, '2022-11-12', '2022-11-10'),
(21, 2, 'effektuert', 4, '2022-11-12', '2022-11-10'),
(22, 2, 'effektuert', 2, '2023-11-12', '2023-11-10'),
(23, 2, 'effektuert', 2, '2023-11-13', '2023-11-10');

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ansatte`
--
ALTER TABLE `ansatte`
  ADD PRIMARY KEY (`AnsattNR`),
  ADD KEY `fk_ansatte_avdelinger1_idx` (`Avdeling`);

--
-- Indexes for table `avdelinger`
--
ALTER TABLE `avdelinger`
  ADD PRIMARY KEY (`AvdelingNR`),
  ADD KEY `fk_avdelinger_ansatte_idx` (`AvdelingsLeder`);

--
-- Indexes for table `basismatvarer`
--
ALTER TABLE `basismatvarer`
  ADD PRIMARY KEY (`Matvare`);

--
-- Indexes for table `basismatvarer_has_måltider`
--
ALTER TABLE `basismatvarer_has_måltider`
  ADD PRIMARY KEY (`basismatvarer_Matvare`,`måltider_MåltidNR`),
  ADD KEY `fk_basismatvarer_has_måltider_måltider1_idx` (`måltider_MåltidNR`),
  ADD KEY `fk_basismatvarer_has_måltider_basismatvarer1_idx` (`basismatvarer_Matvare`);

--
-- Indexes for table `måltider`
--
ALTER TABLE `måltider`
  ADD PRIMARY KEY (`MåltidNR`);

--
-- Indexes for table `måltidsordrer`
--
ALTER TABLE `måltidsordrer`
  ADD PRIMARY KEY (`OrderNR`),
  ADD KEY `fk_måltidsordrer_måltider1_idx` (`Måltid`),
  ADD KEY `fk_måltidsordrer_avdelinger1_idx` (`Mottaker`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ansatte`
--
ALTER TABLE `ansatte`
  MODIFY `AnsattNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `avdelinger`
--
ALTER TABLE `avdelinger`
  MODIFY `AvdelingNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `måltider`
--
ALTER TABLE `måltider`
  MODIFY `MåltidNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `måltidsordrer`
--
ALTER TABLE `måltidsordrer`
  MODIFY `OrderNR` int(11) NOT NULL AUTO_INCREMENT;

--
-- Begrensninger for dumpede tabeller
--

--
-- Begrensninger for tabell `ansatte`
--
ALTER TABLE `ansatte`
  ADD CONSTRAINT `fk_ansatte_avdelinger1` FOREIGN KEY (`Avdeling`) REFERENCES `avdelinger` (`AvdelingNR`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrensninger for tabell `avdelinger`
--
ALTER TABLE `avdelinger`
  ADD CONSTRAINT `fk_avdelinger_ansatte` FOREIGN KEY (`AvdelingsLeder`) REFERENCES `ansatte` (`AnsattNR`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrensninger for tabell `basismatvarer_has_måltider`
--
ALTER TABLE `basismatvarer_has_måltider`
  ADD CONSTRAINT `fk_basismatvarer_has_måltider_basismatvarer1` FOREIGN KEY (`basismatvarer_Matvare`) REFERENCES `basismatvarer` (`Matvare`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_basismatvarer_has_måltider_måltider1` FOREIGN KEY (`måltider_MåltidNR`) REFERENCES `måltider` (`MåltidNR`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrensninger for tabell `måltidsordrer`
--
ALTER TABLE `måltidsordrer`
  ADD CONSTRAINT `fk_måltidsordrer_avdelinger1` FOREIGN KEY (`Mottaker`) REFERENCES `avdelinger` (`AvdelingNR`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_måltidsordrer_måltider1` FOREIGN KEY (`Måltid`) REFERENCES `måltider` (`MåltidNR`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
