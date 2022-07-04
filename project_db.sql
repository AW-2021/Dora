-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2022 at 01:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE `attraction` (
  `id` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`id`, `duration`, `about`) VALUES
(1, 3, 'The Colosseum is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age. Construction began under the emperor Vespasian (r. 69–79 AD) in 72[1] and was completed in 80 AD under his successor and heir, Titus'),
(2, 2, 'The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus. It was rebuilt by the emperor Hadrian and probably dedicated c. 126 AD.'),
(3, 2, 'The Roman Forum, also known by its Latin name Forum Romanum, is a rectangular forum surrounded by the ruins of several important ancient government buildings at the center of the city of Rome. Citizens of the ancient city referred to this space, originally a marketplace, as the Forum Magnum, or simply the Forum.'),
(4, 1, 'The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.'),
(5, 2, 'The Spanish Steps are a set of steps in Rome, Italy, climbing a steep slope between the Piazza di Spagna at the base and Piazza Trinità dei Monti, dominated by the Trinità dei Monti church at the top. Wikipedia.'),
(6, 1, 'The Basilica of Saint Mary Major (Italian: Basilica di Santa Maria Maggiore, Italian pronunciation: [ˈsanta maˈriːa madˈdʒoːre]; Latin: Basilica Sanctae Mariae Maioris),[2] or church of Santa Maria Maggiore, is a Major papal basilica as well as one of the Seven Pilgrim Churches of Rome and the largest Catholic Marian church in Rome, Italy.'),
(7, 2, 'Piazza Navona is a public open space in Rome, Italy. It is built on the site of the Stadium of Domitian, built in the 1st century AD, and follows the form of the open space of the stadium. The ancient Romans went there to watch the agones, and hence it was known as \'Circus Agonalis\''),
(8, 2, 'The Palatine Hill, which is the centremost of the seven hills of Rome, is one of the most ancient parts of the city and has been called \'the first nucleus of the Roman Empire.\''),
(9, 1, 'The Galleria Borghese is an art gallery in Rome, Italy, housed in the former Villa Borghese Pinciana. At the outset, the gallery building was integrated with its gardens, but nowadays the Villa Borghese gardens are considered a separate tourist attraction.'),
(10, 2, 'The Mausoleum of Hadrian, usually known as Castel Sant\'Angelo, is a towering cylindrical building in Parco Adriano, Rome, Italy. It was initially commissioned by the Roman Emperor Hadrian as a mausoleum for himself and his family. The building was later used by the popes as a fortress and castle, and is now a museum.'),
(11, 1, 'The Baths of Caracalla in Rome, Italy, were the city\'s second largest Roman public baths, or thermae. The baths were likely built between AD 212 and 216/217, during the reigns of emperors Septimius Severus and Caracalla. They were in operation until the 530s and then fell into disuse and ruin.'),
(12, 2, 'The Cathedral of the Most Holy Savior and of Saints John the Baptist and John the Evangelist in the Lateran, also known as the Papal Archbasilica of Saint John [in] Lateran, Saint John Lateran.'),
(13, 2, 'The Catacombs of Rome are ancient catacombs, underground burial places in and around Rome, of which there are at least forty, some rediscovered only in recent decades.'),
(14, 1, 'The Patriarchal Cathedral Basilica of Saint Mark, commonly known as St Mark\'s Basilica, is the cathedral church of the Roman Catholic Patriarchate of Venice in northern Italy; it became the episcopal seat of the Patriarch of Venice in 1807, replacing the earlier cathedral of San Pietro di Castello.'),
(15, 2, 'Often known in English as St Mark\'s Square, is the principal public square of Venice, Italy, where it is generally known just as la Piazza (\'the Square\'). All other urban spaces in the city (except the Piazzetta and the Piazzale Roma) are called campi (\'fields\'). The Piazzetta (\'little Piazza/Square\') is an extension of the Piazza towards San Marco basin in its south east corner (see plan). The two spaces together form the social, religious and political centre of Venice and are commonly considered together. This article relates to both of them.'),
(16, 2, 'The Grand Canal is a channel in Venice, Italy. It forms one of the major water-traffic corridors in the city.'),
(17, 1, 'The Rialto Bridge is the oldest of the four bridges spanning the Grand Canal in Venice, Italy. Connecting the sestieri of San Marco and San Polo, it has been rebuilt several times since its first construction as a pontoon bridge in 1173, and is now a significant tourist attraction in the city.'),
(18, 2, 'The Scuola Grande di San Rocco is a building in Venice, northern Italy. It is noted for its collection of paintings by Tintoretto and generally agreed to include some of his finest work.'),
(19, 2, 'The Peggy Guggenheim Collection is a modern art museum on the Grand Canal in the Dorsoduro sestiere of Venice, Italy. It is one of the most visited attractions in Venice.'),
(20, 1, 'The Basilica di Santa Maria Gloriosa dei Frari, usually just called the Frari, is a church located in the Campo dei Frari at the heart of the San Polo district of Venice, Italy. The largest church in the city, it has the status of a minor basilica. The church is dedicated to the Assumption of Mary.'),
(21, 2, 'Santa Maria dei Miracoli is a church in the sestiere of Cannaregio, in Venice, Italy.'),
(22, 2, 'Florence Cathedral, formally the Cattedrale di Santa Maria del Fiore, is the cathedral of Florence, Italy. It was begun in 1296 in the Gothic style to a design of Arnolfo di Cambio and was structurally completed by 1436, with the dome engineered by Filippo Brunelleschi.'),
(23, 1, 'The Florence Baptistery, also known as the Baptistery of Saint John, is a religious building in Florence, Italy, and has the status of a minor basilica. The octagonal baptistery stands in both the Piazza del Duomo and the Piazza San Giovanni, across from Florence Cathedral and the Campanile di Giotto.'),
(24, 2, 'Piazzale Michelangelo is a square with a panoramic view of Florence, Italy, located in the Oltrarno district of the city.'),
(25, 1, 'The Uffizi Gallery is a prominent art museum located adjacent to the Piazza della Signoria in the Historic Centre of Florence in the region of Tuscany, Italy.'),
(26, 2, 'Piazza della Signoria is an L-shaped square in front of the Palazzo Vecchio in Florence, Italy. It was named after the Palazzo della Signoria, also called Palazzo Vecchio. It is the main point of the origin and history of the Florentine Republic and still maintains its reputation as the political focus of the city.'),
(27, 2, 'The Galleria dell\'Accademia di Firenze, or \'Gallery of the Academy of Florence\', is an art museum in Florence, Italy. It is best known as the home of Michelangelo\'s sculpture David.'),
(28, 1, 'The Medici Chapels are two structures at the Basilica of San Lorenzo, Florence, Italy, dating from the 16th and 17th centuries, and built as extensions to Brunelleschi\'s 15th-century church, with the purpose of celebrating the Medici family, patrons of the church and Grand Dukes of Tuscany.'),
(29, 2, 'The Palazzo Vecchio is the town hall of Florence, Italy. It overlooks the Piazza della Signoria, which holds a copy of Michelangelo\'s David statue, and the gallery of statues in the adjacent Loggia dei Lanzi.'),
(30, 2, 'The Basilica di Santa Croce is the principal Franciscan church in Florence, Italy, and a minor basilica of the Roman Catholic Church. It is situated on the Piazza di Santa Croce, about 800 meters south-east of the Duomo. The site, when first chosen, was in marshland outside the city walls.'),
(31, 1, 'The Palazzo Pitti, in English sometimes called the Pitti Palace, is a vast, mainly Renaissance, palace in Florence, Italy. It is situated on the south side of the River Arno, a short distance from the Ponte Vecchio.'),
(32, 2, 'The Bargello, also known as the Palazzo del Bargello, Museo Nazionale del Bargello, or Palazzo del Popolo, is a former barracks and prison, now an art museum, in Florence, Italy.'),
(33, 2, 'The Boboli Gardens is a historical park of the city of Florence that was opened to the public in 1766. Originally designed for the Medici, it represents one of the first and most important examples of the Italian garden, which later served as inspiration for many European courts.'),
(34, 2, 'The Milan Cathedral, or Metropolitan Cathedral-Basilica of the Nativity of Saint Mary, is the cathedral church of Milan, Lombardy, Italy. Dedicated to the Nativity of St Mary, it is the seat of the Archbishop of Milan, currently Archbishop Mario Delpini.'),
(35, 2, 'Santa Maria delle Grazie is a church and Dominican convent in Milan, northern Italy, and a UNESCO World Heritage Site. The church contains the mural of The Last Supper by Leonardo da Vinci, which is in the refectory of the convent.'),
(36, 1, 'Cobbled Piazza del Duomo, part of the Centro Storico area, is bordered by lively cafes and the elegant fashion shops of the 1870s Galleria Vittorio Emanuele II mall. It’s also home to the Duomo di Milano, a Gothic cathedral with a marble interior and elevators up to rooftop city views. Modern Italian art is on show at the Museo del Novecento, while the grand, 18th-century Palazzo Reale hosts changing art exhibitions.'),
(37, 2, 'The Castello Sforzesco is a medieval fortification located in Milan, northern Italy. It was built in the 15th century by Francesco Sforza, Duke of Milan, on the remnants of a 14th-century fortification. Later renovated and enlarged, in the 16th and 17th centuries it was one of the largest citadels in Europe.'),
(38, 1, 'The Pinacoteca di Brera is the main public gallery for paintings in Milan, Italy. It contains one of the foremost collections of Italian paintings, an outgrowth of the cultural program of the Brera Academy, which shares the site in the Palazzo Brera.'),
(39, 1, 'The Cimitero Monumentale is one of the two largest cemeteries in Milan, Italy, the other one being the Cimitero Maggiore. It is noted for the abundance of artistic tombs and monuments.'),
(40, 2, 'The Archaeological Museum of Milan is located in the ex-convent of the Monastero Maggiore, alongside the ancient church of San Maurizio al Monastero Maggiore, with entrance on Corso Magenta.'),
(41, 2, 'Santa Maria presso San Satiro is a church in Milan. The Italian Renaissance structure houses the early medieval shrine to Satyrus, brother of Saint Ambrose. The church is known for its false apse, an early example of trompe-l\'œil, attributed to Donato Bramante.'),
(42, 1, 'The Museo Poldi Pezzoli is an art museum in Milan, Italy. It is located near the Teatro alla Scala, on Via Manzoni 12. The museum was originated in the 19th century as a private collection of Gian Giacomo Poldi Pezzoli and his mother, Rosa Trivulzio, of the family of the condottiero Gian Giacomo Trivulzio.'),
(43, 1, 'Museo Nazionale Scienza e Tecnologia Leonardo da Vinci in Milan is the largest science and technology museum in Italy, and is dedicated to Italian painter and scientist Leonardo da Vinci. It was opened on 5 February 1953 and inaugurated by the prime minister of Italy, Alcide De Gasperi.'),
(44, 2, 'The Bagatti Valsecchi Museum is a historic house museum in the Montenapoleone district of downtown Milan, northern Italy. The Bagatti Valsecchi Museum’s permanent collections principally contain Italian Renaissance decorative arts, some sculptures, and many paintings.'),
(45, 2, 'The Galleria d\'Arte Moderna is a modern art museum in Milan, in Lombardy in northern Italy. It is housed in the Villa Reale, at Via Palestro 16, opposite the Giardini Pubblici. The collection consists largely of Italian and European works from the 18th to the 20th centuries.'),
(46, 2, 'Castel dell\'Ovo is a seafront castle in Naples, located on the former island of Megaride, now a peninsula, on the Gulf of Naples in Italy. The castle\'s name comes from a legend about the Roman poet Virgil, who had a reputation in the Middle Ages as a great sorcerer and predictor of the future'),
(47, 2, 'The National Archaeological Museum in Athens houses some of the most important artifacts from a variety of archaeological locations around Greece from prehistory to late antiquity. It is considered one of the greatest museums in the world and contains the richest collection of Greek Antiquity artifacts worldwide.'),
(48, 1, 'The Cappella Sansevero is a chapel located on Via Francesco de Sanctis 19, just northwest of the church of San Domenico Maggiore, in the historic center of Naples, Italy. The chapel is more properly named the Chapel of Santa Maria della Pietà.'),
(49, 2, 'Museo di Capodimonte is an art museum located in the Palace of Capodimonte, a grand Bourbon palazzo in Naples, Italy. The museum is the prime repository of Neapolitan painting and decorative art, with several important works from other Italian schools of painting, and some important ancient Roman sculptures.'),
(50, 3, 'The Catacombs of San Gennaro are underground paleo-Christian burial and worship sites in Naples, Italy, carved out of tuff, a porous stone. They are situated in the northern part of the city, on the slope leading up to Capodimonte, consisting of two levels, San Gennaro Superiore, and San Gennaro Inferiore.'),
(51, 2, 'The Royal Palace of Naples is a palace, museum, and historical tourist destination located in central Naples, southern Italy. It was one of the four residences near Naples used by the House of Bourbon during their rule of the Kingdom of Naples and later the Kingdom of the Two Sicilies.'),
(52, 1, 'The Basilica of San Petronio is a minor basilica and church of the Archdiocese of Bologna located in Bologna, Emilia Romagna, northern Italy. It dominates Piazza Maggiore. The basilica is dedicated to the patron saint of the city, Saint Petronius, who was the bishop of Bologna in the fifth century.'),
(53, 1, 'The basilica of Santo Stefano encompasses a complex of religious edifices in the city of Bologna, Italy. Located on Piazza Santo Stefano, it is locally known as Sette Chiese and Santa Gerusalemme. It has the dignity of minor basilica.'),
(54, 2, 'The Towers of Bologna are a group of medieval structures in Bologna, Italy. The two most prominent ones, known as the Two Towers, are the landmark of the city.'),
(55, 1, 'The Sanctuary of the Madonna of San Luca is a basilica church in Bologna, northern Italy, sited atop a forested hill, Colle or Monte della Guardia, some 300 metres above the city plain, just south-west of the historical centre of the city.'),
(56, 2, 'The Anatomical Theatre of the Archiginnasio is a hall once used for anatomy lectures and displays held at the medical school in Bologna, Italy that used to be located in the Palace of the Archiginnasio, the first unified seat of the University of Bologna.'),
(57, 3, 'The Aquarium of Genoa is the largest aquarium in Italy. Located in the old harbour area of Genoa, Italy, the 33,000-square-foot aquarium is a member organization of the European Association of Zoos and Aquaria, and welcomes more than 1.2 million visitors each yearThe Aquarium of Genoa is the largest aquarium in Italy. Located in the old harbour area of Genoa, Italy, the 33,000-square-foot aquarium is a member organization of the European Association of Zoos and Aquaria, and welcomes more than 1.2 million visitors each year.'),
(58, 2, 'Genoa Cathedral or Metropolitan Cathedral of Saint Lawrence is a Roman Catholic cathedral in the Italian city of Genoa. It is dedicated to Saint Lawrence, and is the seat of the Archbishop of Genoa.'),
(59, 1, 'Santa Maria di Castello is a church and religious complex in Genoa, Italy. Administrated for a long time by the Dominicans, it is located in the Castello hill of the city, where in the Middle Ages a bishop\'s fortified castle existed. The church is flanked by the large Tower of the Embriaci.'),
(60, 1, 'Aristocratic residence from the 16th century, decorated with frescoes & paintings from the period.'),
(61, 2, 'The Palazzo Reale or Palazzo Stefano Balbi is a major palace in Genoa.'),
(62, 1, 'The Galata - Museo del mare is a maritime museum in the Italian city of Genoa. It is the largest museum of its kind in the Mediterranean area and also one of the most modern in Italy.');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `no_of_attractions` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `no_of_attractions`) VALUES
(1, 'Rome', 32),
(2, 'Venice', 32),
(3, 'Florence', 32),
(4, 'Milan', 32),
(5, 'Naples', 32),
(6, 'Bologna', 32),
(7, 'Genoa', 32);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `preferred_stars` decimal(3,2) NOT NULL DEFAULT 0.00
) ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `city_id`, `customer_id`, `start_date`, `end_date`, `preferred_stars`) VALUES
(1, 2, 1, '2022-01-06', '2022-01-07', '4.60'),
(2, 3, 2, '2022-01-08', '2022-01-09', '4.70'),
(3, 5, 1, '2022-01-24', '2022-01-26', '4.60'),
(4, 1, 2, '2022-01-16', '2022-01-18', '4.70'),
(5, 6, 2, '2022-01-18', '2022-01-19', '4.60'),
(9, 6, 2, '2022-01-09', '2022-01-10', '4.70'),
(10, 4, 1, '2022-01-13', '2022-01-15', '4.60'),
(12, 4, 1, '2022-01-18', '2022-01-19', '4.70'),
(14, 5, 4, '2022-01-28', '2022-01-31', '4.00'),
(15, 6, 4, '2022-01-27', '2022-01-29', '4.50');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `cuisine_type` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `cuisine_type`, `capacity`) VALUES
(63, 'Italian, Seafood', 50),
(64, 'Italian, Mediterranean', 50),
(65, 'Seafood', 40),
(66, 'Pasticceria, Homecooked', 30),
(67, 'Italian', 50),
(68, 'Seafood, Italian', 80),
(69, 'Fast-food', 50),
(70, 'Italian, Homecooked', 90),
(71, 'Italian', 100),
(72, 'Italian, Fast-food', 80),
(73, 'Italian, Seafood', 100),
(74, 'Homecooked, Italian', 70),
(75, 'Italian', 50),
(76, 'Italian, Seafood', 100),
(77, 'Italian, Seafood', 90),
(78, 'Italian, Pizzeria', 90),
(79, 'Mediterranean', 100),
(80, 'Italian, Bar', 50),
(81, 'Italian, Bistro', 80),
(82, 'Ligurian', 40),
(83, 'Italian, Mediterranean', 80),
(84, 'Ligurian', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tourist_places`
--

CREATE TABLE `tourist_places` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `stars` decimal(3,2) NOT NULL DEFAULT 0.00,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `price_per_person` int(11) NOT NULL,
  `tripdate` date NOT NULL,
  `latitude` float NOT NULL DEFAULT 0,
  `longitude` float NOT NULL DEFAULT 0
) ;

--
-- Dumping data for table `tourist_places`
--

INSERT INTO `tourist_places` (`id`, `city_id`, `name`, `stars`, `opening_time`, `closing_time`, `address`, `phone`, `price_per_person`, `tripdate`, `latitude`, `longitude`) VALUES
(1, 1, 'colosseum and arch of constatine', '4.50', '09:00:00', '16:30:00', 'Piazza del Colosseo, 1, 00184 Roma RM, Italy', '+390639967700', 16, '2022-01-04', 0, 0),
(2, 1, 'the pantheon', '4.80', '08:30:00', '19:15:00', 'Piazza della Rotonda, 00186 Roma RM, Italy', '+390668300230', 0, '2022-01-05', 0, 0),
(3, 1, 'roman forum', '4.50', '09:00:00', '16:30:00', 'Via della Salara Vecchia, 5/6, 00186 Roma RM, Italy', '+390669984443', 21, '2022-01-06', 0, 0),
(4, 1, 'trevi fountain', '4.80', '00:00:00', '00:00:00', 'Piazza di Trevi, 00187 Roma RM, Italy', '+39060608', 0, '2022-01-07', 0, 0),
(5, 1, 'centro storico & the Spanish Steps', '4.80', '00:00:00', '00:00:00', 'Piazza di Spagna, 00187 Roma RM, Italy', '', 0, '2022-01-08', 0, 0),
(6, 1, 'Santa Maria Maggiore', '4.80', '07:00:00', '18:45:00', 'P.za di Santa Maria Maggiore, 00100 Roma RM, Italy', '+395674389', 0, '2022-01-09', 0, 0),
(7, 1, 'Piazza Navona', '4.70', '00:00:00', '00:00:00', 'Piazza Navona, 00186 Roma RM, Italy', '', 0, '2022-01-10', 0, 0),
(8, 1, 'Palatine Hill', '4.70', '10:30:00', '19:15:00', 'Palatine Hill, Italy', '', 12, '2022-01-11', 0, 0),
(9, 1, 'Villa Borghese Gallery and Gardens', '4.60', '09:00:00', '19:00:00', 'Piazzale Scipione Borghese, 5, 00197 Roma RM, Italy', '+394783323', 0, '2022-01-12', 0, 0),
(10, 1, 'Castel Sant\'Angelo National Museum', '4.40', '09:00:00', '19:30:00', 'Parco Adriano, Rome, Italy', '+396543212', 20, '2022-01-13', 0, 0),
(11, 1, 'Baths of Caracalla', '4.60', '09:00:00', '16:30:00', 'Viale delle Terme di Caracalla, 00153 Roma RM, Italy', '+390639967702', 11, '2022-01-14', 0, 0),
(12, 1, 'Basilica of St. John Lateran', '4.80', '10:00:00', '17:00:00', 'Piazza di S. Giovanni in Laterano, 4, 00184 Roma RM, Italy', '+390669886433', 0, '2022-01-15', 0, 0),
(13, 1, 'The Catacombs and Via Appia Antica', '4.60', '09:00:00', '17:00:00', 'Via Appia Antica, 110/126, 00179 Roma RM, Italy', '+39065130151', 8, '2022-01-16', 0, 0),
(14, 2, 'St. Mark\'s Basilica', '4.70', '09:30:00', '17:00:00', 'P.za San Marco, 328, 30100 Venezia VE, Italy', '+390412708311', 0, '2022-01-04', 0, 0),
(15, 2, 'Piazza San Marco (St. Mark\'s Square)', '4.70', '00:00:00', '00:00:00', 'P.za San Marco, 30100 Venezia VE, Italy', '', 0, '2022-01-05', 0, 0),
(16, 2, 'Canale Grande (Grand Canal)', '4.80', '00:00:00', '00:00:00', 'Grand Canal,Italy', '', 0, '2022-01-06', 0, 0),
(17, 2, 'Rialto Bridge and San Polo', '4.70', '00:00:00', '00:00:00', 'Sestiere San Polo, 30125 Venezia VE, Italy', '', 0, '2022-01-07', 0, 0),
(18, 2, 'Scuola Grande di San Rocco', '4.70', '09:30:00', '17:30:00', 'San Polo, 3052, 30125 Venezia VE, Italy', '+390415234864', 10, '2022-01-08', 0, 0),
(19, 2, 'Peggy Guggenheim Collection', '4.70', '10:00:00', '18:00:00', 'Dorsoduro, 701-704, 30123 Venezia VE, Italy', '+390412405411', 15, '2022-01-09', 0, 0),
(20, 2, 'Santa Maria Gloriosa dei Frari', '4.00', '09:00:00', '18:00:00', 'San Polo, 3072, 30125 Venezia VE, Italy', '+390412728611', 3, '2022-01-10', 0, 0),
(21, 2, 'Santa Maria dei Miracoli', '4.00', '10:00:00', '17:00:00', 'Campiello dei Miracoli, 30121 Venezia VE, Italy', '+390412750462', 3, '2022-01-11', 0, 0),
(22, 3, 'Cathedral of Santa Maria, Piazza Duomo', '4.80', '10:00:00', '16:30:00', 'Piazza del Duomo, 50122 Firenze FI, Italy', '+390552302885', 18, '2022-01-04', 0, 0),
(23, 3, 'Baptistery of St. John', '4.70', '08:15:00', '18:30:00', 'Piazza San Giovanni, 50122 Firenze FI, Italy', '+390552302885', 4, '2022-01-05', 0, 0),
(24, 3, 'Piazzale Michelangiolo', '4.80', '00:00:00', '00:00:00', 'Piazzale Michelangelo, 50125 Firenze FI, Italy', '', 0, '2022-01-06', 0, 0),
(25, 3, 'Uffizi Palace and Gallery', '3.00', '08:15:00', '18:30:00', 'Piazzale degli Uffizi, 6, 50122 Firenze FI, Italy', '+39055294883', 0, '2022-01-07', 0, 0),
(26, 3, 'Piazza della Signoria', '4.80', '00:00:00', '00:00:00', 'P.za della Signoria, 50121 Firenze FI, Italy', '+3905523885', 0, '2022-01-08', 0, 0),
(27, 3, 'Academy Gallery', '4.60', '09:00:00', '18:15:00', 'Via Ricasoli, 58/60, 50129 Firenze FI, Italy', '+390550987100', 20, '2022-01-09', 0, 0),
(28, 3, 'San Lorenzo and Michelangelo\'s Medici Tombs', '4.60', '13:00:00', '18:30:00', 'Piazza di Madonna degli Aldobrandini, 6, 50123 Firenze FI, Italy', '+390550649430', 12, '2022-01-10', 0, 0),
(29, 3, 'Palazzo Vecchio', '4.70', '09:00:00', '22:00:00', 'P.za della Signoria, 50122 Firenze FI, Italy', '+390552768325', 10, '2022-01-11', 0, 0),
(30, 3, 'Santa Croce', '4.70', '09:30:00', '17:30:00', 'Piazza di Santa Croce, 16, 50122 Firenze FI, Italy', '+390552466105', 8, '2022-01-12', 0, 0),
(31, 3, 'Palazzo Pitti (Pitti Palace)', '4.60', '13:30:00', '18:30:00', 'Piazza de\' Pitti, 1, 50125 Firenze FI, Italy', '+39055294883', 10, '2022-01-13', 0, 0),
(32, 3, 'Bargello Palace National Museum', '4.60', '08:45:00', '13:30:00', 'Via del Proconsolo, 4, 50122 Firenze FI, Italy', '+390550649440', 8, '2022-01-14', 0, 0),
(33, 3, 'Boboli Gardens', '4.30', '08:15:00', '18:30:00', 'Piazza de\' Pitti, 1, 50125 Firenze FI, Italy', '+3905523885', 6, '2022-01-15', 0, 0),
(34, 4, 'Il Duomo (Milan Cathedral)', '4.80', '09:00:00', '19:00:00', 'P.za del Duomo, 20122 Milano MI, Italy', '+390272023375', 17, '2022-01-04', 0, 0),
(35, 4, 'Santa Maria delle Grazie', '4.60', '08:15:00', '19:00:00', 'Piazza di Santa Maria delle Grazie, 20123 Milano MI, Italy', '+39024676111', 10, '2022-01-05', 0, 0),
(36, 4, 'Galleria: Luxury Shops and Elegant Cafés', '4.70', '00:00:00', '00:00:00', 'P.za del Duomo, 20123 Milano MI, Italy', '+390288455555', 0, '2022-01-06', 0, 0),
(37, 4, 'Castello Sforzesco', '4.60', '07:00:00', '19:30:00', 'Piazza Castello, 20121 Milano MI, Italy', '+390288463700', 5, '2022-01-07', 0, 0),
(38, 4, 'Pinacoteca di Brera', '4.70', '08:30:00', '19:15:00', 'Via Brera, 28, 20121 Milano MI, Italy', '+390272263230', 0, '2022-01-08', 0, 0),
(39, 4, 'Cimitero Monumentale', '4.70', '08:00:00', '18:00:00', 'Piazzale Cimitero Monumentale, 20154 Milano MI, Italy', '+390288465600', 15, '2022-01-09', 0, 0),
(40, 4, 'San Maurizio and the Archaeology Museum', '4.40', '10:00:00', '17:30:00', 'Corso Magenta, 15, 20123 Milano MI, Italy', '+390288445208', 5, '2022-01-10', 0, 0),
(41, 4, 'Santa Maria Presso San Satiro', '4.70', '07:30:00', '19:00:00', 'Via Torino, 20123 Milano MI, Italy', '+3902874683', 10, '2022-01-11', 0, 0),
(42, 4, 'Poldi-Pezzoli Museum', '4.60', '10:00:00', '18:00:00', 'Via Alessandro Manzoni, 12, 20121 Milano MI, Italy', '+3902794889', 14, '2022-01-12', 0, 0),
(43, 4, 'Leonardo da Vinci National Museum', '4.50', '09:30:00', '18:30:00', 'Via San Vittore, 21, 20123 Milano MI, Italy', '+3902485551', 40, '2022-01-13', 0, 0),
(44, 4, 'Museo Bagatti Valsecchi', '4.70', '13:00:00', '17:45:00', 'Via Gesù, 5, 20121 Milano MI, Italy', '+390276006132', 10, '2022-01-14', 0, 0),
(45, 4, 'Modern Art Gallery', '4.40', '10:00:00', '18:00:00', 'Via Magenta, 31, 10128 Torino TO, Italy', '+390114429518', 5, '2022-01-15', 0, 0),
(46, 5, 'Castel Ovo and the Lungomare', '4.60', '09:00:00', '18:30:00', 'Via Eldorado, 3, 80132 Napoli NA, Italy', '+390817956180', 0, '2022-01-04', 0, 0),
(47, 5, 'National Archeological Museum', '4.60', '09:00:00', '19:30:00', 'Piazza Museo, 19, 80135 Napoli NA, Italy', '+390814422149', 10, '2022-01-05', 0, 0),
(48, 5, 'Cappella Sansevero', '4.70', '09:00:00', '18:30:00', 'Via Francesco de Sanctis, 19/21, 80134 Napoli NA, Italy', '+390815518470', 8, '2022-01-06', 0, 0),
(49, 5, 'Capodimonte Royal Palace and Museum', '4.70', '08:30:00', '19:30:00', 'Real Bosco di Capodimonte', '+390817499111', 10, '2022-01-07', 0, 0),
(50, 5, 'Catacombs of San Gennaro', '4.70', '09:30:00', '17:00:00', 'Via Capodimonte, 13, 80100 Napoli NA, Italy', '+390817443714', 10, '2022-01-08', 0, 0),
(51, 5, 'Palazzo Reale (Royal Palace)', '4.60', '09:00:00', '20:00:00', 'Piazza del Plebiscito, 1, 80132 Napoli NA, Italy', '+390815808255', 7, '2022-01-09', 0, 0),
(52, 6, 'San Petronio (Basilica of St. Petronius)', '4.60', '08:30:00', '18:00:00', 'Piazza Galvani, 5, 40124 Bologna BO, Italy', '+393465768400', 0, '2022-01-04', 0, 0),
(53, 6, 'Santo Stefano (St. Stephen Basilica)', '4.80', '07:30:00', '19:30:00', 'Via Santo Stefano, 24, 40125 Bologna BO, Italy', '+390514983423', 5, '2022-01-05', 0, 0),
(54, 6, 'Leaning Towers', '4.70', '10:00:00', '17:00:00', 'P.za di Porta Ravegnana, 40126 Bologna BO, Italy', '', 5, '2022-01-06', 0, 0),
(55, 6, 'Sanctuary of Madonna di San Luca', '4.70', '07:00:00', '18:00:00', 'Via di San Luca, 36, 40135 Bologna BO, Italy', '+390516142339', 20, '2022-01-07', 0, 0),
(56, 6, 'Archiginnasio Anatomical Theater', '4.50', '10:00:00', '18:00:00', 'Piazza Galvani, 1, 40124 Bologna BO, Italy', '+39051276821', 3, '2022-01-08', 0, 0),
(57, 7, 'Acquario di Genova (Aquarium)', '4.50', '10:00:00', '20:00:00', 'Ponte Spinola, 16128 Genova GE, Italy', '+3901023451', 18, '2022-01-04', 0, 0),
(58, 7, 'Cathedral of San Lorenzo', '4.60', '08:00:00', '19:00:00', 'Piazza S. Lorenzo, 16123 Genova GE, Italy', '+39010265786', 9, '2022-01-05', 0, 0),
(59, 7, 'Santa Maria di Castello', '4.70', '10:00:00', '18:00:00', 'Salita di Santa Maria di Castello, 15, 16123 Genova GE, Italy', '+390108603690', 20, '2022-01-06', 0, 0),
(60, 7, 'National Gallery in Palazzo Spinola', '4.60', '13:30:00', '19:00:00', 'Piazza di Pellicceria, 1, 16123 Genova GE, Italy', '+390102705300', 25, '2022-01-07', 0, 0),
(61, 7, 'Via Balbi and Palazzo Reale', '4.50', '13:30:00', '19:00:00', 'Via Balbi, 10, 16126 Genova GE, Italy', '+390102710236', 10, '2022-01-08', 0, 0),
(62, 7, 'Galata Museo del Mare (Maritime Museum)', '4.50', '10:00:00', '18:00:00', 'Calata Ansaldo De Mari, 1, 16126 Genova GE, Italy', '+390102345655', 13, '2022-01-09', 0, 0),
(63, 1, 'Pierluigi', '4.10', '08:00:00', '22:00:00', 'Piazza de’ Ricci 144, Campo de’ Fiori, Rome', '+39066868717', 120, '2022-01-17', 0, 0),
(64, 1, 'Armando al Pantheon', '4.50', '08:00:00', '22:00:00', 'Armando al Pantheon, Salita de’ Crescenzi 31, Pantheon, Rome', '+390668803034', 80, '2022-01-18', 0, 0),
(65, 1, 'Per Me', '4.20', '08:00:00', '22:00:00', 'Per Me, Vicolo del Malpasso 9, Campo de’ Fiori, Rome', '+39066877365', 85, '2022-01-19', 0, 0),
(66, 1, 'Roscioli', '4.50', '08:00:00', '22:00:00', 'Roscioli, Via dei Giubbonari 21, Campo de’ Fiori, Rome', '+39066875287', 100, '2022-01-20', 0, 0),
(67, 2, 'Algiubagio Restaurant', '4.30', '12:00:00', '20:00:00', 'Fondamente Nove, 5039, 30121 Venezia VE, Italy', '+390415236084', 85, '2022-01-12', 0, 0),
(68, 2, 'Trattoria Al Gazzettino', '4.70', '12:00:00', '20:00:00', ' C. de Mezzo, 4072, 30124 Venezia VE, Italy', '+390415210497', 90, '2022-01-13', 0, 0),
(69, 2, 'Dal Moro\'s', '4.20', '12:00:00', '20:00:00', 'Calle Casseleria, 5324, 30122 Venezia VE, Italy,', '', 100, '2022-01-14', 0, 0),
(70, 3, 'Trattoria Napoleone', '4.70', '19:00:00', '23:00:00', 'Piazza del Carmine, 24, 50124 Firenze FI, Italy', '+39055281015', 80, '2022-01-16', 0, 0),
(71, 3, 'Restaurant Il Vezzo', '4.00', '19:00:00', '23:00:00', 'Via Guelfa, 58, R, 50123 Firenze FI, Italy', '+39055281096', 85, '2022-01-17', 0, 0),
(72, 3, 'Panini Toscani', '4.50', '10:30:00', '23:00:00', 'Piazza del Duomo, 34/R, 50122 Firenze FI, Italy', '+393355725544', 90, '2022-01-18', 0, 0),
(73, 4, 'Marecrudo', '4.40', '10:30:00', '23:00:00', 'Corso di Porta Romana, 132, 20122 Milano MI, Italy', '+390258316012', 95, '2022-01-16', 0, 0),
(74, 4, 'La Sidreria', '4.30', '10:30:00', '23:00:00', 'Via Arcangelo Corelli, 31, 20134 Milano MI, Italy', '+39027496017', 80, '2022-01-17', 0, 0),
(75, 4, 'Osteria italiana', '4.50', '11:00:00', '23:00:00', 'Via Napo Torriani, 22, 20124 Milano MI, Italy', '+39026704188', 100, '2022-01-18', 0, 0),
(76, 5, 'La Pescheria', '4.20', '11:00:00', '23:00:00', 'Via Alcide de Gasperi, 127, 80059 Torre del Greco NA, Italy', '+390813596504', 70, '2022-01-10', 0, 0),
(77, 5, 'Trattoria Don Vincenzo', '4.50', '11:00:00', '23:00:00', 'Via San Biagio Dei Librai, 60, 80138 Napoli NA, Italy', '+390810144937', 100, '2022-01-11', 0, 0),
(78, 5, 'La Lazzara Trattoria e Pizzeria', '4.40', '11:00:00', '23:00:00', 'Piazza Francese, 9/10, 80133 Napoli NA, Italy', '', 80, '2022-01-12', 0, 0),
(79, 6, 'Gessetto Restaurant', '4.40', '11:00:00', '23:00:00', 'Piazza S. Martino, 4/a, 40126 Bologna BO, Italy', '+390510548873', 90, '2022-01-09', 0, 0),
(80, 6, 'Osteria dell\'Orsa', '4.70', '12:00:00', '20:00:00', 'Via Mentana, 1, 40126 Bologna BO, Italy', '+39051231576', 80, '2022-01-10', 0, 0),
(81, 6, 'CIBO Bistro Bologna', '4.10', '12:00:00', '20:00:00', 'Via Agamennone Zappoli, 5/1, 40126 Bologna BO, Italy', '+393703698230', 100, '2022-01-11', 0, 0),
(82, 7, 'Ostaia De Banchi', '4.60', '12:00:00', '20:00:00', 'Vico Denegri, 17 r, 16124 Genova GE, Italy', '+390108540468', 80, '2022-01-10', 0, 0),
(83, 7, 'Alla Lunga Ristorante', '4.60', '12:15:00', '20:00:00', 'Vico Giannini, 14r, 16124 Genova GE, Italy', '+390104077495', 95, '2022-01-11', 0, 0),
(84, 7, 'La Botega Del Gusto', '4.40', '12:15:00', '20:00:00', 'Vico Superiore del Ferro, 3, 16123 Genova GE, Italy', '', 95, '2022-01-12', 0, 0),
(85, 1, 'colosseum and arch of constatine', '4.50', '09:00:00', '16:30:00', 'Piazza del Colosseo, 1, 00184 Roma RM, Italy', '+390639967700', 16, '2022-01-21', 0, 0),
(86, 1, 'the pantheon', '4.80', '08:30:00', '19:15:00', 'Piazza della Rotonda, 00186 Roma RM, Italy', '+390668300230', 0, '2022-01-22', 0, 0),
(87, 1, 'roman forum', '4.50', '09:00:00', '16:30:00', 'Via della Salara Vecchia, 5/6, 00186 Roma RM, Italy', '+390669984443', 21, '2022-01-23', 0, 0),
(88, 1, 'trevi fountain', '4.80', '00:00:00', '00:00:00', 'Piazza di Trevi, 00187 Roma RM, Italy', '+39060608', 0, '2022-01-24', 0, 0),
(89, 1, 'centro storico & the Spanish Steps', '4.80', '00:00:00', '00:00:00', 'Piazza di Spagna, 00187 Roma RM, Italy', '', 0, '2022-01-25', 0, 0),
(90, 1, 'Santa Maria Maggiore', '4.80', '07:00:00', '18:45:00', 'P.za di Santa Maria Maggiore, 00100 Roma RM, Italy', '+395674389', 0, '2022-01-26', 0, 0),
(91, 1, 'Piazza Navona', '4.70', '00:00:00', '00:00:00', 'Piazza Navona, 00186 Roma RM, Italy', '', 0, '2022-01-27', 0, 0),
(92, 1, 'Palatine Hill', '4.70', '10:30:00', '19:15:00', 'Palatine Hill, Italy', '', 12, '2022-01-28', 0, 0),
(93, 1, 'Villa Borghese Gallery and Gardens', '4.60', '09:00:00', '19:00:00', 'Piazzale Scipione Borghese, 5, 00197 Roma RM, Italy', '+394783323', 0, '2022-01-29', 0, 0),
(94, 1, 'Castel Sant\'Angelo National Museum', '4.40', '09:00:00', '19:30:00', 'Parco Adriano, Rome, Italy', '+396543212', 20, '2022-01-30', 0, 0),
(95, 1, 'Baths of Caracalla', '4.60', '09:00:00', '16:30:00', 'Viale delle Terme di Caracalla, 00153 Roma RM, Italy', '+390639967702', 11, '2022-01-31', 0, 0),
(96, 1, 'Basilica of St. John Lateran', '4.80', '10:00:00', '17:00:00', 'Piazza di S. Giovanni in Laterano, 4, 00184 Roma RM, Italy', '+390669886433', 0, '2022-02-01', 0, 0),
(97, 1, 'The Catacombs and Via Appia Antica', '4.60', '09:00:00', '17:00:00', 'Via Appia Antica, 110/126, 00179 Roma RM, Italy', '+39065130151', 8, '2022-02-02', 0, 0),
(98, 1, 'Pierluigi', '4.10', '08:00:00', '22:00:00', 'Piazza de’ Ricci 144, Campo de’ Fiori, Rome', '+39066868717', 120, '2022-02-03', 0, 0),
(99, 1, 'Armando al Pantheon', '4.50', '08:00:00', '22:00:00', 'Armando al Pantheon, Salita de’ Crescenzi 31, Pantheon, Rome', '+390668803034', 80, '2022-02-04', 0, 0),
(100, 2, 'St. Mark\'s Basilica', '4.70', '09:30:00', '17:00:00', 'P.za San Marco, 328, 30100 Venezia VE, Italy', '+390412708311', 0, '2022-01-15', 0, 0),
(101, 2, 'Piazza San Marco (St. Mark\'s Square)', '4.70', '00:00:00', '00:00:00', 'P.za San Marco, 30100 Venezia VE, Italy', '', 0, '2022-01-16', 0, 0),
(102, 2, 'Canale Grande (Grand Canal)', '4.80', '00:00:00', '00:00:00', 'Grand Canal,Italy', '', 0, '2022-01-17', 0, 0),
(103, 2, 'Rialto Bridge and San Polo', '4.70', '00:00:00', '00:00:00', 'Sestiere San Polo, 30125 Venezia VE, Italy', '', 0, '2022-01-18', 0, 0),
(104, 2, 'Scuola Grande di San Rocco', '4.70', '09:30:00', '17:30:00', 'San Polo, 3052, 30125 Venezia VE, Italy', '+390415234864', 10, '2022-01-19', 0, 0),
(105, 2, 'Peggy Guggenheim Collection', '4.70', '10:00:00', '18:00:00', 'Dorsoduro, 701-704, 30123 Venezia VE, Italy', '+390412405411', 15, '2022-01-20', 0, 0),
(106, 2, 'Santa Maria Gloriosa dei Frari', '4.00', '09:00:00', '18:00:00', 'San Polo, 3072, 30125 Venezia VE, Italy', '+390412728611', 3, '2022-01-21', 0, 0),
(107, 2, 'Santa Maria dei Miracoli', '4.00', '10:00:00', '17:00:00', 'Campiello dei Miracoli, 30121 Venezia VE, Italy', '+390412750462', 3, '2022-01-22', 0, 0),
(108, 2, 'Algiubagio Restaurant', '4.30', '12:00:00', '20:00:00', 'Fondamente Nove, 5039, 30121 Venezia VE, Italy', '+390415236084', 85, '2022-01-23', 0, 0),
(109, 2, 'Trattoria Al Gazzettino', '4.70', '12:00:00', '20:00:00', ' C. de Mezzo, 4072, 30124 Venezia VE, Italy', '+390415210497', 90, '2022-01-24', 0, 0),
(110, 2, 'Dal Moro\'s', '4.20', '12:00:00', '20:00:00', 'Calle Casseleria, 5324, 30122 Venezia VE, Italy,', '', 100, '2022-01-25', 0, 0),
(111, 2, 'St. Mark\'s Basilica', '4.70', '09:30:00', '17:00:00', 'P.za San Marco, 328, 30100 Venezia VE, Italy', '+390412708311', 0, '2022-01-26', 0, 0),
(112, 2, 'Piazza San Marco (St. Mark\'s Square)', '4.70', '00:00:00', '00:00:00', 'P.za San Marco, 30100 Venezia VE, Italy', '', 0, '2022-01-27', 0, 0),
(113, 2, 'Canale Grande (Grand Canal)', '4.80', '00:00:00', '00:00:00', 'Grand Canal,Italy', '', 0, '2022-01-28', 0, 0),
(114, 2, 'Rialto Bridge and San Polo', '4.70', '00:00:00', '00:00:00', 'Sestiere San Polo, 30125 Venezia VE, Italy', '', 0, '2022-01-29', 0, 0),
(115, 2, 'Scuola Grande di San Rocco', '4.70', '09:30:00', '17:30:00', 'San Polo, 3052, 30125 Venezia VE, Italy', '+390415234864', 10, '2022-01-30', 0, 0),
(116, 2, 'Peggy Guggenheim Collection', '4.70', '10:00:00', '18:00:00', 'Dorsoduro, 701-704, 30123 Venezia VE, Italy', '+390412405411', 15, '2022-01-31', 0, 0),
(117, 2, 'Santa Maria Gloriosa dei Frari', '4.00', '09:00:00', '18:00:00', 'San Polo, 3072, 30125 Venezia VE, Italy', '+390412728611', 3, '2022-02-01', 0, 0),
(118, 2, 'Santa Maria dei Miracoli', '4.00', '10:00:00', '17:00:00', 'Campiello dei Miracoli, 30121 Venezia VE, Italy', '+390412750462', 3, '2022-02-02', 0, 0),
(119, 2, 'Algiubagio Restaurant', '4.30', '12:00:00', '20:00:00', 'Fondamente Nove, 5039, 30121 Venezia VE, Italy', '+390415236084', 85, '2022-02-03', 0, 0),
(120, 2, 'Trattoria Al Gazzettino', '4.70', '12:00:00', '20:00:00', ' C. de Mezzo, 4072, 30124 Venezia VE, Italy', '+390415210497', 90, '2022-02-04', 0, 0),
(121, 3, 'Cathedral of Santa Maria, Piazza Duomo', '4.80', '10:00:00', '16:30:00', 'Piazza del Duomo, 50122 Firenze FI, Italy', '+390552302885', 18, '2022-01-19', 0, 0),
(122, 3, 'Baptistery of St. John', '4.70', '08:15:00', '18:30:00', 'Piazza San Giovanni, 50122 Firenze FI, Italy', '+390552302885', 4, '2022-01-20', 0, 0),
(123, 3, 'Piazzale Michelangiolo', '4.80', '00:00:00', '00:00:00', 'Piazzale Michelangelo, 50125 Firenze FI, Italy', '', 0, '2022-01-21', 0, 0),
(124, 3, 'Uffizi Palace and Gallery', '3.00', '08:15:00', '18:30:00', 'Piazzale degli Uffizi, 6, 50122 Firenze FI, Italy', '+39055294883', 0, '2022-01-22', 0, 0),
(125, 3, 'Piazza della Signoria', '4.80', '00:00:00', '00:00:00', 'P.za della Signoria, 50121 Firenze FI, Italy', '+3905523885', 0, '2022-01-23', 0, 0),
(126, 3, 'Academy Gallery', '4.60', '09:00:00', '18:15:00', 'Via Ricasoli, 58/60, 50129 Firenze FI, Italy', '+390550987100', 20, '2022-01-24', 0, 0),
(127, 3, 'San Lorenzo and Michelangelo\'s Medici Tombs', '4.60', '13:00:00', '18:30:00', 'Piazza di Madonna degli Aldobrandini, 6, 50123 Firenze FI, Italy', '+390550649430', 12, '2022-01-25', 0, 0),
(128, 3, 'Palazzo Vecchio', '4.70', '09:00:00', '22:00:00', 'P.za della Signoria, 50122 Firenze FI, Italy', '+390552768325', 10, '2022-01-26', 0, 0),
(129, 3, 'Santa Croce', '4.70', '09:30:00', '17:30:00', 'Piazza di Santa Croce, 16, 50122 Firenze FI, Italy', '+390552466105', 8, '2022-01-27', 0, 0),
(130, 3, 'Palazzo Pitti (Pitti Palace)', '4.60', '13:30:00', '18:30:00', 'Piazza de\' Pitti, 1, 50125 Firenze FI, Italy', '+39055294883', 10, '2022-01-28', 0, 0),
(131, 3, 'Bargello Palace National Museum', '4.60', '08:45:00', '13:30:00', 'Via del Proconsolo, 4, 50122 Firenze FI, Italy', '+390550649440', 8, '2022-01-29', 0, 0),
(132, 3, 'Boboli Gardens', '4.30', '08:15:00', '18:30:00', 'Piazza de\' Pitti, 1, 50125 Firenze FI, Italy', '+3905523885', 6, '2022-01-30', 0, 0),
(133, 3, 'Trattoria Napoleone', '4.70', '19:00:00', '23:00:00', 'Piazza del Carmine, 24, 50124 Firenze FI, Italy', '+39055281015', 80, '2022-01-31', 0, 0),
(134, 3, 'Restaurant Il Vezzo', '4.00', '19:00:00', '23:00:00', 'Via Guelfa, 58, R, 50123 Firenze FI, Italy', '+39055281096', 85, '2022-02-01', 0, 0),
(135, 3, 'Panini Toscani', '4.50', '10:30:00', '23:00:00', 'Piazza del Duomo, 34/R, 50122 Firenze FI, Italy', '+393355725544', 90, '2022-02-02', 0, 0),
(136, 3, 'Cathedral of Santa Maria, Piazza Duomo', '4.80', '10:00:00', '16:30:00', 'Piazza del Duomo, 50122 Firenze FI, Italy', '+390552302885', 18, '2022-02-03', 0, 0),
(137, 3, 'Baptistery of St. John', '4.70', '08:15:00', '18:30:00', 'Piazza San Giovanni, 50122 Firenze FI, Italy', '+390552302885', 4, '2022-02-04', 0, 0),
(138, 4, 'Il Duomo (Milan Cathedral)', '4.80', '09:00:00', '19:00:00', 'P.za del Duomo, 20122 Milano MI, Italy', '+390272023375', 17, '2022-01-19', 0, 0),
(139, 4, 'Santa Maria delle Grazie', '4.60', '08:15:00', '19:00:00', 'Piazza di Santa Maria delle Grazie, 20123 Milano MI, Italy', '+39024676111', 10, '2022-01-20', 0, 0),
(140, 4, 'Galleria: Luxury Shops and Elegant Cafés', '4.70', '00:00:00', '00:00:00', 'P.za del Duomo, 20123 Milano MI, Italy', '+390288455555', 0, '2022-01-21', 0, 0),
(141, 4, 'Castello Sforzesco', '4.60', '07:00:00', '19:30:00', 'Piazza Castello, 20121 Milano MI, Italy', '+390288463700', 5, '2022-01-22', 0, 0),
(142, 4, 'Pinacoteca di Brera', '4.70', '08:30:00', '19:15:00', 'Via Brera, 28, 20121 Milano MI, Italy', '+390272263230', 0, '2022-01-23', 0, 0),
(143, 4, 'Cimitero Monumentale', '4.70', '08:00:00', '18:00:00', 'Piazzale Cimitero Monumentale, 20154 Milano MI, Italy', '+390288465600', 15, '2022-01-24', 0, 0),
(144, 4, 'San Maurizio and the Archaeology Museum', '4.40', '10:00:00', '17:30:00', 'Corso Magenta, 15, 20123 Milano MI, Italy', '+390288445208', 5, '2022-01-25', 0, 0),
(145, 4, 'Santa Maria Presso San Satiro', '4.70', '07:30:00', '19:00:00', 'Via Torino, 20123 Milano MI, Italy', '+3902874683', 10, '2022-01-26', 0, 0),
(146, 4, 'Poldi-Pezzoli Museum', '4.60', '10:00:00', '18:00:00', 'Via Alessandro Manzoni, 12, 20121 Milano MI, Italy', '+3902794889', 14, '2022-01-27', 0, 0),
(147, 4, 'Leonardo da Vinci National Museum', '4.50', '09:30:00', '18:30:00', 'Via San Vittore, 21, 20123 Milano MI, Italy', '+3902485551', 40, '2022-01-28', 0, 0),
(148, 4, 'Museo Bagatti Valsecchi', '4.70', '13:00:00', '17:45:00', 'Via Gesù, 5, 20121 Milano MI, Italy', '+390276006132', 10, '2022-01-29', 0, 0),
(149, 4, 'Modern Art Gallery', '4.40', '10:00:00', '18:00:00', 'Via Magenta, 31, 10128 Torino TO, Italy', '+390114429518', 5, '2022-01-30', 0, 0),
(150, 4, 'Marecrudo', '4.40', '10:30:00', '23:00:00', 'Corso di Porta Romana, 132, 20122 Milano MI, Italy', '+390258316012', 95, '2022-01-31', 0, 0),
(151, 4, 'La Sidreria', '4.30', '10:30:00', '23:00:00', 'Via Arcangelo Corelli, 31, 20134 Milano MI, Italy', '+39027496017', 80, '2022-02-01', 0, 0),
(152, 4, 'Osteria italiana', '4.50', '11:00:00', '23:00:00', 'Via Napo Torriani, 22, 20124 Milano MI, Italy', '+39026704188', 100, '2022-02-02', 0, 0),
(153, 4, 'Il Duomo (Milan Cathedral)', '4.80', '09:00:00', '19:00:00', 'P.za del Duomo, 20122 Milano MI, Italy', '+390272023375', 17, '2022-02-03', 0, 0),
(154, 4, 'Santa Maria delle Grazie', '4.60', '08:15:00', '19:00:00', 'Piazza di Santa Maria delle Grazie, 20123 Milano MI, Italy', '+39024676111', 10, '2022-02-04', 0, 0),
(155, 5, 'Castel Ovo and the Lungomare', '4.60', '09:00:00', '18:30:00', 'Via Eldorado, 3, 80132 Napoli NA, Italy', '+390817956180', 0, '2022-01-13', 0, 0),
(156, 5, 'National Archeological Museum', '4.60', '09:00:00', '19:30:00', 'Piazza Museo, 19, 80135 Napoli NA, Italy', '+390814422149', 10, '2022-01-14', 0, 0),
(157, 5, 'Cappella Sansevero', '4.70', '09:00:00', '18:30:00', 'Via Francesco de Sanctis, 19/21, 80134 Napoli NA, Italy', '+390815518470', 8, '2022-01-15', 0, 0),
(158, 5, 'Capodimonte Royal Palace and Museum', '4.70', '08:30:00', '19:30:00', 'Real Bosco di Capodimonte', '+390817499111', 10, '2022-01-16', 0, 0),
(159, 5, 'Catacombs of San Gennaro', '4.70', '09:30:00', '17:00:00', 'Via Capodimonte, 13, 80100 Napoli NA, Italy', '+390817443714', 10, '2022-01-17', 0, 0),
(160, 5, 'Palazzo Reale (Royal Palace)', '4.60', '09:00:00', '20:00:00', 'Piazza del Plebiscito, 1, 80132 Napoli NA, Italy', '+390815808255', 7, '2022-01-18', 0, 0),
(161, 5, 'La Pescheria', '4.20', '11:00:00', '23:00:00', 'Via Alcide de Gasperi, 127, 80059 Torre del Greco NA, Italy', '+390813596504', 70, '2022-01-19', 0, 0),
(162, 5, 'Trattoria Don Vincenzo', '4.50', '11:00:00', '23:00:00', 'Via San Biagio Dei Librai, 60, 80138 Napoli NA, Italy', '+390810144937', 100, '2022-01-20', 0, 0),
(163, 5, 'La Lazzara Trattoria e Pizzeria', '4.40', '11:00:00', '23:00:00', 'Piazza Francese, 9/10, 80133 Napoli NA, Italy', '', 80, '2022-01-21', 0, 0),
(164, 5, 'Castel Ovo and the Lungomare', '4.60', '09:00:00', '18:30:00', 'Via Eldorado, 3, 80132 Napoli NA, Italy', '+390817956180', 0, '2022-01-22', 0, 0),
(165, 5, 'National Archeological Museum', '4.60', '09:00:00', '19:30:00', 'Piazza Museo, 19, 80135 Napoli NA, Italy', '+390814422149', 10, '2022-01-23', 0, 0),
(166, 5, 'Cappella Sansevero', '4.70', '09:00:00', '18:30:00', 'Via Francesco de Sanctis, 19/21, 80134 Napoli NA, Italy', '+390815518470', 8, '2022-01-24', 0, 0),
(167, 5, 'Capodimonte Royal Palace and Museum', '4.70', '08:30:00', '19:30:00', 'Real Bosco di Capodimonte', '+390817499111', 10, '2022-01-25', 0, 0),
(168, 5, 'Catacombs of San Gennaro', '4.70', '09:30:00', '17:00:00', 'Via Capodimonte, 13, 80100 Napoli NA, Italy', '+390817443714', 10, '2022-01-26', 0, 0),
(169, 5, 'Palazzo Reale (Royal Palace)', '4.60', '09:00:00', '20:00:00', 'Piazza del Plebiscito, 1, 80132 Napoli NA, Italy', '+390815808255', 7, '2022-01-27', 0, 0),
(170, 5, 'La Pescheria', '4.20', '11:00:00', '23:00:00', 'Via Alcide de Gasperi, 127, 80059 Torre del Greco NA, Italy', '+390813596504', 70, '2022-01-28', 0, 0),
(171, 5, 'Trattoria Don Vincenzo', '4.50', '11:00:00', '23:00:00', 'Via San Biagio Dei Librai, 60, 80138 Napoli NA, Italy', '+390810144937', 100, '2022-01-29', 0, 0),
(172, 5, 'La Lazzara Trattoria e Pizzeria', '4.40', '11:00:00', '23:00:00', 'Piazza Francese, 9/10, 80133 Napoli NA, Italy', '', 80, '2022-01-30', 0, 0),
(173, 5, 'Castel Ovo and the Lungomare', '4.60', '09:00:00', '18:30:00', 'Via Eldorado, 3, 80132 Napoli NA, Italy', '+390817956180', 0, '2022-01-31', 0, 0),
(174, 5, 'National Archeological Museum', '4.60', '09:00:00', '19:30:00', 'Piazza Museo, 19, 80135 Napoli NA, Italy', '+390814422149', 10, '2022-02-01', 0, 0),
(175, 5, 'Cappella Sansevero', '4.70', '09:00:00', '18:30:00', 'Via Francesco de Sanctis, 19/21, 80134 Napoli NA, Italy', '+390815518470', 8, '2022-02-02', 0, 0),
(176, 5, 'Capodimonte Royal Palace and Museum', '4.70', '08:30:00', '19:30:00', 'Real Bosco di Capodimonte', '+390817499111', 10, '2022-02-03', 0, 0),
(177, 5, 'Catacombs of San Gennaro', '4.70', '09:30:00', '17:00:00', 'Via Capodimonte, 13, 80100 Napoli NA, Italy', '+390817443714', 10, '2022-02-04', 0, 0),
(178, 6, 'San Petronio (Basilica of St. Petronius)', '4.60', '08:30:00', '18:00:00', 'Piazza Galvani, 5, 40124 Bologna BO, Italy', '+393465768400', 0, '2022-01-12', 0, 0),
(179, 6, 'Santo Stefano (St. Stephen Basilica)', '4.80', '07:30:00', '19:30:00', 'Via Santo Stefano, 24, 40125 Bologna BO, Italy', '+390514983423', 5, '2022-01-13', 0, 0),
(180, 6, 'Leaning Towers', '4.70', '10:00:00', '17:00:00', 'P.za di Porta Ravegnana, 40126 Bologna BO, Italy', '', 5, '2022-01-14', 0, 0),
(181, 6, 'Sanctuary of Madonna di San Luca', '4.70', '07:00:00', '18:00:00', 'Via di San Luca, 36, 40135 Bologna BO, Italy', '+390516142339', 20, '2022-01-15', 0, 0),
(182, 6, 'Archiginnasio Anatomical Theater', '4.50', '10:00:00', '18:00:00', 'Piazza Galvani, 1, 40124 Bologna BO, Italy', '+39051276821', 3, '2022-01-16', 0, 0),
(183, 6, 'Gessetto Restaurant', '4.40', '11:00:00', '23:00:00', 'Piazza S. Martino, 4/a, 40126 Bologna BO, Italy', '+390510548873', 90, '2022-01-17', 0, 0),
(184, 6, 'Osteria dell\'Orsa', '4.70', '12:00:00', '20:00:00', 'Via Mentana, 1, 40126 Bologna BO, Italy', '+39051231576', 80, '2022-01-18', 0, 0),
(185, 6, 'CIBO Bistro Bologna', '4.10', '12:00:00', '20:00:00', 'Via Agamennone Zappoli, 5/1, 40126 Bologna BO, Italy', '+393703698230', 100, '2022-01-19', 0, 0),
(186, 6, 'San Petronio (Basilica of St. Petronius)', '4.60', '08:30:00', '18:00:00', 'Piazza Galvani, 5, 40124 Bologna BO, Italy', '+393465768400', 0, '2022-01-20', 0, 0),
(187, 6, 'Santo Stefano (St. Stephen Basilica)', '4.80', '07:30:00', '19:30:00', 'Via Santo Stefano, 24, 40125 Bologna BO, Italy', '+390514983423', 5, '2022-01-21', 0, 0),
(188, 6, 'Leaning Towers', '4.70', '10:00:00', '17:00:00', 'P.za di Porta Ravegnana, 40126 Bologna BO, Italy', '', 5, '2022-01-22', 0, 0),
(189, 6, 'Sanctuary of Madonna di San Luca', '4.70', '07:00:00', '18:00:00', 'Via di San Luca, 36, 40135 Bologna BO, Italy', '+390516142339', 20, '2022-01-23', 0, 0),
(190, 6, 'Archiginnasio Anatomical Theater', '4.50', '10:00:00', '18:00:00', 'Piazza Galvani, 1, 40124 Bologna BO, Italy', '+39051276821', 3, '2022-01-24', 0, 0),
(191, 6, 'Gessetto Restaurant', '4.40', '11:00:00', '23:00:00', 'Piazza S. Martino, 4/a, 40126 Bologna BO, Italy', '+390510548873', 90, '2022-01-25', 0, 0),
(192, 6, 'Osteria dell\'Orsa', '4.70', '12:00:00', '20:00:00', 'Via Mentana, 1, 40126 Bologna BO, Italy', '+39051231576', 80, '2022-01-26', 0, 0),
(193, 6, 'CIBO Bistro Bologna', '4.10', '12:00:00', '20:00:00', 'Via Agamennone Zappoli, 5/1, 40126 Bologna BO, Italy', '+393703698230', 100, '2022-01-27', 0, 0),
(194, 6, 'San Petronio (Basilica of St. Petronius)', '4.60', '08:30:00', '18:00:00', 'Piazza Galvani, 5, 40124 Bologna BO, Italy', '+393465768400', 0, '2022-01-28', 0, 0),
(195, 6, 'Santo Stefano (St. Stephen Basilica)', '4.80', '07:30:00', '19:30:00', 'Via Santo Stefano, 24, 40125 Bologna BO, Italy', '+390514983423', 5, '2022-01-29', 0, 0),
(196, 6, 'Leaning Towers', '4.70', '10:00:00', '17:00:00', 'P.za di Porta Ravegnana, 40126 Bologna BO, Italy', '', 5, '2022-01-30', 0, 0),
(197, 6, 'Sanctuary of Madonna di San Luca', '4.70', '07:00:00', '18:00:00', 'Via di San Luca, 36, 40135 Bologna BO, Italy', '+390516142339', 20, '2022-01-31', 0, 0),
(198, 6, 'Archiginnasio Anatomical Theater', '4.50', '10:00:00', '18:00:00', 'Piazza Galvani, 1, 40124 Bologna BO, Italy', '+39051276821', 3, '2022-02-01', 0, 0),
(199, 6, 'Gessetto Restaurant', '4.40', '11:00:00', '23:00:00', 'Piazza S. Martino, 4/a, 40126 Bologna BO, Italy', '+390510548873', 90, '2022-02-02', 0, 0),
(200, 6, 'Osteria dell\'Orsa', '4.70', '12:00:00', '20:00:00', 'Via Mentana, 1, 40126 Bologna BO, Italy', '+39051231576', 80, '2022-02-03', 0, 0),
(201, 6, 'CIBO Bistro Bologna', '4.10', '12:00:00', '20:00:00', 'Via Agamennone Zappoli, 5/1, 40126 Bologna BO, Italy', '+393703698230', 100, '2022-02-04', 0, 0),
(202, 7, 'Acquario di Genova (Aquarium)', '4.50', '10:00:00', '20:00:00', 'Ponte Spinola, 16128 Genova GE, Italy', '+3901023451', 18, '2022-01-13', 0, 0),
(203, 7, 'Cathedral of San Lorenzo', '4.60', '08:00:00', '19:00:00', 'Piazza S. Lorenzo, 16123 Genova GE, Italy', '+39010265786', 9, '2022-01-14', 0, 0),
(204, 7, 'Santa Maria di Castello', '4.70', '10:00:00', '18:00:00', 'Salita di Santa Maria di Castello, 15, 16123 Genova GE, Italy', '+390108603690', 20, '2022-01-15', 0, 0),
(205, 7, 'National Gallery in Palazzo Spinola', '4.60', '13:30:00', '19:00:00', 'Piazza di Pellicceria, 1, 16123 Genova GE, Italy', '+390102705300', 25, '2022-01-16', 0, 0),
(206, 7, 'Via Balbi and Palazzo Reale', '4.50', '13:30:00', '19:00:00', 'Via Balbi, 10, 16126 Genova GE, Italy', '+390102710236', 10, '2022-01-17', 0, 0),
(207, 7, 'Galata Museo del Mare (Maritime Museum)', '4.50', '10:00:00', '18:00:00', 'Calata Ansaldo De Mari, 1, 16126 Genova GE, Italy', '+390102345655', 13, '2022-01-18', 0, 0),
(208, 7, 'Ostaia De Banchi', '4.60', '12:00:00', '20:00:00', 'Vico Denegri, 17 r, 16124 Genova GE, Italy', '+390108540468', 80, '2022-01-19', 0, 0),
(209, 7, 'Alla Lunga Ristorante', '4.60', '12:15:00', '20:00:00', 'Vico Giannini, 14r, 16124 Genova GE, Italy', '+390104077495', 95, '2022-01-20', 0, 0),
(210, 7, 'La Botega Del Gusto', '4.40', '12:15:00', '20:00:00', 'Vico Superiore del Ferro, 3, 16123 Genova GE, Italy', '', 95, '2022-01-21', 0, 0),
(211, 7, 'Acquario di Genova (Aquarium)', '4.50', '10:00:00', '20:00:00', 'Ponte Spinola, 16128 Genova GE, Italy', '+3901023451', 18, '2022-01-22', 0, 0),
(212, 7, 'Cathedral of San Lorenzo', '4.60', '08:00:00', '19:00:00', 'Piazza S. Lorenzo, 16123 Genova GE, Italy', '+39010265786', 9, '2022-01-23', 0, 0),
(213, 7, 'Santa Maria di Castello', '4.70', '10:00:00', '18:00:00', 'Salita di Santa Maria di Castello, 15, 16123 Genova GE, Italy', '+390108603690', 20, '2022-01-24', 0, 0),
(214, 7, 'National Gallery in Palazzo Spinola', '4.60', '13:30:00', '19:00:00', 'Piazza di Pellicceria, 1, 16123 Genova GE, Italy', '+390102705300', 25, '2022-01-25', 0, 0),
(215, 7, 'Via Balbi and Palazzo Reale', '4.50', '13:30:00', '19:00:00', 'Via Balbi, 10, 16126 Genova GE, Italy', '+390102710236', 10, '2022-01-26', 0, 0),
(216, 7, 'Galata Museo del Mare (Maritime Museum)', '4.50', '10:00:00', '18:00:00', 'Calata Ansaldo De Mari, 1, 16126 Genova GE, Italy', '+390102345655', 13, '2022-01-27', 0, 0),
(217, 7, 'Ostaia De Banchi', '4.60', '12:00:00', '20:00:00', 'Vico Denegri, 17 r, 16124 Genova GE, Italy', '+390108540468', 80, '2022-01-28', 0, 0),
(218, 7, 'Alla Lunga Ristorante', '4.60', '12:15:00', '20:00:00', 'Vico Giannini, 14r, 16124 Genova GE, Italy', '+390104077495', 95, '2022-01-29', 0, 0),
(219, 7, 'La Botega Del Gusto', '4.40', '12:15:00', '20:00:00', 'Vico Superiore del Ferro, 3, 16123 Genova GE, Italy', '', 95, '2022-01-30', 0, 0),
(220, 7, 'Acquario di Genova (Aquarium)', '4.50', '10:00:00', '20:00:00', 'Ponte Spinola, 16128 Genova GE, Italy', '+3901023451', 18, '2022-01-31', 0, 0),
(221, 7, 'Cathedral of San Lorenzo', '4.60', '08:00:00', '19:00:00', 'Piazza S. Lorenzo, 16123 Genova GE, Italy', '+39010265786', 9, '2022-02-01', 0, 0),
(222, 7, 'Santa Maria di Castello', '4.70', '10:00:00', '18:00:00', 'Salita di Santa Maria di Castello, 15, 16123 Genova GE, Italy', '+390108603690', 20, '2022-02-02', 0, 0),
(223, 7, 'National Gallery in Palazzo Spinola', '4.60', '13:30:00', '19:00:00', 'Piazza di Pellicceria, 1, 16123 Genova GE, Italy', '+390102705300', 25, '2022-02-03', 0, 0),
(224, 7, 'Via Balbi and Palazzo Reale', '4.50', '13:30:00', '19:00:00', 'Via Balbi, 10, 16126 Genova GE, Italy', '+390102710236', 10, '2022-02-04', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `discount_by_join_date` int(11) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `phone`, `email`, `first_name`, `last_name`, `join_date`, `discount_by_join_date`, `role`) VALUES
(1, 'HafsaHassan', 'passwordfatima', '+9234543942', 'fatimahsan@gmail.com', 'Fatima', 'Ahsan', '2022-01-17 12:31:21', 50, 'customer'),
(2, 'HafsaHassan', 'passwordhafsa', '+9274927482', 'hafsahassan@gmail.com', 'Hafsa', 'Hassan', '2022-01-16 16:31:50', 45, 'customer'),
(4, 'AminaWasif', 'abc', '03365220349', 'hello@gmail.com', 'Amina', 'Wasif', '2022-01-17 02:39:29', 15, 'customer'),
(5, 'Admin1', 'passwordadmin', '03556789126', 'tonyadmin@hotmail.com', 'Tony', 'James', '2022-01-16 16:44:38', 0, 'admin'),
(6, 'Admin2', 'password', '0356770912', 'lilyadmin@hotmail.com', 'Lily', 'Simons', '2022-01-17 01:59:32', 0, 'admin'),
(7, 'SaraRizwan', 'passwordsara', '03361122890', 'sara_r@yahoo.com', 'Sara', 'Rizwan', '2022-01-17 02:39:20', 10, 'customer'),
(8, 'Aaaa', 'abc', '345612345', 'hello2@gmail.com', 'Amina', 'Wasid', '2022-01-17 12:27:18', 0, 'customer');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view1_attraction`
-- (See below for the actual view)
--
CREATE TABLE `view1_attraction` (
`ID` int(11)
,`AttractionID` int(11)
,`name` varchar(50)
,`duration` int(11)
,`about` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view2_restaurant`
-- (See below for the actual view)
--
CREATE TABLE `view2_restaurant` (
`ID` int(11)
,`RestaurantID` int(11)
,`name` varchar(50)
,`cuisine_type` varchar(50)
,`capacity` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view1_attraction`
--
DROP TABLE IF EXISTS `view1_attraction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view1_attraction`  AS SELECT `tp`.`id` AS `ID`, `a`.`id` AS `AttractionID`, `tp`.`name` AS `name`, `a`.`duration` AS `duration`, `a`.`about` AS `about` FROM (`attraction` `a` join `tourist_places` `tp` on(`a`.`id` = `tp`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view2_restaurant`
--
DROP TABLE IF EXISTS `view2_restaurant`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view2_restaurant`  AS SELECT `tp`.`id` AS `ID`, `r`.`id` AS `RestaurantID`, `tp`.`name` AS `name`, `r`.`cuisine_type` AS `cuisine_type`, `r`.`capacity` AS `capacity` FROM (`restaurant` `r` join `tourist_places` `tp` on(`r`.`id` = `tp`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attraction`
--
ALTER TABLE `attraction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_city_reg` (`city_id`),
  ADD KEY `FK2_customer_reg` (`customer_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourist_places`
--
ALTER TABLE `tourist_places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_city_touristplaces` (`city_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`,`username`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attraction`
--
ALTER TABLE `attraction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tourist_places`
--
ALTER TABLE `tourist_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attraction`
--
ALTER TABLE `attraction`
  ADD CONSTRAINT `FK_touristplaces_attract` FOREIGN KEY (`id`) REFERENCES `tourist_places` (`id`);

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `FK2_customer_reg` FOREIGN KEY (`customer_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_city_reg` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `FK_touristplaces_restaurant` FOREIGN KEY (`id`) REFERENCES `tourist_places` (`id`);

--
-- Constraints for table `tourist_places`
--
ALTER TABLE `tourist_places`
  ADD CONSTRAINT `FK_city_touristplaces` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
