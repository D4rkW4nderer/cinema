-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `directors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `about` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Мартин Скорезе','Продюссер, режисер, художник'),(2,'Питер Джексон','Продюссер, режисер, художник'),(3,'Стивен Спилберг','Продюссер, режисер, художник'),(4,'Тим Бёртон','Продюссер, режисер, художник'),(5,'Дэвид Финчер','Продюссер, режисер, художник'),(6,'Дэвид Линч','Продюссер, режисер, художник'),(7,'Кристофер Нолан','Продюссер, режисер, художник'),(8,'Милош Форман','Продюссер, режисер, художник'),(9,'Риддли Скотт','Продюссер, режисер, художник'),(10,'Джеймс Кэмерон','Продюссер, режисер, художник');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (8,'Анимация'),(5,'Боевик'),(9,'Вестерн'),(2,'Драма'),(10,'Исторический'),(1,'Комедия'),(6,'Приключение'),(7,'Фантастика'),(3,'Хоррор'),(4,'Экшен');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `certificate` varchar(45) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `imbd_rating` float DEFAULT NULL,
  `description` text,
  `metascore` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `gross` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Пираты Карибского моря',2001,'www.kinopoisk.ru','оскар',100,8.2,'Фэнтези фильм',85,70000,2000000),(2,'Железный человек',2007,'www.kinopoisk.ru','оскар',90,7.8,'Фантастический фильм',76,170000,4000000),(3,'Властелин Колец',1999,'www.kinopoisk.ru','оскар',170,8.5,'Фэнтези фильм',83,90000,7000000),(4,'Интерстеллар',2015,'www.kinopoisk.ru','оскар',160,8.3,'Фантастический фильм',80,70000,2000000),(5,'Аватар',2009,'www.kinopoisk.ru','оскар',162,9,'Фантастический фильм',86,270000,3000000),(6,'Форсаж',2000,'www.kinopoisk.ru','оскар',87,7.7,'Экшен, боевик, гонки',74,50000,5000000),(7,'Титаник',1995,'www.kinopoisk.ru','оскар',102,8.4,'Драма',87,100000,6000000),(8,'Хоббит',2016,'www.kinopoisk.ru','оскар',140,7.8,'Фэнтези фильм',79,145000,3000000),(9,'Бэтмен',2012,'www.kinopoisk.ru','оскар',138,7.4,'Фантастический фильм',78,121000,8000000),(10,'Мстители',2015,'www.kinopoisk.ru','оскар',121,7.2,'Фантастический фильм',75,99000,4000000);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_directors`
--

DROP TABLE IF EXISTS `movies_has_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movies_has_directors` (
  `Movies_id` int(11) NOT NULL,
  `Directors_id` int(11) NOT NULL,
  PRIMARY KEY (`Movies_id`,`Directors_id`),
  KEY `fk_Movies_has_Directors_Directors1_idx` (`Directors_id`),
  KEY `fk_Movies_has_Directors_Movies1_idx` (`Movies_id`),
  CONSTRAINT `fk_Movies_has_Directors_Directors1` FOREIGN KEY (`Directors_id`) REFERENCES `directors` (`id`),
  CONSTRAINT `fk_Movies_has_Directors_Movies1` FOREIGN KEY (`Movies_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_directors`
--

LOCK TABLES `movies_has_directors` WRITE;
/*!40000 ALTER TABLE `movies_has_directors` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies_has_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_genres`
--

DROP TABLE IF EXISTS `movies_has_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movies_has_genres` (
  `Movies_id` int(11) NOT NULL,
  `Genres_id` int(11) NOT NULL,
  PRIMARY KEY (`Movies_id`,`Genres_id`),
  KEY `fk_Movies_has_Genres_Genres1_idx` (`Genres_id`),
  KEY `fk_Movies_has_Genres_Movies_idx` (`Movies_id`),
  CONSTRAINT `fk_Movies_has_Genres_Genres1` FOREIGN KEY (`Genres_id`) REFERENCES `genres` (`id`),
  CONSTRAINT `fk_Movies_has_Genres_Movies` FOREIGN KEY (`Movies_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_genres`
--

LOCK TABLES `movies_has_genres` WRITE;
/*!40000 ALTER TABLE `movies_has_genres` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies_has_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_has_stars`
--

DROP TABLE IF EXISTS `movies_has_stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movies_has_stars` (
  `Movies_id` int(11) NOT NULL,
  `Stars_id` int(11) NOT NULL,
  PRIMARY KEY (`Movies_id`,`Stars_id`),
  KEY `fk_Movies_has_Stars_Stars1_idx` (`Stars_id`),
  KEY `fk_Movies_has_Stars_Movies1_idx` (`Movies_id`),
  CONSTRAINT `fk_Movies_has_Stars_Movies1` FOREIGN KEY (`Movies_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `fk_Movies_has_Stars_Stars1` FOREIGN KEY (`Stars_id`) REFERENCES `stars` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_has_stars`
--

LOCK TABLES `movies_has_stars` WRITE;
/*!40000 ALTER TABLE `movies_has_stars` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies_has_stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stars`
--

DROP TABLE IF EXISTS `stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `about` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stars`
--

LOCK TABLES `stars` WRITE;
/*!40000 ALTER TABLE `stars` DISABLE KEYS */;
INSERT INTO `stars` VALUES (1,'Орландо Блум','актер'),(2,'Джони Депп','актер'),(3,'Роберт Дауни Младший','актер'),(4,'Джеки Чан','актер'),(5,'Джейсем Стетем','актер'),(6,'Дуэйн Джонсон','актер'),(7,'Брюс Уилис','актер'),(8,'Пол Уокер','актер'),(9,'Вин Дизель','актер'),(10,'Леонардо Ди Каприо','актер');
/*!40000 ALTER TABLE `stars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-15 14:18:35
