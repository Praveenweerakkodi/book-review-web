CREATE DATABASE  IF NOT EXISTS `book_reviews` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `book_reviews`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: book_reviews
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `rating` int DEFAULT NULL,
  `reviewer` varchar(255) NOT NULL,
  `review_text` text NOT NULL,
  `date_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `reviews_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (6,'The Hunger Games','Suzanne Collins',4,'Joe Deo','I was forced into watching Mockingjay: Part II this weekend. To clarify, I watched the second part of the last Hunger Games movie without having read any of the books, without having watched any of the movies.??\r\n','2024-12-24 02:48:33','/uploads/1735008513548.jpg'),(7,'Fangirl','Rainbow Rowell',3,'Matrix Bio','Exactly one star less worthy-of-fangirling than I remember it being. Still fun. Not life-changing. But we’ll get there. (I think that’s like, my new catchphrase. I’ve said that so many times in my recent reviews.❤️?','2024-12-24 02:50:04','/uploads/1735008604870.jpg'),(8,'Life of Pi','Yann Martel',4,'Joe Martin','It\'s not that it was bad, it\'s just that I wish the tiger had eaten him so the story wouldn\'t exist.\r\n\r\nI read half of it, and felt really impatient the whole time, skipping whole pages, and then I realized that I didn\'t have to keep going, which is as spiritual a moment as I could hope to get from this book.??','2024-12-24 02:51:20','/uploads/1735008680612.jpg'),(9,'Absolute Superman (2024-)','Jason Aaron ,  Rafa Sandoval',4,'Julia Nue','Now that\'s a kryptonian origin. I was expecting to explore krypton deeply. This issue has the potential to dive into the planet. The suit looks awesome. After reading all the 1st issues of batman wonder women and superman, i think superman will be on the top list for me.??','2024-12-24 02:53:29','/uploads/1735008809578.jpg'),(10,'Ultimate Spider-Man','Jonathan Hickman',4,'Patric Beut','A fantastic retelling of a classic hero that blends the essence of the character with a twist in scenery. It brushes old ideas and characters over with a fresh coat of paint and keeps it fresh for old timers that have relived the exact same story countless times.??','2024-12-24 02:54:47','/uploads/1735008887370.jpg'),(11,'Playing Possum: How Animals Understand Death','Susana Monsó',3,'Lusia Luco','This was interesting but for me didn\'t dive particularly deep into any one subject. For being so short, I found several chapters repetitive to the point of being ridiculous, and the audiobook narrator insisted on reading the entire book like a breaking news broadcast.???','2024-12-24 02:57:37','/uploads/1735009057196.jpg'),(12,'The Mountain Is You','Brianna Wiest',4,'Daniloa','Brianna Wiest’s audiobook also seems like a personal coaching session due to its plethora of insights and practical advice, helping one to recognize the patterns that they have been stuck in, and for them to start to create the routines which they need for growth and fulfillment.??','2024-12-24 03:15:25','/uploads/1735010125457.jpg');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-24  9:12:16
