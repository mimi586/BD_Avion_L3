-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 27 déc. 2024 à 12:04
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `session`
--

-- --------------------------------------------------------

--
-- Structure de la table `flight`
--

CREATE TABLE `flight` (
  `Id_fli` int(11) NOT NULL,
  `Departure_airport` varchar(100) NOT NULL,
  `Arrival_airport` varchar(100) NOT NULL,
  `Departure_time` datetime NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Total_seats` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `flight`
--

INSERT INTO `flight` (`Id_fli`, `Departure_airport`, `Arrival_airport`, `Departure_time`, `Status`, `Total_seats`, `Price`) VALUES
(12, 'Fianarantsoa', 'Antananarivo', '2024-12-27 14:03:09', 'Available', 7, '10000.00');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `Id` int(11) NOT NULL,
  `Airport` varchar(100) NOT NULL,
  `DepartureTime` datetime NOT NULL,
  `PriceOnce` decimal(10,2) NOT NULL,
  `NumberOfSeats` int(11) NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`Id`, `Airport`, `DepartureTime`, `PriceOnce`, `NumberOfSeats`, `TotalPrice`) VALUES
(1, 'Fianarantsoa to Antananarivo', '0000-00-00 00:00:00', '10000.00', 3, '30000.00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Confirm` tinyint(1) NOT NULL DEFAULT 0,
  `Role` varchar(50) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `Address` text DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`Id`, `Username`, `Email`, `Password`, `Confirm`, `Role`, `Image`, `Name`, `FirstName`, `Address`, `Phone`) VALUES
(1, 'Moms', 'heritianajulien45@gmail.com', '$2b$10$oKrXZ24m1lsCSqnA4x/d9ur/mMlbftnq4Ss9.CrjIizz2AKifaEAe', 0, 'admin', 'public\\images\\Image-1735297268422.jpg', 'Heritiana ', 'Julien', 'Cité Anatarandolo', '0344092549');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`Id_fli`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `flight`
--
ALTER TABLE `flight`
  MODIFY `Id_fli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
