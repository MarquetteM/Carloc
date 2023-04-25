-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 24 avr. 2023 à 08:35
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `carloc`
--

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `dateDeb` date NOT NULL,
  `dateFin` date NOT NULL,
  `kmVehiculeDeb` int NOT NULL,
  `kmVehiculeFin` int NOT NULL,
  `idVehicule` int NOT NULL,
  `idClient` int NOT NULL,
  `prix` float NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` tinytext NOT NULL,
  `prenom` tinytext NOT NULL,
  `motDePasse` tinytext NOT NULL,
  `identifiant` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `motDePasse`, `identifiant`) VALUES
(1, 'essai', 'test', '2118c37356b669d52c22510c0287642551fcdc1b9b27517999e040ad56d1ad678cb71496eb4da19832143ae14ef1ceabf1824349bd608176a91f22f7088a5427', 'ident');

-- --------------------------------------------------------

--
-- Structure de la table `vehicules`
--

DROP TABLE IF EXISTS `vehicules`;
CREATE TABLE IF NOT EXISTS `vehicules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modele` tinytext NOT NULL,
  `marque` tinytext NOT NULL,
  `km` int NOT NULL,
  `annee` int NOT NULL,
  `couleur` text NOT NULL,
  `etat` int NOT NULL,
  `prixKm` float NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `image` tinytext NOT NULL,
  `imageListe` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `moteur` tinytext NOT NULL,
  `carburant` text NOT NULL,
  `transmission` text NOT NULL,
  `chevaux` tinytext NOT NULL,
  `couple` tinytext NOT NULL,
  `vitesse` int NOT NULL,
  `dimLong` float NOT NULL,
  `dimLarg` float NOT NULL,
  `dimH` float NOT NULL,
  `poids` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `vehicules`
--

INSERT INTO `vehicules` (`id`, `modele`, `marque`, `km`, `annee`, `couleur`, `etat`, `prixKm`, `disponible`, `image`, `imageListe`, `moteur`, `carburant`, `transmission`, `chevaux`, `couple`, `vitesse`, `dimLong`, `dimLarg`, `dimH`, `poids`) VALUES
(1, 'DB9', 'Aston Martin', 2658, 2020, 'Noir', 2, 0.66, 1, 'car_aston_martin.jpg', 'car_aston_liste.jpg', '6.3L 4-cylindres', 'Essence', 'Automatique', '672', '650', 372, 535.7, 114.9, 152.7, 2221),
(2, 'RS6', 'Audi', 23000, 2016, 'Custom', 9, 0.42, 1, 'car_audi.jpg', 'car_audi_liste.jpg', '4.0 TFSI 8 cylindres Bi-Turbos', 'Essence', 'Automatique', '600', '800', 304, 500, 195, 146, 2150),
(3, 'M8 (F92)', 'BMW', 14523, 2020, 'Marron', 2, 0.49, 0, 'car_bmw.jpg', 'car_bmw_liste.jpg', '4.4i 8 cylindres bi-turbos', 'Essence', 'Automatique', '625', '750', 310, 486, 190, 135, 2085),
(4, '458 Italia', 'Ferrari', 4289, 2018, 'Rouge', 3, 0.96, 0, 'car_ferrari_italia.jpg', 'car_ferrari_liste.jpg', 'V8 4.5 Atmosphérique', 'Essence', 'Mécanique robotisée', '570', '540', 325, 453, 194, 121, 1380),
(5, 'Focus RS', 'Ford', 18963, 2018, 'Bleue', 5, 0.52, 1, 'car_ford.jpg', 'car_ford_liste.jpg', '2.3L 4cyl. inj. directe turbo', 'Essence', 'Manuelle', '350', '470', 266, 436, 186, 147, 1547),
(6, 'A45 AMG', 'Mercedes-benz', 34826, 2018, 'Rouge', 5, 0.22, 1, 'car_mercedes.jpg', 'car_mercedes_liste.jpg', '2.0L 4cyl. inj. directe turbo', 'Esscence', 'Automatique', '381', '475', 250, 437, 178, 142, 1555);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
