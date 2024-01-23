-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: laravel_r4
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cars_category_id_foreign` (`category_id`),
  CONSTRAINT `cars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'O\'Kon-Zulauf','Quia velit est numquam odit aut deleniti.',0,'https://via.placeholder.com/640x480.png/0000dd?text=animals+mollitia',3,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(2,'Hane Group','Molestiae magni dicta assumenda aperiam ipsum ut exercitationem ut.',1,'https://via.placeholder.com/640x480.png/004433?text=animals+atque',5,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(3,'Kris LLC','Aspernatur ea nam eligendi.',0,'https://via.placeholder.com/640x480.png/0066ee?text=animals+est',1,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(4,'Denesik Group','Esse autem non modi.',1,'https://via.placeholder.com/640x480.png/0000ff?text=animals+eius',1,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(5,'Turner Group','Suscipit incidunt quos velit repellat voluptatem.',0,'https://via.placeholder.com/640x480.png/00cc66?text=animals+animi',4,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(6,'Bailey, Ryan and Bernier','Reiciendis quia rerum iste dignissimos rerum.',0,'https://via.placeholder.com/640x480.png/002277?text=animals+pariatur',4,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(7,'Flatley, Kulas and Hansen','Suscipit et et dolorem sed voluptatum.',0,'https://via.placeholder.com/640x480.png/00bb33?text=animals+voluptatum',4,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(8,'Gorczany Ltd','Sunt non omnis et explicabo voluptas vel occaecati.',0,'https://via.placeholder.com/640x480.png/002211?text=animals+commodi',2,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(9,'Feest Inc','Voluptates ut eaque autem consectetur.',0,'https://via.placeholder.com/640x480.png/00dd77?text=animals+aut',4,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(10,'Schinner Ltd','Culpa vitae et voluptas eos.',0,'https://via.placeholder.com/640x480.png/006655?text=animals+repudiandae',1,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(11,'Flatley-Hodkiewicz','Est iusto eum molestias cupiditate ut.',1,'https://via.placeholder.com/640x480.png/00aacc?text=animals+nihil',2,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(12,'Harvey, Mitchell and Mitchell','Amet doloribus adipisci et sit.',1,'https://via.placeholder.com/640x480.png/00aabb?text=animals+sed',1,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(13,'Wuckert, Jaskolski and Gleason','Eaque voluptatem eveniet alias illum veniam itaque et et.',1,'https://via.placeholder.com/640x480.png/001122?text=animals+reiciendis',3,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(14,'Balistreri-Klocko','Ut deserunt sint soluta officiis incidunt.',1,'https://via.placeholder.com/640x480.png/004477?text=animals+aliquid',5,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55'),(15,'Mohr LLC','Est fugit perferendis et molestiae ut assumenda.',0,'https://via.placeholder.com/640x480.png/00aacc?text=animals+dolorem',1,NULL,'2024-01-20 14:01:55','2024-01-20 14:01:55');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'itaque','2024-01-20 14:01:54','2024-01-20 14:01:54'),(2,'culpa','2024-01-20 14:01:54','2024-01-20 14:01:54'),(3,'animi','2024-01-20 14:01:54','2024-01-20 14:01:54'),(4,'id','2024-01-20 14:01:54','2024-01-20 14:01:54'),(5,'nisi','2024-01-20 14:01:54','2024-01-20 14:01:54');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_12_26_191527_create_categories_table',1),(7,'2023_12_02_193211_create_cars_table',1),(8,'2023_12_09_200651_create_posts_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Marques Towne','alexzander.wolf@example.net','2024-01-20 14:01:49','$2y$12$k.n.VtDcgVsutmZej8HsoOL9Ri9MbUPIBLqp0WsbVJrSvCjIfyS5G',0,'KY2tqZh6p7','2024-01-20 14:01:53','2024-01-20 14:43:52'),(2,'Christophe Kunze','vrogahn@example.net','2024-01-20 14:01:50','$2y$12$k.n.VtDcgVsutmZej8HsoOL9Ri9MbUPIBLqp0WsbVJrSvCjIfyS5G',0,'25nGr6JPeB','2024-01-20 14:01:53','2024-01-20 14:43:52'),(3,'Toy Borer DVM','orville64@example.org','2024-01-20 14:01:50','$2y$12$k.n.VtDcgVsutmZej8HsoOL9Ri9MbUPIBLqp0WsbVJrSvCjIfyS5G',0,'kGJAkLG6l8','2024-01-20 14:01:54','2024-01-20 14:43:52'),(4,'Waylon Quitzon','wsmith@example.net','2024-01-20 14:01:50','$2y$12$k.n.VtDcgVsutmZej8HsoOL9Ri9MbUPIBLqp0WsbVJrSvCjIfyS5G',0,'YVSMSNw1mD','2024-01-20 14:01:54','2024-01-20 14:43:52'),(5,'Benny Dietrich','yazmin.lehner@example.net','2024-01-20 14:01:50','$2y$12$k.n.VtDcgVsutmZej8HsoOL9Ri9MbUPIBLqp0WsbVJrSvCjIfyS5G',0,'dZcIU4nYVQ','2024-01-20 14:01:54','2024-01-20 14:43:52'),(6,'Mr. Angus Green','ycarter@example.org','2024-01-20 14:01:50','$2y$12$k.n.VtDcgVsutmZej8HsoOL9Ri9MbUPIBLqp0WsbVJrSvCjIfyS5G',0,'OGFHu92OUX','2024-01-20 14:01:54','2024-01-20 14:43:52'),(7,'Tommie Hayes','gonzalo20@example.net','2024-01-20 14:01:50','$2y$12$k.n.VtDcgVsutmZej8HsoOL9Ri9MbUPIBLqp0WsbVJrSvCjIfyS5G',0,'xZ4MV32J04','2024-01-20 14:01:54','2024-01-20 14:43:52'),(8,'George Windler','purdy.norbert@example.com','2024-01-20 14:01:50','$2y$12$k.n.VtDcgVsutmZej8HsoOL9Ri9MbUPIBLqp0WsbVJrSvCjIfyS5G',0,'amETCE0l1v','2024-01-20 14:01:54','2024-01-20 14:43:52'),(9,'Mr. Abdiel Sauer Sr.','nzulauf@example.com','2024-01-20 14:01:50','$2y$12$k.n.VtDcgVsutmZej8HsoOL9Ri9MbUPIBLqp0WsbVJrSvCjIfyS5G',0,'ZToyboQE0d','2024-01-20 14:01:54','2024-01-20 14:43:52'),(10,'Frankie Hermiston V','aileen00@example.net','2024-01-20 14:01:50','$2y$12$k.n.VtDcgVsutmZej8HsoOL9Ri9MbUPIBLqp0WsbVJrSvCjIfyS5G',0,'YTZfHL8DRQ','2024-01-20 14:01:54','2024-01-20 14:43:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-23  6:06:50
