-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 01:24 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

CREATE TABLE `absences` (
  `absence_id` int(11) NOT NULL,
  `study_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absences`
--

INSERT INTO `absences` (`absence_id`, `study_id`, `student_id`, `status`) VALUES
(210, 83, 1, 0),
(211, 83, 2, 0),
(212, 87, 1, 1),
(213, 93, 1, 1),
(214, 90, 1, 1),
(215, 91, 32, 1),
(216, 97, 32, 1),
(217, 94, 32, 1),
(218, 88, 32, 1),
(219, 84, 32, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_first_name` varchar(30) NOT NULL,
  `admin_last_name` varchar(30) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_first_name`, `admin_last_name`, `admin_password`, `admin_email`) VALUES
(777, 'Redouane', 'Nouara', '$2y$10$WkdXbwYkGy0/rB12ei0HQudKUMj50qjpFnytxljTki5cCtkXPKh8y', 'redouane.nouara@univ-constantine2.dz');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`) VALUES
(1, ''),
(2, ''),
(3, '');

-- --------------------------------------------------------

--
-- Table structure for table `gr_teaching`
--

CREATE TABLE `gr_teaching` (
  `group_teaching_id` int(11) NOT NULL,
  `teaching_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gr_teaching`
--

INSERT INTO `gr_teaching` (`group_teaching_id`, `teaching_id`, `group_id`) VALUES
(127, 6, 1),
(130, 6, 2),
(133, 6, 3),
(128, 7, 1),
(131, 7, 2),
(134, 7, 3),
(129, 8, 1),
(132, 8, 2),
(135, 8, 3),
(86, 9, 1),
(87, 9, 2),
(90, 9, 3),
(59, 10, 1),
(61, 10, 2),
(63, 10, 3),
(60, 11, 1),
(62, 11, 2),
(64, 11, 3),
(123, 12, 1),
(125, 12, 2),
(81, 12, 3),
(124, 13, 1),
(126, 13, 2),
(82, 13, 3),
(136, 14, 1),
(79, 14, 2),
(85, 14, 3),
(137, 15, 1),
(80, 15, 2),
(138, 15, 3),
(94, 16, 1),
(75, 16, 2),
(77, 16, 3),
(95, 17, 1),
(76, 17, 2),
(78, 17, 3),
(140, 20, 1),
(92, 20, 2),
(93, 20, 3),
(88, 21, 1),
(141, 21, 2),
(139, 21, 3);

-- --------------------------------------------------------

--
-- Table structure for table `justifications`
--

CREATE TABLE `justifications` (
  `justification_id` int(11) NOT NULL,
  `img_path` varchar(80) NOT NULL,
  `student_id` int(11) NOT NULL,
  `justification_status` tinyint(1) NOT NULL,
  `start_at` date NOT NULL,
  `end_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `short_cut` varchar(11) DEFAULT NULL,
  `module_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `short_cut`, `module_name`) VALUES
(1, 'TEC', 'Technique d’expression orale'),
(2, 'IASR', 'Installation et administration des systèmes et réseaux'),
(3, 'OTAM', 'Outils, Traitement et Applications Multimédia'),
(4, 'ACS', 'Analyse et Conception de systèmes'),
(5, 'BD', 'Bases de données 2'),
(6, 'DAM', 'Développement d’applications mobiles'),
(7, 'DAW', 'Développement d’Applications Web 2');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `session_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `session_date`) VALUES
(1, '2022-10-30 20:00:00'),
(2, '2022-11-30 20:00:00'),
(3, '2022-12-01 12:00:00'),
(5, '2022-12-01 12:30:00'),
(4, '2022-12-01 13:00:00'),
(6, '2022-12-01 13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_first_name` varchar(30) NOT NULL,
  `student_last_name` varchar(30) NOT NULL,
  `student_password` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_first_name`, `student_last_name`, `student_password`, `student_email`, `group_id`) VALUES
(1, 'ABABSA', 'MOHAMED ELYES', '$2y$10$uyK6eqO/0gIUV1WmTMKlFeNjnUM00g/HgZ3caXcbmG1Vl9kkggpce', 'mohamedilyes.ababsa@univ-constantine2.dz', 1),
(2, 'ABDESSALAM', 'LOKMANE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'lokmane.abdessalam@univ-constantine2.dz', 1),
(3, 'ACHERARD', 'NOUR EL ISLEM', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'nourelislem.acherard@univ-constantine2.dz', 1),
(4, 'AFFES', 'YOUSRA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'yousra.affes@univ-constantine2.dz', 1),
(5, 'AGUAGUENA', 'SIF EDDINE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'sifeddine.aguaguena@univ-constantine2.dz', 1),
(6, 'BADLIS', 'MOUNIR', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'mounir.badlis@univ-constantine2.dz', 1),
(7, 'BAHEDDI', 'AMINE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'bhd.amin@gmail.com', 1),
(8, 'BAKTACHE', 'KAOUTHER', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'kaouther.baktache@univ-constantine2.dz', 1),
(9, 'BELHAMRI', 'AMINE TAHAR', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'amine.belhamri@univ-constantine2.dz', 1),
(10, 'BEN AMROUCHE', 'MOHAMED AMINE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'amine.benamrouche@univ-constantine2.dz', 1),
(11, 'BENAICHA', 'MADJDA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'madjda.benaicha@univ-constantine2.dz', 1),
(12, 'BENARAB', 'RANIA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'rania.benarab@univ-constantine2.dz', 1),
(13, 'BENCHEIKH EL FEGOUN', 'MOHAMED SAMI', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'samy.bencheikhelfegoun@univ-constantine2.dz', 1),
(14, 'BENMOHAMMED', 'FAROUK ELLARBI', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'farouk.benmohammed@univ-constantine2.dz', 1),
(15, 'BENNACER', 'MOHAMED ILYES', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'bennacer.mohamed.ilyes@univ-constantine2.dz', 1),
(16, 'BOUDJADA', 'YOUNES', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'younes.boudjada@univ-constantine2.dz', 1),
(17, 'BOUDRAISSA', 'SID AHMED', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'sidahmed.boudraissa@univ-constantine2.dz', 1),
(18, 'BOUGUETTOUCHA', 'HADJER HANINE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'hadjer.bouguettoucha@univ-constantine2.dz', 1),
(19, 'BOUHADDI', 'OUALID', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'oualid.bouhaddi@univ-constantine2.dz', 1),
(20, 'BOUMEHRAZ', 'KAOUTER', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'kaouter.boumehraz@univ-constantine2.dz', 1),
(21, 'BOUNAAS', 'RAMI MOHAMED ZAKI', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'rami.bounaas@univ-constantine2.dz', 1),
(22, 'BOUSNOBRA', 'YOUSSERA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'youssera.bousnobra@univ-constantine2.dz', 1),
(23, 'DADDIOUAMER', 'REDOUANE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'redouane.daddiouamer@univ-constantine2.dz', 1),
(24, 'DJOUABLIA', 'ILHEM', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'ilhame.djouablia@univ-constantine2.dz', 1),
(25, 'GOUM GOUM', 'OMAR', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'omar.goumgoum@univ-constantine2.dz', 1),
(26, 'HAMZA', 'MOHAMED', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'mohamed.hamza@univ-constantine2.dz', 1),
(27, 'KASMI', 'ANFEL', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'anfel.kasmi@univ-constantine2.dz', 1),
(28, 'LAKAF', 'ABDELHADI', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'abdelhadi.lakaf@univ-constantine2.dz', 1),
(29, 'MOUMENE', 'ABDELRAHMENE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'moumene.abdelrahmene@univ-constantine2.dz', 1),
(30, 'NASRI', 'ZAKARIA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'zakaria.nasri@univ-constantine2.dz', 1),
(31, 'ZAIMI', 'ILYAS', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'ilyas.zaimi@univ-constantine2.dz', 1),
(32, 'ZIADI', 'AMIRA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'amira.ziadi@univ-constantine2.dz', 1),
(33, 'ABBASSI', 'AMJAD', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'amjad.abbassi@univ-constantine2.dz', 2),
(34, 'BELHADEF', 'MOHAMED ISLEM', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'islem.belhadef@univ-constantine2.dz', 2),
(35, 'BOUDIAF', 'LATIFA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'latifa.boudiaf@univ-constantine2.dz', 2),
(36, 'BOUSSEBOUA', 'YOUCEF', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'youcef.bousseboua@univ-constantine2.dz', 2),
(37, 'BOUZIDI', 'ISKANDER', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'iskander.bouzidi@univ-constantine2.dz', 2),
(38, 'BRAHIMI', 'SALAH', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'salah.brahimi@univ-constantine2.dz', 2),
(39, 'CHEGMA', 'MOUSSA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'moussa.chegma@univ-constantine2.dz', 2),
(40, 'CHETTAT', 'BORHENE EDDINE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'borhene.chettat@univ-constantine2.dz', 2),
(41, 'CHIAHI', 'MOHAMMED ARSLANE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'arslane.chiahi@univ-constantine2.dz', 2),
(42, 'CHIHOUB', 'ABDELMOUDJIB', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'abdelmoudjib.chihoub@univ-constantine2.dz', 2),
(43, 'DAMOUS', 'MOHAMED ACHRAF', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'achraf.damous@univ-constantine2.dz', 2),
(44, 'DEHDOUH', 'ABDERRAHMANE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'abderrahmane.dehdouh@univ-constantine2.dz', 2),
(45, 'DERARDJA', 'AZHAR', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'azhar.derardja@univ-constantine2.dz', 2),
(46, 'DJEFFEL', 'YAHIA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'yahia.djeffel@univ-constantine2.dz', 2),
(47, 'DJEMMADI', 'TAKOUA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'takoua.djemmadi@univ-constantine2.dz', 2),
(48, 'FEKKAR', 'MOHAMMED AMIN', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'amin.fekkar@univ-constantine2.dz', 2),
(49, 'FELAHI', 'OUAFA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'wafa.felahi@univ-constantine2.dz', 2),
(50, 'GHANEM', 'YANIS AKRAM', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'yanis.ghanem@univ-constantine2.dz', 2),
(51, 'GUERFI', 'YOUNES', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'younes.guerfi@univ-constantine2.dz', 2),
(52, 'HABBATI', 'ANIS', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'anis.habbati@univ-constantine2.dz', 2),
(53, 'HADDAR', 'IBRAHIM', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'ibrahim.haddar@univ-constantine2.dz', 2),
(54, 'HADJIDJ', 'WALID', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'walid.hadjidj@univ-constantine2.dz', 2),
(55, 'HAMDI', 'LAMIA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'lamia.hamdi@univ-constantine2.dz', 2),
(56, 'HAMIDA', 'IMENE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'imene.hamida@univ-constantine2.dz', 2),
(57, 'HAMMOUD', 'AMEUR', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'ameur.hammoud@univ-constantine2.dz', 2),
(58, 'KACI', 'MOHAMED', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'mohamed.kaci@univ-constantine2.dz', 2),
(59, 'KACIOUSALAH', 'YASSER', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'yasser.kaciousalah@univ-constantine2.dz', 2),
(60, 'LASSAKEUR', 'ABDELLAH', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'abdellah.lassakeur@univ-constantine2.dz', 2),
(61, 'REBADJ', 'Nourelisslam', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'nourelisslam.rebadj@univ-constantine2.dz', 2),
(62, 'BAIFOUH', 'HOUDA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'houda.baifouh@univ-constantine2.dz', 3),
(63, 'BAIRA', 'ABDELMOUAZ', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'abdelmouaz.baira@univ-constantine2.dz', 3),
(64, 'BENGHALIA', 'ROUMAISSA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'roumaissa.benghalia@univ-constantine2.dz', 3),
(65, 'BOUATAN', 'CHAIMA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'chaima.bouatan@univ-constantine2.dz', 3),
(66, 'BOUCHEKOUF', 'MOHAMED', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'Mohamed.bouchekouf@univ-constantine2.dz', 3),
(67, 'BOUTORSENE', 'Achraf Arabi', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'achraf.boutorsene@univ-constantine2.dz', 3),
(68, 'BOUZIDA', 'AMAR', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'amar.bouzida@univ-constantine2.dz', 3),
(69, 'HADJ BRAHIM', 'BAKIR', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'bakir.hadjbrahim@univ-constantine2.dz', 3),
(70, 'KEBICHE', 'FOUEZ', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'fouez.kebiche@univ-constantine2.dz', 3),
(71, 'KELLIL', 'RAID', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'raid.kellil@univ-constantine2.dz', 3),
(72, 'KEZZOUZ', 'ALA EDDINE', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'alaeddine.kezzouz@univ-constantine2.dz', 3),
(73, 'KHALFAOUI', 'AYA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'ayatalrahman2100@gmail.com', 3),
(74, 'KHELIL', 'SMAIL', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'smail.khelil@univ-constantine2.dz', 3),
(75, 'KOUTA', 'NARJES', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'nardjes.kouta@univ-constantine2.dz', 3),
(76, 'LASMAR', 'REDA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'reda.lasmar@univ-constantine2.dz', 3),
(77, 'LEHATEM', 'YASSER', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'yasser.lehatem@univ-constantie2.dz', 3),
(78, 'MAAFI', 'NOUR EL IMENE BELKIS', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'belkis.maafi@univ-constantine2.dz', 3),
(79, 'MAMMERI', 'MOHAMED RAMI', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'rami.mammeri@univ-constantine2.dz', 3),
(80, 'MERIBOUT', 'Ahmed Yahia', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'ahmed.meribout@univ-constantine2.dz', 3),
(81, 'MESSAOUDI', 'ABDELKARIM', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'abdelkarim.messaoudi@univ-constantine2.dz', 3),
(82, 'MOAD', 'ABDENNOUR', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'abdennour.moad@univ-constantine2.dz', 3),
(83, 'NAMER', 'RANIA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'rania.namer@univ-constantine2.dz', 3),
(84, 'OUCHEN', 'AYMEN', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'aymen.ouchen@univ-constantine2.dz', 3),
(85, 'RAMDANI', 'MALAK', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'malak.ramdani@univ-constantine2.dz', 3),
(86, 'REBBOUH', 'ABDELHAKIM', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'abdelhakim.rebbouh@univ-constantine2.dz', 3),
(87, 'SEBBANE', 'OUMEIMA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'oumaima.sebbane@univ-constantine2.dz', 3),
(88, 'SELLAMI', 'WALID', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'walid.sellami@univ-constantine2.dz', 3),
(89, 'SERRAR', 'AKRAM ABDELBARI', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'akram.serrar@univ-constantine2.dz', 3),
(90, 'TACHEROUNTE', 'ROSTOM', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'rostom.tacherounte@univ-constantine2.dz', 3),
(91, 'TETA', 'BELKACEM', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'belkacem.teta@univ-constantine2.dz', 3),
(92, 'TRIAI', 'RADJA', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'radja.triai@univ-constantine2.dz', 3),
(93, 'YOUNES CHAOUCH', 'SAMI', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'sami.younsechaouch@univ-constantine2.dz', 3),
(94, 'ZAOUAK', 'Omar Elfarouk', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'omar.zaouak@univ-constantine2.dz', 3),
(95, 'ZEGGAI', 'ABDALLAH', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'abdellah.zeggai@univ-constantine2.dz', 3),
(96, 'ZITANI', 'HAKIM', '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'hakim.zitani@univ-constantine2.dz', 3);

-- --------------------------------------------------------

--
-- Table structure for table `study`
--

CREATE TABLE `study` (
  `study_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `group_teaching_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `study`
--

INSERT INTO `study` (`study_id`, `session_id`, `group_teaching_id`) VALUES
(83, 2, 127),
(84, 2, 130),
(85, 2, 133),
(87, 3, 127),
(88, 3, 130),
(89, 3, 133),
(90, 4, 127),
(91, 4, 130),
(92, 4, 133),
(93, 5, 127),
(94, 5, 130),
(95, 5, 133),
(96, 6, 127),
(97, 6, 130),
(98, 6, 133);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `teacher_first_name` varchar(30) NOT NULL,
  `teacher_last_name` varchar(30) NOT NULL,
  `teacher_grade` varchar(30) NOT NULL,
  `teacher_email` varchar(250) NOT NULL,
  `teacher_phone` int(11) NOT NULL,
  `teacher_password` varchar(250) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `teacher_first_name`, `teacher_last_name`, `teacher_grade`, `teacher_email`, `teacher_phone`, `teacher_password`, `remember_token`) VALUES
(761, 'Nouara', 'Redouane', 'DR', 'redouane.nouara@univ-constantine2.dz', 753647856, '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', '8nJxMo3X1uqHvmN5S3LaG8v4BwqajYVmnlEUpgsH'),
(762, 'Benaliouche', 'Houda', 'DR', 'houda.benaliouche@univ-constantine2.dz', 3, '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', NULL),
(763, 'Seghiri', 'Akram', 'DR', 'akram.seghiri@univ-constantine2.dz', 4, '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', NULL),
(764, 'El-Mansouri', 'Raida', 'DR', 'raida.elmansouri@univ-constantine.dz', 5, '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', NULL),
(765, 'Benmounah', 'Zakaria', 'DR', 'zakaria.benmounah@univ-constantine.dz', 6, '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', NULL),
(766, 'Bouramoul', 'Abdelkrim', 'DR', 'abdelkrim.bouramoul@univ-constantine.dz', 7, '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', NULL),
(801, 'Houfani', 'Yamene', 'DR', 'yamene.houfani@univ-constantine2.dz', 123, '$2y$10$selBtquIBt.vHqpm00l6YOk04VONKifLrcuddEo0VUGeQkzEYkZT2', 'dF2iHtrpSyB1dkrP7JHOvKRffQlHwlHuYr4SlsRz');

-- --------------------------------------------------------

--
-- Table structure for table `teaching`
--

CREATE TABLE `teaching` (
  `teaching_id` int(11) NOT NULL,
  `typing_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teaching`
--

INSERT INTO `teaching` (`teaching_id`, `typing_id`, `teacher_id`) VALUES
(21, 1, 801),
(6, 4, 762),
(7, 5, 762),
(8, 6, 762),
(20, 7, 761),
(9, 8, 761),
(10, 9, 765),
(11, 10, 765),
(16, 13, 766),
(17, 14, 766),
(12, 15, 763),
(13, 16, 763),
(14, 17, 764),
(15, 18, 764);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(11) NOT NULL,
  `type` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type`) VALUES
