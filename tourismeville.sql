-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 25 sep. 2023 à 22:09
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tourismeville`
--

-- --------------------------------------------------------

--
-- Structure de la table `banfora`
--

CREATE TABLE `banfora` (
  `id` int(11) NOT NULL,
  `idVille` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `banfora`
--

INSERT INTO `banfora` (`id`, `idVille`, `image`, `titre`, `contenu`) VALUES
(1, 3, 'banfora.jpeg', 'Les pics de Sindou', 'Les pics de Sindou ou aiguilles de Sindou\r\n                     sont une formation rocheuse de grès, aux parois\r\n                      abruptes et fortement érodées dans le Sud-Ouest du \r\n                      Burkina Faso. Ils culminent à 415 mètres d\'altitude1, \r\n                      ce qui en fait le deuxième point le plus haut du Burkina Faso.'),
(2, 3, 'banfora1.jpeg', 'Les hotels de Banfora', 'Les pics de Sindou ou aiguilles de Sindou\r\n                     sont une formation rocheuse de grès, aux parois\r\n                      abruptes et fortement érodées dans le Sud-Ouest du \r\n                      Burkina Faso. Ils culminent à 415 mètres d\'altitude1, \r\n                      ce qui en fait le deuxième point le plus haut du Burkina Faso.'),
(3, 3, 'banfora3.jpeg', 'Les masques de Banfora', 'Les pics de Sindou ou aiguilles de Sindou\r\n                     sont une formation rocheuse de grès, aux parois\r\n                      abruptes et fortement érodées dans le Sud-Ouest du \r\n                      Burkina Faso. Ils culminent à 415 mètres d\'altitude1, \r\n                      ce qui en fait le deuxième point le plus haut du Burkina Faso.');

-- --------------------------------------------------------

--
-- Structure de la table `banfora1`
--

CREATE TABLE `banfora1` (
  `id` int(11) NOT NULL,
  `idVille` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `banfora1`
--

INSERT INTO `banfora1` (`id`, `idVille`, `image`, `titre`, `texte`) VALUES
(1, 3, 'banfora2.jpeg', 'Les pics de Sindou', 'Sindou est un village Sénoufo, chef-lieu de la province administrative de la Leraba, dans l’ouest du Burkina Faso. Cette agglomération est célèbre pour trois raisons principales. D’abord, elle marque l’entrée dans le pays sénoufo. Ensuite, la région de Sindou est une zone de grande production fruitière. Et du point de vue touristique, on a les fameux pics de Sindou à un kilomètre des habitations.'),
(2, 3, 'cascade.jpg', 'Les cascades de Banfora', 'Sindou est un village Sénoufo, chef-lieu de la province administrative de la Leraba, dans l’ouest du Burkina Faso. Cette agglomération est célèbre pour trois raisons principales. D’abord, elle marque l’entrée dans le pays sénoufo. Ensuite, la région de Sindou est une zone de grande production fruitière. Et du point de vue touristique, on a les fameux pics de Sindou à un kilomètre des habitations.'),
(3, 3, 'banfora5.jpeg', 'Le monument de Banfora', 'Sindou est un village Sénoufo, chef-lieu de la province administrative de la Leraba, dans l’ouest du Burkina Faso. Cette agglomération est célèbre pour trois raisons principales. D’abord, elle marque l’entrée dans le pays sénoufo. Ensuite, la région de Sindou est une zone de grande production fruitière. Et du point de vue touristique, on a les fameux pics de Sindou à un kilomètre des habitations.');

-- --------------------------------------------------------

--
-- Structure de la table `formulaire`
--

CREATE TABLE `formulaire` (
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `formulaire`
--

INSERT INTO `formulaire` (`nom`, `prenom`, `mail`, `message`) VALUES
('IMOURANA', 'AKANNI', 'imran@gmail.com', 'bonjour'),
('IMOURANA', 'AKANNI', 'imran@gmail.com', 'bonjour'),
('IMOURANA', 'AKANNI', 'imran@gmail.com', 'bonjour');

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

CREATE TABLE `section` (
  `idSection` int(11) NOT NULL,
  `idVille` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `bouton` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `section`
--

INSERT INTO `section` (`idSection`, `idVille`, `titre`, `image`, `contenu`, `bouton`) VALUES
(2, 1, 'LA MAISON DE LA CULTURE', 'maisonculture1.jpeg', 'La Maison de la culture de Bobo-Dioulasso sera un complexe culturel\r\n                 polyvalent de 2500 places qui devrait accueillir ses premiers \r\n                 spectateurs dès la prochaine Semaine nationale de la culture en 2010\r\n                 . L’infrastructure culturelle sera batie sur un vaste espace de 2 \r\n                 hectares et demi, à l’intérieur même du rond-point de Dafra La Maison\r\n                  de la culture de Bobo-Dioulasso et ses différentes salles de spectacles\r\n                   et/ou de conférences ont, ce vendredi 11 décembre, été baptisées aux \r\n                   noms de personnalités religieuse et de la culture. Il s’agit de l’émérite\r\n                    archevêque Monseigneur Titiama Anselme Sanou, de Sotigui Kouyaté, Drissa\r\n                     Koné, Mahama Konaté, Tidiane Coulibaly et Drissa Sirifié Sanou de \r\n                     Kouladafourou. C’était au cours d’une cérémonie présidée par Jean-Claude\r\n                      Dioma, ministre de la Culture et du tourisme.', 'ajouter'),
(3, 1, 'La mosquee de Dioulassob', 'mosque1.jpg', 'La Maison de la culture de Bobo-Dioulasso sera un complexe culturel\r\n                 polyvalent de 2500 places qui devrait accueillir ses premiers \r\n                 spectateurs dès la prochaine Semaine nationale de la culture en 2010\r\n                 . L’infrastructure culturelle sera batie sur un vaste espace de 2 \r\n                 hectares et demi, à l’intérieur même du rond-point de Dafra La Maison\r\n                  de la culture de Bobo-Dioulasso et ses différentes salles de spectacles\r\n                   et/ou de conférences ont, ce vendredi 11 décembre, été baptisées aux \r\n                   noms de personnalités religieuse et de la culture. Il s’agit de l’émérite\r\n                    archevêque Monseigneur Titiama Anselme Sanou, de Sotigui Kouyaté, Drissa\r\n                     Koné, Mahama Konaté, Tidiane Coulibaly et Drissa Sirifié Sanou de \r\n                     Kouladafourou. C’était au cours d’une cérémonie présidée par Jean-Claude\r\n                      Dioma, ministre de la Culture et du tourisme.', 'ajouter'),
(5, 1, 'LA MAIRIE CENTRALE DE BOBO', 'mairie.jpeg', 'Au Burkina, la mairie est l\'appareil administratif de la ville ou de \r\n                la commune qui est abritée dans le bâtiment surnommé hôtel de ville.\r\n                 Celui-ci comprend aussi la salle de délibération du conseil municipal\r\n                 , le lieu où l\'on célèbre les mariages, ainsi que divers services comme \r\n                 l\'état-civil, le dépôt du cadastre, l\'urbanisme, la police municipale,\r\n                  etc. Le terme désigne dans le code général des collectivités territoriales\r\n                   le siège de la municipalité. En pratique, les communes de taille importante\r\n                    utilisent souvent l\'appellation « hôtel de ville », le terme « mairie » \r\n                    désignant plutôt l\'administration municipale rattachée au maire.La mairie\r\n                     au Burkina Faso est l\'institution chargée de la\r\n                      direction d\'une ville (terme ayant une définition légale). Chaque mairie \r\n                      regroupe des communes, ayant chacune à leur tête un bourgmestre. Une\r\n                       vingtaine de localités ont actuellement le statut de ville en bobo', 'ajouter'),
(6, 1, 'LES MASQUES DE BOBO', 'masquebobo.jpeg', 'L\'ethnie Bobo est un peuple installé majoritairement au Burkina Faso (100 000 environ) ainsi qu\'au Mali (50 000 environ) Les Bobo parlent une langue mandé et sont proches des Bwa. Les Bobo sont agriculteurs, ils cultivent le millet, le sorgho et le coton pour approvisionner les métiers à tisser des villes. Sans gouvernement centralisé, ils sont organisés en lignages dont les membres les plus âgés forment le conseil des anciens chargé de prendre les décisions. La notion de chef leur est profondément étrangère et ils la jugent dangereuse. Les Bobo croient en un dieu Wuro, créateur de la terre et des animaux. Le premier homme créé fut un forgeron qui demanda un compagnon. C\'est ainsi que fut conçu le Bobo ou cultivateur.\r\n\r\nLe nom de la ville de Bobo-Dioulasso – baptisée ainsi en 1904 –, signifie « la maison des Bobo-Dioula. Selon les sources, on observe plusieurs variantes : Bobo-Dioula, Bobo Fing, Bobofi, Bobo-Madaré, Bobo-Mandare, Bobos, Ma-da-re, Madare.\r\n\r\n ', 'ajouter'),
(7, 2, 'LES ELEPHANTS', 'elephants.jpeg', 'Depuis quelques années des inventaires ont été menés dans certaines régions du Burkina Faso oû les populations d’éléphants sont importantes. Indépendamment il existe plusieurs petites populations qui effectuent desmouvements transfrontaliers. Leur importance numérique est certes faible au niveau continental, mais assezélevée au niveau sous-régional. Les seules petites populations représentent un effectif supérieur à ceux duTogo, du Sénégal et de la Guinée réunis. Cependant l’aire de distribution de certaines des ces petites populationss’étend au-delà des aires protégées et dans les corridors entre deux ou plusieurs sites de conservation . Auniveau local, leur impact peut se révéler non négligeable. Cet article décrit la situation connue à l’heureactuelle. De futures études sont nécessaires pour déterminer les nombres, les mouvements et les implicationsd’un point de vue de la conservation de ces populations de petite taille mais pas nécessairement isolées', ''),
(8, 2, 'LA GIRAFFE', 'giraffe.jpg', 'Depuis quelques années des inventaires ont été menés dans certaines régions du Burkina Faso oû les populations \r\n            d’éléphants sont importantes. Indépendamment il existe plusieurs petites populations qui effectuent \r\n            desmouvements transfrontaliers. Leur importance numérique est certes faible au niveau continental, mais \r\n            assezélevée au niveau sous-régional. Les seules petites populations représentent un effectif supérieur à ceux\r\n             duTogo, du Sénégal et de la Guinée réunis. Cependant l’aire de distribution de certaines des ces petites\r\n              populationss’étend au-delà des aires protégées et dans les corridors entre deux ou plusieurs sites de conservation\r\n              . Auniveau local, leur impact peut se révéler non négligeable. Cet article décrit la situation connue à l’heureactuelle.\r\n               De futures études sont nécessaires pour déterminer les nombres, les mouvements et les implicationsd’un point de vue de \r\n               la conservation de ces populations de petite taille mais pas nécessairement isolées', ''),
(9, 2, 'LES ZEBRES', 'zebre.jpg', 'Depuis quelques années des inventaires ont été menés dans certaines régions du Burkina Faso oû les populations \r\n            d’éléphants sont importantes. Indépendamment il existe plusieurs petites populations qui effectuent \r\n            desmouvements transfrontaliers. Leur importance numérique est certes faible au niveau continental, mais \r\n            assezélevée au niveau sous-régional. Les seules petites populations représentent un effectif supérieur à ceux\r\n             duTogo, du Sénégal et de la Guinée réunis. Cependant l’aire de distribution de certaines des ces petites\r\n              populationss’étend au-delà des aires protégées et dans les corridors entre deux ou plusieurs sites de conservation\r\n              . Auniveau local, leur impact peut se révéler non négligeable. Cet article décrit la situation connue à l’heureactuelle.\r\n               De futures études sont nécessaires pour déterminer les nombres, les mouvements et les implicationsd’un point de vue de \r\n               la conservation de ces populations de petite taille mais pas nécessairement isolées', ''),
(10, 2, 'LE SINGE', 'singe.jpg', 'Depuis quelques années des inventaires ont été menés dans certaines régions du Burkina Faso oû les populations \r\n            d’éléphants sont importantes. Indépendamment il existe plusieurs petites populations qui effectuent \r\n            desmouvements transfrontaliers. Leur importance numérique est certes faible au niveau continental, mais \r\n            assezélevée au niveau sous-régional. Les seules petites populations représentent un effectif supérieur à ceux\r\n             duTogo, du Sénégal et de la Guinée réunis. Cependant l’aire de distribution de certaines des ces petites\r\n              populationss’étend au-delà des aires protégées et dans les corridors entre deux ou plusieurs sites de conservation\r\n              . Auniveau local, leur impact peut se révéler non négligeable. Cet article décrit la situation connue à l’heureactuelle.\r\n               De futures études sont nécessaires pour déterminer les nombres, les mouvements et les implicationsd’un point de vue de \r\n               la conservation de ces populations de petite taille mais pas nécessairement isolées', ''),
(11, 2, 'LES CAIMANS', 'caiman.jpg', 'Depuis quelques années des inventaires ont été menés dans certaines régions du Burkina Faso oû les populations \r\n            d’éléphants sont importantes. Indépendamment il existe plusieurs petites populations qui effectuent \r\n            desmouvements transfrontaliers. Leur importance numérique est certes faible au niveau continental, mais \r\n            assezélevée au niveau sous-régional. Les seules petites populations représentent un effectif supérieur à ceux\r\n             duTogo, du Sénégal et de la Guinée réunis. Cependant l’aire de distribution de certaines des ces petites\r\n              populationss’étend au-delà des aires protégées et dans les corridors entre deux ou plusieurs sites de conservation\r\n              . Auniveau local, leur impact peut se révéler non négligeable. Cet article décrit la situation connue à l’heureactuelle.\r\n               De futures études sont nécessaires pour déterminer les nombres, les mouvements et les implicationsd’un point de vue de \r\n               la conservation de ces populations de petite taille mais pas nécessairement isolées', ''),
(12, 2, 'LE LION', 'lion.jpg', 'Depuis quelques années des inventaires ont été menés dans certaines régions du Burkina Faso oû les populations \r\n            d’éléphants sont importantes. Indépendamment il existe plusieurs petites populations qui effectuent \r\n            desmouvements transfrontaliers. Leur importance numérique est certes faible au niveau continental, mais \r\n            assezélevée au niveau sous-régional. Les seules petites populations représentent un effectif supérieur à ceux\r\n             duTogo, du Sénégal et de la Guinée réunis. Cependant l’aire de distribution de certaines des ces petites\r\n              populationss’étend au-delà des aires protégées et dans les corridors entre deux ou plusieurs sites de conservation\r\n              . Auniveau local, leur impact peut se révéler non négligeable. Cet article décrit la situation connue à l’heureactuelle.\r\n               De futures études sont nécessaires pour déterminer les nombres, les mouvements et les implicationsd’un point de vue de \r\n               la conservation de ces populations de petite taille mais pas nécessairement isolées', ''),
(13, 2, 'LES HYENES', 'hyene.jpg', 'Depuis quelques années des inventaires ont été menés dans certaines régions du Burkina Faso oû les populations \r\n            d’éléphants sont importantes. Indépendamment il existe plusieurs petites populations qui effectuent \r\n            desmouvements transfrontaliers. Leur importance numérique est certes faible au niveau continental, mais \r\n            assezélevée au niveau sous-régional. Les seules petites populations représentent un effectif supérieur à ceux\r\n             duTogo, du Sénégal et de la Guinée réunis. Cependant l’aire de distribution de certaines des ces petites\r\n              populationss’étend au-delà des aires protégées et dans les corridors entre deux ou plusieurs sites de conservation\r\n              . Auniveau local, leur impact peut se révéler non négligeable. Cet article décrit la situation connue à l’heureactuelle.\r\n               De futures études sont nécessaires pour déterminer les nombres, les mouvements et les implicationsd’un point de vue de \r\n               la conservation de ces populations de petite taille mais pas nécessairement isolées', ''),
(14, 2, 'LES TIGRES', 'tigre.jpg', 'Depuis quelques années des inventaires ont été menés dans certaines régions du Burkina Faso oû les populations \r\n            d’éléphants sont importantes. Indépendamment il existe plusieurs petites populations qui effectuent \r\n            desmouvements transfrontaliers. Leur importance numérique est certes faible au niveau continental, mais \r\n            assezélevée au niveau sous-régional. Les seules petites populations représentent un effectif supérieur à ceux\r\n             duTogo, du Sénégal et de la Guinée réunis. Cependant l’aire de distribution de certaines des ces petites\r\n              populationss’étend au-delà des aires protégées et dans les corridors entre deux ou plusieurs sites de conservation\r\n              . Auniveau local, leur impact peut se révéler non négligeable. Cet article décrit la situation connue à l’heureactuelle.\r\n               De futures études sont nécessaires pour déterminer les nombres, les mouvements et les implicationsd’un point de vue de \r\n               la conservation de ces populations de petite taille mais pas nécessairement isolées', '');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `idVille` int(11) NOT NULL,
  `nomVille` text NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `bouton` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`idVille`, `nomVille`, `titre`, `description`, `image`, `bouton`) VALUES
(1, 'bobo', 'Bobo-Dioulasso', 'BOBO-DIOULASSO est une ville de tourisme qui accueille chaque annee des milliers de touristes au sein de sa ville. Plusieurs sites touristiques demeurent dans la ville de bobo-dioulasso.entre autre nous avons la vieille mosquee de Dioulassoba,la sitarail,et beaucoup d\'autres sites.', 'bobo.jpeg', 'Decouvrir la ville'),
(2, 'zoo', 'LES ZOO DU PAYS', 'Au Burkina on rencontre diverses types d\'animaux ville de tourisme qui accueille chaque annee des milliers de touristes au sein de sa ville. Plusieurs sites touristiques demeurent dans la ville de bobo-dioulasso.entre autre nous avons la vieille mosquee de Dioulassoba,la sitarail,et beaucoup d\'autres sites.', 'tigre.jpg', 'Visiter le zoo'),
(3, 'banfora', 'LES CASCADES DE BANFORA', 'Au Burkina on rencontre diverses types d\'animaux ville de tourisme qui accueille chaque annee des milliers de touristes au sein de sa ville. Plusieurs sites touristiques demeurent dans la ville de bobo-dioulasso.entre autre nous avons la vieille mosquee de Dioulassoba,la sitarail,et beaucoup d\'autres sites.', 'cascade.jpg', 'visiter les cascades');

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `bouton` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`id`, `titre`, `texte`, `bouton`, `image`) VALUES
(1, 'BURKINA FASO littéralement « patrie des intègres » ou « patrie de l\'intégrité »', 'Le Burkina Faso est un pays plutôt plat, avec quelques accidents de terrain localisés. Son altitude moyenne est de 400 m et le différentiel entre les deux points extrêmes ne dépasse pas 600 m. Le point culminant du pays est le mont Tenakourou, situé à 749 m d\'altitude..', 'visitez le pays', 'burkina.jpeg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `banfora`
--
ALTER TABLE `banfora`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVille` (`idVille`);

--
-- Index pour la table `banfora1`
--
ALTER TABLE `banfora1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVille` (`idVille`);

--
-- Index pour la table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`idSection`),
  ADD KEY `idVille` (`idVille`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`idVille`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `banfora`
--
ALTER TABLE `banfora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `banfora1`
--
ALTER TABLE `banfora1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `section`
--
ALTER TABLE `section`
  MODIFY `idSection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `idVille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `visite`
--
ALTER TABLE `visite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`idVille`) REFERENCES `ville` (`idVille`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
