-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 04 avr. 2023 à 11:28
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `carloc`
--

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `dateDeb` date NOT NULL,
  `dateFin` date NOT NULL,
  `kmVehiculeDeb` int(11) NOT NULL,
  `kmVehiculeFin` int(11) NOT NULL,
  `idVehicule` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `prix` float NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` tinytext NOT NULL,
  `prenom` tinytext NOT NULL,
  `motDePasse` tinytext NOT NULL,
  `identifiant` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `motDePasse`, `identifiant`) VALUES
(1, 'essai', 'test', '2118c37356b669d52c22510c0287642551fcdc1b9b27517999e040ad56d1ad678cb71496eb4da19832143ae14ef1ceabf1824349bd608176a91f22f7088a5427', 'ident');

-- --------------------------------------------------------

--
-- Structure de la table `vehicules`
--

CREATE TABLE `vehicules` (
  `id` int(11) NOT NULL,
  `modele` tinytext NOT NULL,
  `marque` tinytext NOT NULL,
  `km` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `couleur` text NOT NULL,
  `etat` int(11) NOT NULL,
  `prixKm` int(11) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `image` tinytext NOT NULL,
  `moteur` tinytext NOT NULL,
  `carburant` text NOT NULL,
  `transmission` text NOT NULL,
  `chevaux` tinytext NOT NULL,
  `couple` tinytext NOT NULL,
  `vitesse` int(11) NOT NULL,
  `dimLong` float NOT NULL,
  `dimLarg` float NOT NULL,
  `dimH` float NOT NULL,
  `poids` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vehicules`
--

INSERT INTO `vehicules` (`id`, `modele`, `marque`, `km`, `annee`, `couleur`, `etat`, `prixKm`, `disponible`, `image`, `moteur`, `carburant`, `transmission`, `chevaux`, `couple`, `vitesse`, `dimLong`, `dimLarg`, `dimH`, `poids`) VALUES
(1, 'ast', 'Aston Martin', 120000, 2020, 'Noir', 2, 12, 1, 'car_aston.jpg', '6.3L 4-cylindres', '', '', '672 ch @ 6,000 rpm', '650 Nm @ 1,700-5,500 rpm', 372, 535.7, 114.9, 152.7, 2221),
(2, 'aud', 'Audi', 23000, 0, '', 1, 234, 1, 'car_audi.jpg', '', '', '', '', '', 0, 0, 0, 0, 0),
(3, 'modeBm', 'bmw', 123456, 0, '', 2, 23, 0, 'car_bmw.jpg', '', '', '', '', '', 0, 0, 0, 0, 0),
(4, 'ferra', 'Ferrari', 456788, 0, '', 3, 3421, 0, 'car_ferrari.jpg', '', '', '', '', '', 0, 0, 0, 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicules`
--
ALTER TABLE `vehicules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `vehicules`
--
ALTER TABLE `vehicules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
