-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Lun 01 Janvier 2001 à 00:30
-- Version du serveur: 5.5.27-log
-- Version de PHP: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bdd_ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`) VALUES
(17, 'Légumes'),
(18, 'fruits');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valider` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `reference` int(11) NOT NULL,
  `produit` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`id`, `valider`, `date`, `reference`, `produit`) VALUES
(3, 1, '2016-05-19 14:49:16', 1, 'a:3:{i:0;a:1:{i:1;s:1:"2";}i:1;a:1:{i:2;s:1:"1";}i:2;a:1:{i:4;s:1:"5";}}'),
(4, 1, '2016-05-19 14:49:16', 2, 'a:3:{i:0;a:1:{i:1;s:1:"2";}i:1;a:1:{i:2;s:1:"1";}i:2;a:1:{i:4;s:1:"5";}}');

-- --------------------------------------------------------

--
-- Structure de la table `medias`
--

CREATE TABLE IF NOT EXISTS `medias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=145 ;

--
-- Contenu de la table `medias`
--

INSERT INTO `medias` (`id`, `path`, `alt`) VALUES
(137, 'http://cp.lakanal.free.fr/exercices/jeux/memory/legumes/legumes.png', 'Légumes'),
(138, 'http://img0.mxstatic.com/wallpapers/238cdfc903a19ad39ea901619dd55d47_large.jpeg', 'Fruits'),
(139, 'http://cuisine.larousse.fr/lcfilestorage/8A/DA/POIVRON_D_636x380.jpg', 'Poivron rouge'),
(140, 'http://www.princedebretagne-pro.com/medias/5114fcd91ae7e.JPGg', 'Piment'),
(141, 'http://www.niffylux.com/image-gratuite/Tomate__7_4b71e7e13f85b.jpg', 'Tomate'),
(142, 'http://le-mag-de-lea.com/wp-content/uploads/Poivron-vert-11.jpg', 'Poivron vert'),
(143, 'http://www.boitearecettes.com/fruits_legumes/raisins-6.gif', 'Raisin'),
(144, 'http://www.orangeclaire.com/images/oce_orange_01.jpg', 'Orange');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `pages`
--

INSERT INTO `pages` (`id`, `titre`, `contenu`) VALUES
(1, 'CGV', '\r\n            <div class="row">\r\n                <h4>Item Brand and Category</h4>\r\n                <h5>AB29837 Item Model</h5>\r\n                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry ''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            </div>\r\n            <div class="row">\r\n                <h4>Item Brand and Category</h4>\r\n                <h5>AB29837 Item Model</h5>\r\n                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            </div>\r\n            <div class="row">\r\n                <h4>Item Brand and Category</h4>\r\n                <h5>AB29837 Item Model</h5>\r\n                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            </div>'),
(2, 'Mentions légales', '<div class="row">\r\n                <h4>Item Brand and Category</h4>\r\n                <h5>AB29837 Item Model</h5>\r\n                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry ''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            </div>\r\n            <div class="row">\r\n                <h4>Item Brand and Category</h4>\r\n                <h5>AB29837 Item Model</h5>\r\n                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            </div>\r\n            <div class="row">\r\n                <h4>Item Brand and Category</h4>\r\n                <h5>AB29837 Item Model</h5>\r\n                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            </div>');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `description`, `prix`, `disponible`) VALUES
(31, 'Poivron rouge', 'Le poivron rouge est un groupe de cultivars de l''espèce Capsicum annuum.', 1.99, 1),
(32, 'Piment', 'Piment est généralement associé à la saveur du piquant (pimenté).', 3.99, 1),
(33, 'Tomate', 'La tomate est une espèce de plantes herbacées de la famille des Solanacées, originaire du nord-ouest de l''Amérique du Sud.', 0.99, 1),
(34, 'Poivron vert', 'Le poivron vert est un groupe de cultivars de l''espèce Capsicum annuum.', 2.99, 1),
(35, 'Raisin', 'Le raisin est le fruit de la Vigne. Le raisin de la vigne cultivée Vitis vinifera est un des fruits les plus cultivés au monde, avec 68 millions de tonnes produites en 2010.', 0.97, 1),
(36, 'Orange', 'L’orange est un agrume, fruit des orangers, des arbres de différentes espèces de la famille des Rutacées ou d''hybrides de ceux-ci.', 1.2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

CREATE TABLE IF NOT EXISTS `tva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `multiplicate` double NOT NULL,
  `nom` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `valeur` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Contenu de la table `tva`
--

INSERT INTO `tva` (`id`, `multiplicate`, `nom`, `valeur`) VALUES
(17, 0.982, 'TVA 1.75%', 1.75),
(18, 0.833, 'TVA 20%', 20);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_497B315E92FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_497B315EA0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(26, 'benjamin', 'benjamin', 'benjamin@gmail.com', 'benjamin@gmail.com', 1, '3b0p17ih9um8wk4ok4c0s0s48wswgks', '$2y$13$3b0p17ih9um8wk4ok4c0suD/qvhZkSGvcWNfA6zPBaSxcts1XdFkq', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(27, 'mathilde', 'mathilde', 'mathilde@gmail.com', 'mathilde@gmail.com', 1, 'tjbfkoxgb0gwoww44c0ww0o8c0wkg0k', '$2y$13$tjbfkoxgb0gwoww44c0wwuohOuHZndL2KoOi/BPgSI7q8x77LyGIO', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(28, 'pauline', 'pauline', 'pauline@gmail.com', 'pauline@gmail.com', 1, '9lxu562rmb0o8w0o40ccok0oock0sw8', '$2y$13$9lxu562rmb0o8w0o40ccoe5bJo1unrA4q61vfVNAMWxhil/YFs56K', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(29, 'tiffany', 'tiffany', 'tiffany@gmail.com', 'tiffany@gmail.com', 1, '1nkv2hkbcn400ow4k48k4o88c00g8cg', '$2y$13$1nkv2hkbcn400ow4k48k4enYYReZ/C5sRd73gM06lE1X91.oCRqNm', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(30, 'dominique', 'dominique', 'dominique@gmail.com', 'dominique@gmail.com', 1, 'lyy2wriqd68o408ccowkgookcwsgosc', '$2y$13$lyy2wriqd68o408ccowkgeCPseY04oRIPxs7gDvXwXupHc4ulZIIq', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs_adresses`
--

CREATE TABLE IF NOT EXISTS `utilisateursadresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code_postal` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pays` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `ville` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `complement` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `utilisateurs_adresses`
--

INSERT INTO `utilisateurs_adresses` (`id`, `nom`, `prenom`, `telephone`, `adresse`, `code_postal`, `pays`, `ville`, `complement`) VALUES
(11, 'Catelain', 'Benjamin', '0600000000', '3 rue alberta rubosca', '76600', 'France', 'Le Havre', 'face à l''église'),
(12, 'premier', 'albert', '0600000000', '5 rue rubosca', '76600', 'France', 'Le Havre', 'face à la plage');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
