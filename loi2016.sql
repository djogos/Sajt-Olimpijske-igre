-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2019 at 01:03 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loi2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `formati`
--

CREATE TABLE `formati` (
  `format_id` int(11) NOT NULL,
  `format` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formati`
--

INSERT INTO `formati` (`format_id`, `format`) VALUES
(1, 'grupe 2x6'),
(2, 'trka'),
(3, 'kup'),
(4, 'kvalifikacije');

-- --------------------------------------------------------

--
-- Table structure for table `grupe2x6`
--

CREATE TABLE `grupe2x6` (
  `utakmica_id` int(11) NOT NULL,
  `grupa` varchar(10) DEFAULT NULL,
  `runda` varchar(10) NOT NULL,
  `tim1` int(11) NOT NULL,
  `tim2` int(11) NOT NULL,
  `poeni_tim1` int(11) DEFAULT NULL,
  `poeni_tim2` int(11) DEFAULT NULL,
  `takmicenje` int(11) NOT NULL,
  `termin` datetime DEFAULT NULL,
  `lokacija` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grupe2x6`
--

INSERT INTO `grupe2x6` (`utakmica_id`, `grupa`, `runda`, `tim1`, `tim2`, `poeni_tim1`, `poeni_tim2`, `takmicenje`, `termin`, `lokacija`) VALUES
(39, 'A', '1', 171, 27, NULL, NULL, 27, NULL, NULL),
(40, 'A', '1', 108, 47, NULL, NULL, 27, NULL, NULL),
(41, 'A', '1', 161, 142, NULL, NULL, 27, NULL, NULL),
(42, 'B', '1', 194, 198, NULL, NULL, 27, NULL, NULL),
(43, 'B', '1', 68, 8, NULL, NULL, 27, NULL, NULL),
(44, 'B', '1', 11, 133, NULL, NULL, 27, NULL, NULL),
(45, 'A', '2', 108, 171, NULL, NULL, 27, NULL, NULL),
(46, 'A', '2', 142, 27, NULL, NULL, 27, NULL, NULL),
(47, 'A', '2', 47, 161, NULL, NULL, 27, NULL, NULL),
(48, 'B', '2', 68, 194, NULL, NULL, 27, NULL, NULL),
(49, 'B', '2', 133, 198, NULL, NULL, 27, NULL, NULL),
(50, 'B', '2', 8, 11, NULL, NULL, 27, NULL, NULL),
(51, 'A', '3', 171, 161, NULL, NULL, 27, NULL, NULL),
(52, 'A', '3', 27, 108, NULL, NULL, 27, NULL, NULL),
(53, 'A', '3', 47, 142, NULL, NULL, 27, NULL, NULL),
(54, 'B', '3', 194, 11, NULL, NULL, 27, NULL, NULL),
(55, 'B', '3', 198, 68, NULL, NULL, 27, NULL, NULL),
(56, 'B', '3', 8, 133, NULL, NULL, 27, NULL, NULL),
(57, 'A', '4', 47, 171, NULL, NULL, 27, NULL, NULL),
(58, 'A', '4', 161, 27, NULL, NULL, 27, NULL, NULL),
(59, 'A', '4', 142, 108, NULL, NULL, 27, NULL, NULL),
(60, 'B', '4', 8, 194, NULL, NULL, 27, NULL, NULL),
(61, 'B', '4', 11, 198, NULL, NULL, 27, NULL, NULL),
(62, 'B', '4', 133, 68, NULL, NULL, 27, NULL, NULL),
(63, 'A', '5', 171, 142, NULL, NULL, 27, NULL, NULL),
(64, 'A', '5', 27, 47, NULL, NULL, 27, NULL, NULL),
(65, 'A', '5', 108, 161, NULL, NULL, 27, NULL, NULL),
(66, 'B', '5', 194, 133, NULL, NULL, 27, NULL, NULL),
(67, 'B', '5', 198, 8, NULL, NULL, 27, NULL, NULL),
(68, 'B', '5', 68, 11, NULL, NULL, 27, NULL, NULL),
(69, NULL, 'Q', 0, 0, NULL, NULL, 27, NULL, NULL),
(70, NULL, 'Q', 0, 0, NULL, NULL, 27, NULL, NULL),
(71, NULL, 'Q', 0, 0, NULL, NULL, 27, NULL, NULL),
(72, NULL, 'Q', 0, 0, NULL, NULL, 27, NULL, NULL),
(73, NULL, 'S', 0, 0, NULL, NULL, 27, NULL, NULL),
(74, NULL, 'M', 0, 0, NULL, NULL, 27, NULL, NULL),
(75, NULL, 'S', 0, 0, NULL, NULL, 27, NULL, NULL),
(76, NULL, 'M', 0, 0, NULL, NULL, 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnik_id` int(11) NOT NULL,
  `korisnickoime` varchar(64) NOT NULL,
  `lozinka` varchar(64) NOT NULL,
  `ime` varchar(64) NOT NULL,
  `prezime` varchar(64) NOT NULL,
  `drzava` int(11) NOT NULL,
  `eposta` varchar(64) NOT NULL,
  `tip` int(5) NOT NULL,
  `potvrdjen` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnik_id`, `korisnickoime`, `lozinka`, `ime`, `prezime`, `drzava`, `eposta`, `tip`, `potvrdjen`) VALUES
(1, 'laza', 'sifra123', 'Lazar', 'Lazarevic', 161, 'laki1968@gmail.com', 1, 1),
(2, 'pera', 'sifra123', 'Petar', 'Petrovic', 161, 'pera1982@yahoo.com', 2, 1),
(3, 'admin', 'admin', 'Roberto', 'Silva', 27, 'roberta1975@yahoo.com', 0, 1),
(4, 'mika', 'Sifra123--', 'Milan', 'Milanovic', 122, 'mile@yahoo.com', 1, 1),
(5, 'simkeks', 'Siso--01', 'Nikola', 'Simici', 2, 'simnik1994@gmail.com', 1, 1),
(6, 'sale', 'AAbbb22--a', 'Sasa', 'Vasic', 4, 'simnik1994@gmail.com', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kup`
--

CREATE TABLE `kup` (
  `kup_id` int(11) NOT NULL,
  `tim1` int(11) DEFAULT NULL,
  `tim2` int(11) DEFAULT NULL,
  `poeni_tim1` int(11) DEFAULT NULL,
  `poeni_tim2` int(11) DEFAULT NULL,
  `lokacija` varchar(100) DEFAULT NULL,
  `termin` datetime DEFAULT NULL,
  `takmicenje` int(11) NOT NULL,
  `runda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kup`
--

INSERT INTO `kup` (`kup_id`, `tim1`, `tim2`, `poeni_tim1`, `poeni_tim2`, `lokacija`, `termin`, `takmicenje`, `runda`) VALUES
(35, 15, 13, 1, 0, 'Karioke arena 2', '2016-09-06 00:00:00', 19, 4),
(36, 2, 12, 1, 0, 'Karioke arena 2', '2016-09-14 00:00:00', 19, 4),
(37, 14, 5, 1, 0, 'Karioke arena 2', '2016-09-20 00:00:00', 19, 4),
(38, 8, 1, 1, 0, 'Karioke arena 2', '2016-09-05 00:00:00', 19, 4),
(39, 15, 2, 2, 1, 'Karioke arena 2', '2016-09-29 00:00:00', 19, 2),
(40, 14, 8, 2, 1, 'Karioke arena 2', '2016-09-30 00:00:00', 19, 2),
(41, 2, 8, 1, 0, 'Karioke arena 2', '2016-09-28 00:00:00', 19, 1),
(42, 15, 14, 1, 0, 'Karioke arena 2', '2016-09-01 00:00:00', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kvalifikacije`
--

CREATE TABLE `kvalifikacije` (
  `kval_id` int(11) NOT NULL,
  `takmicar` int(11) DEFAULT NULL,
  `rezultat` varchar(20) DEFAULT NULL,
  `lokacija` varchar(100) DEFAULT NULL,
  `termin` datetime DEFAULT NULL,
  `grupa` varchar(5) NOT NULL,
  `takmicenje` int(11) NOT NULL,
  `potvrda` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kvalifikacije`
--

INSERT INTO `kvalifikacije` (`kval_id`, `takmicar`, `rezultat`, `lokacija`, `termin`, `grupa`, `takmicenje`, `potvrda`) VALUES
(127, 194, '00,11', 'Marakana', '2016-09-26 00:00:00', '1', 26, 1),
(128, 191, NULL, 'Marakana', '2016-09-26 00:00:00', '1', 26, 0),
(129, 199, NULL, 'Marakana', '2016-09-26 00:00:00', '1', 26, 0),
(130, 192, NULL, 'Marakana', '2016-09-26 00:00:00', '1', 26, 0),
(131, 197, NULL, 'Marakana', '2016-09-26 00:00:00', '1', 26, 0),
(132, 196, NULL, 'Marakana', '2016-09-26 00:00:00', '1', 26, 0),
(133, 200, NULL, 'Marakana', '2016-09-26 00:00:00', '1', 26, 0),
(134, 195, NULL, 'Marakana', '2016-09-26 00:00:00', '1', 26, 0),
(135, 190, NULL, 'Marakana', '2016-09-27 00:00:00', '2', 26, 0),
(136, 193, NULL, 'Marakana', '2016-09-27 00:00:00', '2', 26, 0),
(137, 198, NULL, 'Marakana', '2016-09-27 00:00:00', '2', 26, 0),
(138, NULL, NULL, 'Marakana', '2016-09-28 00:00:00', 'F', 26, 0),
(139, NULL, NULL, 'Marakana', '2016-09-28 00:00:00', 'F', 26, 0),
(140, NULL, NULL, 'Marakana', '2016-09-28 00:00:00', 'F', 26, 0),
(141, NULL, NULL, 'Marakana', '2016-09-28 00:00:00', 'F', 26, 0),
(142, NULL, NULL, 'Marakana', '2016-09-28 00:00:00', 'F', 26, 0),
(143, NULL, NULL, 'Marakana', '2016-09-28 00:00:00', 'F', 26, 0),
(144, NULL, NULL, 'Marakana', '2016-09-28 00:00:00', 'F', 26, 0),
(145, NULL, NULL, 'Marakana', '2016-09-28 00:00:00', 'F', 26, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lokacije`
--

CREATE TABLE `lokacije` (
  `lokacija` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokacije`
--

INSERT INTO `lokacije` (`lokacija`) VALUES
('Karioke arena 1'),
('Karioke arena 2'),
('Marakanazinjo'),
('Marakana'),
('Olimpijski stadion');

-- --------------------------------------------------------

--
-- Table structure for table `rekordi`
--

CREATE TABLE `rekordi` (
  `rekord_id` int(11) NOT NULL,
  `godina` varchar(64) NOT NULL,
  `mesto` varchar(64) NOT NULL,
  `disciplina` varchar(100) NOT NULL,
  `takmicar` varchar(100) NOT NULL,
  `zemlja` varchar(100) NOT NULL,
  `rekord` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekordi`
--

INSERT INTO `rekordi` (`rekord_id`, `godina`, `mesto`, `disciplina`, `takmicar`, `zemlja`, `rekord`) VALUES
(1, '2016', 'Rio de žaneiro, Brazil', '400m trcanje', 'Vejd Van Nikerk', 'Juznoafricka Republika', '43,03');

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `sport_id` int(11) NOT NULL,
  `naziv` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`sport_id`, `naziv`) VALUES
(1, 'kosarka'),
(2, 'odbojka'),
(3, 'vaterpolo'),
(4, 'atletika'),
(5, 'biciklizam'),
(6, 'plivanje'),
(7, 'stoni tenis'),
(8, 'streljastvo'),
(9, 'tenis'),
(10, 'bocanje');

-- --------------------------------------------------------

--
-- Table structure for table `sportisti`
--

CREATE TABLE `sportisti` (
  `sportista_id` int(11) NOT NULL,
  `ime` varchar(64) NOT NULL,
  `prezime` varchar(64) NOT NULL,
  `zemlja` int(11) NOT NULL,
  `sport` int(11) NOT NULL,
  `disciplina` varchar(64) NOT NULL,
  `medalja` int(5) NOT NULL,
  `pol` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sportisti`
--

INSERT INTO `sportisti` (`sportista_id`, `ime`, `prezime`, `zemlja`, `sport`, `disciplina`, `medalja`, `pol`) VALUES
(1, 'Grant', 'IRVINE', 12, 6, ',22,', 3, 'M'),
(2, 'Aleksandr', 'SADOVNIKOV', 152, 6, ',22,', 1, 'M'),
(3, 'Mehdy', 'METELLA', 68, 6, ',22,', 0, 'M'),
(4, 'Michael', 'PHELPS', 194, 6, ',22,', 0, 'M'),
(5, 'Joseph', 'SCHOOLING', 164, 6, ',22,', 0, 'M'),
(6, 'Yauhen', 'TSURKIN', 18, 6, ',22,', 0, 'M'),
(7, 'Takuro', 'FUJII', 94, 6, ',22,', 0, 'M'),
(8, 'Albert', 'SUBIRATS', 198, 6, ',22,', 0, 'M'),
(9, 'Qibin', 'ZHANG', 142, 6, ',22,', 0, 'M'),
(10, 'Zheng', 'QUAH', 164, 6, ',22,', 0, 'M'),
(11, 'Marcos', 'MACEDO', 27, 6, ',22,', 0, 'M'),
(12, 'Henrique', 'MARTINS', 27, 6, ',22,', 3, 'M'),
(13, 'James', 'GUY', 74, 6, ',22,', 0, 'M'),
(14, 'Long', 'GUTIERREZFENG', 119, 6, ',22,', 4, 'M'),
(15, 'Liubomyr', 'LEMESHKO', 191, 6, ',22,', 1, 'M'),
(16, 'Luis', 'MARTINEZ', 79, 6, ',22,', 0, 'M'),
(33, 'Sarah', 'SJOSTROM', 177, 6, ',22,', 0, 'Z'),
(34, 'Emma', 'McKEON', 11, 6, ',22,', 0, 'Z'),
(35, 'Penny', 'OLEKSIAK', 34, 6, ',22,', 0, 'Z'),
(36, 'Ying', 'LU', 142, 6, ',22,', 0, 'Z'),
(37, 'Sehyeon', 'AN', 149, 6, ',22,', 0, 'Z'),
(38, 'Natsumi', 'HOSHI', 94, 6, ',22,', 0, 'Z'),
(39, 'Kimberly', 'BUYS', 19, 6, ',22,', 0, 'Z'),
(40, 'Xinyi', 'CHEN', 142, 6, ',22,', 0, 'Z'),
(48, 'Nicolas', 'BRUSSINO', 8, 1, ',1,', 1, 'M'),
(49, 'Facundo', 'CAMPAZZO', 8, 1, ',1,', 1, 'M'),
(50, 'Gabriel', 'DECK', 8, 1, ',1,', 1, 'M'),
(51, 'Marcos', 'DELIA', 8, 1, ',1,', 1, 'M'),
(52, 'Patricio', 'GARINO', 8, 1, ',1,', 1, 'M'),
(53, 'Andres', 'NOCIONI', 8, 1, ',1,', 1, 'M'),
(54, 'Nicolas', 'LAPROVITTOLA', 8, 1, ',1,', 1, 'M'),
(55, 'Luis', 'SCOLA', 8, 1, ',1,', 1, 'M'),
(56, 'Leo', 'MAINOLDI', 8, 1, ',1,', 1, 'M'),
(57, 'Manu', 'GINOBILI', 8, 1, ',1,', 1, 'M'),
(58, 'Roberto', 'ACUNA', 8, 1, ',1,', 1, 'M'),
(59, 'Carlos', 'DELFINO', 8, 1, ',1,', 1, 'M'),
(60, 'Alex', 'GARCIA', 27, 1, ',1,', 0, 'M'),
(61, 'Augusto', 'LIMA', 27, 1, ',1,', 0, 'M'),
(62, 'Guilherme', 'GIOVANNONI', 27, 1, ',1,', 0, 'M'),
(63, 'Leandro', 'BARBOSA', 27, 1, ',1,', 0, 'M'),
(64, 'Marcelinho', 'HUERTAS', 27, 1, ',1,', 0, 'M'),
(65, 'Marcus', 'MARQUINHOS', 27, 1, ',1,', 0, 'M'),
(66, 'Nene', 'HILARIO', 27, 1, ',1,', 0, 'M'),
(67, 'Rafael', 'LUZ', 27, 1, ',1,', 0, 'M'),
(68, 'Rafael', 'HETTSHEIMEIR', 27, 1, ',1,', 0, 'M'),
(69, 'Raulzinho', 'NETO', 27, 1, ',1,', 0, 'M'),
(70, 'Vitor', 'BENITE', 27, 1, ',1,', 0, 'M'),
(71, 'Cristiano', 'FELICIO', 27, 1, ',1,', 0, 'M'),
(72, 'David', 'ANDERSEN', 11, 1, ',1,', 1, 'M'),
(73, 'Cameron', 'BAIRSTOW', 11, 1, ',1,', 1, 'M'),
(74, 'Aron', 'BAYNES', 11, 1, ',1,', 1, 'M'),
(75, 'Andrew', 'BOGUT', 11, 1, ',1,', 1, 'M'),
(76, 'Ryan', 'BROEKHOFF', 11, 1, ',1,', 1, 'M'),
(77, 'Matthew', 'DELLAVEDOVA', 11, 1, ',1,', 1, 'M'),
(78, 'Chris', 'GOULDING', 11, 1, ',1,', 1, 'M'),
(79, 'Joe', 'INGLES', 11, 1, ',1,', 1, 'M'),
(80, 'Kevin', 'LISCH', 11, 1, ',1,', 1, 'M'),
(81, 'Damian', 'MARTIN', 11, 1, ',1,', 1, 'M'),
(82, 'Patty', 'MILLS', 11, 1, ',1,', 1, 'M'),
(83, 'Brock', 'MOTUM', 11, 1, ',1,', 1, 'M'),
(84, 'Ailun', 'GUO', 142, 1, ',1,', 0, 'M'),
(85, 'Jiwei', 'ZHAO', 142, 1, ',1,', 0, 'M'),
(86, 'Ran', 'SUI', 142, 1, ',1,', 0, 'M'),
(87, 'Gen', 'LI', 142, 1, ',1,', 0, 'M'),
(88, 'Qi', 'ZHOU', 142, 1, ',1,', 0, 'M'),
(89, 'Jianlian', 'YI', 142, 1, ',1,', 0, 'M'),
(90, 'Zhelin', 'WANG', 142, 1, ',1,', 0, 'M'),
(91, 'Xiaochuan', 'ZHAI', 142, 1, ',1,', 0, 'M'),
(92, 'Yanyuhang', 'DING', 142, 1, ',1,', 0, 'M'),
(93, 'Peng', 'ZHOU', 142, 1, ',1,', 0, 'M'),
(94, 'Yuchen', 'ZOU', 142, 1, ',1,', 0, 'M'),
(95, 'Muhao', 'LI', 142, 1, ',1,', 0, 'M'),
(96, 'Roko', 'UKIC', 47, 1, ',1,', 0, 'M'),
(97, 'Rok', 'STIPCEVIC', 47, 1, ',1,', 0, 'M'),
(98, 'Bojan', 'BOGDANOVIC', 47, 1, ',1,', 0, 'M'),
(99, 'Mario', 'HEZONJA', 47, 1, ',1,', 0, 'M'),
(100, 'Filip', 'KRUSLIN', 47, 1, ',1,', 0, 'M'),
(101, 'Luka', 'BABIC', 47, 1, ',1,', 0, 'M'),
(102, 'Zeljko', 'SAKIC', 47, 1, ',1,', 0, 'M'),
(103, 'Marko', 'ARAPOVIC', 47, 1, ',1,', 0, 'M'),
(104, 'Miro', 'BILAN', 47, 1, ',1,', 0, 'M'),
(105, 'Darko', 'PLANINIC', 47, 1, ',1,', 0, 'M'),
(106, 'Dario', 'SARIC', 47, 1, ',1,', 0, 'M'),
(107, 'Krunoslav', 'SIMON', 47, 1, ',1,', 0, 'M'),
(108, 'Nicolas', 'BATUM', 68, 1, ',1,', 1, 'M'),
(109, 'Boris', 'DIAW', 68, 1, ',1,', 1, 'M'),
(110, 'Antoine', 'DIOT', 68, 1, ',1,', 1, 'M'),
(111, 'Nando', 'DE COLO', 68, 1, ',1,', 1, 'M'),
(112, 'Mickael', 'GELABALE', 68, 1, ',1,', 1, 'M'),
(113, 'Rudy', 'GOBERT', 68, 1, ',1,', 1, 'M'),
(114, 'Charles', 'KAHUDI', 68, 1, ',1,', 1, 'M'),
(115, 'Joffrey', 'LAUVERGNE', 68, 1, ',1,', 1, 'M'),
(116, 'Tony', 'PARKER', 68, 1, ',1,', 1, 'M'),
(117, 'Florent', 'PIETRUS', 68, 1, ',1,', 1, 'M'),
(118, 'Kim', 'TILLIE', 68, 1, ',1,', 1, 'M'),
(119, 'Robertas', 'JAVTOKAS', 108, 1, ',1,', 0, 'M'),
(120, 'Mantas', 'KALNIETIS', 108, 1, ',1,', 0, 'M'),
(121, 'Jonas', 'MACIULIS', 108, 1, ',1,', 0, 'M'),
(122, 'Mindaugas', 'KUZMINSKAS', 108, 1, ',1,', 0, 'M'),
(123, 'Jonas', 'VALANCIUNAS', 108, 1, ',1,', 0, 'M'),
(124, 'Paulius', 'JANKUNAS', 108, 1, ',1,', 0, 'M'),
(125, 'Antanas', 'KAVALIAUSKAS', 108, 1, ',1,', 0, 'M'),
(126, 'Renaldas', 'SEIBUTIS', 108, 1, ',1,', 0, 'M'),
(127, 'Marius', 'GRIGONIS', 108, 1, ',1,', 0, 'M'),
(128, 'Adas', 'JUSKEVICIUS', 108, 1, ',1,', 0, 'M'),
(129, 'Domantas', 'SABONIS', 108, 1, ',1,', 0, 'M'),
(130, 'Vaidas', 'KARINIAUSKAS', 108, 1, ',1,', 0, 'M'),
(131, 'Chamberlain', 'OGUCHI', 133, 1, ',1,', 0, 'M'),
(132, 'Ebi', 'ERE', 133, 1, ',1,', 0, 'M'),
(133, 'Michael', 'GBINIJE', 133, 1, ',1,', 0, 'M'),
(134, 'Ekenechukwu', 'IBEKWE', 133, 1, ',1,', 0, 'M'),
(135, 'Josh', 'AKOGNON', 133, 1, ',1,', 0, 'M'),
(136, 'Andy', 'OGIDE', 133, 1, ',1,', 0, 'M'),
(137, 'Michael', 'UMEH', 133, 1, ',1,', 0, 'M'),
(138, 'Alade', 'AMINU', 133, 1, ',1,', 0, 'M'),
(139, 'Ike', 'DIOGU', 133, 1, ',1,', 0, 'M'),
(140, 'Olaseni', 'LAWAL', 133, 1, ',1,', 0, 'M'),
(141, 'Ben', 'UZOH', 133, 1, ',1,', 0, 'M'),
(142, 'Stan', 'OKOYE', 133, 1, ',1,', 0, 'M'),
(143, 'Stefan', 'BIRCEVIC', 161, 1, ',1,', 3, 'M'),
(144, 'Stefan	', 'MARKOVIC', 161, 1, ',1,', 1, 'M	'),
(145, 'Nemanja', 'NEDOVIC', 161, 1, ',1,', 3, 'M'),
(146, 'Marko', 'SIMONOVIC', 161, 1, ',1,', 3, 'M'),
(147, 'Vladimir', 'STIMAC', 161, 1, ',1,', 3, 'M'),
(148, 'Milos', 'TEODOSIC', 161, 1, ',1,', 3, 'M'),
(149, 'Bogdan', 'BOGDANOVIC', 161, 1, ',1,', 3, 'M'),
(150, 'Milan', 'MACVAN', 161, 1, ',1,', 3, 'M'),
(151, 'Nikola', 'KALINIC', 161, 1, ',1,', 3, 'M'),
(152, 'Nikola', 'JOKIC', 161, 1, ',1,', 3, 'M'),
(153, 'Miroslav', 'RADULJICA', 161, 1, ',1,', 3, 'M'),
(154, 'Stefan', 'JOVIC', 161, 1, ',1,', 3, 'M'),
(155, 'Jose', 'CALDERON', 171, 1, ',1,', 0, 'M'),
(156, 'Victor', 'CLAVER', 171, 1, ',1,', 0, 'M'),
(157, 'Rudy', 'FERNANDEZ', 171, 1, ',1,', 0, 'M'),
(158, 'Pau', 'GASOL', 171, 1, ',1,', 0, 'M'),
(159, 'Sergio', 'LLULL', 171, 1, ',1,', 0, 'M'),
(160, 'Nikola', 'MIROTIC', 171, 1, ',1,', 0, 'M'),
(161, 'Juan-Carlos', 'NAVARRO', 171, 1, ',1,', 0, 'M'),
(162, 'Felipe', 'REYES', 171, 1, ',1,', 0, 'M'),
(163, 'Sergio', 'RODRIGUEZ', 171, 1, ',1,', 0, 'M'),
(164, 'Ricky', 'RUBIO', 171, 1, ',1,', 0, 'M'),
(165, 'Alex', 'ABRINES', 171, 1, ',1,', 0, 'M'),
(166, 'Willy', 'HERNANGOMEZ', 171, 1, ',1,', 0, 'M'),
(167, 'Carmelo', 'ANTHONY', 194, 1, ',1,', 3, 'M'),
(168, 'Harrison', 'BARNES', 194, 1, ',1,', 3, 'M'),
(169, 'Jimmy', 'BUTLER', 194, 1, ',1,', 3, 'M'),
(170, 'Demar', 'DEROZAN', 194, 1, ',1,', 3, 'M'),
(171, 'Kevin', 'DURANT', 194, 1, ',1,', 3, 'M'),
(172, 'Paul', 'GEORGE', 194, 1, ',1,', 3, 'M'),
(173, 'Draymond', 'GREEN', 194, 1, ',1,', 3, 'M'),
(174, 'DeAndre', 'JORDAN', 194, 1, ',1,', 3, 'M'),
(175, 'Kyrie', 'IRVING', 194, 1, ',1,', 3, 'M'),
(176, 'Klay', 'THOMPSON', 194, 1, ',1,', 3, 'M'),
(177, 'Kyle', 'LOWRY', 194, 1, ',1,', 3, 'M'),
(178, 'David', 'CUBILLAN', 198, 1, ',1,', 0, 'M'),
(179, 'Heissler', 'GUILLENT', 198, 1, ',1,', 0, 'M'),
(180, 'Gregory', 'VARGAS', 198, 1, ',1,', 0, 'M'),
(181, 'Jose', 'VARGAS', 198, 1, ',1,', 0, 'M'),
(182, 'Nestor', 'COLMENARES', 198, 1, ',1,', 0, 'M'),
(183, 'Miguel', 'MARRIAGA', 198, 1, ',1,', 0, 'M'),
(184, 'Miguel', 'RUIZ', 198, 1, ',1,', 0, 'M'),
(185, 'John', 'COX', 198, 1, ',1,', 0, 'M'),
(186, 'Windi', 'GRATEROL', 198, 1, ',1,', 0, 'M'),
(187, 'Gregory', 'ECHENIQUE', 198, 1, ',1,', 0, 'M'),
(188, 'Anthony', 'PEREZ', 198, 1, ',1,', 0, 'M'),
(189, 'Dwight', 'LEWIS', 198, 1, ',1,', 0, 'M'),
(190, 'Jusein', 'Bolt', 161, 4, ',4,', 0, 'M'),
(191, 'Asafa', 'Pauel', 161, 4, ',4,', 0, 'M'),
(192, 'Dzastin ', 'Getlin', 161, 4, ',4,', 0, 'M'),
(193, 'Johan', 'Blejk', 161, 4, ',4,', 0, 'M'),
(194, 'Kristof ', 'Lemetr', 161, 4, ',4,', 0, 'M'),
(195, 'Dzesi ', 'Ovens', 161, 4, ',4,', 0, 'M'),
(196, 'Pera', 'Peric', 161, 4, ',4,', 1, 'M'),
(197, 'abc', 'abc', 161, 4, ',4,', 1, 'M'),
(198, 'abv', 'avb', 161, 4, ',4,', 0, 'M'),
(199, 'ads', 'ada', 161, 4, ',4,', 2, 'M'),
(200, 'add', 'ddd', 161, 4, ',4,', 1, 'M'),
(201, 'Ivana ', 'Spanovic', 161, 4, ',11,', 0, 'Z'),
(202, 'Ivana', 'Maksimovic', 161, 8, ',26,27,28,29,', 0, 'Z');

-- --------------------------------------------------------

--
-- Table structure for table `sport_extra`
--

CREATE TABLE `sport_extra` (
  `extra_id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `disciplina` varchar(100) DEFAULT NULL,
  `vrsta` varchar(100) NOT NULL,
  `min_igraca` int(5) DEFAULT NULL,
  `max_igraca` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sport_extra`
--

INSERT INTO `sport_extra` (`extra_id`, `sport_id`, `disciplina`, `vrsta`, `min_igraca`, `max_igraca`) VALUES
(1, 1, NULL, 'ekipni', 5, 12),
(2, 2, NULL, 'ekipni', 6, 12),
(3, 3, NULL, 'ekipni', 6, 13),
(4, 4, '100 metara trcanje', 'individualni', NULL, NULL),
(5, 4, '200 metara trcanje', 'individualni', NULL, NULL),
(6, 4, '400 metara trcanje', 'individualni', NULL, NULL),
(7, 4, '800 metara trcanje', 'individualni', NULL, NULL),
(8, 4, '5000 metara trcanje', 'individualni', NULL, NULL),
(9, 4, '10000 metara trcanje', 'individualni', NULL, NULL),
(10, 4, 'skok u vis', 'individualni', NULL, NULL),
(11, 4, 'skok u dalj', 'individualni', NULL, NULL),
(12, 4, 'troskok', 'individualni', NULL, NULL),
(13, 4, 'skok s motkom', 'individualni', NULL, NULL),
(14, 4, 'bacanje kugle', 'individualni', NULL, NULL),
(15, 4, 'bacanje diska', 'individualni', NULL, NULL),
(16, 4, 'bacanje kladiva', 'individualni', NULL, NULL),
(17, 4, 'bacanje koplja', 'individualni', NULL, NULL),
(18, 4, 'maraton', 'individualni', NULL, NULL),
(19, 4, '20km brzo hodanje', 'individualni', NULL, NULL),
(20, 4, '50km brzo hodanje', 'individualni', NULL, NULL),
(21, 5, 'drumska trka 225km', 'individualni', NULL, NULL),
(22, 6, '100m leptir', 'individualni', NULL, NULL),
(23, 6, '200m slobodno', 'individualni', NULL, NULL),
(24, 7, 'singl(s. tenis)', 'individualni', NULL, NULL),
(25, 7, 'dubl(s. tenis)', 'ekipni', 2, 2),
(26, 8, '50m trostav', 'individualni', NULL, NULL),
(27, 8, '10m vazdusna puska', 'individualni', NULL, NULL),
(28, 8, '25m malokalibarski pistolj', 'individualni', NULL, NULL),
(29, 8, '10m vazdusni pistolj', 'individualni', NULL, NULL),
(30, 9, 'singl(tenis)', 'individualni', NULL, NULL),
(31, 9, 'dubl(tenis)', 'ekipni', 2, 2),
(32, 8, 'pucanje do poslednjeg', 'ekipni', 16, 16),
(33, 8, 'pucanje do poslednjeg', 'ekipni', 16, 16),
(34, 10, 'bocanje sa preponama', 'ekipni', 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `takmicenja`
--

CREATE TABLE `takmicenja` (
  `takmicenje_id` int(11) NOT NULL,
  `format` varchar(64) NOT NULL,
  `sport` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL,
  `pol` varchar(5) NOT NULL,
  `datum_pocetka` datetime NOT NULL,
  `datum_kraja` datetime NOT NULL,
  `lokacije` varchar(100) NOT NULL,
  `delegat` int(11) NOT NULL,
  `takmicari` varchar(500) NOT NULL,
  `zavrseno` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `takmicenja`
--

INSERT INTO `takmicenja` (`takmicenje_id`, `format`, `sport`, `disciplina`, `pol`, `datum_pocetka`, `datum_kraja`, `lokacije`, `delegat`, `takmicari`, `zavrseno`) VALUES
(19, 'kup', 6, 22, 'M', '2016-09-22 00:00:00', '2016-09-30 00:00:00', 'Karioke arena 2,Marakanazinjo,', 1, '8,2,1,12,13,5,15,14,', 1),
(26, 'kvalifikacije', 4, 4, 'M', '2016-09-26 00:00:00', '2016-09-30 00:00:00', 'Marakana,Olimpijski stadion,', 1, '197,198,200,199,191,192,195,193,190,194,196,', 0),
(27, 'grupe 2x6', 1, 1, 'M', '2016-09-26 00:00:00', '2016-09-30 00:00:00', 'Olimpijski stadion,', 1, '8,11,27,47,68,108,133,142,161,171,194,198,', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trka`
--

CREATE TABLE `trka` (
  `trka_id` int(11) NOT NULL,
  `takmicenje` int(11) NOT NULL,
  `ucesnik` int(11) NOT NULL,
  `termin` datetime NOT NULL,
  `lokacija` varchar(100) NOT NULL,
  `rezultat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zemlje`
--

CREATE TABLE `zemlje` (
  `zemlja_id` int(11) NOT NULL,
  `naziv` varchar(64) NOT NULL,
  `zlato` int(11) NOT NULL,
  `srebro` int(11) NOT NULL,
  `bronza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zemlje`
--

INSERT INTO `zemlje` (`zemlja_id`, `naziv`, `zlato`, `srebro`, `bronza`) VALUES
(1, 'Avganistan', 0, 0, 0),
(2, 'Albanija', 0, 0, 0),
(3, 'Alzir', 0, 0, 0),
(4, 'Americka Samoa', 0, 0, 0),
(5, 'Andora', 0, 0, 0),
(6, 'Angola', 0, 0, 0),
(7, 'Antigva i Barbuda', 0, 0, 0),
(8, 'Argentina', 0, 0, 1),
(9, 'Jermenija', 0, 0, 0),
(10, 'Aruba', 0, 0, 0),
(11, 'Australija', 0, 0, 0),
(12, 'Austrija', 2, 0, 0),
(13, 'Azerbejdzan', 0, 0, 0),
(14, 'Bahami', 0, 0, 0),
(15, 'Bahrein', 0, 0, 0),
(16, 'Banglades', 0, 0, 0),
(17, 'Barbados', 0, 0, 0),
(18, 'Belorusija', 0, 0, 0),
(19, 'Belgija', 0, 0, 0),
(20, 'Belize', 0, 0, 0),
(21, 'Benin', 0, 0, 0),
(22, 'Bermudi', 0, 0, 0),
(23, 'Butan', 0, 0, 0),
(24, 'Bolivija', 0, 0, 0),
(25, 'Bosna i Hercegovina', 0, 0, 0),
(26, 'Bocvana', 0, 0, 0),
(27, 'Brazil', 0, 0, 3),
(28, 'Brunej', 0, 0, 0),
(29, 'Bugarska', 0, 0, 0),
(30, 'Burkina Faso', 0, 0, 0),
(31, 'Burundi', 0, 0, 0),
(32, 'Kambodza', 0, 0, 0),
(33, 'Kamerun', 0, 0, 0),
(34, 'Kanada', 0, 0, 0),
(35, 'Zelenortska Ostrva', 0, 0, 0),
(36, 'Kajmanska Ostrva', 0, 0, 0),
(37, 'Centralno Africka Republika', 0, 0, 0),
(38, 'Cad', 0, 0, 0),
(39, 'Cile', 0, 0, 0),
(40, 'Kineski Tajpej', 0, 0, 0),
(41, 'Kolumbija', 0, 0, 0),
(42, 'Komori', 0, 0, 0),
(43, 'Kongo', 0, 0, 0),
(44, 'Kukova Ostrva', 0, 0, 0),
(45, 'Kostarika', 0, 0, 0),
(46, 'Obala Slonovace', 0, 0, 0),
(47, 'Hrvatska', 0, 0, 0),
(48, 'Kuba', 0, 0, 0),
(49, 'Kipar', 0, 0, 0),
(50, 'Ceska Republika', 0, 0, 0),
(51, 'Severna Koreja', 0, 0, 0),
(52, 'DR Kongo', 0, 0, 0),
(53, 'Istocni Timor', 0, 0, 0),
(54, 'Danska', 0, 0, 0),
(55, 'Dzibuti', 0, 0, 0),
(56, 'Dominika', 0, 0, 0),
(57, 'Dominikanska Republika', 0, 0, 0),
(58, 'Ekvador', 0, 0, 0),
(59, 'Egipat', 0, 0, 0),
(60, 'El Salvador', 0, 0, 0),
(61, 'Ekvatorijalna Gvineja', 0, 0, 0),
(62, 'Eritreja', 0, 0, 0),
(63, 'Estonija', 0, 0, 0),
(64, 'Etiopija', 0, 0, 0),
(65, 'Mikronezija', 0, 0, 0),
(66, 'Fidzi', 0, 0, 0),
(67, 'Finska', 0, 0, 0),
(68, 'Francuska', 0, 0, 1),
(69, 'Gabon', 0, 0, 0),
(70, 'Gambija', 0, 0, 0),
(71, 'Gruzija', 0, 0, 0),
(72, 'Nemacka', 0, 0, 0),
(73, 'Gana', 0, 0, 0),
(74, 'Velika Britanija', 0, 0, 0),
(75, 'Grcka', 0, 0, 0),
(76, 'Grenada', 0, 0, 0),
(77, 'Gvam', 0, 0, 0),
(78, 'Gvatemala', 0, 0, 0),
(79, 'Gvajana', 0, 0, 0),
(80, 'Gvineja Bisao', 0, 0, 0),
(81, 'Haiti', 0, 0, 0),
(82, 'Honduras', 0, 0, 0),
(83, 'Hong Kong, Kina', 0, 0, 0),
(84, 'Madjarska', 0, 0, 0),
(85, 'Island', 0, 0, 0),
(86, 'Indija', 0, 0, 0),
(87, 'Indonezija', 0, 0, 0),
(88, 'Irak', 0, 0, 0),
(89, 'Irska', 0, 0, 0),
(90, 'Iran', 0, 0, 0),
(91, 'Izrael', 0, 0, 0),
(92, 'Italija', 0, 0, 0),
(93, 'Jamajka', 0, 0, 0),
(94, 'Japan', 0, 0, 0),
(95, 'Jordan', 0, 0, 0),
(96, 'Kazakstan', 0, 0, 0),
(97, 'Kenija', 0, 0, 0),
(98, 'Kiribati', 0, 0, 0),
(99, 'Kuvajt', 0, 0, 0),
(100, 'Kirgistan', 0, 0, 0),
(101, 'Laos', 0, 0, 0),
(102, 'Letonija', 0, 0, 0),
(103, 'Liban', 0, 0, 0),
(104, 'Lesoto', 0, 0, 0),
(105, 'Liberija', 0, 0, 0),
(106, 'Libija', 0, 0, 0),
(107, 'Lihtenstajn', 0, 0, 0),
(108, 'Litvanija', 0, 0, 0),
(109, 'Luksemburg', 0, 0, 0),
(110, 'Madagaskar', 0, 0, 0),
(111, 'Malavi', 0, 0, 0),
(112, 'Malezija', 0, 0, 0),
(113, 'Maldivi', 0, 0, 0),
(114, 'Mali', 0, 0, 0),
(115, 'Malta', 0, 0, 0),
(116, 'Marsalova Ostrva', 0, 0, 0),
(117, 'Mauritanija', 0, 0, 0),
(118, 'Mauricijus', 0, 0, 0),
(119, 'Meksiko', 0, 4, 0),
(120, 'Monako', 0, 0, 0),
(121, 'Mongolija', 0, 0, 0),
(122, 'Crna Gora', 0, 0, 0),
(123, 'Maroko', 0, 0, 0),
(124, 'Mozambik', 0, 0, 0),
(125, 'Mijanmar', 0, 0, 0),
(126, 'Namibija', 0, 0, 0),
(127, 'Nauru', 0, 0, 0),
(128, 'Nepal', 0, 0, 0),
(129, 'Holandija', 0, 0, 0),
(130, 'Novi Zeland', 0, 0, 0),
(131, 'Nikaragva', 0, 0, 0),
(132, 'Niger', 0, 0, 0),
(133, 'Nigerija', 0, 0, 0),
(134, 'Norveska', 0, 0, 0),
(135, 'Oman', 0, 0, 0),
(136, 'Pakistan', 0, 0, 0),
(137, 'Palau', 0, 0, 0),
(138, 'Palestina', 0, 0, 0),
(139, 'Panama', 0, 0, 0),
(140, 'Papua Nova Gvineja', 0, 0, 0),
(141, 'Paragvaj', 0, 0, 0),
(142, 'Kina', 0, 0, 0),
(143, 'Peru', 0, 0, 0),
(144, 'Filipini', 0, 0, 0),
(145, 'Poljska', 0, 0, 0),
(146, 'Portugalija', 0, 0, 0),
(147, 'Portoriko', 0, 0, 0),
(148, 'Katar', 0, 0, 0),
(149, 'Juzna Koreja', 0, 0, 0),
(150, 'Moldavija', 0, 0, 0),
(151, 'Rumunija', 0, 0, 0),
(152, 'Rusija', 0, 0, 1),
(153, 'Ruanda', 0, 0, 0),
(154, 'Sveti Kits i Nevis', 0, 0, 0),
(155, 'Sveta Lucija', 0, 0, 0),
(156, 'Samoa', 0, 0, 0),
(157, 'San Marino', 0, 0, 0),
(158, 'Sao Tome i Principe', 0, 0, 0),
(159, 'Saudiska Arabija', 0, 0, 0),
(160, 'Senegal', 0, 0, 0),
(161, 'Srbija', 1, 1, 1),
(162, 'Sejseli', 0, 0, 0),
(163, 'Sijera Leone', 0, 0, 0),
(164, 'Singapur', 0, 0, 0),
(165, 'Slovacka', 0, 0, 0),
(166, 'Slovenija', 0, 0, 0),
(167, 'Solomonska Ostrva', 0, 0, 0),
(168, 'Somalija', 0, 0, 0),
(169, 'Juznoafricka Republika', 0, 0, 0),
(170, 'Juzni Sudan', 0, 0, 0),
(171, 'Spanija', 0, 0, 0),
(172, 'Sri Lanka', 0, 0, 0),
(173, 'Sent Vinsent i Grenadini', 0, 0, 0),
(174, 'Sudan', 0, 0, 0),
(175, 'Surinam', 0, 0, 0),
(176, 'Svajcarska', 0, 0, 0),
(177, 'Svedska', 0, 0, 0),
(178, 'Svazilend', 0, 0, 0),
(179, 'Sirija', 0, 0, 0),
(180, 'Tadzikistan', 0, 0, 0),
(181, 'Tajland', 0, 0, 0),
(182, 'Makedonija', 0, 0, 0),
(183, 'Togo', 0, 0, 0),
(184, 'Tonga', 0, 0, 0),
(185, 'Trinidad i Tobago', 0, 0, 0),
(186, 'Tunis', 0, 0, 0),
(187, 'Turska', 0, 0, 0),
(188, 'Turkmenistan', 0, 0, 0),
(189, 'Tuvalu', 0, 0, 0),
(190, 'Uganda', 0, 0, 0),
(191, 'Ukrajina', 1, 0, 0),
(192, 'Ujedinjeni Arapski Emirati', 0, 0, 0),
(193, 'Tanzanija', 0, 0, 0),
(194, 'Sjedinjene Americke Drzave', 0, 3, 0),
(195, 'Urugvaj', 0, 0, 0),
(196, 'Uzbekistan', 0, 0, 0),
(197, 'Vanuatu', 0, 0, 0),
(198, 'Venecuela', 0, 0, 0),
(199, 'Vijetnam', 0, 0, 0),
(200, 'Britanska Devicanska Ostrva', 0, 0, 0),
(201, 'Devicanska Ostrva', 0, 0, 0),
(202, 'Jemen', 0, 0, 0),
(203, 'Zambija', 0, 0, 0),
(204, 'Zimbabve', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formati`
--
ALTER TABLE `formati`
  ADD PRIMARY KEY (`format_id`);

--
-- Indexes for table `grupe2x6`
--
ALTER TABLE `grupe2x6`
  ADD PRIMARY KEY (`utakmica_id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnik_id`);

--
-- Indexes for table `kup`
--
ALTER TABLE `kup`
  ADD PRIMARY KEY (`kup_id`);

--
-- Indexes for table `kvalifikacije`
--
ALTER TABLE `kvalifikacije`
  ADD PRIMARY KEY (`kval_id`);

--
-- Indexes for table `rekordi`
--
ALTER TABLE `rekordi`
  ADD PRIMARY KEY (`rekord_id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`sport_id`);

--
-- Indexes for table `sportisti`
--
ALTER TABLE `sportisti`
  ADD PRIMARY KEY (`sportista_id`);

--
-- Indexes for table `sport_extra`
--
ALTER TABLE `sport_extra`
  ADD PRIMARY KEY (`extra_id`);

--
-- Indexes for table `takmicenja`
--
ALTER TABLE `takmicenja`
  ADD PRIMARY KEY (`takmicenje_id`);

--
-- Indexes for table `trka`
--
ALTER TABLE `trka`
  ADD PRIMARY KEY (`trka_id`);

--
-- Indexes for table `zemlje`
--
ALTER TABLE `zemlje`
  ADD PRIMARY KEY (`zemlja_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `formati`
--
ALTER TABLE `formati`
  MODIFY `format_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `grupe2x6`
--
ALTER TABLE `grupe2x6`
  MODIFY `utakmica_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kup`
--
ALTER TABLE `kup`
  MODIFY `kup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `kvalifikacije`
--
ALTER TABLE `kvalifikacije`
  MODIFY `kval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `rekordi`
--
ALTER TABLE `rekordi`
  MODIFY `rekord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
  MODIFY `sport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sportisti`
--
ALTER TABLE `sportisti`
  MODIFY `sportista_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `sport_extra`
--
ALTER TABLE `sport_extra`
  MODIFY `extra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `takmicenja`
--
ALTER TABLE `takmicenja`
  MODIFY `takmicenje_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `trka`
--
ALTER TABLE `trka`
  MODIFY `trka_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zemlje`
--
ALTER TABLE `zemlje`
  MODIFY `zemlja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
