-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 04 mars 2021 à 00:47
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `banqueesic`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `idcompte` int(11) NOT NULL,
  `solde` varchar(45) NOT NULL,
  `nucompte` varchar(45) NOT NULL DEFAULT (cast(rand() * 1000000 as signed)),
  `nucarte` varchar(45) NOT NULL DEFAULT (cast(rand() * 1000000000 as signed)),
  `etatcarte` tinyint(1) NOT NULL DEFAULT 0,
  `paiement` varchar(45) NOT NULL DEFAULT 'Visa',
  `Date_expiration` datetime DEFAULT (current_timestamp() + interval 5 year),
  `person_idperson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`idcompte`, `solde`, `nucompte`, `nucarte`, `etatcarte`, `paiement`, `Date_expiration`, `person_idperson`) VALUES
(1, '200', '382648', '379190044', 0, 'Visa', '2026-03-03 17:16:27', 7),
(3, '100', '595207', '23308415', 0, 'Visa', '2026-03-03 17:23:08', 3),
(4, '400', '330921', '584680136', 1, 'Visa', '2026-03-03 17:23:53', 3);

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `idhistorique` int(11) NOT NULL,
  `contenu` varchar(45) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `person_idperson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`idhistorique`, `contenu`, `date`, `person_idperson`) VALUES
(1, 'Update', '2021-03-02 14:17:33', 6),
(2, 'Update', '2021-03-02 16:23:27', 6),
(3, 'Update', '2021-03-02 16:36:21', 5),
(4, 'Update', '2021-03-02 16:47:16', 2),
(5, 'Update', '2021-03-02 16:47:20', 2),
(6, 'Update', '2021-03-02 16:47:22', 2),
(7, 'Update', '2021-03-03 20:43:04', 2),
(8, 'Update', '2021-03-03 21:01:01', 2),
(9, 'INSERTION NOUVAUX CIENT', '2021-03-04 00:21:48', 2),
(10, 'Insertion nouvaux conseiller', '2021-03-04 00:24:01', 1);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `idtype` int(11) NOT NULL,
  `contenu` varchar(45) DEFAULT NULL,
  `date_message` datetime NOT NULL DEFAULT current_timestamp(),
  `person_idperson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`idtype`, `contenu`, `date_message`, `person_idperson`) VALUES
(3, 'ayoub', '2021-03-03 17:34:00', 3),
(4, 'oui et toi', '2021-03-03 18:25:41', 2),
(5, 'apsse 200 euro', '2021-03-03 18:56:59', 2),
(13, 'salut', '2021-03-03 20:28:42', 2),
(14, 'salut', '2021-03-04 00:36:50', 3),
(15, 'salut', '2021-03-04 00:38:37', 2),
(16, 'sssss', '2021-03-04 00:39:03', 2),
(17, 'salut', '2021-03-04 00:43:38', 2);

-- --------------------------------------------------------

--
-- Structure de la table `person`
--

CREATE TABLE `person` (
  `idperson` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT current_timestamp(),
  `login` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(45) DEFAULT 'client',
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `person`
--

INSERT INTO `person` (`idperson`, `nom`, `prenom`, `date_creation`, `login`, `mdp`, `etat`, `type`, `image`) VALUES
(1, 'ismail', 'lamsaouri', '2021-02-28 17:34:02', 'astro', 'astro', 1, 'admin', ''),
(2, 'manon', 'agt', '2021-02-28 17:39:10', 'freya', 'freya', 1, 'conseiller', NULL),
(3, 'Ismail', 'Lam', '2021-02-28 18:01:15', 'smomo', 'smomo', 1, 'client', NULL),
(5, 'Omar', 'Lam', '2021-02-28 21:04:08', 'Ismail', '123', 1, 'conseiller', ''),
(6, 'Agathe', 'Marco', '2021-03-01 16:29:55', 'chica', 'chica', 1, 'client', ''),
(7, 'djamali', 'iron', '2021-03-01 16:31:32', 'red', 'red', 1, 'client', ''),
(8, 'ayoub', 'kederi', '2021-03-02 17:40:34', 'appele', 'appele', 1, 'client', ''),
(9, 'djamali', 'lux', '2021-03-02 17:48:07', 'power', 'power', 1, 'conseiller', ''),
(11, 'leo', 'leo', '2021-03-02 17:59:19', 'fast', 'fast', 1, 'conseiller', ''),
(12, 'Hind', 'Lam', '2021-03-02 18:01:09', 'Hindhind', 'Hindhind', 0, 'conseiller', ''),
(13, 'Jullia', 'julia', '2021-03-02 18:03:37', 'juju', 'juju', 0, 'conseiller', ''),
(14, 'Omar', 'lem', '2021-03-02 18:07:56', 'welvitic', 'welvitic', 0, 'conseiller', ''),
(15, 'oussama', 'oussama', '2021-03-02 18:10:07', 'hxh', 'hxh', 0, 'conseiller', ''),
(16, 'esic', 'esic', '2021-03-03 16:41:19', 'esic', 'esic', 1, 'client', NULL),
(17, 'luffy', 'luffy', '2021-03-03 20:40:25', 'luffy', 'luffy', 1, 'conseiller', NULL),
(19, 'Gon', 'Gon', '2021-03-04 00:20:05', 'Gon', 'Gon', 1, 'conseiller', NULL),
(20, 'DJkhaled', 'DJkhaled', '2021-03-04 00:24:01', 'DJkhaled', 'DJkhaled', 1, 'conseiller', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`idcompte`),
  ADD UNIQUE KEY `nucompte_UNIQUE` (`nucompte`),
  ADD UNIQUE KEY `nucarte_UNIQUE` (`nucarte`),
  ADD KEY `fk_solde_person1_idx` (`person_idperson`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`idhistorique`),
  ADD KEY `fk_historique_person_idx` (`person_idperson`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`idtype`),
  ADD KEY `fk_type_person1_idx` (`person_idperson`);

--
-- Index pour la table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`idperson`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `idcompte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `idhistorique` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `idtype` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `person`
--
ALTER TABLE `person`
  MODIFY `idperson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_solde_person1` FOREIGN KEY (`person_idperson`) REFERENCES `person` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `fk_historique_person` FOREIGN KEY (`person_idperson`) REFERENCES `person` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_type_person1` FOREIGN KEY (`person_idperson`) REFERENCES `person` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