(1, 'Course'),
(2, 'TD'),
(3, 'TP');

-- --------------------------------------------------------

--
-- Table structure for table `typing`
--

CREATE TABLE `typing` (
  `typing_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `type_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `typing`
--

INSERT INTO `typing` (`typing_id`, `module_id`, `type_id`) VALUES
(1, 1, 2),
(7, 2, 1),
(8, 2, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(15, 4, 1),
(16, 4, 2),
(17, 5, 1),
(18, 5, 3),
(9, 6, 1),
(10, 6, 3),
(13, 7, 1),
(14, 7, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`absence_id`),
  ADD UNIQUE KEY `study_id` (`study_id`,`student_id`),
  ADD KEY `fk_ab_student_id` (`student_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `gr_teaching`
--
ALTER TABLE `gr_teaching`
  ADD PRIMARY KEY (`group_teaching_id`),
  ADD UNIQUE KEY `teaching_id` (`teaching_id`,`group_id`),
  ADD KEY `fk_num_teaching` (`teaching_id`),
  ADD KEY `fk_grp` (`group_id`);

--
-- Indexes for table `justifications`
--
ALTER TABLE `justifications`
  ADD PRIMARY KEY (`justification_id`),
  ADD KEY `fk_student` (`student_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `short_cut` (`short_cut`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_date` (`session_date`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `fk_grp_student` (`group_id`);

--
-- Indexes for table `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`study_id`),
  ADD UNIQUE KEY `session_id_2` (`session_id`,`group_teaching_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `group_teaching_id` (`group_teaching_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `phone` (`teacher_phone`),
  ADD UNIQUE KEY `email` (`teacher_email`);

--
-- Indexes for table `teaching`
--
ALTER TABLE `teaching`
  ADD PRIMARY KEY (`teaching_id`),
  ADD UNIQUE KEY `num_typing` (`typing_id`,`teacher_id`),
  ADD KEY `fk_num_teacher` (`teacher_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `typing`
--
ALTER TABLE `typing`
  ADD PRIMARY KEY (`typing_id`),
  ADD UNIQUE KEY `num_module` (`module_id`,`type_id`),
  ADD KEY `type_id` (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absences`
--
ALTER TABLE `absences`
  MODIFY `absence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gr_teaching`
--
ALTER TABLE `gr_teaching`
  MODIFY `group_teaching_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `justifications`
--
ALTER TABLE `justifications`
  MODIFY `justification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `study`
--
ALTER TABLE `study`
  MODIFY `study_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `teaching`
--
ALTER TABLE `teaching`
  MODIFY `teaching_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `typing`
--
ALTER TABLE `typing`
  MODIFY `typing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absences`
--
ALTER TABLE `absences`
  ADD CONSTRAINT `fk_ab_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ab_study_id` FOREIGN KEY (`study_id`) REFERENCES `study` (`study_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gr_teaching`
--
ALTER TABLE `gr_teaching`
  ADD CONSTRAINT `fk_grp` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_grp_teaching` FOREIGN KEY (`teaching_id`) REFERENCES `teaching` (`teaching_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `justifications`
--
ALTER TABLE `justifications`
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_grp_student` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `study`
--
ALTER TABLE `study`
  ADD CONSTRAINT `study_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `study_ibfk_2` FOREIGN KEY (`group_teaching_id`) REFERENCES `gr_teaching` (`group_teaching_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teaching`
--
ALTER TABLE `teaching`
  ADD CONSTRAINT `fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_typing_id` FOREIGN KEY (`typing_id`) REFERENCES `typing` (`typing_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `typing`
--
ALTER TABLE `typing`
  ADD CONSTRAINT `fk10_num_module` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `types` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
