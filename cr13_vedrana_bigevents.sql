-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 01:40 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr13_vedrana_bigevents`
--
CREATE DATABASE IF NOT EXISTS `cr13_vedrana_bigevents` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr13_vedrana_bigevents`;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `eventDate` date NOT NULL,
  `eventTime` time NOT NULL,
  `description` varchar(500) NOT NULL,
  `descriptionLong` longtext DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `phoneNr` varchar(30) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `eventUrl` varchar(250) DEFAULT NULL,
  `category` varchar(25) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `eventDate`, `eventTime`, `description`, `descriptionLong`, `image`, `capacity`, `email`, `phoneNr`, `country`, `city`, `address`, `eventUrl`, `category`, `zipcode`) VALUES
(1, 'Hundertwasser - Schiele', '2020-08-20', '09:00:00', 'Imagine Tomorrow', 'Friedensreich Hundertwasser (1928–2000) shaped 20th-century art beyond the borders of Austria as a painter, designer of living spaces and pioneer of the environmental movement. His life-long, intense exploration of the personality and oeuvre of Egon Schiele (1890–1918) is largely unknown.\r\n\r\nAt the age of 20, when he was a student at the Vienna Academy of Fine Arts, the artist discovered Viennese Modernism through exhibitions and books: Schiele, especially, would later become a central point of reference for the internationally active artist. Hundertwasser honed his draftsmanship by studying Schiele’s drawings, successfully propagated Schiele’s art amongst his fellow artists in Paris, and in 1965 gave one of his works the title 622 Mourning Egon Schiele. Until his death, Hundertwasser surrounded himself in his studios and homes in Venice and New Zealand with reproductions of paintings and drawings by his highly esteemed fellow artist. Hundertwasser’s poetic text “I Love Schiele”, written in 1951, illustrates the extent to which he related to the artist: “I often dream like Schiele, my father, about flowers that are red, and birds and flying fish and gardens in velvet and emerald green and human beings who walk, weeping, in red-yellow and ocean-blue.”\r\n\r\nToday, 20 years after Hundertwasser’s death, the Leopold Museum is dedicating an exhibition, conceived as a dialogue, to these two iconic artists, which comprises some 170 exhibits. Shining the spotlight on central motifs and themes in the works of both artists, such as ensouled nature and the relationship between the individual and society, the exhibition illustrates analogies in their oeuvres that go beyond formal similarities. Through eminent loans from Austrian and international collections and archival material published for the first time, the exhibition retraces the artistic and spiritual kinship of two extraordinary 20th-century Austrian artists, who never had the chance to meet.', 'vienna-2689474_1280.jpg', 400, 'office@leopoldmuseum.org', '+43 1 525 70 0', 'AT', 'Vienna', 'Museumsplatz 1', 'http://www.leopoldmuseum.org', 'exhibitions', 1070),
(4, 'Richard Neutra', '2020-08-21', '18:52:00', 'California Living', 'In October of 1923, a young man from Vienna made his way to the United States – just a few years later, he created “Lovell Health House,” an icon of California Modernism. It made him one of the most famous architects of his time. His name: Richard Neutra (1892-1970). His bright and airy houses, open to yards, gardens, and the landscape, became symbols for a new ideal of living – transparent and rational, at one with nature, tailored to residential needs. Innovative constructions, affordable materials, standardization, and prefabrication were all designed to lower costs.\r\n\r\nFifty years after Neutra’s death, the Wien Museum approaches the work and significance of the architect on two levels: Contemporary photographs by David Schreyer document  select residences by Neutra. The photos not only convey California’s classic residential forms; they also show that Neutra’s homes continue to be exemplary in regard to spatial economy, design quality, and functionality. In addition, there is a historical account, which focuses on Neutra’s intense and consequential relationship with his home city of Vienna. It is based on previously unpublished documents, including the 1969 film “The Ideas of Richard Neutra.” To this day, those ideas have lost nothing of their fascination.', 'richard-neutra-miller-house-palm-springs-1936-37-19to1.jpeg', 80, 'office@wienmuseum.at', '+43 1 4000 8400', 'AT', 'Vienna', 'Felderstraße 6-8', 'http://www.wienmuseum.at', 'exhibitions', 1010),
(5, 'Film Festival in front of the City Hall 2020', '2020-08-13', '18:51:00', 'The Film Festival on Vienna\'s Rathausplatz has been a trademark of the federal capital for three decades.', 'The Film Festival on Vienna\'s Rathausplatz has been a trademark of the federal capital for three decades. Hundreds of thousands of people from Vienna and all over the world visit this popular event every year to enjoy the unique mixture of culture, culinary delights and the special flair of the city with free admission. But this year everything is different and the Film Festival is like never before.\r\n\r\nDue to the changed framework conditions for events, the 2020 festival will be launched with an innovative concept which, despite the observance of all the necessary safety measures to protect health, will enable relaxed and entertaining cultural and culinary enjoyment in the open air.\r\nTwo events - one safe experience\r\n\r\nThis year, the Rathausplatz will be divided into a clearly defined open-air cinema area in front of the town hall and a completely separate catering area for 500 guests each. By this structuring of the event area, the prescribed safety distances and protective measures can be implemented in the best possible way.\r\n\r\n4 July to 6 September 2020\r\nFilm start daily at nightfall\r\nAdmission 2 hours before film start - only with a valid ticket!\r\nGastronomy:\r\nMonday to Thursday 17:00 to 24:00\r\nFriday to Sunday 11:00 to 24:00\r\ntable reservation recommended!\r\n\r\nHighlights:\r\nOPER\r\n04.07. + 30.08. / Fidelio\r\n08.07. + 08.08. / Tosca (Wiener Staatsoper 2019)\r\n22.08. / Les Indes Galantes\r\n \r\nKONZERT KLASSIK\r\n18.07. + 29.08. / John Williams - Live in Vienna (mit John Williams und Anne-Sophie Mutter)\r\n05.07. + 28.08. / Martin Grubingers The Percussive Planet Ensemble\r\n10.07. + 24.08. / Beethoven, Symphonie Nr. 9 (mit Claudio Abbado)\r\n \r\nTANZ\r\n07.07. + 25.08. / Romeo und Julia\r\n11.07. + 31.08. / Riverdance: 25th Anniversary \r\n13.07. + 10.08. / Beethoven Project - Ballet by John Neumeier\r\n14.08. / Schwanensee\r\n \r\nMUSICAL\r\n01.08. + 05.09. / I am From Austria - Das Musical mit den Hits von Rainhard Fendrich\r\n \r\nPOP\r\n09.07. + 03.09. / Avicii Tribute Concert - for Mental Health Awareness\r\n23.07. + 20.08. / Herbert Grönemeyer plays Baloise Session\r\n23.07. + 01.09. / Max Raabe & Palast Orchester – MTV Unplugged\r\n25.07. + 13.08. / Take That: Wonderland – Live at the O2\r\n30.07. + 27.08. / Mando Diao - Berlin Live\r\n \r\nJAZZ\r\n06.07. + 01.09. / Respect to Aretha\r\n07.08. / Quincy Jones - A Musical Celebration in Paris', 'town-hall-1332069_1280.jpg', 5000, NULL, NULL, 'AT', 'Vienna', 'Rathausplatz', 'http://filmfestival-rathausplatz.at', 'film', 1010),
(6, 'Beethoven. World of the Man and Spark of the Gods', '2020-07-29', '09:00:00', 'Ludwig van Beethoven: His name stands for a musical oeuvre that today enchants people the world over. 2020 sees the 250th anniversary of the birth of this great composer, and in celebration the Austrian National Library will be presenting a special exhibition in the State Hall entitled “Beethoven. World of the Man and Spark of the Gods”.', 'Ludwig van Beethoven: His name stands for a musical oeuvre that today enchants people the world over. 2020 sees the 250th anniversary of the birth of this great composer, and in celebration the Austrian National Library will be presenting a special exhibition in the State Hall entitled “Beethoven. World of the Man and Spark of the Gods”.\r\n\r\nThe “World of the Man” covers Beethoven’s relationships with his contemporaries, with his teachers and pupils, with musicians and patrons, with women and friends, as well as with his family. He was not, after all, the “solitary struggler” as idealised by posterity, but rather a composer who was in a multiplicity of relationships with the world around him. The exhibition will show this using many original letters held by the Austrian National Library. Although his dealings with his fellow men and women were not easy, these letters demonstrate the composer’s self-confidence and sarcastic humour, as well as his affection for women. Particularly moving is his attempt to act as father figure to his nephew Karl, an attempt that ended in tragic failure when the latter tried to commit suicide in 1826, whereupon Beethoven abandoned his role as Karl’s legal guardian.\r\n\r\nThe “Sparks of the Gods” are the original manuscripts of Beethoven’s compositions that have become part of the classical canon, such as the Violin Concerto Op. 61, the “Spring Sonata” Op. 24 or the String Quartet Op. 95, held by the Austrian National Library.', 'vienna-1652790_1280.jpg', 500, NULL, '+43 1 534 10', 'AT', 'Vienna', 'Prunktsaal, Josefsplatz 1', 'http://www.onb.ac.at', 'exhibitions', 1010),
(7, 'Klimt\'s Beethoven Frieze', '2020-06-16', '09:00:00', 'In 1902, Klimt created one of his most famous works, the Beethoven Frieze, for an exhibition of the Secession movement.', 'The entire show was an homage to Ludwig van Beethoven. Klimt’s monumental frieze greeted visitors in the entrance hall. Thirty-four meters wide and two meters high is this opulent, ornamental \"symphony\"; in which Klimt sought to immortalize Beethoven\'s \"Ninth\" and its interpretation by Richard Wagner.\r\n\r\nNot only contemporaries were deeply impressed by this work - the world at large is still showing its appreciation. Originally, the cycle was intended to be dismantled once the exhibition had ended. A collector bought the frieze in 1903 and removed it from the wall, separating it into seven pieces. In 1973, the Republic of Austria bought the valuable work and made it accessible to the public in 1986 in a room specially created for it in the Secession.\r\n\r\nFrom February 13, 2020, the Secession will offer a singular multimedia experience in cooperation with the Vienna Symphony Orchestra. Using headphones, the visitors of the Secession will hear the fourth movement of the Symphony No. 9 in D Minor, Op. 125 in a new  recording.', 'mural-2305597_1280.jpg', 500, NULL, '+43 1 587 53 07', 'AT', NULL, 'Secession, Friedrichstraße 12', 'http://www.secession.at', 'exhibitions', NULL),
(9, 'Sommerkino im Filmmuseum', '2020-08-08', '18:00:00', 'Sommerkino', NULL, 'vienna-1539441_1280.jpg', 50, 'office@filmmuseum.at', '+43 1 533 70 54 0', 'AT', 'Vienna', 'Augustinerstraße 1', 'https://www.filmmuseum.at/', 'film', 1010),
(10, 'Kultursommer 2020', '2020-08-08', '09:00:00', 'Wien dreht auf', '800 events in July and August 2020 (Thu - Sun)\r\n\r\nMusic, theater, cabaret, etc at various locations all over the city\r\n\r\n For the Main Stages as well as for \"Public Moves\" a reservation is necessary.\r\n\r\nRaus aus den Wohnzimmern, rein in die Stadt – weil sich Wien auch 2020 nicht unterkriegen lässt. Wien wäre nicht denkbar ohne Kunst und Kultur, ohne seine Künstlerinnen und Künstler. 2020 – ein Jahr, das für neue Herausforderungen und veränderte Gegebenheiten steht. Ein Jahr, das dem Kulturbetrieb in dieser Stadt schwer zugesetzt hat. Dieser Sommer, soviel ist sicher, der wird anders. Aber, und auch das ist klar: Wien dreht wieder auf.\r\n\r\nEin „Wiener Kultursommer“ soll es werden – einer, in dem die kulturelle Versorgung für Alt und Jung im Mittelpunkt steht. Und ja, es darf ein bisserl mehr sein: 2.000 Künstlerinnen und Künstler aus verschiedenen Bereichen, 800 Acts unterschiedlicher Genres, 25 Spielstätten und Locations. Im Juli und August wird die ganze Stadt im Rahmen des ersten Kultursommer Wien zur Bühne. Mit einem vielfältigen Programm – vom Gartenkonzert vor den Pensionisten-Wohnhäusern „Häuser zum Leben“ über Konzerte und Performances an öffentlichen Orten bis hin zum Parkkonzert.\r\nGespielt wird jede Woche Donnerstag bis Sonntag (ausgenommen Public Moves – diese finden täglich statt). Der Eintritt ist kostenlos und auch für den Schutz der Gesundheit und somit für einen entspannten Kunst- und Kulturgenuss ist gesorgt. Ein Zeichen des Optimismus, nennt Bürgermeister Michael Ludwig die Initiative. Denn Wien war immer eine Kulturhauptstadt – und sie wird es bleiben. Soviel ist sicher.\r\n\r\nDie vergangenen Monate haben vor allem jenen zugesetzt, die Wien Tag für Tag zu dem machen, was diese Stadt ist: eine Kulturhauptstadt. Also den Künstlerinnen und Künstlern, den Kulturschaffenden, all jenen Personen, die an den Spielstätten des Kultursommer Wien tätig sind. Und sie sollen es sein, die jetzt vor den Vorhang geholt werden: Raus aus den Wohnzimmern, rauf auf die Bühne. Wien dreht auf! Mit dem Kultursommer 2020.', 'tourism-5355361_1280.jpg', 1000, NULL, NULL, NULL, NULL, NULL, 'http://kultursommerwien.at', 'theatre', NULL),
(11, 'ImPulsTanz 2020: Public-Moves Workshops', '2020-08-08', '10:00:00', 'Seit über 30 Jahren präsentiert ImPulsTanz – Vienna International Dance Festival in seinem Performanceprogramm einen Querschnitt der zeitgenössischen Tanzszene in all ihrer Vielfalt.', 'From 9th July to 30th August we’re dancing again at seven locations in Vienna: Several times a day, in any weather, 90 teachers will offer insights into different dance styles – from ballet and bodywork to jazz and hip hop, voguing and yoga. The 296 workshops are open to all age groups and abilities, no previous knowledge necessary. Thanks to the generous support of the Arbeiterkammer Wien, all workshops are once again free of charge!\r\n\r\nThe 296 free courses are open to all age groups and levels!', 'girl-2940655_1280.jpg', 50, 'info@impulstanz.com', '+43 1 523 55 58', 'AT', 'Vienna', NULL, 'http://www.ImPulsTanz.com', 'music', NULL),
(12, 'Danube Island Festival 2020', '2020-07-31', '17:00:00', 'With an 80-day summer tour through ALL VIENNA and two festival days on the Danube Island, the Danube Island Festival 2020 will be the longest ever.', 'Eintritt frei / free entrance.\r\n\r\nThe #dif20 summer tour starts on 1.7.2020 and with a total of 100 acts in the context of 240 pop-ups, brings the entire programme and theme diversity of the DIF to all 23 districts of Vienna.', 'vienna-4396758_1280.jpg', 50000, NULL, NULL, 'AT', 'Vienna', 'Donauinsel', 'http://www.donauinselfest.at', 'music', 2020);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
