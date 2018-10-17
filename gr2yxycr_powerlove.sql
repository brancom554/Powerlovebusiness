-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2018 at 07:39 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gr2yxycr_powerlove`
--

-- --------------------------------------------------------

--
-- Table structure for table `boncommande`
--

CREATE TABLE `boncommande` (
  `idBon` varchar(200) NOT NULL,
  `total` int(5) NOT NULL,
  `listeBoutique` varchar(250) DEFAULT NULL,
  `dateCommande` date NOT NULL,
  `statut` varchar(25) DEFAULT NULL,
  `idClient` int(5) NOT NULL,
  `vendeur` varchar(200) NOT NULL DEFAULT 'PROPRIETAIRE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `boncommande`
--

INSERT INTO `boncommande` (`idBon`, `total`, `listeBoutique`, `dateCommande`, `statut`, `idClient`, `vendeur`) VALUES
('BC1535', 15000, '1', '2018-10-04', '1', 97691879, 'PROPRIETAIRE'),
('BC18535', 6500, '4', '2018-10-04', '1', 97691879, 'PROPRIETAIRE'),
('BC55749', 4500, '4', '2018-10-05', '0', 61616161, '123456'),
('BC50222', 4000, '4', '2018-10-06', '0', 97691879, '123456'),
('BC11077', 12000, '1', '2018-10-06', '0', 98989838, '95114388'),
('BC10638', 0, NULL, '2018-10-13', '1', 94555582, 'PROPRIETAIRE'),
('BC22506', 0, NULL, '2018-10-13', '1', 94555582, 'PROPRIETAIRE'),
('BC3002', 100000, '5', '2018-10-13', '1', 94555582, 'PROPRIETAIRE'),
('BC26651', 100000, '5', '2018-10-13', '1', 97261300, 'PROPRIETAIRE'),
('BC50597', 100000, '5', '2018-10-13', '1', 97454367, 'PROPRIETAIRE'),
('BC23550', 100000, '5', '2018-10-13', '0', 97454367, '97454367'),
('BC13187', 100000, '5', '2018-10-13', '1', 97261300, 'PROPRIETAIRE'),
('BC33716', 100000, '5', '2018-10-13', '1', 97261300, 'PROPRIETAIRE'),
('BC38481', 100000, '5', '2018-10-13', '1', 97261300, 'PROPRIETAIRE'),
('BC21623', 2000, '4', '2018-10-13', '1', 98989838, 'PROPRIETAIRE'),
('BC12542', 2000, '4', '2018-10-13', '1', 98989838, 'PROPRIETAIRE');

-- --------------------------------------------------------

--
-- Table structure for table `boutique`
--

CREATE TABLE `boutique` (
  `idBoutique` int(5) NOT NULL,
  `nomBoutique` text NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `adresse` varchar(200) NOT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `ville` varchar(200) DEFAULT NULL,
  `quartier` varchar(200) NOT NULL,
  `telephone` varchar(200) NOT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `boutique`
--

INSERT INTO `boutique` (`idBoutique`, `nomBoutique`, `image`, `adresse`, `longitude`, `latitude`, `ville`, `quartier`, `telephone`, `description`) VALUES
(1, 'IMPRIMERIE INO', 'images (1).jpg', 'COTONOU', NULL, NULL, 'cotonou', 'Mènonti', '6543', 'IMPRIMERIE'),
(2, 'CMLK', '', '', NULL, NULL, '', '', '123456', ''),
(3, 'IMPRIMERIE INO', 'images (1).jpg', 'COTONOU', NULL, NULL, 'cotonou', 'Mènonti', '6543', 'IMPRIMERIE'),
(4, 'CMLK TABO', 'images.jpg', 'COTONOU', NULL, NULL, 'cotonou', 'Mènonti', '97448412', 'CMLK'),
(5, 'CadoShop', '', 'zogbo', NULL, NULL, 'Cotonou', 'zogbo', '97261300', 'commerce general');

-- --------------------------------------------------------

--
-- Table structure for table `detailboutique`
--

CREATE TABLE `detailboutique` (
  `idBoutique` int(3) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `phoneNumber` int(10) NOT NULL,
  `passe` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detailboutique`
--

INSERT INTO `detailboutique` (`idBoutique`, `firstname`, `lastname`, `phoneNumber`, `passe`) VALUES
(1, 'MEHOBA ', 'Innocent', 6543, '123'),
(2, 'tabo', 'Isaac', 123456, ''),
(3, 'MEHOBA ', 'Innocent', 6543, '123'),
(4, 'tabo', 'Isaac', 97448412, '123'),
(5, 'Z.', 'Cadnel', 97261300, 'azerty');

-- --------------------------------------------------------

--
-- Table structure for table `detailcommande`
--

CREATE TABLE `detailcommande` (
  `id` int(5) NOT NULL,
  `idProduit` int(5) DEFAULT NULL,
  `quantite` int(5) DEFAULT NULL,
  `idCommande` varchar(200) NOT NULL,
  `dateCommande` date NOT NULL,
  `statut` int(3) NOT NULL,
  `idBoutique` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detailcommande`
--

INSERT INTO `detailcommande` (`id`, `idProduit`, `quantite`, `idCommande`, `dateCommande`, `statut`, `idBoutique`) VALUES
(1, 1, 1, 'BC1535', '2018-10-04', 1, 1),
(2, 2, 1, 'BC1535', '2018-10-04', 1, 1),
(3, 3, 1, 'BC1535', '2018-10-04', 1, 1),
(4, NULL, NULL, 'BC1535', '2018-10-04', 1, NULL),
(5, 5, 1, 'BC18535', '2018-10-04', 1, 4),
(6, 6, 1, 'BC18535', '2018-10-04', 1, 4),
(7, 7, 1, 'BC18535', '2018-10-04', 1, 4),
(8, NULL, NULL, 'BC18535', '2018-10-04', 1, NULL),
(9, 6, 1, 'BC55749', '2018-10-05', 0, 4),
(10, 5, 1, 'BC55749', '2018-10-05', 0, 4),
(11, NULL, NULL, 'BC55749', '2018-10-05', 1, NULL),
(12, 7, 1, 'BC50222', '2018-10-06', 0, 4),
(13, 5, 1, 'BC50222', '2018-10-06', 0, 4),
(14, NULL, NULL, 'BC50222', '2018-10-06', 1, NULL),
(15, 1, 1, 'BC11077', '2018-10-06', 0, 1),
(16, 3, 1, 'BC11077', '2018-10-06', 0, 1),
(17, 4, 1, 'BC11077', '2018-10-06', 0, 1),
(18, NULL, NULL, 'BC11077', '2018-10-06', 1, NULL),
(19, NULL, NULL, 'BC10638', '2018-10-13', 1, NULL),
(20, NULL, NULL, 'BC22506', '2018-10-13', 1, NULL),
(21, 8, 1, 'BC3002', '2018-10-13', 1, 5),
(22, NULL, NULL, 'BC3002', '2018-10-13', 1, NULL),
(23, 8, 1, 'BC26651', '2018-10-13', 1, 5),
(24, NULL, NULL, 'BC26651', '2018-10-13', 1, NULL),
(25, 8, 1, 'BC50597', '2018-10-13', 1, 5),
(26, NULL, NULL, 'BC50597', '2018-10-13', 1, NULL),
(27, 8, 1, 'BC23550', '2018-10-13', 0, 5),
(28, NULL, NULL, 'BC23550', '2018-10-13', 1, NULL),
(29, 8, 1, 'BC13187', '2018-10-13', 1, 5),
(30, NULL, NULL, 'BC13187', '2018-10-13', 1, NULL),
(31, 8, 1, 'BC33716', '2018-10-13', 1, 5),
(32, NULL, NULL, 'BC33716', '2018-10-13', 1, NULL),
(33, 8, 1, 'BC38481', '2018-10-13', 1, 5),
(34, NULL, NULL, 'BC38481', '2018-10-13', 1, NULL),
(35, 5, 1, 'BC21623', '2018-10-13', 1, 4),
(36, NULL, NULL, 'BC21623', '2018-10-13', 1, NULL),
(37, 5, 1, 'BC12542', '2018-10-13', 1, 4),
(38, NULL, NULL, 'BC12542', '2018-10-13', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gainmlm`
--

CREATE TABLE `gainmlm` (
  `id` int(5) NOT NULL,
  `gain` int(10) DEFAULT NULL,
  `idCommande` varchar(100) NOT NULL,
  `idBeneficiaire` varchar(50) DEFAULT NULL,
  `dateEnregistrement` date DEFAULT NULL,
  `statut` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gainmlm`
--

INSERT INTO `gainmlm` (`id`, `gain`, `idCommande`, `idBeneficiaire`, `dateEnregistrement`, `statut`) VALUES
(1, 300, 'BC1535', '1', '2018-10-04', 1),
(2, 300, 'BC1535', '1', '2018-10-04', 1),
(3, 180, 'BC1535', '1', '2018-10-04', 1),
(4, 0, 'BC1535', NULL, '2018-10-04', 1),
(5, 65, 'BC1535', '97691879', '2018-10-04', 1),
(6, 1235, 'BC1535', '1', '2018-10-04', 1),
(7, 0, 'BC1535', NULL, '2018-10-04', 0),
(8, 0, 'BC1535', NULL, '2018-10-04', 0),
(9, 0, 'BC18535', '4', '2018-10-04', 1),
(10, 0, 'BC18535', '4', '2018-10-04', 1),
(11, 0, 'BC18535', '4', '2018-10-04', 1),
(12, 0, 'BC18535', NULL, '2018-10-04', 1),
(13, 45, 'BC18535', '97691879', '2018-10-04', 1),
(14, 855, 'BC18535', '1', '2018-10-04', 1),
(15, 0, 'BC1535', NULL, '2018-10-04', 0),
(16, 0, 'BC55749', '4', '2018-10-05', 0),
(17, 0, 'BC55749', '4', '2018-10-05', 0),
(18, 0, 'BC55749', NULL, '2018-10-05', 0),
(19, 30, 'BC55749', '61616161', '2018-10-05', 0),
(20, 570, 'BC55749', '1', '2018-10-05', 0),
(21, 0, 'BC1535', NULL, '2018-10-06', 0),
(22, 0, 'BC50222', '4', '2018-10-06', 0),
(23, 0, 'BC50222', '4', '2018-10-06', 0),
(24, 0, 'BC50222', NULL, '2018-10-06', 0),
(25, 30, 'BC50222', '97691879', '2018-10-06', 0),
(26, 570, 'BC50222', '1', '2018-10-06', 0),
(27, 0, 'BC50222', NULL, '2018-10-06', 0),
(28, 0, 'BC50222', NULL, '2018-10-06', 0),
(29, 0, 'BC50222', NULL, '2018-10-06', 0),
(30, 0, 'BC50222', NULL, '2018-10-06', 0),
(31, 300, 'BC11077', '1', '2018-10-06', 0),
(32, 180, 'BC11077', '1', '2018-10-06', 0),
(33, 180, 'BC11077', '1', '2018-10-06', 0),
(34, 0, 'BC11077', NULL, '2018-10-06', 0),
(35, 55, 'BC11077', '98989838', '2018-10-06', 0),
(36, 1045, 'BC11077', '1', '2018-10-06', 0),
(37, 55, 'BC11077', '97031486', '2018-10-06', 0),
(38, 55, 'BC11077', '61292948', '2018-10-06', 0),
(39, 55, 'BC11077', '94753636', '2018-10-06', 0),
(40, 55, 'BC11077', '97691879', '2018-10-06', 0),
(41, 0, 'BC10638', NULL, '2018-10-13', 1),
(42, 0, 'BC10638', '94555582', '2018-10-13', 1),
(43, 0, 'BC10638', '1', '2018-10-13', 1),
(44, 0, 'BC22506', NULL, '2018-10-13', 1),
(45, 0, 'BC22506', '94555582', '2018-10-13', 1),
(46, 0, 'BC22506', '1', '2018-10-13', 1),
(47, 0, 'BC10638', NULL, '2018-10-13', 0),
(48, 0, 'BC10638', NULL, '2018-10-13', 0),
(49, 0, 'BC3002', '5', '2018-10-13', 1),
(50, 0, 'BC3002', NULL, '2018-10-13', 1),
(51, 250, 'BC3002', '94555582', '2018-10-13', 1),
(52, 4750, 'BC3002', '1', '2018-10-13', 1),
(53, 0, 'BC26651', '5', '2018-10-13', 1),
(54, 0, 'BC26651', NULL, '2018-10-13', 1),
(55, 700, 'BC26651', '97261300', '2018-10-13', 1),
(56, 4300, 'BC26651', '1', '2018-10-13', 1),
(57, 0, 'BC50597', '5', '2018-10-13', 1),
(58, 0, 'BC50597', NULL, '2018-10-13', 1),
(59, 700, 'BC50597', '97454367', '2018-10-13', 1),
(60, 4300, 'BC50597', '1', '2018-10-13', 1),
(61, 0, 'BC23550', '5', '2018-10-13', 0),
(62, 0, 'BC23550', NULL, '2018-10-13', 0),
(63, 700, 'BC23550', '97454367', '2018-10-13', 0),
(64, 4300, 'BC23550', '1', '2018-10-13', 0),
(65, 0, 'BC26651', NULL, '2018-10-13', 0),
(66, 0, 'BC13187', '5', '2018-10-13', 1),
(67, 0, 'BC13187', NULL, '2018-10-13', 1),
(68, 700, 'BC13187', '97261300', '2018-10-13', 1),
(69, 4300, 'BC13187', '1', '2018-10-13', 1),
(70, 0, 'BC33716', '5', '2018-10-13', 1),
(71, 0, 'BC33716', NULL, '2018-10-13', 1),
(72, 700, 'BC33716', '97261300', '2018-10-13', 1),
(73, 4300, 'BC33716', '1', '2018-10-13', 1),
(74, 0, 'BC38481', '5', '2018-10-13', 1),
(75, 0, 'BC38481', NULL, '2018-10-13', 1),
(76, 700, 'BC38481', '97261300', '2018-10-13', 1),
(77, 4300, 'BC38481', '1', '2018-10-13', 1),
(78, 0, 'BC21623', '4', '2018-10-13', 1),
(79, 0, 'BC21623', NULL, '2018-10-13', 1),
(80, 15, 'BC21623', '98989838', '2018-10-13', 1),
(81, 285, 'BC21623', '1', '2018-10-13', 1),
(82, 0, 'BC12542', '4', '2018-10-13', 1),
(83, 0, 'BC12542', NULL, '2018-10-13', 1),
(84, 15, 'BC12542', '98989838', '2018-10-13', 1),
(85, 285, 'BC12542', '1', '2018-10-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `livreur`
--

CREATE TABLE `livreur` (
  `idLivreur` int(13) NOT NULL,
  `identifiant` varchar(250) NOT NULL,
  `passe` varchar(250) NOT NULL,
  `idBoutique` int(13) NOT NULL,
  `dateConnexion` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `livreur`
--

INSERT INTO `livreur` (`idLivreur`, `identifiant`, `passe`, `idBoutique`, `dateConnexion`) VALUES
(1, '61292948', '61292948', 61292948, NULL),
(7, '97261300', 'azerty', 5, NULL),
(6, '95114388', '123', 1, NULL),
(5, '123456', '123', 4, NULL),
(8, '97454367', 'azerty', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `membres`
--

CREATE TABLE `membres` (
  `id` int(13) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `sexe` varchar(2) DEFAULT NULL,
  `phoneNumber` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `birthdate` varchar(100) DEFAULT NULL,
  `idFather` varchar(100) NOT NULL,
  `yourId` varchar(100) NOT NULL,
  `adresseLivraison` varchar(250) DEFAULT 'Je souhaite me déplacer',
  `activite` varchar(205) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membres`
--

INSERT INTO `membres` (`id`, `firstname`, `lastname`, `sexe`, `phoneNumber`, `email`, `password`, `birthdate`, `idFather`, `yourId`, `adresseLivraison`, `activite`) VALUES
(1, 'SYSTEME', 'SYSTEME', 'NC', 0, 'systeme@powerlove.org', '', '', '', '001', 'Je souhaite me déplacer', NULL),
(49, 'SABYZ', 'SABYZ', NULL, 0, NULL, 'MTIz', NULL, '1', '17074', 'COTONOU', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `niveau`
--

CREATE TABLE `niveau` (
  `id` int(3) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `pourcentage` int(5) NOT NULL,
  `nbFilleul` int(13) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `niveau`
--

INSERT INTO `niveau` (`id`, `nom`, `description`, `pourcentage`, `nbFilleul`) VALUES
(1, 'P0', 'etape 0', 14, 1),
(2, 'P1', 'Niveau 1', 11, 4),
(3, 'P2', 'Niveau 2', 13, 16),
(4, 'P3', 'Niveau 3', 10, 64),
(5, 'P4', 'Niveau 4', 12, 256),
(6, 'P5', 'Niveau 5', 10, 1024);

-- --------------------------------------------------------

--
-- Table structure for table `niveaumembre`
--

CREATE TABLE `niveaumembre` (
  `id` int(3) NOT NULL,
  `idMembre` varchar(50) NOT NULL,
  `pourc` int(5) NOT NULL,
  `idNiveau` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `niveaumembre`
--

INSERT INTO `niveaumembre` (`id`, `idMembre`, `pourc`, `idNiveau`) VALUES
(1, '1', 30, 0),
(68, '98989838', 5, 0),
(67, '97454367', 14, 0),
(66, '94555582', 5, 0),
(65, '97261300', 14, 0),
(64, '97261300', 14, 0),
(63, '98989838', 5, 0),
(62, '97031486', 5, 0),
(61, '61292948', 5, 0),
(60, '94753636', 5, 0),
(59, '61616161', 5, 0),
(58, '95114388', 14, 0),
(57, '97691879', 5, 0),
(56, '97286581', 5, 0),
(55, '66767868', 5, 0),
(54, '96466885', 5, 0),
(53, '2345', 5, 0),
(52, '123456', 14, 0),
(51, '97448412', 14, 0),
(50, '6543', 14, 0),
(49, '123456', 14, 0),
(48, '6543', 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

CREATE TABLE `paiement` (
  `id` int(5) NOT NULL,
  `idCommande` varchar(150) NOT NULL,
  `montant` int(5) NOT NULL,
  `datePaiement` date NOT NULL,
  `idClient` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paiement`
--

INSERT INTO `paiement` (`id`, `idCommande`, `montant`, `datePaiement`, `idClient`) VALUES
(1, 'BC55749', 555, '2018-10-06', 61616161),
(2, 'BC50222', 555, '2018-10-06', 97691879),
(3, 'BC11077', 555, '2018-10-06', 98989838),
(4, 'BC23550', 555, '2018-10-13', 97454367);

-- --------------------------------------------------------

--
-- Table structure for table `pdv`
--

CREATE TABLE `pdv` (
  `idPdv` int(10) NOT NULL,
  `idBoutique` varchar(250) NOT NULL,
  `adresse` varchar(250) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `vendeur` varchar(250) NOT NULL,
  `passe` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `idProduit` int(12) NOT NULL,
  `libelleProduit` varchar(150) NOT NULL,
  `quantiteDispo` int(5) NOT NULL,
  `quantiteCritique` int(5) DEFAULT NULL,
  `prixAchat` int(10) NOT NULL,
  `prixVente` int(10) NOT NULL,
  `idBoutique` int(5) NOT NULL,
  `boutique` varchar(150) DEFAULT NULL,
  `dateAjout` date NOT NULL DEFAULT '2018-08-01',
  `description` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `margeMLM` int(11) DEFAULT '0',
  `statut` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`idProduit`, `libelleProduit`, `quantiteDispo`, `quantiteCritique`, `prixAchat`, `prixVente`, `idBoutique`, `boutique`, `dateAjout`, `description`, `image`, `margeMLM`, `statut`) VALUES
(1, 'papier A4', 120, 5, 4500, 5000, 1, 'IMPRIMERIE INO', '2018-10-04', 'IMPRIMERIE', '185.2.5.9/../media/1538623854.jpg', 500, 1),
(2, 'papier A4', 120, 5, 4500, 5000, 1, 'IMPRIMERIE INO', '2018-10-04', 'IMPRIMERIE', '185.2.5.9/../media/1538623908.jpg', 500, 1),
(3, 'Papier A3', 100, 5, 4800, 5000, 1, 'IMPRIMERIE INO', '2018-10-04', 'IMPRIMERIE', '185.2.5.9/../media/1538623954.jpg', 300, 1),
(4, 'Badge', 300, 5, 1600, 2000, 1, 'IMPRIMERIE INO', '2018-10-04', 'IMPRIMERIE', '185.2.5.9/../media/1538624010.jpg', 300, 1),
(5, 'CS-CM2', 150, 5, 1500, 2000, 4, 'CMLK TABO', '2018-10-04', 'recueil d\'épreuve et correction', '185.2.5.9/../media/1538626942.jpg', 300, 1),
(6, 'CS-CM1', 100, 5, 2200, 2500, 4, 'CMLK TABO', '2018-10-04', 'recueil d\'épreuve et correction', '185.2.5.9/../media/1538627013.jpg', 300, 1),
(7, 'CS-CE1', 120, 5, 1500, 2000, 4, 'CMLK TABO', '2018-10-04', 'recueil d\'épreuve et correction', '185.2.5.9/../media/1538627107.jpg', 300, 1),
(8, 'Iphone 5S', 35, 5, 80000, 100000, 5, 'CadoShop', '2018-10-13', 'Téléphone intélligent', '185.2.5.9/../media/1539431545.jpeg', 5000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `revenu`
--

CREATE TABLE `revenu` (
  `id` int(3) NOT NULL,
  `montant` int(5) NOT NULL,
  `dateRevenu` date NOT NULL,
  `statut` int(3) NOT NULL,
  `idCommande` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `taux`
--

CREATE TABLE `taux` (
  `id` int(3) NOT NULL,
  `idBoutique` varchar(50) NOT NULL,
  `taux` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taux`
--

INSERT INTO `taux` (`id`, `idBoutique`, `taux`) VALUES
(1, '1', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boncommande`
--
ALTER TABLE `boncommande`
  ADD PRIMARY KEY (`idBon`);

--
-- Indexes for table `boutique`
--
ALTER TABLE `boutique`
  ADD PRIMARY KEY (`idBoutique`);

--
-- Indexes for table `detailboutique`
--
ALTER TABLE `detailboutique`
  ADD PRIMARY KEY (`idBoutique`);

--
-- Indexes for table `detailcommande`
--
ALTER TABLE `detailcommande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduit` (`idProduit`);

--
-- Indexes for table `gainmlm`
--
ALTER TABLE `gainmlm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livreur`
--
ALTER TABLE `livreur`
  ADD PRIMARY KEY (`idLivreur`);

--
-- Indexes for table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `niveaumembre`
--
ALTER TABLE `niveaumembre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdv`
--
ALTER TABLE `pdv`
  ADD PRIMARY KEY (`idPdv`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idProduit`);

--
-- Indexes for table `revenu`
--
ALTER TABLE `revenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taux`
--
ALTER TABLE `taux`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boutique`
--
ALTER TABLE `boutique`
  MODIFY `idBoutique` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detailboutique`
--
ALTER TABLE `detailboutique`
  MODIFY `idBoutique` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detailcommande`
--
ALTER TABLE `detailcommande`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `gainmlm`
--
ALTER TABLE `gainmlm`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `livreur`
--
ALTER TABLE `livreur`
  MODIFY `idLivreur` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `niveaumembre`
--
ALTER TABLE `niveaumembre`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pdv`
--
ALTER TABLE `pdv`
  MODIFY `idPdv` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `idProduit` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `revenu`
--
ALTER TABLE `revenu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taux`
--
ALTER TABLE `taux`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
