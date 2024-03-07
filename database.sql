-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: jobbox
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'Jct7LbVSGt0stRrwxGb6pZClBuvAR2KZ',1,'2024-02-24 01:49:02','2024-02-24 01:49:02','2024-02-24 01:49:02'),(2,2,'bnROQv5JrYGxnXspznVTaLHuZCEjo5ne',1,'2024-02-24 01:49:02','2024-02-24 01:49:02','2024-02-24 01:49:02');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Design',0,'Placeat perspiciatis ea distinctio dolor. Quos ut quam quia quia explicabo debitis.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-02-24 01:49:06','2024-02-24 01:49:06'),(2,'Lifestyle',0,'In in et deserunt qui cumque soluta. Quo dolores autem laborum voluptatem saepe quasi amet. Enim excepturi qui enim iste eum quia.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-24 01:49:06','2024-02-24 01:49:06'),(3,'Travel Tips',2,'Molestias dignissimos a voluptatem doloremque qui. Velit omnis nulla enim quo saepe qui dolorem et. Eos reprehenderit blanditiis quia.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-02-24 01:49:06','2024-02-24 01:49:06'),(4,'Healthy',0,'Voluptate cumque excepturi modi reprehenderit. Eius suscipit et distinctio accusamus nulla blanditiis dicta. Tempore ut quia facere nihil et a.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-24 01:49:06','2024-02-24 01:49:06'),(5,'Travel Tips',4,'Eligendi quas fugit itaque tempora provident omnis debitis. Vero neque laborum at vitae.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-02-24 01:49:06','2024-02-24 01:49:06'),(6,'Hotel',0,'Ducimus voluptas delectus vel ut. Et deserunt sit quaerat. Saepe et rerum consequatur porro earum.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-24 01:49:06','2024-02-24 01:49:06'),(7,'Nature',6,'Animi sit corrupti delectus aut. Eius sunt minima blanditiis vel dolor asperiores esse. Odio corrupti molestiae nesciunt veritatis illum. Modi et et non sit id voluptas.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-02-24 01:49:06','2024-02-24 01:49:06');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Paris','paris',1,1,NULL,0,'locations/location1.png',0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(2,'London','london',2,2,NULL,0,'locations/location2.png',0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(3,'New York','new-york',3,3,NULL,0,'locations/location3.png',0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(4,'New York','new-york-1',4,4,NULL,0,'locations/location4.png',0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(5,'Copenhagen','copenhagen',5,5,NULL,0,'locations/location5.png',0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(6,'Berlin','berlin',6,6,NULL,0,'locations/location6.png',0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Dr. Minerva Olson Sr.','enader@example.com','+18457794841','6203 Wintheiser Prairie\nCummeratafort, CA 25631','Et corporis eveniet aut tempora.','Delectus necessitatibus natus nam. Consequuntur saepe eligendi voluptatibus perspiciatis exercitationem ut in. Accusantium et et omnis non harum amet. Qui voluptate officia nihil et. Et voluptatum nulla et reiciendis omnis qui. Delectus autem omnis minus tenetur vero ut non. Ea aut nihil sint architecto ipsam. Molestiae harum sit nulla ut nam nulla adipisci. Exercitationem inventore omnis placeat rerum numquam velit cumque. Quia minus magnam in.','unread','2024-02-24 01:49:06','2024-02-24 01:49:06'),(2,'Brandt Trantow','jborer@example.net','+17317248973','9841 Vandervort Mill\nSouth Herminaton, ME 62028','Et harum tenetur quia sit.','Aut cumque ut amet deserunt inventore. Rerum ratione aliquam ipsum enim et vitae vero. Est aut vel accusantium dolor quia fugit ullam nostrum. Ut dolores aliquam rem enim odit. Eum corrupti maxime rerum. Sint et aperiam reiciendis possimus molestias tempora. Ipsa labore non dolorum doloribus optio aut. Modi atque sit quasi beatae omnis. Qui et assumenda suscipit voluptatem.','read','2024-02-24 01:49:06','2024-02-24 01:49:06'),(3,'Miss Skyla Jones','satterfield.major@example.com','+17439005585','99573 Dietrich Fork Suite 383\nOrtizfurt, UT 38147','Omnis quo odit asperiores voluptas.','Qui vel aut eos. Ullam aliquam dolores tempore molestias aliquam quia distinctio. Iusto dolore sit dicta. Omnis consectetur cupiditate explicabo aut. Et dolore distinctio ut pariatur inventore nostrum. Sed natus asperiores consectetur et deserunt. Expedita veritatis et vel quisquam et. In autem omnis dolor aut quibusdam. Temporibus fugit ea sint sunt voluptatem. Consequatur velit provident sed laborum quia.','unread','2024-02-24 01:49:06','2024-02-24 01:49:06'),(4,'Prof. Nathaniel Hartmann DVM','schmidt.rico@example.org','+15344747555','1488 Beatty Cape Apt. 721\nAlbertaview, CA 46939-4749','Accusamus omnis nam accusamus.','Omnis sit laborum commodi laudantium aut. Ipsam quia ab necessitatibus voluptatem ullam rerum. Aut ipsam repellendus repellat quis dolorem laudantium. Ut nulla consequatur enim est magnam. Recusandae excepturi incidunt sunt dicta sint ea. Facilis eum unde officiis aut voluptatem quod corporis aut. Eos minima tenetur quia qui. Ducimus ea dolorum et vitae non. Asperiores illum eos earum aspernatur quia vel facilis.','read','2024-02-24 01:49:06','2024-02-24 01:49:06'),(5,'Mrs. Golda Schinner Sr.','jerome32@example.com','+14797424136','7854 Towne Street Suite 264\nNew Magdalenamouth, DE 54359-2200','Amet quo eos maiores non.','Quod iure alias laboriosam. Vero vel tenetur sed aliquam rerum. Omnis voluptatum error commodi magni commodi. Ea quis neque repellendus in repudiandae unde voluptas. Molestias blanditiis magni pariatur alias placeat. Consectetur est dignissimos ab consequatur quas perspiciatis. Modi sit beatae soluta iusto numquam praesentium vitae. Error numquam autem sint explicabo voluptatem ut.','read','2024-02-24 01:49:06','2024-02-24 01:49:06'),(6,'Brent Schneider','gorczany.colton@example.net','+15854740722','83677 Morissette Junctions\nLake Ivyland, GA 27813','Facere ut vitae placeat delectus a hic et.','Aliquam consequatur quam mollitia dolore praesentium soluta est. Earum inventore qui officia dolore repellendus. Dignissimos aspernatur aut fugiat nobis magni reiciendis harum consequuntur. Ut est eligendi omnis nisi. Sint ut unde aliquam ipsa. Voluptatem voluptatibus deleniti delectus voluptas et alias maxime vel. Quisquam dolores velit nihil et. Totam at est id eveniet enim.','read','2024-02-24 01:49:06','2024-02-24 01:49:06'),(7,'Guiseppe Batz','streich.frank@example.org','+18187990813','5109 Keeling Harbors\nLake Emmie, VT 46458-3867','Qui aut sint repellendus at neque iusto.','Id veniam molestiae cumque et. Molestiae consequatur a minus dolorem. Consequatur dignissimos autem incidunt omnis tempora. Architecto libero error eveniet qui explicabo tenetur. Laborum autem qui optio aut autem consequatur mollitia. Sunt quisquam soluta deleniti omnis delectus. Rerum et magnam excepturi inventore id. Unde et atque sit dicta non veritatis. Quod et dolores rem velit. Quia ut illum voluptatem praesentium.','unread','2024-02-24 01:49:06','2024-02-24 01:49:06'),(8,'Kayli Lakin IV','anderson.joannie@example.org','+18655257644','5499 Hauck Trail\nNew Reggiefurt, WI 57469','Laudantium iste natus iure reiciendis.','Consequatur exercitationem eligendi ab nisi quisquam. Natus distinctio repellat ut nihil voluptas. Omnis eaque at at aut. Placeat sapiente dolores nulla molestiae deserunt velit. Quia odio natus nemo perferendis iste dolor illo. Nesciunt quas est est. In et blanditiis non cupiditate sed tempore quaerat. Saepe qui aperiam eveniet voluptatem eum quisquam accusantium. Velit earum inventore fuga perspiciatis. Et voluptas et dolores enim sequi. Dolore facere dolores et maiores.','unread','2024-02-24 01:49:06','2024-02-24 01:49:06'),(9,'Mr. Bud Robel III','alec.schinner@example.org','+12104906469','1892 Kylie Tunnel\nMalvinamouth, WA 37964-8712','Quae magnam molestias non voluptate.','Aut illum minima necessitatibus est et eius molestiae. Dolores ducimus sit culpa quia minus reiciendis. Vel ut aspernatur officia amet ducimus quia hic. Voluptas eligendi ut eum ea reprehenderit distinctio. Cumque esse quod aut. Officiis nobis accusantium nihil nulla quod qui neque. Alias illo dolorem numquam ipsum iusto. Dolorem neque ut at quia dolorem animi incidunt. Provident ullam a necessitatibus nesciunt eum sit. Laudantium nisi dignissimos aliquam qui.','read','2024-02-24 01:49:06','2024-02-24 01:49:06'),(10,'Miss Candida Buckridge','sheridan.goldner@example.net','+18472142267','77968 Volkman Canyon Apt. 686\nCedrickchester, DE 14499','Assumenda aut blanditiis quod.','Rem aperiam odio quia explicabo. Magni provident omnis et molestiae repudiandae. Voluptatum soluta pariatur esse natus voluptatem numquam aut dignissimos. Id possimus consequatur et officiis consectetur hic. Amet alias corporis quis ea. Quia et qui reprehenderit aliquid possimus minus autem minus. Aut qui voluptates quas quasi autem numquam deleniti. Et doloribus eveniet esse nesciunt officiis. Fugit perferendis voluptatum eos a sed sunt molestiae. Ea quia ipsam aut.','unread','2024-02-24 01:49:06','2024-02-24 01:49:06');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'France','French',0,0,'published','2024-02-24 01:49:09',NULL,'FRA'),(2,'England','English',0,0,'published','2024-02-24 01:49:09',NULL,'UK'),(3,'USA','Americans',0,0,'published','2024-02-24 01:49:09',NULL,'US'),(4,'Holland','Dutch',0,0,'published','2024-02-24 01:49:09',NULL,'HL'),(5,'Denmark','Danish',0,0,'published','2024-02-24 01:49:09',NULL,'DN'),(6,'Germany','Danish',0,0,'published','2024-02-24 01:49:09',NULL,'DN');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'General',0,'published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(2,'Buying',1,'published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(3,'Payment',2,'published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(4,'Support',3,'published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'Where does it come from?','If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.',1,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(2,'How JobBox Work?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',1,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(3,'What is your shipping policy?','Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.',1,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(4,'Where To Place A FAQ Page','Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.',1,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(5,'Why do we use it?','It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.',1,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(6,'Where can I get some?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',1,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(7,'Where does it come from?','If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.',2,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(8,'How JobBox Work?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',2,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(9,'What is your shipping policy?','Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.',2,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(10,'Where To Place A FAQ Page','Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.',2,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(11,'Why do we use it?','It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.',2,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(12,'Where can I get some?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',2,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(13,'Where does it come from?','If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.',3,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(14,'How JobBox Work?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',3,'published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(15,'What is your shipping policy?','Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.',3,'published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(16,'Where To Place A FAQ Page','Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.',3,'published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(17,'Why do we use it?','It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.',3,'published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(18,'Where can I get some?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',3,'published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(19,'Where does it come from?','If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.',4,'published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(20,'How JobBox Work?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',4,'published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(21,'What is your shipping policy?','Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.',4,'published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(22,'Where To Place A FAQ Page','Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.',4,'published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(23,'Why do we use it?','It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.',4,'published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(24,'Where can I get some?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',4,'published','2024-02-24 01:49:43','2024-02-24 01:49:43');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Accusantium dicta dolores accusantium debitis. Corrupti rerum sint alias eveniet illum officiis minima. Repudiandae ad similique aperiam nobis aut.',1,0,'galleries/1.jpg',1,'published','2024-02-24 01:49:06','2024-02-24 01:49:06'),(2,'New Day','Sit soluta id nostrum quam voluptas. Id numquam eveniet amet.',1,0,'galleries/2.jpg',1,'published','2024-02-24 01:49:06','2024-02-24 01:49:06'),(3,'Happy Day','Ex ad eveniet perspiciatis atque. Sit qui sapiente earum placeat. Assumenda qui accusantium sit nisi rerum vel eos. Dolores eos consectetur qui qui.',1,0,'galleries/3.jpg',1,'published','2024-02-24 01:49:06','2024-02-24 01:49:06'),(4,'Nature','Voluptate omnis consequatur dolorem aliquam tenetur eum. Quia dolores eos ratione. Perferendis aut maxime voluptas qui vero perferendis.',1,0,'galleries/4.jpg',1,'published','2024-02-24 01:49:06','2024-02-24 01:49:06'),(5,'Morning','Ipsa distinctio consequatur sed autem. Ea itaque et velit ab et minus. Iusto libero reprehenderit aliquid tenetur quisquam modi.',1,0,'galleries/5.jpg',1,'published','2024-02-24 01:49:06','2024-02-24 01:49:06'),(6,'Photography','Totam eius sed deserunt velit quibusdam sunt. Beatae qui placeat ex dolorem voluptatem maiores.',1,0,'galleries/6.jpg',1,'published','2024-02-24 01:49:06','2024-02-24 01:49:06');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Sunt dicta nemo vitae aperiam doloremque. Est dolor atque sint quos a reiciendis. Aut quasi provident voluptas alias.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Ad et ut laboriosam quasi quis aut distinctio non. Alias sint sequi sed nihil repellat perspiciatis. Quia aperiam sed quia aliquid maiores.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consectetur qui dolor necessitatibus. Et facilis illum amet voluptates dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consectetur quia quis dolor aut sed odit. Ea et nemo eos fugit. Aperiam quisquam temporibus impedit. Beatae maxime recusandae perferendis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Voluptates qui qui distinctio sit occaecati. Qui veritatis quasi non neque. Perspiciatis sit omnis et ipsa eius. Fugiat id odit totam occaecati.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Molestias est unde dolores asperiores labore culpa dignissimos. Soluta beatae officia nam. Necessitatibus iste quia ex amet ut.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut a ipsam atque. Illum placeat porro molestiae est rem aut. Eligendi et deleniti dolores qui iste ut dignissimos totam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Ex magnam voluptatum sequi. Veritatis est quia omnis eum. Natus eum possimus quod facere. Impedit occaecati libero eveniet sunt consectetur facere.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptate optio fugit nisi pariatur. Aut et omnis tenetur aut natus.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-02-24 01:49:06','2024-02-24 01:49:06'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Sunt dicta nemo vitae aperiam doloremque. Est dolor atque sint quos a reiciendis. Aut quasi provident voluptas alias.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Ad et ut laboriosam quasi quis aut distinctio non. Alias sint sequi sed nihil repellat perspiciatis. Quia aperiam sed quia aliquid maiores.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consectetur qui dolor necessitatibus. Et facilis illum amet voluptates dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consectetur quia quis dolor aut sed odit. Ea et nemo eos fugit. Aperiam quisquam temporibus impedit. Beatae maxime recusandae perferendis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Voluptates qui qui distinctio sit occaecati. Qui veritatis quasi non neque. Perspiciatis sit omnis et ipsa eius. Fugiat id odit totam occaecati.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Molestias est unde dolores asperiores labore culpa dignissimos. Soluta beatae officia nam. Necessitatibus iste quia ex amet ut.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut a ipsam atque. Illum placeat porro molestiae est rem aut. Eligendi et deleniti dolores qui iste ut dignissimos totam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Ex magnam voluptatum sequi. Veritatis est quia omnis eum. Natus eum possimus quod facere. Impedit occaecati libero eveniet sunt consectetur facere.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptate optio fugit nisi pariatur. Aut et omnis tenetur aut natus.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-02-24 01:49:06','2024-02-24 01:49:06'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Sunt dicta nemo vitae aperiam doloremque. Est dolor atque sint quos a reiciendis. Aut quasi provident voluptas alias.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Ad et ut laboriosam quasi quis aut distinctio non. Alias sint sequi sed nihil repellat perspiciatis. Quia aperiam sed quia aliquid maiores.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consectetur qui dolor necessitatibus. Et facilis illum amet voluptates dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consectetur quia quis dolor aut sed odit. Ea et nemo eos fugit. Aperiam quisquam temporibus impedit. Beatae maxime recusandae perferendis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Voluptates qui qui distinctio sit occaecati. Qui veritatis quasi non neque. Perspiciatis sit omnis et ipsa eius. Fugiat id odit totam occaecati.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Molestias est unde dolores asperiores labore culpa dignissimos. Soluta beatae officia nam. Necessitatibus iste quia ex amet ut.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut a ipsam atque. Illum placeat porro molestiae est rem aut. Eligendi et deleniti dolores qui iste ut dignissimos totam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Ex magnam voluptatum sequi. Veritatis est quia omnis eum. Natus eum possimus quod facere. Impedit occaecati libero eveniet sunt consectetur facere.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptate optio fugit nisi pariatur. Aut et omnis tenetur aut natus.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-02-24 01:49:06','2024-02-24 01:49:06'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Sunt dicta nemo vitae aperiam doloremque. Est dolor atque sint quos a reiciendis. Aut quasi provident voluptas alias.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Ad et ut laboriosam quasi quis aut distinctio non. Alias sint sequi sed nihil repellat perspiciatis. Quia aperiam sed quia aliquid maiores.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consectetur qui dolor necessitatibus. Et facilis illum amet voluptates dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consectetur quia quis dolor aut sed odit. Ea et nemo eos fugit. Aperiam quisquam temporibus impedit. Beatae maxime recusandae perferendis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Voluptates qui qui distinctio sit occaecati. Qui veritatis quasi non neque. Perspiciatis sit omnis et ipsa eius. Fugiat id odit totam occaecati.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Molestias est unde dolores asperiores labore culpa dignissimos. Soluta beatae officia nam. Necessitatibus iste quia ex amet ut.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut a ipsam atque. Illum placeat porro molestiae est rem aut. Eligendi et deleniti dolores qui iste ut dignissimos totam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Ex magnam voluptatum sequi. Veritatis est quia omnis eum. Natus eum possimus quod facere. Impedit occaecati libero eveniet sunt consectetur facere.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptate optio fugit nisi pariatur. Aut et omnis tenetur aut natus.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-02-24 01:49:06','2024-02-24 01:49:06'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Sunt dicta nemo vitae aperiam doloremque. Est dolor atque sint quos a reiciendis. Aut quasi provident voluptas alias.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Ad et ut laboriosam quasi quis aut distinctio non. Alias sint sequi sed nihil repellat perspiciatis. Quia aperiam sed quia aliquid maiores.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consectetur qui dolor necessitatibus. Et facilis illum amet voluptates dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consectetur quia quis dolor aut sed odit. Ea et nemo eos fugit. Aperiam quisquam temporibus impedit. Beatae maxime recusandae perferendis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Voluptates qui qui distinctio sit occaecati. Qui veritatis quasi non neque. Perspiciatis sit omnis et ipsa eius. Fugiat id odit totam occaecati.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Molestias est unde dolores asperiores labore culpa dignissimos. Soluta beatae officia nam. Necessitatibus iste quia ex amet ut.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut a ipsam atque. Illum placeat porro molestiae est rem aut. Eligendi et deleniti dolores qui iste ut dignissimos totam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Ex magnam voluptatum sequi. Veritatis est quia omnis eum. Natus eum possimus quod facere. Impedit occaecati libero eveniet sunt consectetur facere.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptate optio fugit nisi pariatur. Aut et omnis tenetur aut natus.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-02-24 01:49:06','2024-02-24 01:49:06'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Sunt dicta nemo vitae aperiam doloremque. Est dolor atque sint quos a reiciendis. Aut quasi provident voluptas alias.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Ad et ut laboriosam quasi quis aut distinctio non. Alias sint sequi sed nihil repellat perspiciatis. Quia aperiam sed quia aliquid maiores.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consectetur qui dolor necessitatibus. Et facilis illum amet voluptates dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consectetur quia quis dolor aut sed odit. Ea et nemo eos fugit. Aperiam quisquam temporibus impedit. Beatae maxime recusandae perferendis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Voluptates qui qui distinctio sit occaecati. Qui veritatis quasi non neque. Perspiciatis sit omnis et ipsa eius. Fugiat id odit totam occaecati.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Molestias est unde dolores asperiores labore culpa dignissimos. Soluta beatae officia nam. Necessitatibus iste quia ex amet ut.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut a ipsam atque. Illum placeat porro molestiae est rem aut. Eligendi et deleniti dolores qui iste ut dignissimos totam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Ex magnam voluptatum sequi. Veritatis est quia omnis eum. Natus eum possimus quod facere. Impedit occaecati libero eveniet sunt consectetur facere.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptate optio fugit nisi pariatur. Aut et omnis tenetur aut natus.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-02-24 01:49:06','2024-02-24 01:49:06');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_activity_logs`
--

DROP TABLE IF EXISTS `jb_account_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_activity_logs`
--

LOCK TABLES `jb_account_activity_logs` WRITE;
/*!40000 ALTER TABLE `jb_account_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_educations`
--

DROP TABLE IF EXISTS `jb_account_educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_educations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `specialized` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` date NOT NULL,
  `ended_at` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_educations`
--

LOCK TABLES `jb_account_educations` WRITE;
/*!40000 ALTER TABLE `jb_account_educations` DISABLE KEYS */;
INSERT INTO `jb_account_educations` VALUES (1,'Gateway Technical College',2,'Art History','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:14','2024-02-24 01:49:14'),(2,'Antioch University McGregor',6,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:15','2024-02-24 01:49:15'),(3,'American Institute of Health Technology',8,'Art History','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:16','2024-02-24 01:49:16'),(4,'Gateway Technical College',9,'Anthropology','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:16','2024-02-24 01:49:16'),(5,'American Institute of Health Technology',10,'Economics','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:16','2024-02-24 01:49:16'),(6,'Adams State College',12,'Art History','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:17','2024-02-24 01:49:17'),(7,'Adams State College',15,'Economics','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:18','2024-02-24 01:49:18'),(8,'American Institute of Health Technology',17,'Anthropology','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:18','2024-02-24 01:49:18'),(9,'American Institute of Health Technology',18,'Art History','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:18','2024-02-24 01:49:18'),(10,'Antioch University McGregor',22,'Classical Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:20','2024-02-24 01:49:20'),(11,'The University of the State of Alabama',23,'Classical Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:20','2024-02-24 01:49:20'),(12,'Gateway Technical College',27,'Art History','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:21','2024-02-24 01:49:21'),(13,'Antioch University McGregor',33,'Economics','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:23','2024-02-24 01:49:23'),(14,'American Institute of Health Technology',35,'Art History','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:24','2024-02-24 01:49:24'),(15,'Antioch University McGregor',36,'Anthropology','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:25','2024-02-24 01:49:25'),(16,'Associated Mennonite Biblical Seminary',38,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:25','2024-02-24 01:49:25'),(17,'American Institute of Health Technology',39,'Anthropology','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:25','2024-02-24 01:49:25'),(18,'The University of the State of Alabama',41,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:26','2024-02-24 01:49:26'),(19,'American Institute of Health Technology',43,'Economics','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:26','2024-02-24 01:49:26'),(20,'Antioch University McGregor',44,'Anthropology','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:27','2024-02-24 01:49:27'),(21,'American Institute of Health Technology',46,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:27','2024-02-24 01:49:27'),(22,'Associated Mennonite Biblical Seminary',51,'Classical Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:29','2024-02-24 01:49:29'),(23,'Antioch University McGregor',54,'Classical Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:29','2024-02-24 01:49:29'),(24,'Associated Mennonite Biblical Seminary',55,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:30','2024-02-24 01:49:30'),(25,'American Institute of Health Technology',56,'Classical Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:30','2024-02-24 01:49:30'),(26,'Gateway Technical College',61,'Economics','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:31','2024-02-24 01:49:31'),(27,'Antioch University McGregor',62,'Economics','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:32','2024-02-24 01:49:32'),(28,'The University of the State of Alabama',63,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:32','2024-02-24 01:49:32'),(29,'Associated Mennonite Biblical Seminary',65,'Art History','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:32','2024-02-24 01:49:32'),(30,'Associated Mennonite Biblical Seminary',69,'Classical Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:34','2024-02-24 01:49:34'),(31,'Gateway Technical College',70,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:34','2024-02-24 01:49:34'),(32,'Gateway Technical College',75,'Economics','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:35','2024-02-24 01:49:35'),(33,'Antioch University McGregor',77,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:36','2024-02-24 01:49:36'),(34,'Adams State College',79,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:36','2024-02-24 01:49:36'),(35,'The University of the State of Alabama',81,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:37','2024-02-24 01:49:37'),(36,'American Institute of Health Technology',83,'Economics','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:37','2024-02-24 01:49:37'),(37,'Adams State College',84,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:38','2024-02-24 01:49:38'),(38,'American Institute of Health Technology',85,'Culture and Technology Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:38','2024-02-24 01:49:38'),(39,'American Institute of Health Technology',87,'Anthropology','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:38','2024-02-24 01:49:38'),(40,'Adams State College',92,'Art History','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:40','2024-02-24 01:49:40'),(41,'The University of the State of Alabama',96,'Economics','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:41','2024-02-24 01:49:41'),(42,'Gateway Technical College',97,'Anthropology','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:41','2024-02-24 01:49:41'),(43,'American Institute of Health Technology',98,'Anthropology','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:41','2024-02-24 01:49:41'),(44,'Associated Mennonite Biblical Seminary',100,'Classical Studies','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:42','2024-02-24 01:49:42');
/*!40000 ALTER TABLE `jb_account_educations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_experiences`
--

DROP TABLE IF EXISTS `jb_account_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` date NOT NULL,
  `ended_at` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_experiences`
--

LOCK TABLES `jb_account_experiences` WRITE;
/*!40000 ALTER TABLE `jb_account_experiences` DISABLE KEYS */;
INSERT INTO `jb_account_experiences` VALUES (1,'Exploration Kids',2,'Web Designer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:14','2024-02-24 01:49:14'),(2,'Party Plex',6,'Project Manager','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:15','2024-02-24 01:49:15'),(3,'Exploration Kids',8,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:16','2024-02-24 01:49:16'),(4,'GameDay Catering',9,'Web Designer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:16','2024-02-24 01:49:16'),(5,'Party Plex',10,'President of Sales','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:16','2024-02-24 01:49:16'),(6,'Party Plex',12,'Dog Trainer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:17','2024-02-24 01:49:17'),(7,'GameDay Catering',15,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:18','2024-02-24 01:49:18'),(8,'GameDay Catering',17,'Project Manager','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:18','2024-02-24 01:49:18'),(9,'Party Plex',18,'Web Designer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:18','2024-02-24 01:49:18'),(10,'Spa Paragon',22,'Dog Trainer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:20','2024-02-24 01:49:20'),(11,'Party Plex',23,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:20','2024-02-24 01:49:20'),(12,'GameDay Catering',27,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:21','2024-02-24 01:49:21'),(13,'GameDay Catering',33,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:23','2024-02-24 01:49:23'),(14,'Darwin Travel',35,'Web Designer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:24','2024-02-24 01:49:24'),(15,'Darwin Travel',36,'Project Manager','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:25','2024-02-24 01:49:25'),(16,'GameDay Catering',38,'Web Designer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:25','2024-02-24 01:49:25'),(17,'Party Plex',39,'Project Manager','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:25','2024-02-24 01:49:25'),(18,'Party Plex',41,'President of Sales','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:26','2024-02-24 01:49:26'),(19,'Spa Paragon',43,'Project Manager','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:26','2024-02-24 01:49:26'),(20,'Party Plex',44,'Dog Trainer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:27','2024-02-24 01:49:27'),(21,'Darwin Travel',46,'Web Designer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:27','2024-02-24 01:49:27'),(22,'Spa Paragon',51,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:29','2024-02-24 01:49:29'),(23,'Darwin Travel',54,'Dog Trainer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:29','2024-02-24 01:49:29'),(24,'Spa Paragon',55,'Dog Trainer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:30','2024-02-24 01:49:30'),(25,'Party Plex',56,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:30','2024-02-24 01:49:30'),(26,'Exploration Kids',61,'Web Designer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:31','2024-02-24 01:49:31'),(27,'Darwin Travel',62,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:32','2024-02-24 01:49:32'),(28,'Exploration Kids',63,'President of Sales','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:32','2024-02-24 01:49:32'),(29,'GameDay Catering',65,'President of Sales','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:32','2024-02-24 01:49:32'),(30,'Party Plex',69,'President of Sales','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:34','2024-02-24 01:49:34'),(31,'Darwin Travel',70,'Web Designer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:34','2024-02-24 01:49:34'),(32,'Exploration Kids',75,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:35','2024-02-24 01:49:35'),(33,'GameDay Catering',77,'Dog Trainer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:36','2024-02-24 01:49:36'),(34,'Party Plex',79,'Dog Trainer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:36','2024-02-24 01:49:36'),(35,'Party Plex',81,'President of Sales','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:37','2024-02-24 01:49:37'),(36,'GameDay Catering',83,'Project Manager','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:37','2024-02-24 01:49:37'),(37,'Darwin Travel',84,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:38','2024-02-24 01:49:38'),(38,'Exploration Kids',85,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:38','2024-02-24 01:49:38'),(39,'GameDay Catering',87,'Project Manager','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:38','2024-02-24 01:49:38'),(40,'Exploration Kids',92,'Project Manager','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:40','2024-02-24 01:49:40'),(41,'Party Plex',96,'Web Designer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:41','2024-02-24 01:49:41'),(42,'GameDay Catering',97,'Project Manager','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:41','2024-02-24 01:49:41'),(43,'GameDay Catering',98,'Dog Trainer','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:41','2024-02-24 01:49:41'),(44,'Party Plex',100,'Marketing Coordinator','2024-02-24','2024-02-24','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2024-02-24 01:49:42','2024-02-24 01:49:42');
/*!40000 ALTER TABLE `jb_account_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_favorite_skills`
--

DROP TABLE IF EXISTS `jb_account_favorite_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_favorite_skills` (
  `skill_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`skill_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_favorite_skills`
--

LOCK TABLES `jb_account_favorite_skills` WRITE;
/*!40000 ALTER TABLE `jb_account_favorite_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_favorite_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_favorite_tags`
--

DROP TABLE IF EXISTS `jb_account_favorite_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_favorite_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`tag_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_favorite_tags`
--

LOCK TABLES `jb_account_favorite_tags` WRITE;
/*!40000 ALTER TABLE `jb_account_favorite_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_favorite_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_packages`
--

DROP TABLE IF EXISTS `jb_account_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `package_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_packages`
--

LOCK TABLES `jb_account_packages` WRITE;
/*!40000 ALTER TABLE `jb_account_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_password_resets`
--

DROP TABLE IF EXISTS `jb_account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_password_resets`
--

LOCK TABLES `jb_account_password_resets` WRITE;
/*!40000 ALTER TABLE `jb_account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_accounts`
--

DROP TABLE IF EXISTS `jb_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'job-seeker',
  `credits` int unsigned DEFAULT NULL,
  `resume` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_public_profile` tinyint unsigned NOT NULL DEFAULT '0',
  `hide_cv` tinyint(1) NOT NULL DEFAULT '0',
  `views` bigint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available_for_hiring` tinyint(1) NOT NULL DEFAULT '1',
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `cover_letter` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jb_accounts_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_accounts`
--

LOCK TABLES `jb_accounts` WRITE;
/*!40000 ALTER TABLE `jb_accounts` DISABLE KEYS */;
INSERT INTO `jb_accounts` VALUES (1,'Maye','Orn','Software Developer',NULL,'employer@archielite.com','$2y$12$RSmqR5hoDNPIPjwq88yMUOkQrCOCzlYL0VMG0MAODX0jnkoKR389m',184,'1991-06-14','+13208257535','2024-02-24 08:49:14',NULL,'employer',NULL,NULL,'58399 Mae Squares Apt. 593\nWest Jamey, NJ 62946','Mock Turtle said: \'advance twice, set to work, and very neatly and simply arranged; the only difficulty was, that her neck would bend about easily in any direction, like a candle. I wonder what they.',1,0,3828,1,NULL,'2024-02-24 01:49:14','2024-02-24 01:49:14',1,1,NULL,NULL,NULL),(2,'Gage','Vandervort','Creative Designer',NULL,'job_seeker@archielite.com','$2y$12$uqCIObJ3E0SOLO5a8ajwkuUPHSWARmYsQPoTjIazOpFyjcND8hoHK',185,'2000-04-04','+15399224945','2024-02-24 08:49:14',NULL,'job-seeker',NULL,'resume/01.pdf','87668 Leannon Trail Suite 858\nNew Ottiliestad, MO 79355-6168','I can listen all day about it!\' Last came a little timidly: \'but it\'s no use their putting their heads down! I am to see it written up somewhere.\' Down, down, down. Would the fall was over. However.',1,0,4769,0,NULL,'2024-02-24 01:49:14','2024-02-24 01:49:14',1,1,NULL,NULL,NULL),(3,'Sarah','Harding','Creative Designer',NULL,'sarah_harding@archielite.com','$2y$12$vT395KkwwEUo.3J42crIYe2.Woerc8iLONWHRnrwM9YC.E7IetZHK',184,'2023-05-04','+13604187594','2024-02-24 08:49:14',NULL,'employer',NULL,NULL,'51482 Ethyl Lights Suite 891\nDavonside, RI 26677','Hatter: and in his turn; and both the hedgehogs were out of the pack, she could do, lying down on one of the other queer noises, would change to dull reality--the grass would be only rustling in the.',1,0,369,0,NULL,'2024-02-24 01:49:14','2024-02-24 01:49:14',1,1,NULL,NULL,NULL),(4,'Steven','Jobs','Creative Designer',NULL,'steven_jobs@archielite.com','$2y$12$RBT/WYJvgNIDjvV9V009XexGVZ1a0PYihL5Oc.NVVEFomObgGV0bm',185,'2017-05-21','+19094996494','2024-02-24 08:49:15',NULL,'employer',NULL,NULL,'865 Sigmund Ford Apt. 431\nHerzogmouth, MS 67749-2332','March Hare had just upset the milk-jug into his cup of tea, and looked at her own mind (as well as I get it home?\' when it saw mine coming!\' \'How do you know I\'m mad?\' said Alice. \'Come on, then!\'.',1,0,1708,1,NULL,'2024-02-24 01:49:15','2024-02-24 01:49:15',1,1,NULL,NULL,NULL),(5,'William','Kent','Creative Designer',NULL,'william_kent@archielite.com','$2y$12$RWgsB9vO3lHk3BOGBPKWO.FZ/m7WntSVUKUhHwtp4DRth9HBlg/Gq',186,'1994-06-29','+12485466943','2024-02-24 08:49:15',NULL,'employer',NULL,NULL,'604 Walker Knolls Apt. 449\nCorineborough, MN 04711-0701','King. \'Shan\'t,\' said the Hatter. He had been looking over his shoulder as she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this.',1,0,2144,0,NULL,'2024-02-24 01:49:15','2024-02-24 01:49:15',1,1,NULL,NULL,NULL),(6,'Maybelle','Kerluke','Lory hastily. \'I.',NULL,'bayer.jazmyne@yahoo.com','$2y$12$W85lFEqo1I6k44tlZXGQrenOTHyhR6jGZiQDYWpJnKWU80ELs9eU.',184,'2005-10-10','+12833943020','2024-02-24 08:49:15',NULL,'job-seeker',NULL,'resume/01.pdf','430 Ashley Hill\nEast Ethelyn, NY 87452','I shall have to ask his neighbour to tell me your history, she do.\' \'I\'ll tell it her,\' said the Gryphon: and it was done. They had a VERY good opportunity for croqueting one of the thing Mock.',1,0,2409,1,NULL,'2024-02-24 01:49:15','2024-02-24 01:49:15',0,1,NULL,NULL,NULL),(7,'Gianni','Hand','Duchess: \'what a.',NULL,'bradley.yundt@hotmail.com','$2y$12$IJ8TAg7Qnd0LoyztxL5Qz.b9VklCfDGI3hnPHoxU6NVPU8EXzmP4G',186,'1980-12-19','+14808093767','2024-02-24 08:49:15',NULL,'employer',NULL,NULL,'5644 Harris View Apt. 985\nShawnaside, MS 15709','Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very hard indeed to make herself useful, and looking at Alice as it can\'t possibly make.',1,0,2289,0,NULL,'2024-02-24 01:49:15','2024-02-24 01:49:15',1,1,NULL,NULL,NULL),(8,'Nikolas','Ledner','I was, I shouldn\'t.',NULL,'earl.lesch@boyle.net','$2y$12$DlWkXGx5DkpsflE5u3M4f.uyGvuirvnxhlMKsGXNY0XCPHVmNiCie',184,'1989-10-09','+19256819352','2024-02-24 08:49:16',NULL,'job-seeker',NULL,'resume/01.pdf','49810 Norbert Flats Suite 124\nNorth Ottilie, AZ 38387','Alice\'s first thought was that she still held the pieces of mushroom in her face, with such sudden violence that Alice had no very clear notion how delightful it will be the use of a large fan in.',1,0,3443,1,NULL,'2024-02-24 01:49:16','2024-02-24 01:49:16',0,1,NULL,NULL,NULL),(9,'Rachael','Abshire','I could say if I.',NULL,'wbergstrom@fisher.com','$2y$12$FqIV5CxjfFlaShCg1CeVHuhA4O.hLZcm2urXxz4SNzPJjLAL/WqHm',186,'1980-11-25','+15317712461','2024-02-24 08:49:16',NULL,'job-seeker',NULL,'resume/01.pdf','586 Armstrong Summit Suite 008\nLake Gina, PA 30583-5193','I wonder what they\'ll do well enough; and what does it to annoy, Because he knows it teases.\' CHORUS. (In which the cook took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and.',1,0,1405,1,NULL,'2024-02-24 01:49:16','2024-02-24 01:49:16',0,1,NULL,NULL,NULL),(10,'Earnestine','Murphy','Duchess?\' \'Hush!.',NULL,'marjory.spinka@hauck.net','$2y$12$aLYiloN5l4/T8TwOH5wswuuVswLJFaGNXnbDuTDgrcVkvJ2xl1fnK',184,'2021-10-22','+13513783044','2024-02-24 08:49:16',NULL,'job-seeker',NULL,'resume/01.pdf','3766 Magnus Ridge Suite 393\nNew Daisy, NY 17684','Duchess said in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the change: and Alice looked very uncomfortable. The first question of course you know what to say.',1,0,1469,0,NULL,'2024-02-24 01:49:16','2024-02-24 01:49:16',1,1,NULL,NULL,NULL),(11,'Sid','Nienow','Dormouse said--\'.',NULL,'nelson94@schaefer.net','$2y$12$es1wva0cgYtvtT.KVwFJcu9pavXysdZvYvt0JYyV8Vg93XmbsasUS',185,'2011-05-28','+18489649014','2024-02-24 08:49:16',NULL,'employer',NULL,NULL,'1263 Buster Streets Suite 850\nPort Nelle, AR 18045-0356','Alice to herself, and fanned herself with one eye; but to open it; but, as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then!\' roared the Queen, pointing to Alice.',1,0,2080,1,NULL,'2024-02-24 01:49:16','2024-02-24 01:49:16',0,1,NULL,NULL,NULL),(12,'Ola','Kuhic','What happened to.',NULL,'jimmy.jerde@reichel.com','$2y$12$29YtR4FByCuB/pqH9C2WMOZ9Ecn3AlJWat2GDnDffVI9fSaoH0JRy',185,'1980-08-16','+16617039572','2024-02-24 08:49:17',NULL,'job-seeker',NULL,'resume/01.pdf','810 Schulist Lake Suite 397\nNew Noah, MA 89108-4772','Soup of the trees had a large crowd collected round it: there were no tears. \'If you\'re going to leave the room, when her eye fell upon a Gryphon, lying fast asleep in the window?\' \'Sure, it\'s an.',1,0,2739,0,NULL,'2024-02-24 01:49:17','2024-02-24 01:49:17',0,1,NULL,NULL,NULL),(13,'Maureen','Haag','So she swallowed.',NULL,'iklein@mcglynn.biz','$2y$12$B2btjj0SzMngEubC2ssVIenxi1R5lkPZ.sF7DofwBZzoK6g/7K0he',184,'1970-12-03','+19185891141','2024-02-24 08:49:17',NULL,'employer',NULL,NULL,'643 Charlie Lane\nWest Arnaldo, GA 92198','After a while she remembered trying to box her own courage. \'It\'s no use speaking to it,\' she thought, \'till its ears have come, or at least one of the miserable Mock Turtle. \'Very much indeed,\'.',1,0,654,1,NULL,'2024-02-24 01:49:17','2024-02-24 01:49:17',1,1,NULL,NULL,NULL),(14,'Magdalen','Williamson','And she thought it.',NULL,'streich.orrin@hotmail.com','$2y$12$5M8fc1Hq/goJUkdLlvXOBOZ/qFq/aDEJSXFLdh2RUaH4W2VBdzn/.',186,'1990-11-24','+18179296758','2024-02-24 08:49:17',NULL,'employer',NULL,NULL,'4710 Yundt Inlet Suite 615\nEast Mollie, TX 92998-2072','Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and then at the bottom of a procession,\' thought she, \'what would become of me?\' Luckily for Alice, the little.',1,0,1959,1,NULL,'2024-02-24 01:49:17','2024-02-24 01:49:17',1,1,NULL,NULL,NULL),(15,'Cortez','Hoppe','I am very tired of.',NULL,'gustave.kerluke@shields.org','$2y$12$rR.1O7Qa53edpkFwVFWO/uPrXG3wsKXy2Y.fjAo4A7o67Al1m6MvG',184,'1980-01-04','+15512856960','2024-02-24 08:49:18',NULL,'job-seeker',NULL,'resume/01.pdf','47905 Jerde Mountain Apt. 639\nNorth Jordanburgh, WA 98490-0966','But they HAVE their tails in their mouths; and the Dormouse shall!\' they both sat silent and looked at her own courage. \'It\'s no use in crying like that!\' \'I couldn\'t help it,\' said the Dormouse.',1,0,219,1,NULL,'2024-02-24 01:49:18','2024-02-24 01:49:18',0,1,NULL,NULL,NULL),(16,'Brenda','Beatty','Mock Turtle: \'why.',NULL,'gkoelpin@pfeffer.com','$2y$12$ZW48sflRCj5LOgCEQsXaNeseZNTqr03Z6.f36KmaItVLtQHhpACwi',186,'1982-08-24','+16406664063','2024-02-24 08:49:18',NULL,'employer',NULL,NULL,'7008 Adela Tunnel Suite 827\nHirthefort, NY 57029','At last the Gryphon replied very politely, feeling quite pleased to have changed since her swim in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their.',1,0,3146,0,NULL,'2024-02-24 01:49:18','2024-02-24 01:49:18',0,1,NULL,NULL,NULL),(17,'Bryce','Labadie','NEVER come to an.',NULL,'conn.cortez@schultz.com','$2y$12$.1edOKmzhC0yZNeNnn1JHOUh.uQpHjDkPP1PsNjmL4abd.UQ04LVO',186,'2004-01-08','+19853423002','2024-02-24 08:49:18',NULL,'job-seeker',NULL,'resume/01.pdf','9658 D\'Amore Flats\nFelicitashire, VA 55210','The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said in a melancholy way, being quite unable to move. She soon got it out to be listening, so she took courage, and went stamping about.',1,0,1353,0,NULL,'2024-02-24 01:49:18','2024-02-24 01:49:18',1,1,NULL,NULL,NULL),(18,'Gladyce','Bednar','Alice had begun to.',NULL,'theo20@leffler.com','$2y$12$MNenIqyf7hmq8OCyk2GpJu3Ob5Le5mLUeM2SonMnepXkM/Aglocg2',184,'2021-06-05','+15208278273','2024-02-24 08:49:18',NULL,'job-seeker',NULL,'resume/01.pdf','28372 Leuschke Crest\nAdrienmouth, AZ 78143','King very decidedly, and there she saw them, they were mine before. If I or she should push the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an arrow.',1,0,2004,0,NULL,'2024-02-24 01:49:18','2024-02-24 01:49:18',1,1,NULL,NULL,NULL),(19,'Lilyan','Goldner','Alice,) and round.',NULL,'mills.liam@gmail.com','$2y$12$bc.31yqsjL2PLcUv785NsuwJ429gurjsxcea8vQPk3dNdtklMenB6',184,'2012-05-23','+14788870631','2024-02-24 08:49:19',NULL,'employer',NULL,NULL,'11821 Serenity Village\nBartonville, NJ 64233','Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she noticed that one of these cakes,\'.',1,0,4839,0,NULL,'2024-02-24 01:49:19','2024-02-24 01:49:19',1,1,NULL,NULL,NULL),(20,'Donavon','Welch','There was exactly.',NULL,'zparisian@gmail.com','$2y$12$Mozlw56fd81y6Jxvmzl/OeT17mKISjvJg7FQfwCL0uYDgriSVPqwK',186,'2014-09-22','+14245894300','2024-02-24 08:49:19',NULL,'employer',NULL,NULL,'929 Rutherford Garden\nEast Jamey, SC 66583','I know!\' exclaimed Alice, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Call it what you would have appeared to them she.',1,0,1023,1,NULL,'2024-02-24 01:49:19','2024-02-24 01:49:19',0,1,NULL,NULL,NULL),(21,'Penelope','Schiller','Caterpillar. This.',NULL,'mandy.kuphal@hickle.com','$2y$12$Hq.n1oINfehAxj15.T5/nOv6YlZooqzCak1VtAR0WAK6LND3BJ3gC',184,'2017-01-16','+18584503024','2024-02-24 08:49:19',NULL,'employer',NULL,NULL,'610 Powlowski Junction\nPort Parkerville, FL 73515','Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go down the chimney, and said nothing. \'Perhaps it doesn\'t understand English,\' thought Alice; \'I can\'t explain.',1,0,706,1,NULL,'2024-02-24 01:49:19','2024-02-24 01:49:19',0,1,NULL,NULL,NULL),(22,'Alexandria','Schinner','So she stood still.',NULL,'mueller.mustafa@gmail.com','$2y$12$LgBR/0qmUE3LFxKqctqZresjWD2E9MQ9HB3p4R.wcdiwIF18oVNBu',185,'1996-08-24','+19343738801','2024-02-24 08:49:20',NULL,'job-seeker',NULL,'resume/01.pdf','83049 Kyla Shore Suite 583\nSouth Susanna, NC 50615','The door led right into it. \'That\'s very curious.\' \'It\'s all his fancy, that: he hasn\'t got no business of MINE.\' The Queen turned crimson with fury, and, after glaring at her feet, they seemed to.',1,0,1318,0,NULL,'2024-02-24 01:49:20','2024-02-24 01:49:20',0,1,NULL,NULL,NULL),(23,'Cory','Sawayn','Now you know.\' He.',NULL,'pat22@hotmail.com','$2y$12$aF1yqPzckv0d3iWdjeAQpu8x.hkxgW0crGnqiOYU3Hm21QjAt.ubC',186,'1983-05-03','+19373669767','2024-02-24 08:49:20',NULL,'job-seeker',NULL,'resume/01.pdf','45098 Hildegard Common Suite 583\nSouth Kaiachester, FL 53141-1574','Queen\'s absence, and were quite silent, and looked anxiously at the door--I do wish they COULD! I\'m sure I don\'t want to stay with it as well say,\' added the Gryphon, before Alice could see it.',1,0,980,0,NULL,'2024-02-24 01:49:20','2024-02-24 01:49:20',0,1,NULL,NULL,NULL),(24,'Jairo','Moore','Caterpillar took.',NULL,'yasmine28@bergnaum.com','$2y$12$BhFKENZbFQdtfdHsJYqijOHwlqKRPvBql.VZLuWJP56Uwait59rUy',184,'1995-08-03','+15637134722','2024-02-24 08:49:20',NULL,'employer',NULL,NULL,'6724 Cristopher Creek Suite 826\nNew Rebecca, TN 00328-2478','There was exactly the right word) \'--but I shall remember it in a large kitchen, which was a good deal frightened at the other ladder?--Why, I hadn\'t quite finished my tea when I sleep\" is the.',1,0,390,1,NULL,'2024-02-24 01:49:20','2024-02-24 01:49:20',1,1,NULL,NULL,NULL),(25,'Wilson','Streich','So Bill\'s got the.',NULL,'stoltenberg.callie@mohr.com','$2y$12$bAE24w7K.GAQWSjprz1hmun7DFK.GG0rbDHss12yXLLCUTCLyCLUe',186,'2001-04-04','+15023488237','2024-02-24 08:49:21',NULL,'employer',NULL,NULL,'34263 Lueilwitz Crossroad\nKelleyside, ID 29117','There was no time she\'d have everybody executed, all round. \'But she must have been changed for Mabel! I\'ll try and say \"How doth the little--\"\' and she thought it must be Mabel after all, and I had.',1,0,2784,0,NULL,'2024-02-24 01:49:21','2024-02-24 01:49:21',0,1,NULL,NULL,NULL),(26,'Jedidiah','Durgan','Alice could speak.',NULL,'bryce.bins@harvey.com','$2y$12$yW3JMSPx9Di6ahEXV285X.g.ZqPUquj41qE.z21QuBgsSgZQ0mgpq',184,'1981-07-03','+12196351170','2024-02-24 08:49:21',NULL,'employer',NULL,NULL,'2534 Katelyn Shore\nLake Keltonchester, WA 12916-8580','The Mouse only shook its head down, and the party sat silent for a minute or two. \'They couldn\'t have done that, you know,\' said Alice, timidly; \'some of the lefthand bit. * * * * * * * * * * * * *.',1,0,4157,1,NULL,'2024-02-24 01:49:21','2024-02-24 01:49:21',0,1,NULL,NULL,NULL),(27,'Cristopher','Weimann','Wonderland of long.',NULL,'rhowell@hotmail.com','$2y$12$t3FLPdgJqjbuKirczm56cuGqcBrloEjakJeeJzQCpBOs19bAtw/lS',186,'2010-04-15','+17267647906','2024-02-24 08:49:21',NULL,'job-seeker',NULL,'resume/01.pdf','520 Rickie Squares Apt. 967\nDariusbury, NV 37122','Duchess said in a frightened tone. \'The Queen of Hearts, who only bowed and smiled in reply. \'Please come back in their mouths. So they couldn\'t see it?\' So she swallowed one of the door and went on.',1,0,4581,0,NULL,'2024-02-24 01:49:21','2024-02-24 01:49:21',0,1,NULL,NULL,NULL),(28,'Sheila','Predovic','Pat, what\'s that.',NULL,'peggie07@hotmail.com','$2y$12$pexTEerzoq.d2XhUGx.DQ..akJQxrD7ZLFforenRH36RuBFBqDYDu',184,'2023-10-06','+14355047188','2024-02-24 08:49:22',NULL,'employer',NULL,NULL,'342 Ernestina Keys\nWisozkview, SC 12247','Alice, who felt very glad to do anything but sit with its wings. \'Serpent!\' screamed the Gryphon. \'Do you take me for a minute, while Alice thought she had this fit) An obstacle that came between.',1,0,2381,0,NULL,'2024-02-24 01:49:22','2024-02-24 01:49:22',1,1,NULL,NULL,NULL),(29,'Hyman','Rodriguez','Let me think: was.',NULL,'goyette.casper@yahoo.com','$2y$12$K9sWKSoM9moU65BI4OLCqOyatxddpHQmkMeORfoo8a.Wdl/l0kaLK',186,'2010-11-25','+13088857324','2024-02-24 08:49:22',NULL,'employer',NULL,NULL,'15204 Schumm Mount Suite 765\nBartellhaven, OK 74124','Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said in an encouraging opening for a long and a fan! Quick, now!\' And Alice was beginning to feel a.',1,0,847,1,NULL,'2024-02-24 01:49:22','2024-02-24 01:49:22',1,1,NULL,NULL,NULL),(30,'Alberto','Swift','Alice, as she went.',NULL,'kunze.loren@yahoo.com','$2y$12$mBf8T8SXKlCjrm5Pc1WWYu2yt0gXY9QOwWr5/5zs7Z.XEPceI.poi',186,'1980-02-25','+17073276132','2024-02-24 08:49:22',NULL,'employer',NULL,NULL,'270 Hane Bypass\nJerdeton, MN 88193','Hatter, and, just as I\'d taken the highest tree in the house, and wondering whether she ought to have the experiment tried. \'Very true,\' said the March Hare went \'Sh! sh!\' and the Queen\'s voice in.',1,0,2369,0,NULL,'2024-02-24 01:49:22','2024-02-24 01:49:22',1,1,NULL,NULL,NULL),(31,'Tyreek','Crona','At this the White.',NULL,'qhahn@yahoo.com','$2y$12$G6ZKn7kIrByk9f51a1yequ8UhEg0kd0tSe5GBmEVc73332HhEF.P.',185,'1988-05-19','+19138126268','2024-02-24 08:49:23',NULL,'employer',NULL,NULL,'273 Heathcote Freeway\nWest Kylie, OK 11097','I\'ll just see what I could not stand, and she sat down at her for a long way back, and barking hoarsely all the way YOU manage?\' Alice asked. \'We called him a fish)--and rapped loudly at the end of.',1,0,2267,1,NULL,'2024-02-24 01:49:23','2024-02-24 01:49:23',1,1,NULL,NULL,NULL),(32,'Leopoldo','Nitzsche','Duchess: \'what a.',NULL,'leuschke.nathanial@gmail.com','$2y$12$Iaxj/ZQkRJdWdIjC3G7ER.LDbRbeY9lauH4ZaC2SF0UEtMxFiV0qC',184,'2000-03-04','+13609738385','2024-02-24 08:49:23',NULL,'employer',NULL,NULL,'76627 Domingo Valleys\nPort Braden, RI 65848','HAVE tasted eggs, certainly,\' said Alice, rather doubtfully, as she ran. \'How surprised he\'ll be when he sneezes; For he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\'.',1,0,4665,0,NULL,'2024-02-24 01:49:23','2024-02-24 01:49:23',0,1,NULL,NULL,NULL),(33,'Zora','Koepp','I think it so VERY.',NULL,'kstrosin@hotmail.com','$2y$12$AzfiSFojMqnE7lw67XIdd.tIX17Thweey7/9CxYPn6T7o2VrdyLbu',185,'1971-03-30','+18058390282','2024-02-24 08:49:23',NULL,'job-seeker',NULL,'resume/01.pdf','49681 Wintheiser Drives\nNew Fernandofurt, NV 49366-0922','I suppose I ought to have it explained,\' said the cook. The King and Queen of Hearts, she made her so savage when they saw the Mock Turtle would be of very little use without my shoulders. Oh, how I.',1,0,351,1,NULL,'2024-02-24 01:49:23','2024-02-24 01:49:23',0,1,NULL,NULL,NULL),(34,'Precious','Franecki','Off--\' \'Nonsense!\'.',NULL,'tom.stehr@vandervort.com','$2y$12$W/MHcp5bFvTMVzBNkpACO.kOxqvJGHRomQd1qb3f9a.3VmsRzR10m',184,'2014-10-27','+16052385013','2024-02-24 08:49:24',NULL,'employer',NULL,NULL,'1812 Dicki Summit Apt. 165\nAmberborough, NY 31034-6765','Alice said very humbly; \'I won\'t indeed!\' said Alice, who was beginning to get through was more hopeless than ever: she sat down with wonder at the frontispiece if you only kept on puzzling about it.',1,0,2790,0,NULL,'2024-02-24 01:49:24','2024-02-24 01:49:24',1,1,NULL,NULL,NULL),(35,'Vergie','Durgan','Alice, very loudly.',NULL,'aondricka@cummings.info','$2y$12$imo.8vPm8PcbD8sT/UPIpO2aKVrB5q5aAjfBenttr9aJXHeBCSD9S',185,'1971-03-17','+18604134107','2024-02-24 08:49:24',NULL,'job-seeker',NULL,'resume/01.pdf','33776 Cassandre Green\nNew Alexysport, MT 13635-7628','Queen. First came ten soldiers carrying clubs; these were all in bed!\' On various pretexts they all cheered. Alice thought she might as well as she went round the court was in confusion, getting the.',1,0,2557,1,NULL,'2024-02-24 01:49:24','2024-02-24 01:49:24',0,1,NULL,NULL,NULL),(36,'Gregg','Kovacek','Hatter, and here.',NULL,'tod.pollich@connelly.com','$2y$12$TF5dYCd2iWz3lOA3OdL/muwb/LqLJrGVnTgBkpmDTT9vBpSue1fli',186,'2005-07-09','+12839923219','2024-02-24 08:49:25',NULL,'job-seeker',NULL,'resume/01.pdf','899 Kailyn Parkway\nMasonmouth, NC 81468','VI. Pig and Pepper For a minute or two, they began moving about again, and all dripping wet, cross, and uncomfortable. The first question of course you know about it, even if I can creep under the.',1,0,3313,1,NULL,'2024-02-24 01:49:25','2024-02-24 01:49:25',0,1,NULL,NULL,NULL),(37,'Calista','Shanahan','And the muscular.',NULL,'wisoky.katelynn@yahoo.com','$2y$12$R/SWbZZNN8S1nSmzgWNF2OZXoaVWnaO2D72ie/848CHVg7/X4jAE6',184,'2019-07-12','+17313022661','2024-02-24 08:49:25',NULL,'employer',NULL,NULL,'6171 Taryn Tunnel Apt. 321\nLaurelport, MD 87646-1436','Hatter, and here the conversation dropped, and the great puzzle!\' And she kept fanning herself all the rest, Between yourself and me.\' \'That\'s the judge,\' she said to herself, \'I don\'t think they.',1,0,2397,1,NULL,'2024-02-24 01:49:25','2024-02-24 01:49:25',0,1,NULL,NULL,NULL),(38,'Hazel','Bruen','Lory, as soon as.',NULL,'dare.maverick@yahoo.com','$2y$12$gu3mBvSc.8UI2V3SPRniveMPFIA7FToK.I.RtaArg1xO/yNIw6r7u',186,'1978-08-16','+17748288002','2024-02-24 08:49:25',NULL,'job-seeker',NULL,'resume/01.pdf','4557 Effertz Valleys Apt. 972\nWest Lesley, ND 93400','Queen. \'I haven\'t opened it yet,\' said the Rabbit in a rather offended tone, \'was, that the mouse to the Mock Turtle: \'why, if a dish or kettle had been would have made a dreadfully ugly child: but.',1,0,4382,1,NULL,'2024-02-24 01:49:25','2024-02-24 01:49:25',1,1,NULL,NULL,NULL),(39,'Tabitha','Ebert','March Hare will be.',NULL,'abigail.rowe@hotmail.com','$2y$12$noJMV0dhatV6JcvX9F4Qe.2.fhpE5/6tWhaSZO60GBYNN0zmV8h.q',185,'2009-12-01','+16313134389','2024-02-24 08:49:25',NULL,'job-seeker',NULL,'resume/01.pdf','6506 Guido Ports\nBodeton, NJ 33965','I must have imitated somebody else\'s hand,\' said the King: \'however, it may kiss my hand if it makes rather a complaining tone, \'and they drew all manner of things--everything that begins with an.',1,0,1743,0,NULL,'2024-02-24 01:49:25','2024-02-24 01:49:25',0,1,NULL,NULL,NULL),(40,'Alexzander','Terry','DOES THE BOOTS AND.',NULL,'qondricka@pouros.com','$2y$12$1yHDs87ivwlBxG8QSoMbHeRbAz.6B5XkHoQCvUgKdXMSTwKVSQ/qm',184,'2006-12-07','+19848986081','2024-02-24 08:49:26',NULL,'employer',NULL,NULL,'81090 Uriah Divide\nFriesenhaven, HI 42173','Alice, and tried to beat time when she had peeped into the book her sister kissed her, and she went out, but it was only the pepper that had fluttered down from the trees behind him. \'--or next day.',1,0,1412,0,NULL,'2024-02-24 01:49:26','2024-02-24 01:49:26',1,1,NULL,NULL,NULL),(41,'Cielo','Reinger','Mock Turtle. \'No.',NULL,'svandervort@gmail.com','$2y$12$udHtv.yk0etLmFZ02eS6JupH47BrZDSDz88GycbGvNeBCQn1r.8ve',184,'1982-11-22','+16237465911','2024-02-24 08:49:26',NULL,'job-seeker',NULL,'resume/01.pdf','56208 Dawson Cliff\nWest Julianport, FL 52320-7660','I tell you!\' But she waited patiently. \'Once,\' said the White Rabbit. She was a good character, But said I didn\'t!\' interrupted Alice. \'You are,\' said the Cat, \'or you wouldn\'t have come here.\'.',1,0,2874,0,NULL,'2024-02-24 01:49:26','2024-02-24 01:49:26',0,1,NULL,NULL,NULL),(42,'Guadalupe','Powlowski','Alice. \'I\'ve read.',NULL,'kaci.stehr@yahoo.com','$2y$12$ZnRY0Kjv9CpD8O6Rf0VZwO4y.uKTnG2q7sNy4IehxYr.0OfxFWoxG',185,'2005-03-23','+18027659946','2024-02-24 08:49:26',NULL,'employer',NULL,NULL,'288 Auer Ferry Apt. 970\nGulgowskibury, SD 83422-2185','Down, down, down. Would the fall NEVER come to the fifth bend, I think?\' \'I had NOT!\' cried the Mouse, who seemed to think about stopping herself before she made out what it was: at first was.',1,0,4206,0,NULL,'2024-02-24 01:49:26','2024-02-24 01:49:26',0,1,NULL,NULL,NULL),(43,'Albina','Christiansen','THEIR eyes bright.',NULL,'shane.purdy@hotmail.com','$2y$12$/V751aiIaruCHgEKg2l.IeprgOC2zgN7bbTkktUUWSKmLOLpJGuTG',184,'1979-08-31','+18033321697','2024-02-24 08:49:26',NULL,'job-seeker',NULL,'resume/01.pdf','43252 Miller Lights\nReynoldschester, PA 19103-0330','I can\'t understand it myself to begin with; and being so many different sizes in a hurry to change them--\' when she looked down, was an old Turtle--we used to it!\' pleaded poor Alice in a dreamy.',1,0,4276,0,NULL,'2024-02-24 01:49:26','2024-02-24 01:49:26',0,1,NULL,NULL,NULL),(44,'Dusty','Krajcik','Gryphon. \'I mean.',NULL,'ujast@hessel.com','$2y$12$mhnH.cxC3tEtcPDQ/3vFGOEfshswk51MBl5MRmfoAM2wFsOKzGQX6',186,'1988-07-16','+17152591555','2024-02-24 08:49:27',NULL,'job-seeker',NULL,'resume/01.pdf','5062 Hyatt Mills Apt. 615\nWilliston, MD 83142-6120','Queen\'s absence, and were quite dry again, the Dodo in an undertone, \'important--unimportant--unimportant--important--\' as if she were saying lessons, and began picking them up again as quickly as.',1,0,1030,1,NULL,'2024-02-24 01:49:27','2024-02-24 01:49:27',1,1,NULL,NULL,NULL),(45,'Reina','Muller','Caterpillar. Alice.',NULL,'zkonopelski@romaguera.net','$2y$12$5IfeHnr3aTxbh2bQomSzuOi/R5EWanVCJd6/DoSLZDwMrJZcvMMpq',185,'1982-02-07','+18505713414','2024-02-24 08:49:27',NULL,'employer',NULL,NULL,'41305 Micaela Harbor Apt. 221\nWest Joellefort, FL 92204-2719','I needn\'t be so kind,\' Alice replied, so eagerly that the Gryphon in an angry tone, \'Why, Mary Ann, what ARE you talking to?\' said the Hatter, \'you wouldn\'t talk about her repeating \'YOU ARE OLD.',1,0,4571,0,NULL,'2024-02-24 01:49:27','2024-02-24 01:49:27',0,1,NULL,NULL,NULL),(46,'Else','Stehr','It was so full of.',NULL,'eddie86@gleichner.com','$2y$12$LCGTHeqOuzD81gikN1PMkuicLhbu3mUS5W9Q2/p6PK9Ht98BE53Im',185,'1991-07-05','+15344278162','2024-02-24 08:49:27',NULL,'job-seeker',NULL,'resume/01.pdf','42918 Hills Island Apt. 244\nNew Glennie, AR 13990-7569','Alice timidly. \'Would you tell me, please, which way you have just been picked up.\' \'What\'s in it?\' said the Gryphon, half to itself, \'Oh dear! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into.',1,0,1539,1,NULL,'2024-02-24 01:49:27','2024-02-24 01:49:27',0,1,NULL,NULL,NULL),(47,'Stephon','Rutherford','No, no! You\'re a.',NULL,'rogahn.louisa@gmail.com','$2y$12$xIa0tN3NoXZoZJBTfmBQKeMqBjhbV5VkI5rKiJ9KU4bl6z1u.R332',186,'1970-03-27','+19316907983','2024-02-24 08:49:28',NULL,'employer',NULL,NULL,'98691 Lottie Streets\nShaniyafurt, AL 11888-1739','Alice was beginning to think to herself, \'I don\'t even know what it might tell her something worth hearing. For some minutes the whole party look so grave that she knew the name again!\' \'I won\'t.',1,0,1168,0,NULL,'2024-02-24 01:49:28','2024-02-24 01:49:28',0,1,NULL,NULL,NULL),(48,'Dayton','Beahan','YOU manage?\' Alice.',NULL,'monahan.korey@yahoo.com','$2y$12$iNVoTN01O2RK7vavVIl8vevcE9/G9LsJsm3ifVOlGINjXGRzgNzNq',185,'1984-01-24','+18608575087','2024-02-24 08:49:28',NULL,'employer',NULL,NULL,'68612 Beryl Spring\nLake Theresia, HI 70706-7110','Miss, this here ought to be no sort of present!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather not,\' the Cat said, waving its right paw round, \'lives a March Hare. The Hatter shook his.',1,0,819,0,NULL,'2024-02-24 01:49:28','2024-02-24 01:49:28',1,1,NULL,NULL,NULL),(49,'Trace','Lesch','And the moral of.',NULL,'deckow.murphy@klocko.com','$2y$12$T7K6LFLyZXPl08ppsIttWuAnV6PvUb1aowlPtLr05fmi.wUHjvB/a',185,'2007-11-18','+14584090488','2024-02-24 08:49:28',NULL,'employer',NULL,NULL,'87647 Muller Harbor Apt. 976\nCarmelfort, MA 53227-7404','She felt that she was saying, and the pair of white kid gloves: she took courage, and went on planning to herself in Wonderland, though she knew she had to double themselves up and said, very.',1,0,3317,1,NULL,'2024-02-24 01:49:28','2024-02-24 01:49:28',0,1,NULL,NULL,NULL),(50,'Katarina','Kohler','King said, with a.',NULL,'kasey.harvey@yahoo.com','$2y$12$e4GHTFZskQn5uYPpI4guDe0gi0xe984TCoczfq/IXuKLxTtgFs576',186,'1976-09-25','+15205019989','2024-02-24 08:49:28',NULL,'employer',NULL,NULL,'61248 Nicklaus Fords Suite 877\nLempiport, KY 57009-9337','Mock Turtle, who looked at it again: but he now hastily began again, using the ink, that was trickling down his cheeks, he went on, taking first one side and up the fan she was up to her that she.',1,0,3795,0,NULL,'2024-02-24 01:49:28','2024-02-24 01:49:28',0,1,NULL,NULL,NULL),(51,'Ena','Hayes','Hatter, who turned.',NULL,'ivy.dicki@yahoo.com','$2y$12$1/6PZXrOGufKfQp1ZJx48ueW/zhgSwOFrflOmL2E77p7yE3PuodwC',186,'1992-12-24','+19045857541','2024-02-24 08:49:29',NULL,'job-seeker',NULL,'resume/01.pdf','23113 Brittany Camp\nNew Ronaldo, VT 43043','NOT marked \'poison,\' so Alice ventured to remark. \'Tut, tut, child!\' said the March Hare. Alice sighed wearily. \'I think I can creep under the hedge. In another moment that it was all very well.',1,0,359,1,NULL,'2024-02-24 01:49:29','2024-02-24 01:49:29',1,1,NULL,NULL,NULL),(52,'Tierra','Bauch','There was a paper.',NULL,'ebrekke@parker.com','$2y$12$LDONw7D5Ai9OvpQkkWVAvuehpgk/R585f.Ydi9E6rHGHNQtOX.QIa',184,'2020-12-19','+19316904205','2024-02-24 08:49:29',NULL,'employer',NULL,NULL,'9198 Will Extension Suite 186\nDanielshire, MA 90967','So you see, as they lay on the look-out for serpents night and day! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Hatter, it woke up again with a yelp of delight, and rushed at.',1,0,320,0,NULL,'2024-02-24 01:49:29','2024-02-24 01:49:29',1,1,NULL,NULL,NULL),(53,'Ford','Kshlerin','At this moment the.',NULL,'luna.friesen@hotmail.com','$2y$12$d2No7H0QNazxH/bSmFuPeOmMemJAe/1wM8EZKfUdDAkunBF5xJwBW',185,'1993-02-10','+16509437716','2024-02-24 08:49:29',NULL,'employer',NULL,NULL,'541 Barrows Track Suite 341\nBettiechester, WI 89555-3225','Presently she began shrinking directly. As soon as she swam lazily about in the sea. But they HAVE their tails in their mouths. So they began solemnly dancing round and round Alice, every now and.',1,0,1400,0,NULL,'2024-02-24 01:49:29','2024-02-24 01:49:29',0,1,NULL,NULL,NULL),(54,'Norval','Quigley','What made you so.',NULL,'fay.gislason@walter.net','$2y$12$AypsgKwZQG.FHFHRUj.lGeg4IbvG0mnskz.TF4cPGzfWN9y5xemFG',184,'1977-05-23','+18389375965','2024-02-24 08:49:29',NULL,'job-seeker',NULL,'resume/01.pdf','217 Alexys Shoals\nSouth Aliza, NJ 75042','Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I hadn\'t to bring tears into her face. \'Very,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. The King turned pale, and shut.',1,0,313,0,NULL,'2024-02-24 01:49:29','2024-02-24 01:49:29',1,1,NULL,NULL,NULL),(55,'Wellington','Gottlieb','As soon as it was.',NULL,'hessel.norma@hotmail.com','$2y$12$kgdDWHviBfss9QR0JHVDiu.Lx4skzmcArp.V5fX5KZOQ5doVPKzty',185,'2008-05-08','+12134148313','2024-02-24 08:49:30',NULL,'job-seeker',NULL,'resume/01.pdf','8435 Orval Landing Apt. 360\nEast Deshaun, FL 79581','And she went on. \'Would you tell me,\' said Alice, in a frightened tone. \'The Queen will hear you! You see, she came rather late, and the Queen added to one of the tea--\' \'The twinkling of the house.',1,0,941,1,NULL,'2024-02-24 01:49:30','2024-02-24 01:49:30',1,1,NULL,NULL,NULL),(56,'Fabian','O\'Keefe','Please, Ma\'am, is.',NULL,'lavern.toy@yahoo.com','$2y$12$3uN9IagDwJM86T.BSvLBcOYwCxlNYxgS5E5d6UGf8Fti1QZo/skye',184,'2004-11-11','+19312407645','2024-02-24 08:49:30',NULL,'job-seeker',NULL,'resume/01.pdf','180 Boyer Harbor\nGerholdberg, KS 92490','Alice thought she had tired herself out with his head!\' or \'Off with her head!\' Alice glanced rather anxiously at the bottom of a good way off, and that makes them so shiny?\' Alice looked at it, and.',1,0,3088,0,NULL,'2024-02-24 01:49:30','2024-02-24 01:49:30',1,1,NULL,NULL,NULL),(57,'Demetris','Nolan','Alice, and tried.',NULL,'jackeline23@yahoo.com','$2y$12$f0crVXjUNXYJjRIJfhGVR.dP1V27/MUjYolKLj221ZJTv.raXLqXW',186,'1977-04-07','+18433201739','2024-02-24 08:49:30',NULL,'employer',NULL,NULL,'266 Jakubowski Ports\nBrookville, ND 03851-3719','Father William replied to his ear. Alice considered a little, \'From the Queen. An invitation from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice to herself, \'I wish I hadn\'t drunk quite.',1,0,3587,1,NULL,'2024-02-24 01:49:30','2024-02-24 01:49:30',1,1,NULL,NULL,NULL),(58,'Constantin','Konopelski','Gryphon, half to.',NULL,'krajcik.martina@gmail.com','$2y$12$XfsQONx6pW1fao5qkR0ZUeX.ZZ/5SG5n58rlKD0Ni0MJ80FCbk.Ji',185,'2001-06-22','+19122031200','2024-02-24 08:49:30',NULL,'employer',NULL,NULL,'8266 Hauck Station\nSouth Derickchester, MD 80807-8527','Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice began telling them her adventures from the change: and Alice guessed in a voice of the table. \'Nothing can be clearer than THAT. Then.',1,0,1118,1,NULL,'2024-02-24 01:49:30','2024-02-24 01:49:30',1,1,NULL,NULL,NULL),(59,'Francesco','Gorczany','Alice. \'Anything.',NULL,'marcus12@kirlin.com','$2y$12$OcyI5i4gcp7.GTOgncOO4e4c/No0DMVdh9X6XmS.MVk7usRqtgYZa',184,'2022-07-26','+14845558947','2024-02-24 08:49:31',NULL,'employer',NULL,NULL,'359 Rollin Pass Suite 842\nPort Maurine, IA 15883','Majesty,\' said Two, in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they sat down, and nobody spoke for some time without interrupting it. \'They must go and live in that soup!\'.',1,0,4163,1,NULL,'2024-02-24 01:49:31','2024-02-24 01:49:31',0,1,NULL,NULL,NULL),(60,'Fernando','Nicolas','Now, if you could.',NULL,'qemmerich@hotmail.com','$2y$12$WBwS9qe.9RLWiJzjEcXaFej7rivwBnUHlLW9as5d5de/TXxm6o/.2',186,'2005-04-01','+18317399128','2024-02-24 08:49:31',NULL,'employer',NULL,NULL,'10770 Price Inlet Apt. 690\nSouth Estelfurt, AK 78917-4783','Visit either you like: they\'re both mad.\' \'But I don\'t want to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the insolence of his tail.',1,0,647,0,NULL,'2024-02-24 01:49:31','2024-02-24 01:49:31',0,1,NULL,NULL,NULL),(61,'Carmella','Morar','Sir, With no jury.',NULL,'xbahringer@hotmail.com','$2y$12$vSVPpJuD74yS8llcd6FLWeQYPM71mlEi8ByV0RaYNTN4Xz4qwhqOa',184,'1972-11-30','+12297302799','2024-02-24 08:49:31',NULL,'job-seeker',NULL,'resume/01.pdf','118 Hannah Junction\nNorth Daxshire, GA 06502-7653','I only wish it was,\' the March Hare. \'He denies it,\' said the Queen, \'and take this child away with me,\' thought Alice, as the game began. Alice thought to herself. \'Of the mushroom,\' said the King.',1,0,2886,0,NULL,'2024-02-24 01:49:31','2024-02-24 01:49:31',1,1,NULL,NULL,NULL),(62,'Rogers','Hettinger','English coast you.',NULL,'carole75@yahoo.com','$2y$12$8F1qIEm3PRQxWTvfNKJksuA/5sRiXMs8CjRLRNuXxeildC/aqyURG',185,'1984-01-03','+16122970510','2024-02-24 08:49:32',NULL,'job-seeker',NULL,'resume/01.pdf','250 Nova Estate\nAbernathyfort, DC 23802-2192','Alice said with some difficulty, as it lasted.) \'Then the Dormouse again, so that altogether, for the baby, the shriek of the house of the hall: in fact she was shrinking rapidly; so she went out.',1,0,3998,1,NULL,'2024-02-24 01:49:32','2024-02-24 01:49:32',0,1,NULL,NULL,NULL),(63,'Zechariah','McGlynn','Gryphon. \'I mean.',NULL,'mackenzie.kub@kutch.net','$2y$12$DyxqszLqhxH91GnXtNiuiOp0aHVTmZJEmcTzus4ps2NE7zs0qS9y.',186,'2024-01-02','+12313158875','2024-02-24 08:49:32',NULL,'job-seeker',NULL,'resume/01.pdf','519 Mante Mission\nPort Jonas, MD 45306-9033','Which shall sing?\' \'Oh, YOU sing,\' said the Dodo said, \'EVERYBODY has won, and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was not a regular rule: you invented it just.',1,0,1734,0,NULL,'2024-02-24 01:49:32','2024-02-24 01:49:32',1,1,NULL,NULL,NULL),(64,'Coy','Bartell','March Hare said--\'.',NULL,'anna.bartell@robel.com','$2y$12$cxesbM8cf4c0b.LmUZOME.D.9kPc/eLkTDIWHSM.YcUA3RyRUuS86',185,'1977-03-30','+19145805214','2024-02-24 08:49:32',NULL,'employer',NULL,NULL,'3755 Courtney Inlet\nHermannmouth, WI 93962-8134','I wish I could shut up like a stalk out of the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the White Rabbit. She was walking by the pope, was soon left alone. \'I.',1,0,1945,0,NULL,'2024-02-24 01:49:32','2024-02-24 01:49:32',0,1,NULL,NULL,NULL),(65,'Adelia','Orn','Alice took up the.',NULL,'clay.rohan@yahoo.com','$2y$12$CqecODSHETbjD8d6UOmN5.f4OQQyFsfDLXbMVFeVKQC47rVmiCfo2',185,'1985-06-19','+18143973889','2024-02-24 08:49:32',NULL,'job-seeker',NULL,'resume/01.pdf','4200 Homenick Isle Suite 002\nLednerborough, CA 98650-6905','Cheshire Cat sitting on the stairs. Alice knew it was sneezing and howling alternately without a great deal too far off to other parts of the evening, beautiful Soup! Beau--ootiful Soo--oop!.',1,0,2754,0,NULL,'2024-02-24 01:49:32','2024-02-24 01:49:32',0,1,NULL,NULL,NULL),(66,'Vladimir','Wuckert','I didn\'t know that.',NULL,'jstamm@medhurst.com','$2y$12$PG0Esq.K2gn4S0pNrSQVtuX3UeJEH0cXrADK5GjtnzttZEZOmWOlO',184,'1992-12-13','+15518881070','2024-02-24 08:49:33',NULL,'employer',NULL,NULL,'3153 Upton Cove\nSouth Fritzside, OH 66390-6988','Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very humbly; \'I won\'t have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no.',1,0,3203,0,NULL,'2024-02-24 01:49:33','2024-02-24 01:49:33',0,1,NULL,NULL,NULL),(67,'Fern','Wunsch','There was nothing.',NULL,'ned31@marquardt.com','$2y$12$SLyaayea3tDpM1QoTw7cQ.jsIQlEmITcriSnpagN0R861dkWrrlXq',186,'1984-11-10','+17623247957','2024-02-24 08:49:33',NULL,'employer',NULL,NULL,'6736 Hickle Isle\nStrosinchester, CA 51222','Gryphon whispered in a tone of the cakes, and was beating her violently with its eyelids, so he did,\' said the Caterpillar. \'Well, I can\'t tell you my history, and you\'ll understand why it is all.',1,0,2965,1,NULL,'2024-02-24 01:49:33','2024-02-24 01:49:33',1,1,NULL,NULL,NULL),(68,'Kareem','Lehner','Mouse, who seemed.',NULL,'sweimann@gutkowski.biz','$2y$12$76izt7LcMxeMkcUM.gvpZ.sfPQjo4pUCVU/vJ89fQ1khxMJFZtRz6',185,'1992-01-16','+18479210971','2024-02-24 08:49:33',NULL,'employer',NULL,NULL,'825 Carleton Way\nLake Lempi, NJ 13111-5671','Alice, \'to speak to this last remark, \'it\'s a vegetable. It doesn\'t look like one, but the Dormouse began in a helpless sort of a candle is blown out, for she felt sure it would be as well she.',1,0,3353,1,NULL,'2024-02-24 01:49:33','2024-02-24 01:49:33',0,1,NULL,NULL,NULL),(69,'Eloise','Ernser','Alice: \'--where\'s.',NULL,'desiree07@yahoo.com','$2y$12$pXvULbSezoKWTpKzMqBbPemVHJQEY.mkXCSfOPluEoyMnnaUsA2ke',186,'2009-11-25','+16146191927','2024-02-24 08:49:34',NULL,'job-seeker',NULL,'resume/01.pdf','40859 Weimann Parkway Suite 127\nLulufort, AK 77141','Alice looked at it gloomily: then he dipped it into his plate. Alice did not like to hear it say, as it spoke (it was exactly three inches high). \'But I\'m NOT a serpent, I tell you!\' said Alice.',1,0,2793,0,NULL,'2024-02-24 01:49:34','2024-02-24 01:49:34',0,1,NULL,NULL,NULL),(70,'Ken','Collier','I wonder what CAN.',NULL,'kareem.kuhn@hotmail.com','$2y$12$eqy2gHiAHdmeRx8BdE80/uHl7heRB2f8TG.qe880mf7dztqY5mSxu',186,'2017-06-13','+12812778152','2024-02-24 08:49:34',NULL,'job-seeker',NULL,'resume/01.pdf','1952 Mariana Divide Suite 811\nSouth Doyleview, ID 85630-9306','English!\' said the Gryphon, before Alice could see it trying in a tone of this was not an encouraging opening for a minute or two, it was sneezing on the top of its little eyes, but it was looking.',1,0,2029,0,NULL,'2024-02-24 01:49:34','2024-02-24 01:49:34',1,1,NULL,NULL,NULL),(71,'Neva','Miller','He got behind him.',NULL,'kyla97@yahoo.com','$2y$12$avGEArjBmnsF4y416ftzb.xnLq4Tp.zlBHt1ClxMFaHfp0Ka/s0I6',184,'2016-06-12','+15679873867','2024-02-24 08:49:34',NULL,'employer',NULL,NULL,'390 Gutkowski Views\nLake Pansyton, NJ 71994','Duchess, \'and that\'s a fact.\' Alice did not venture to go down--Here, Bill! the master says you\'re to go near the right size, that it was not even room for this, and after a fashion, and this he.',1,0,3714,1,NULL,'2024-02-24 01:49:34','2024-02-24 01:49:34',0,1,NULL,NULL,NULL),(72,'Effie','Kautzer','I\'ll go round and.',NULL,'mraz.tracy@gmail.com','$2y$12$FyN.C4VO9pJJGjAeBoCQl.Tm/wEUNRYiWohYSjrPl4053bPAzzGoW',184,'2003-01-03','+18788014683','2024-02-24 08:49:34',NULL,'employer',NULL,NULL,'71186 Devon Via\nSchulistchester, MD 52942-5327','The Duchess took her choice, and was just saying to herself, as she had known them all her life. Indeed, she had someone to listen to her. The Cat only grinned when it saw Alice. It looked.',1,0,1945,0,NULL,'2024-02-24 01:49:34','2024-02-24 01:49:34',1,1,NULL,NULL,NULL),(73,'Jasper','Medhurst','Mouse, turning to.',NULL,'brant41@howell.info','$2y$12$IwMsmW5I/KQ94qhcl1JDxusIaIh8vkv0mlhcmEcKmN/Zi2y4oY9Ae',186,'2021-05-30','+12692374700','2024-02-24 08:49:35',NULL,'employer',NULL,NULL,'61976 Jaqueline Tunnel\nSouth Velva, KY 97320','Hatter. He came in sight of the other players, and shouting \'Off with his nose Trims his belt and his friends shared their never-ending meal, and the other bit. Her chin was pressed so closely.',1,0,2298,1,NULL,'2024-02-24 01:49:35','2024-02-24 01:49:35',1,1,NULL,NULL,NULL),(74,'Karlie','Mohr','As she said to the.',NULL,'lkovacek@marvin.com','$2y$12$qxQxbuZA0r2VdzuF1HnSvuwPvr/iU.h.QTveUQRrEwMKNszDmWiFe',186,'2013-05-27','+14088310781','2024-02-24 08:49:35',NULL,'employer',NULL,NULL,'600 Seamus Drives\nDouglasburgh, MN 18011','But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her face, with such sudden violence that Alice had learnt several things of this was of very little use, as it.',1,0,1003,1,NULL,'2024-02-24 01:49:35','2024-02-24 01:49:35',1,1,NULL,NULL,NULL),(75,'Erica','Jones','Two, in a shrill.',NULL,'bsporer@heidenreich.com','$2y$12$/Amt/V.kzV1zZHSaY5qcC.eSLyy3VvJev3bYh0ltfFd9ZNuDc.FEa',186,'1972-03-31','+16607479460','2024-02-24 08:49:35',NULL,'job-seeker',NULL,'resume/01.pdf','11822 Beer Gardens Suite 482\nNew Addison, HI 10748','She got up this morning, but I shall see it written up somewhere.\' Down, down, down. There was a little shaking among the party. Some of the conversation. Alice felt so desperate that she wasn\'t a.',1,0,2236,0,NULL,'2024-02-24 01:49:35','2024-02-24 01:49:35',1,1,NULL,NULL,NULL),(76,'Rahsaan','Kozey','I\'ll manage better.',NULL,'omills@yahoo.com','$2y$12$uhY5Yn8J4BqxcZwZx.Am2ewSiQi2iC8ng8HZz7ncDzMsOrUSt30UC',185,'2008-07-29','+13809953894','2024-02-24 08:49:36',NULL,'employer',NULL,NULL,'61780 Buckridge Rapids Apt. 662\nMuhammadmouth, HI 49723-6902','Lizard\'s slate-pencil, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the centre of the Shark, But, when the White Rabbit; \'in fact, there\'s nothing.',1,0,945,1,NULL,'2024-02-24 01:49:36','2024-02-24 01:49:36',0,1,NULL,NULL,NULL),(77,'Tremaine','Quigley','Queen! The Queen!\'.',NULL,'marguerite.towne@mosciski.com','$2y$12$3F9JorzwWlz9L2bCbuFL0eJnRj6D14Xs//P/qctDVHcryUz/irAgy',184,'2004-11-12','+19786957079','2024-02-24 08:49:36',NULL,'job-seeker',NULL,'resume/01.pdf','172 Tessie Pass Apt. 977\nChasityton, NC 23490-3998','I shall remember it in the distance, screaming with passion. She had already heard her sentence three of her sister, as well as she could. \'The Dormouse is asleep again,\' said the Mock Turtle yawned.',1,0,3894,1,NULL,'2024-02-24 01:49:36','2024-02-24 01:49:36',1,1,NULL,NULL,NULL),(78,'Sage','Cole','Alice was not even.',NULL,'emilia.stroman@hotmail.com','$2y$12$.ARQXbfHmAB.ye22/QGEsut0jqPKaY4nzb53pYq.6iBYKzxSWI1x.',184,'1979-03-05','+15127509433','2024-02-24 08:49:36',NULL,'employer',NULL,NULL,'959 Alysa Brooks Apt. 994\nAnnieville, IL 58921','Alice thought she might as well go in ringlets at all; and I\'m sure _I_ shan\'t be beheaded!\' said Alice, rather alarmed at the beginning,\' the King said to herself. Imagine her surprise, when the.',1,0,2449,0,NULL,'2024-02-24 01:49:36','2024-02-24 01:49:36',1,1,NULL,NULL,NULL),(79,'Carmela','Leuschke','SAID was, \'Why is.',NULL,'fhammes@hotmail.com','$2y$12$vmmPAQKDTyfO54D1QvxsZOBVcqDuxJV7gNYoG5HexfeJBnrnrORzC',185,'1975-12-27','+19598534943','2024-02-24 08:49:36',NULL,'job-seeker',NULL,'resume/01.pdf','63580 Ari Plaza Suite 111\nSouth Albaburgh, TX 86234-3428','COULD grin.\' \'They all can,\' said the Queen, and in a moment. \'Let\'s go on for some minutes. Alice thought she might as well be at school at once.\' However, she did not seem to put his mouth close.',1,0,2758,1,NULL,'2024-02-24 01:49:36','2024-02-24 01:49:36',1,1,NULL,NULL,NULL),(80,'Kris','Wintheiser','King eagerly, and.',NULL,'pzboncak@yahoo.com','$2y$12$23Fd6opeC5/N4VG6BfKLauP617GEn3FJ85OESLlKvtRYshMOmKpii',186,'1981-09-12','+15805106123','2024-02-24 08:49:37',NULL,'employer',NULL,NULL,'8699 Frieda Cliff\nZoeyberg, IN 78202','Hatter, and he hurried off. Alice thought the whole court was a good way off, and she felt a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I can\'t put it into his plate.',1,0,2934,0,NULL,'2024-02-24 01:49:37','2024-02-24 01:49:37',0,1,NULL,NULL,NULL),(81,'Myah','Turcotte','I want to go! Let.',NULL,'serena.kilback@gmail.com','$2y$12$m3R5ZR8hi7Z9T5wMGOPpVu5swO5HbxU3v57xrASbMpR5YL254Fi3O',184,'1972-01-28','+19035633870','2024-02-24 08:49:37',NULL,'job-seeker',NULL,'resume/01.pdf','2617 Laron Spur\nImmanuelbury, WA 44908-4711','Just as she was in the sea. But they HAVE their tails fast in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the twentieth time that day. \'No, no!\' said the Caterpillar decidedly.',1,0,410,0,NULL,'2024-02-24 01:49:37','2024-02-24 01:49:37',1,1,NULL,NULL,NULL),(82,'Braulio','Ruecker','I shan\'t! YOU do.',NULL,'bins.lina@hotmail.com','$2y$12$4BmkBjvk6.FmdbxGMZKk4.8aaYqUP7LEztgjRjX7PvyOAZUVgX62G',185,'2002-09-04','+16605906897','2024-02-24 08:49:37',NULL,'employer',NULL,NULL,'8369 Lemke Avenue Suite 582\nUllrichchester, WV 43414-6056','White Rabbit blew three blasts on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never had fits, my dear, and that you never even introduced to a shriek.',1,0,2474,0,NULL,'2024-02-24 01:49:37','2024-02-24 01:49:37',1,1,NULL,NULL,NULL),(83,'Amari','McClure','I shall never get.',NULL,'swaniawski.vivien@sawayn.com','$2y$12$eRu9j1hyXDrCFWG7CfsWeObU3b8Wo6ZJooxe3lICfuZXNre5XDbvC',185,'1976-12-03','+16174480840','2024-02-24 08:49:37',NULL,'job-seeker',NULL,'resume/01.pdf','72034 Skyla Hills Suite 426\nPort Edwardborough, HI 95358-1434','Gryphon. \'They can\'t have anything to say, she simply bowed, and took the place of the hall; but, alas! either the locks were too large, or the key was lying under the table: she opened the door of.',1,0,1649,0,NULL,'2024-02-24 01:49:37','2024-02-24 01:49:37',1,1,NULL,NULL,NULL),(84,'Desmond','O\'Connell','However, when they.',NULL,'caden16@yahoo.com','$2y$12$E88ha3pOxhv9HOxY2p5WT.Nlw8zn.MQII6F2pXYUy3SCW2iipHYBu',185,'1984-05-31','+15409309157','2024-02-24 08:49:38',NULL,'job-seeker',NULL,'resume/01.pdf','19629 Swaniawski Highway Suite 278\nDibbertville, PA 02208','Tortoise because he was gone, and the arm that was linked into hers began to cry again. \'You ought to be sure; but I can\'t get out at the end of the ground--and I should be free of them say, \'Look.',1,0,4006,1,NULL,'2024-02-24 01:49:38','2024-02-24 01:49:38',1,1,NULL,NULL,NULL),(85,'Julianne','Hamill','Hatter, \'when the.',NULL,'ora34@hyatt.com','$2y$12$yB4Lg/Y/q2vxlgNgj5DYq.hJVpRuZJQlaa6tmJLe2MImWU2QkArOu',185,'1993-01-28','+18124815454','2024-02-24 08:49:38',NULL,'job-seeker',NULL,'resume/01.pdf','127 Mayert Manors\nNorth Presleymouth, HI 52580-7958','Said his father; \'don\'t give yourself airs! Do you think you could keep it to annoy, Because he knows it teases.\' CHORUS. (In which the cook and the poor little Lizard, Bill, was in livery.',1,0,893,0,NULL,'2024-02-24 01:49:38','2024-02-24 01:49:38',1,1,NULL,NULL,NULL),(86,'Nola','Graham','And with that she.',NULL,'dooley.domingo@yahoo.com','$2y$12$Z70KFcJQgJljoTtbbh7wrOum.H0Gh411jldDb7qA2LkoE5OVk1nfW',184,'2018-03-09','+14144897063','2024-02-24 08:49:38',NULL,'employer',NULL,NULL,'15433 Adrain Route\nMitchellbury, KS 98180-4937','Alice quite hungry to look over their slates; \'but it sounds uncommon nonsense.\' Alice said very humbly; \'I won\'t indeed!\' said the Gryphon. \'It all came different!\' Alice replied in an angry.',1,0,4120,0,NULL,'2024-02-24 01:49:38','2024-02-24 01:49:38',1,1,NULL,NULL,NULL),(87,'Frederick','Upton','I suppose.\' So she.',NULL,'daphne76@jenkins.biz','$2y$12$XGtwpqI4QzinifJX5SGryOqSwrLX.FfWMMaDXn2UiPdIM3Es5mksq',185,'1983-10-16','+15592721247','2024-02-24 08:49:38',NULL,'job-seeker',NULL,'resume/01.pdf','478 Eliane Views\nLake Orenburgh, MN 10144-5271','I eat one of the earth. Let me see: I\'ll give them a railway station.) However, she soon made out that one of the trees upon her arm, with its head, it WOULD twist itself round and round goes the.',1,0,1955,0,NULL,'2024-02-24 01:49:38','2024-02-24 01:49:38',1,1,NULL,NULL,NULL),(88,'Nellie','Padberg','White Rabbit was.',NULL,'abbey71@lang.com','$2y$12$4lDy3GpFJMkqLY0GhSDnmej51VxfosFgGxwDSeyt0YQ0gc3.hw9Lm',185,'1989-10-11','+13315031384','2024-02-24 08:49:39',NULL,'employer',NULL,NULL,'94363 Ernser Flat\nNorth Rheahaven, IA 97799','I could shut up like telescopes: this time the Queen said to itself in a game of croquet she was now about two feet high: even then she walked sadly down the chimney close above her: then, saying to.',1,0,3297,0,NULL,'2024-02-24 01:49:39','2024-02-24 01:49:39',0,1,NULL,NULL,NULL),(89,'Louvenia','Prosacco','ALL RETURNED FROM.',NULL,'marquis.konopelski@murphy.com','$2y$12$n2S6V5rheGIbsnQ0wyLibOTeYolvbq6snh85LDfNEM.2XQ3iXbO66',184,'1996-03-28','+16606379963','2024-02-24 08:49:39',NULL,'employer',NULL,NULL,'353 Idell Lane\nSouth Michelechester, IA 31370','I shall ever see such a thing. After a time there were a Duck and a crash of broken glass. \'What a curious dream!\' said Alice, a good many voices all talking together: she made some tarts, All on a.',1,0,994,0,NULL,'2024-02-24 01:49:39','2024-02-24 01:49:39',0,1,NULL,NULL,NULL),(90,'Thaddeus','Sawayn','Father William,\'.',NULL,'ankunding.jermaine@gmail.com','$2y$12$.YNk7qY5LzKGAtXKSUfBGOcxE8BE.V3rUouNsDmrHCIxiaL8NRSum',184,'2017-07-30','+17039558466','2024-02-24 08:49:39',NULL,'employer',NULL,NULL,'123 Zane Crossing Apt. 969\nLake Dixie, OR 54139','Alice had no reason to be an advantage,\' said Alice, rather alarmed at the end of trials, \"There was some attempts at applause, which was full of smoke from one minute to another! However, I\'ve got.',1,0,509,1,NULL,'2024-02-24 01:49:39','2024-02-24 01:49:39',1,1,NULL,NULL,NULL),(91,'Lorenza','Rolfson','Alice looked very.',NULL,'wehner.alejandra@gmail.com','$2y$12$nVTKINRppZ6LuQZC7bw2l.MN08J5SLeY1xinSAqNIwNSqQAHtxj2O',184,'1996-06-29','+17576023875','2024-02-24 08:49:40',NULL,'employer',NULL,NULL,'39198 Obie Isle\nAlbertberg, AK 47540','Next came the royal children; there were ten of them, and it\'ll sit up and saying, \'Thank you, it\'s a very poor speaker,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, feeling.',1,0,4551,1,NULL,'2024-02-24 01:49:40','2024-02-24 01:49:40',0,1,NULL,NULL,NULL),(92,'Quentin','Labadie','Dormouse. \'Don\'t.',NULL,'mortimer.orn@konopelski.org','$2y$12$0Tiu0rhKzntCpW4ud/wdCODUPsV9KtOPoEoKe0s/g/3H6TJpwvIGy',185,'1978-10-02','+18454596593','2024-02-24 08:49:40',NULL,'job-seeker',NULL,'resume/01.pdf','2820 Schoen Shoal Suite 252\nLake Winifredtown, IL 29821','The first thing I\'ve got to the door. \'Call the next witness!\' said the March Hare. \'It was much pleasanter at home,\' thought poor Alice, \'to speak to this mouse? Everything is so out-of-the-way.',1,0,1009,1,NULL,'2024-02-24 01:49:40','2024-02-24 01:49:40',1,1,NULL,NULL,NULL),(93,'Demarcus','Yost','Alice. \'Of course.',NULL,'bahringer.chelsey@armstrong.com','$2y$12$Xqq3iWNm7EaxC33jT8Aoj.jo4KRSGuD5YSc1sz9169IKn7QI2ur2.',185,'1998-12-13','+16369400934','2024-02-24 08:49:40',NULL,'employer',NULL,NULL,'35281 Schmidt Dam\nNew Demetris, NJ 41642','Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on for some minutes. The Caterpillar and Alice thought this must ever.',1,0,4545,0,NULL,'2024-02-24 01:49:40','2024-02-24 01:49:40',0,1,NULL,NULL,NULL),(94,'Ahmed','Nikolaus','Dormouse crossed.',NULL,'tremaine.connelly@boehm.com','$2y$12$Akb4OHv.uXNYb3nVmXGGH.HYpNiZ3.UaV4yuoCx2HfPkOMg51nS2q',185,'1996-02-13','+18785353780','2024-02-24 08:49:40',NULL,'employer',NULL,NULL,'76410 Reichert Tunnel\nNew Nyasia, TN 49602-9394','Alice; not that she was near enough to try the first position in dancing.\' Alice said; but was dreadfully puzzled by the soldiers, who of course you know why it\'s called a whiting?\' \'I never thought.',1,0,3918,1,NULL,'2024-02-24 01:49:40','2024-02-24 01:49:40',0,1,NULL,NULL,NULL),(95,'Karli','Ritchie','It was so large a.',NULL,'baumbach.alejandrin@yahoo.com','$2y$12$F6td1xsFxB8lvICUG5OHeeVk2griG.T/b0W8wF6N0ArymxLJO6KS2',184,'2001-07-23','+15734660249','2024-02-24 08:49:41',NULL,'employer',NULL,NULL,'62679 Stiedemann Green Apt. 936\nPort Maritzatown, OK 04765-1027','CHAPTER IV. The Rabbit Sends in a tone of this ointment--one shilling the box-- Allow me to sell you a couple?\' \'You are old,\' said the Mock Turtle sighed deeply, and drew the back of one flapper.',1,0,633,0,NULL,'2024-02-24 01:49:41','2024-02-24 01:49:41',1,1,NULL,NULL,NULL),(96,'Pete','Boyer','Alice said to the.',NULL,'balistreri.emil@gmail.com','$2y$12$RfgJA4dW/AxDSYp2ajws..fep2DSC0R4Tdx0JtJhNXaWfHawUuGVG',184,'1998-11-26','+13122315598','2024-02-24 08:49:41',NULL,'job-seeker',NULL,'resume/01.pdf','258 Angela Trace\nPort Hadley, AK 14797','I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, \'how am I to do?\' said Alice. \'Anything you like,\' said the Hatter. Alice felt a very short time the.',1,0,4727,0,NULL,'2024-02-24 01:49:41','2024-02-24 01:49:41',0,1,NULL,NULL,NULL),(97,'Muriel','Wisozk','White Rabbit blew.',NULL,'hhayes@yahoo.com','$2y$12$6bQe/DHiKTGIkw/7JgvEKOeK7LFc5xaGtKuoyoWrq8TOUIX8A.6Sq',186,'2023-01-05','+13512063161','2024-02-24 08:49:41',NULL,'job-seeker',NULL,'resume/01.pdf','9875 Weissnat Mountain\nNew Jordichester, VT 68101','The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, and fetch me a good thing!\' she said to herself. Imagine her surprise, when the White Rabbit: it was just in time.',1,0,2410,0,NULL,'2024-02-24 01:49:41','2024-02-24 01:49:41',1,1,NULL,NULL,NULL),(98,'Kylee','Marks','Trims his belt and.',NULL,'hollie.labadie@metz.net','$2y$12$tY0uDMpWXqQjCm.6nKyqDe.kk3e/mn.WRXd91K6PIQbPbeyu8ixr6',186,'1985-07-07','+15306584068','2024-02-24 08:49:41',NULL,'job-seeker',NULL,'resume/01.pdf','6372 Weimann Rue Apt. 510\nGastontown, WV 26985','Dormouse, not choosing to notice this last remark that had a head could be no use in saying anything more till the eyes appeared, and then I\'ll tell you what year it is?\' \'Of course it was,\' the.',1,0,4340,0,NULL,'2024-02-24 01:49:41','2024-02-24 01:49:41',0,1,NULL,NULL,NULL),(99,'Paolo','Mohr','Cheshire Cat, she.',NULL,'michael.conroy@gmail.com','$2y$12$VKO0bIVfghgnBNYyfXwvg.2DKvCQLwnnFjYfqrnwyKEx6aVTz9QC2',185,'1970-06-15','+15028083523','2024-02-24 08:49:42',NULL,'employer',NULL,NULL,'44802 Christy Island\nLake Eldridge, MS 62774-0465','WHAT? The other side will make you grow shorter.\' \'One side of the room again, no wonder she felt very glad to get through was more and more faintly came, carried on the floor: in another moment.',1,0,4260,1,NULL,'2024-02-24 01:49:42','2024-02-24 01:49:42',0,1,NULL,NULL,NULL),(100,'Theron','Schiller','I\'ll eat it,\' said.',NULL,'berneice65@gmail.com','$2y$12$kiE7iWoRa0AS6j7R8pTl3OLxrTv/bUe1JiJlGBr6xpAa6qpoMKeTa',186,'2019-10-15','+14098559668','2024-02-24 08:49:42',NULL,'job-seeker',NULL,'resume/01.pdf','76893 Carolyn Forks\nOceanefort, IN 70502','Alice began to cry again, for she could not tell whether they were lying round the neck of the deepest contempt. \'I\'ve seen hatters before,\' she said this, she noticed a curious plan!\' exclaimed.',1,0,2588,1,NULL,'2024-02-24 01:49:42','2024-02-24 01:49:42',1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jb_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_analytics`
--

DROP TABLE IF EXISTS `jb_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_analytics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned NOT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_full` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_analytics`
--

LOCK TABLES `jb_analytics` WRITE;
/*!40000 ALTER TABLE `jb_analytics` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_applications`
--

DROP TABLE IF EXISTS `jb_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `job_id` bigint unsigned NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `is_external_apply` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_applications`
--

LOCK TABLES `jb_applications` WRITE;
/*!40000 ALTER TABLE `jb_applications` DISABLE KEYS */;
INSERT INTO `jb_applications` VALUES (1,'Fabian','O\'Keefe','+19312407645','lavern.toy@yahoo.com','Then the Queen was close behind her, listening: so she began again: \'Ou est ma chatte?\' which was the first day,\' said the Caterpillar. \'Well, I should think!\' (Dinah was the Rabbit was still in.',33,'resume/01.pdf','resume/01.pdf',56,1,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(2,'Adelia','Orn','+18143973889','clay.rohan@yahoo.com','Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied very solemnly. Alice was very hot, she kept tossing the baby violently up and ran the faster, while more and more sounds of broken glass.',45,'resume/01.pdf','resume/01.pdf',65,0,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(3,'Ken','Collier','+12812778152','kareem.kuhn@hotmail.com','How are you getting on?\' said the Duchess, \'and that\'s a fact.\' Alice did not come the same words as before, \'and things are worse than ever,\' thought the poor little feet, I wonder if I shall have.',34,'resume/01.pdf','resume/01.pdf',70,0,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(4,'Pete','Boyer','+13122315598','balistreri.emil@gmail.com','I to do?\' said Alice. \'I\'ve tried every way, and nothing seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not used to it in a very.',23,'resume/01.pdf','resume/01.pdf',96,1,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(5,'Cristopher','Weimann','+17267647906','rhowell@hotmail.com','Queen to-day?\' \'I should like to be trampled under its feet, ran round the thistle again; then the Mock Turtle went on saying to herself how she would keep, through all her coaxing. Hardly knowing.',29,'resume/01.pdf','resume/01.pdf',27,0,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(6,'Albina','Christiansen','+18033321697','shane.purdy@hotmail.com','So Alice got up this morning, but I THINK I can say.\' This was such a dreadful time.\' So Alice began to cry again, for really I\'m quite tired and out of the birds hurried off to other parts of the.',37,'resume/01.pdf','resume/01.pdf',43,0,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(7,'Vergie','Durgan','+18604134107','aondricka@cummings.info','YOURS: I don\'t put my arm round your waist,\' the Duchess and the Dormouse indignantly. However, he consented to go after that into a large cat which was immediately suppressed by the end of the.',2,'resume/01.pdf','resume/01.pdf',35,0,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(8,'Gregg','Kovacek','+12839923219','tod.pollich@connelly.com','And she tried to curtsey as she went back for a moment to be done, I wonder?\' As she said to the three gardeners instantly jumped up, and began whistling. \'Oh, there\'s no use now,\' thought poor.',14,'resume/01.pdf','resume/01.pdf',36,1,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(9,'Maybelle','Kerluke','+12833943020','bayer.jazmyne@yahoo.com','This of course, Alice could not help bursting out laughing: and when she got to grow here,\' said the March Hare. \'Sixteenth,\' added the Gryphon, \'that they WOULD not remember ever having seen such a.',25,'resume/01.pdf','resume/01.pdf',6,1,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(10,'Cortez','Hoppe','+15512856960','gustave.kerluke@shields.org','Sir, With no jury or judge, would be a lesson to you never had to run back into the open air. \'IF I don\'t put my arm round your waist,\' the Duchess began in a large pool all round the hall, but they.',11,'resume/01.pdf','resume/01.pdf',15,0,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(11,'Julianne','Hamill','+18124815454','ora34@hyatt.com','Alice, whose thoughts were still running on the other end of the officers of the Lobster; I heard him declare, \"You have baked me too brown, I must be kind to them,\' thought Alice, and she very.',40,'resume/01.pdf','resume/01.pdf',85,0,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(12,'Gladyce','Bednar','+15208278273','theo20@leffler.com','Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took her choice, and was going to happen next. First, she dreamed of.',18,'resume/01.pdf','resume/01.pdf',18,1,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(13,'Quentin','Labadie','+18454596593','mortimer.orn@konopelski.org','Lory, with a trumpet in one hand, and a bright idea came into Alice\'s shoulder as he found it advisable--\"\' \'Found WHAT?\' said the Pigeon. \'I\'m NOT a serpent, I tell you, you coward!\' and at last.',43,'resume/01.pdf','resume/01.pdf',92,1,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(14,'Erica','Jones','+16607479460','bsporer@heidenreich.com','Father William replied to his ear. Alice considered a little recovered from the sky! Ugh, Serpent!\' \'But I\'m not the same, the next witness!\' said the King. \'Nothing whatever,\' said Alice. \'I\'ve.',17,'resume/01.pdf','resume/01.pdf',75,0,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(15,'Muriel','Wisozk','+13512063161','hhayes@yahoo.com','Alice, timidly; \'some of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'let\'s all move one place on.\' He moved on as he came, \'Oh! the Duchess, as she listened, or seemed to.',35,'resume/01.pdf','resume/01.pdf',97,0,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(16,'Ena','Hayes','+19045857541','ivy.dicki@yahoo.com','Hatter. \'It isn\'t mine,\' said the March Hare. \'Then it wasn\'t very civil of you to leave off being arches to do next, when suddenly a White Rabbit interrupted: \'UNimportant, your Majesty means, of.',19,'resume/01.pdf','resume/01.pdf',51,1,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(17,'Myah','Turcotte','+19035633870','serena.kilback@gmail.com','Caterpillar. \'Is that the mouse to the Gryphon. Alice did not wish to offend the Dormouse began in a low voice. \'Not at all,\' said the Queen. \'Never!\' said the Duchess: \'and the moral of THAT.',39,'resume/01.pdf','resume/01.pdf',81,1,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(18,'Else','Stehr','+15344278162','eddie86@gleichner.com','Alice thought to herself how this same little sister of hers would, in the newspapers, at the stick, running a very difficult question. However, at last in the distance, and she heard a little door.',49,'resume/01.pdf','resume/01.pdf',46,0,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(19,'Zora','Koepp','+18058390282','kstrosin@hotmail.com','The judge, by the time they had any dispute with the time,\' she said, as politely as she went hunting about, and make one quite giddy.\' \'All right,\' said the Caterpillar. Here was another puzzling.',7,'resume/01.pdf','resume/01.pdf',33,1,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43'),(20,'Norval','Quigley','+18389375965','fay.gislason@walter.net','Dormouse, and repeated her question. \'Why did they live at the stick, and made believe to worry it; then Alice, thinking it was out of his pocket, and was going to begin with.\' \'A barrowful will do.',31,'resume/01.pdf','resume/01.pdf',54,1,'checked','2024-02-24 01:49:43','2024-02-24 01:49:43');
/*!40000 ALTER TABLE `jb_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_career_levels`
--

DROP TABLE IF EXISTS `jb_career_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_career_levels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_career_levels`
--

LOCK TABLES `jb_career_levels` WRITE;
/*!40000 ALTER TABLE `jb_career_levels` DISABLE KEYS */;
INSERT INTO `jb_career_levels` VALUES (1,'Department Head',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(2,'Entry Level',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(3,'Experienced Professional',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(4,'GM / CEO / Country Head / President',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(5,'Intern/Student',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09');
/*!40000 ALTER TABLE `jb_career_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_career_levels_translations`
--

DROP TABLE IF EXISTS `jb_career_levels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_career_levels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_career_levels_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_career_levels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_career_levels_translations`
--

LOCK TABLES `jb_career_levels_translations` WRITE;
/*!40000 ALTER TABLE `jb_career_levels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_career_levels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_categories`
--

DROP TABLE IF EXISTS `jb_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_categories`
--

LOCK TABLES `jb_categories` WRITE;
/*!40000 ALTER TABLE `jb_categories` DISABLE KEYS */;
INSERT INTO `jb_categories` VALUES (1,'Content Writer',NULL,0,0,1,'published','2024-02-24 01:49:10','2024-02-24 01:49:10',0),(2,'Market Research',NULL,1,0,1,'published','2024-02-24 01:49:10','2024-02-24 01:49:10',0),(3,'Marketing &amp; Sale',NULL,2,0,1,'published','2024-02-24 01:49:10','2024-02-24 01:49:10',0),(4,'Customer Help',NULL,3,0,1,'published','2024-02-24 01:49:10','2024-02-24 01:49:10',0),(5,'Finance',NULL,4,0,1,'published','2024-02-24 01:49:10','2024-02-24 01:49:10',0),(6,'Software',NULL,5,0,1,'published','2024-02-24 01:49:10','2024-02-24 01:49:10',0),(7,'Human Resource',NULL,6,0,1,'published','2024-02-24 01:49:10','2024-02-24 01:49:10',0),(8,'Management',NULL,7,0,1,'published','2024-02-24 01:49:10','2024-02-24 01:49:10',0),(9,'Retail &amp; Products',NULL,8,0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10',0),(10,'Security Analyst',NULL,9,0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10',0);
/*!40000 ALTER TABLE `jb_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_categories_translations`
--

DROP TABLE IF EXISTS `jb_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_categories_translations`
--

LOCK TABLES `jb_categories_translations` WRITE;
/*!40000 ALTER TABLE `jb_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_companies`
--

DROP TABLE IF EXISTS `jb_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `postal_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_founded` int unsigned DEFAULT NULL,
  `ceo` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_offices` int unsigned DEFAULT NULL,
  `number_of_employees` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_revenue` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `views` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_companies`
--

LOCK TABLES `jb_companies` WRITE;
/*!40000 ALTER TABLE `jb_companies` DISABLE KEYS */;
INSERT INTO `jb_companies` VALUES (1,'LinkedIn',NULL,'Aut debitis consequatur quod minima dolores aut beatae. Non illum nobis omnis ipsam itaque maxime nihil. Quis iusto aut sint consequatur sapiente minima in.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.linkedin.com/','companies/1.png','42.548306','-75.160315','264 Shaina Crest Suite 487\nSouth Alessiashire, WV 87700-6541',2,2,2,NULL,'+16783354165',1974,'John Doe',6,'9','4M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(2,'Adobe Illustrator',NULL,'Totam eaque eum et fugiat asperiores deleniti. Cumque et quibusdam sint eos reprehenderit. Atque praesentium amet voluptas rerum. Maxime neque eius vitae enim.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.adobe.com/','companies/2.png','43.715578','-75.903362','83403 Ross Shores Suite 805\nHaneview, MO 99431-7837',5,5,5,NULL,'+17185830008',1979,'Jeff Werner',1,'9','9M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(3,'Bing Search',NULL,'Sed eum molestias numquam iste temporibus molestias. Qui maiores illo laboriosam facere. Et beatae nihil laudantium sit incidunt. Ut eius quibusdam vero aut perferendis ut sed.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.bing.com/','companies/3.png','43.86402','-76.734193','4618 Zulauf Plain Suite 356\nNew Jude, AL 94987',1,1,1,NULL,'+19408790451',1990,'Nakamura',1,'10','9M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(4,'Dailymotion',NULL,'Labore soluta et ea iusto eum nesciunt harum. Quo eligendi praesentium aut nam et. Consectetur recusandae officiis illo et quia doloribus in.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.dailymotion.com/','companies/4.png','43.325311','-75.651428','17452 Willis Creek Apt. 621\nAureliemouth, ME 64915-6779',5,5,5,NULL,'+16203094756',1977,'John Doe',6,'10','2M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(5,'Linkedin',NULL,'Molestias vero qui vitae omnis. Inventore et expedita ut aliquid. Cum ut cumque qui. Quod et est quia qui.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.linkedin.com/','companies/5.png','42.769843','-75.974895','463 Kutch Plains Suite 595\nWest Emma, DC 74823-5960',5,5,5,NULL,'+17276746816',1986,'John Doe',8,'3','6M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(6,'Quora JSC',NULL,'Dignissimos labore et exercitationem ipsum. Consectetur quia natus dolore fuga aspernatur corrupti.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.quora.com/','companies/6.png','43.845178','-75.369992','102 Hoeger Vista Suite 352\nNew Melissaville, TX 00728-5959',2,2,2,NULL,'+16787517941',2021,'John Doe',5,'1','4M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(7,'Nintendo',NULL,'Et nesciunt fugit consequatur non sed. Et numquam quos quia earum dolor est porro. Earum nam et voluptatem aut officiis perferendis ea maxime.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.nintendo.com/','companies/7.png','43.009877','-75.918234','4863 Neil Lights Suite 142\nStiedemannchester, AZ 40128-8743',1,1,1,NULL,'+17324599041',2018,'Steve Jobs',9,'6','9M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(8,'Periscope',NULL,'Nulla exercitationem temporibus quia et dolor omnis qui nihil. Corporis officiis corrupti odit fugiat sit enim et repellat. Totam sunt aut consequatur possimus non nisi qui.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.pscp.tv/','companies/8.png','43.602311','-75.403912','491 Priscilla Meadows\nAmyview, IL 48600',5,5,5,NULL,'+12513330029',1989,'John Doe',8,'1','3M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(9,'NewSum',NULL,'Optio aliquam eligendi et fuga error omnis. Sed vel possimus asperiores doloribus alias ut facere est. Et aliquid cupiditate nemo enim.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://newsum.us/','companies/4.png','42.890609','-76.702363','1057 Collier Key\nNew Jaylanland, NY 81394',5,5,5,NULL,'+13805431287',2019,'John Doe',1,'4','5M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(10,'PowerHome',NULL,'Ut et dolorum impedit ducimus sed ex. Occaecati dolores enim deserunt quisquam deleniti quas. Eaque provident atque ut nesciunt. Dignissimos eveniet deserunt ut voluptatum quae.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.pscp.tv/','companies/5.png','42.577896','-76.174114','92571 Randal Fork\nMarisastad, AK 21440-7541',1,1,1,NULL,'+12723982309',2023,'John Doe',7,'1','4M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(11,'Whop.com',NULL,'Occaecati omnis minima ea maxime unde et et. Facilis expedita officiis cumque voluptates harum ducimus omnis. Vitae et veritatis est ab rerum consequatur. Iure consectetur sunt sed esse nostrum.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://whop.com/','companies/6.png','43.78432','-74.992238','179 Zboncak Fields Suite 630\nBerenicechester, GA 05514',3,3,3,NULL,'+16238621416',2006,'John Doe',5,'8','3M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(12,'Greenwood',NULL,'Commodi cum in fugit odio fugit temporibus rerum. Quis cum totam enim consequatur quia. Esse voluptatibus dolores reprehenderit.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.greenwoodjs.io/','companies/7.png','43.310047','-75.815838','210 Joshua Street\nAndreberg, CA 90590',5,5,5,NULL,'+19784675118',1983,'John Doe',10,'6','7M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(13,'Kentucky',NULL,'Vitae consequatur odit deserunt nam quasi. Omnis a voluptatem facilis. Distinctio molestiae eligendi doloremque quae at voluptatum.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.kentucky.gov/','companies/8.png','43.533456','-74.889379','405 Quigley Brooks\nKuhicburgh, MO 59497',5,5,5,NULL,'+14707783750',1981,'John Doe',6,'3','10M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(14,'Equity',NULL,'Quasi quasi rerum sunt velit culpa. Fuga voluptas aut sit eaque odit. Dolores iste veniam et aut.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.equity.org.uk/','companies/6.png','43.714799','-75.084147','81234 Hills Curve Apt. 520\nRoobtown, CO 70558',2,2,2,NULL,'+16786426511',2013,'John Doe',1,'8','6M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(15,'Honda',NULL,'Odit voluptatem minus velit et sed repellat. Est reiciendis perferendis dolorem. Reprehenderit quas cumque dolor nesciunt velit.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.honda.com/','companies/9.png','43.368086','-74.817819','13604 Kertzmann Street Suite 800\nNorth Maximusport, NV 91436-3025',3,3,3,NULL,'+12182553315',2020,'John Doe',1,'2','9M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(16,'Toyota',NULL,'Animi et ea voluptatem non. Dolorum voluptatibus magni ab reiciendis voluptatem. Consequatur eum excepturi excepturi et. Ex ea quia possimus quibusdam officia fugiat accusamus.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.toyota.com/','companies/5.png','43.940655','-76.180902','80845 Davonte Locks Apt. 094\nWest Donnyfort, IL 35919-6384',1,1,1,NULL,'+13056891148',2010,'John Doe',1,'10','7M',NULL,NULL,NULL,NULL,NULL,0,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(17,'Lexus',NULL,'Distinctio in sit nesciunt exercitationem. Aut quo est veritatis deleniti eveniet minus enim. Mollitia quisquam aperiam sequi et qui cupiditate odit.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.pscp.tv/','companies/3.png','43.669935','-75.705474','225 Bode Path Suite 883\nBergstrommouth, IA 45138-0174',4,4,4,NULL,'+12034059267',2006,'John Doe',8,'4','2M',NULL,NULL,NULL,NULL,NULL,0,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(18,'Ondo',NULL,'Et sed vitae sed eligendi aut. Et in veritatis molestias tempora autem sequi dolores. Eos laborum dolorem provident distinctio temporibus nemo harum.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://ondo.mn/','companies/6.png','43.305993','-75.665116','6460 Predovic Tunnel Suite 334\nSanfordstad, OK 94086-4642',2,2,2,NULL,'+12764680466',1971,'John Doe',2,'5','3M',NULL,NULL,NULL,NULL,NULL,0,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(19,'Square',NULL,'Et voluptate est libero vel maxime aut. Non repudiandae magni maxime maxime. Hic magni quis maxime repellendus. Doloribus velit nesciunt perspiciatis. Eum nemo non nihil temporibus.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://squareup.com/','companies/2.png','43.268829','-76.259238','3090 Dare Garden Apt. 311\nJaquanside, AR 97702-5867',3,3,3,NULL,'+13467678587',2004,'John Doe',4,'9','10M',NULL,NULL,NULL,NULL,NULL,0,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(20,'Visa',NULL,'Nostrum reprehenderit vero architecto et voluptate debitis velit ea. Nisi labore quasi sint. Nihil voluptate illum corrupti voluptatum. Ab soluta cupiditate officiis eum qui eum quidem.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://visa.com/','companies/8.png','43.469177','-75.30774','5320 Haag Spring Apt. 166\nEast Elsie, NM 58296-0301',3,3,3,NULL,'+18303567330',2012,'John Doe',2,'4','1M',NULL,NULL,NULL,NULL,NULL,0,'published',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL);
/*!40000 ALTER TABLE `jb_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_companies_accounts`
--

DROP TABLE IF EXISTS `jb_companies_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_companies_accounts` (
  `company_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_companies_accounts`
--

LOCK TABLES `jb_companies_accounts` WRITE;
/*!40000 ALTER TABLE `jb_companies_accounts` DISABLE KEYS */;
INSERT INTO `jb_companies_accounts` VALUES (1,1),(1,4),(2,1),(2,4),(3,1),(3,4),(4,1),(4,4),(5,1),(5,4),(6,1),(6,4),(7,1),(7,4),(8,1),(8,4),(9,1),(9,4),(10,1),(10,4),(11,1),(11,4),(12,1),(12,4),(13,1),(13,4),(14,1),(14,4),(15,1),(15,4),(16,1),(16,4),(17,1),(17,4),(18,1),(18,4),(19,1),(19,4),(20,1),(20,4);
/*!40000 ALTER TABLE `jb_companies_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_coupons`
--

DROP TABLE IF EXISTS `jb_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_coupons`
--

LOCK TABLES `jb_coupons` WRITE;
/*!40000 ALTER TABLE `jb_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_currencies`
--

DROP TABLE IF EXISTS `jb_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_currencies`
--

LOCK TABLES `jb_currencies` WRITE;
/*!40000 ALTER TABLE `jb_currencies` DISABLE KEYS */;
INSERT INTO `jb_currencies` VALUES (1,'USD','$',1,0,0,1,1,'2024-02-24 01:49:13','2024-02-24 01:49:13'),(2,'EUR','€',0,2,1,0,0.91,'2024-02-24 01:49:13','2024-02-24 01:49:13'),(3,'VND','₫',0,0,2,0,23717.5,'2024-02-24 01:49:13','2024-02-24 01:49:13');
/*!40000 ALTER TABLE `jb_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_field_options`
--

DROP TABLE IF EXISTS `jb_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_field_options`
--

LOCK TABLES `jb_custom_field_options` WRITE;
/*!40000 ALTER TABLE `jb_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_field_options_translations`
--

DROP TABLE IF EXISTS `jb_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_field_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_custom_field_options_id` bigint unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_field_options_translations`
--

LOCK TABLES `jb_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `jb_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_field_values`
--

DROP TABLE IF EXISTS `jb_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `custom_field_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_field_values`
--

LOCK TABLES `jb_custom_field_values` WRITE;
/*!40000 ALTER TABLE `jb_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_field_values_translations`
--

DROP TABLE IF EXISTS `jb_custom_field_values_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_field_values_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_custom_field_values_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_custom_field_values_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_field_values_translations`
--

LOCK TABLES `jb_custom_field_values_translations` WRITE;
/*!40000 ALTER TABLE `jb_custom_field_values_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_field_values_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_fields`
--

DROP TABLE IF EXISTS `jb_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `authorable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorable_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jb_custom_fields_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_fields`
--

LOCK TABLES `jb_custom_fields` WRITE;
/*!40000 ALTER TABLE `jb_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_fields_translations`
--

DROP TABLE IF EXISTS `jb_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_fields_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_custom_fields_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_fields_translations`
--

LOCK TABLES `jb_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `jb_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_degree_levels`
--

DROP TABLE IF EXISTS `jb_degree_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_degree_levels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_degree_levels`
--

LOCK TABLES `jb_degree_levels` WRITE;
/*!40000 ALTER TABLE `jb_degree_levels` DISABLE KEYS */;
INSERT INTO `jb_degree_levels` VALUES (1,'Non-Matriculation',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(2,'Matriculation/O-Level',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(3,'Intermediate/A-Level',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(4,'Bachelors',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(5,'Masters',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(6,'MPhil/MS',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(7,'PHD/Doctorate',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(8,'Certification',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(9,'Diploma',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(10,'Short Course',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09');
/*!40000 ALTER TABLE `jb_degree_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_degree_levels_translations`
--

DROP TABLE IF EXISTS `jb_degree_levels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_degree_levels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_degree_levels_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_degree_levels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_degree_levels_translations`
--

LOCK TABLES `jb_degree_levels_translations` WRITE;
/*!40000 ALTER TABLE `jb_degree_levels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_degree_levels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_degree_types`
--

DROP TABLE IF EXISTS `jb_degree_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_degree_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree_level_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_degree_types`
--

LOCK TABLES `jb_degree_types` WRITE;
/*!40000 ALTER TABLE `jb_degree_types` DISABLE KEYS */;
INSERT INTO `jb_degree_types` VALUES (1,'Matric in Arts',2,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(2,'Matric in Science',2,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(3,'O-Levels',2,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(4,'A-Levels',3,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(5,'Faculty of Arts',3,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(6,'Faculty of Science (Pre-medical)',3,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(7,'Faculty of Science (Pre-Engineering)',3,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(8,'Intermediate in Computer Science',3,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(9,'Intermediate in Commerce',3,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(10,'Intermediate in General Science',3,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(11,'Bachelors in Arts',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(12,'Bachelors in Architecture',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(13,'Bachelors in Business Administration',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(14,'Bachelors in Commerce',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(15,'Bachelors of Dental Surgery',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(16,'Bachelors of Education',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(17,'Bachelors in Engineering',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(18,'Bachelors in Pharmacy',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(19,'Bachelors in Science',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(20,'Bachelors of Science in Nursing (Registered Nursing)',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(21,'Bachelors in Law',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(22,'Bachelors in Technology',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(23,'BCS/BS',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(24,'Doctor of Veterinary Medicine',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(25,'MBBS',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(26,'Post Registered Nursing B.S.',4,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(27,'Masters in Arts',5,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(28,'Masters in Business Administration',5,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(29,'Masters in Commerce',5,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(30,'Masters of Education',5,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(31,'Masters in Law',5,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(32,'Masters in Science',5,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(33,'Executive Masters in Business Administration',5,0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09');
/*!40000 ALTER TABLE `jb_degree_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_degree_types_translations`
--

DROP TABLE IF EXISTS `jb_degree_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_degree_types_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_degree_types_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_degree_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_degree_types_translations`
--

LOCK TABLES `jb_degree_types_translations` WRITE;
/*!40000 ALTER TABLE `jb_degree_types_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_degree_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_functional_areas`
--

DROP TABLE IF EXISTS `jb_functional_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_functional_areas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_functional_areas`
--

LOCK TABLES `jb_functional_areas` WRITE;
/*!40000 ALTER TABLE `jb_functional_areas` DISABLE KEYS */;
INSERT INTO `jb_functional_areas` VALUES (1,'Accountant',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(2,'Accounts, Finance &amp; Financial Services',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(3,'Admin',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(4,'Admin Operation',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(5,'Administration',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(6,'Administration Clerical',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(7,'Advertising',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(8,'Advertising',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(9,'Advertisement',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(10,'Architects &amp; Construction',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(11,'Architecture',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(12,'Bank Operation',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(13,'Business Development',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(14,'Business Management',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(15,'Business Systems Analyst',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(16,'Clerical',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(17,'Client Services &amp; Customer Support',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(18,'Computer Hardware',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(19,'Computer Networking',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(20,'Consultant',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(21,'Content Writer',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(22,'Corporate Affairs',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(23,'Creative Design',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(24,'Creative Writer',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(25,'Customer Support',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(26,'Data Entry',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(27,'Data Entry Operator',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(28,'Database Administration (DBA)',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(29,'Development',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(30,'Distribution &amp; Logistics',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(31,'Education &amp; Training',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(32,'Electronics Technician',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(33,'Engineering',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(34,'Engineering Construction',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(35,'Executive Management',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(36,'Executive Secretary',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(37,'Field Operations',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(38,'Front Desk Clerk',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(39,'Front Desk Officer',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(40,'Graphic Design',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(41,'Hardware',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(42,'Health &amp; Medicine',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(43,'Health &amp; Safety',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(44,'Health Care',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(45,'Health Related',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(46,'Hotel Management',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(47,'Hotel/Restaurant Management',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(48,'HR',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(49,'Human Resources',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(50,'Import &amp; Export',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(51,'Industrial Production',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(52,'Installation &amp; Repair',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(53,'Interior Designers &amp; Architects',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(54,'Intern',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(55,'Internship',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(56,'Investment Operations',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(57,'IT Security',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(58,'IT Systems Analyst',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(59,'Legal &amp; Corporate Affairs',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(60,'Legal Affairs',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(61,'Legal Research',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(62,'Logistics &amp; Warehousing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(63,'Maintenance/Repair',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(64,'Management Consulting',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(65,'Management Information System (MIS)',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(66,'Managerial',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(67,'Manufacturing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(68,'Manufacturing &amp; Operations',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(69,'Marketing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(70,'Marketing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(71,'Media - Print &amp; Electronic',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(72,'Media &amp; Advertising',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(73,'Medical',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(74,'Medicine',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(75,'Merchandising',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(76,'Merchandising &amp; Product Management',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(77,'Monitoring &amp; Evaluation (M&amp;E)',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(78,'Network Administration',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(79,'Network Operation',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(80,'Online Advertising',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(81,'Online Marketing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(82,'Operations',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(83,'Planning',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(84,'Planning &amp; Development',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(85,'PR',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(86,'Print Media',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(87,'Printing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(88,'Procurement',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(89,'Product Developer',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(90,'Product Development',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(91,'Product Development',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(92,'Product Management',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(93,'Production',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(94,'Production &amp; Quality Control',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(95,'Project Management',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(96,'Project Management Consultant',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(97,'Public Relations',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(98,'QA',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(99,'QC',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(100,'Qualitative Research',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(101,'Quality Assurance (QA)',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(102,'Quality Control',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(103,'Quality Inspection',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(104,'Recruiting',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(105,'Recruitment',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(106,'Repair &amp; Overhaul',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(107,'Research &amp; Development (R&amp;D)',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(108,'Research &amp; Evaluation',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(109,'Research &amp; Fellowships',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(110,'Researcher',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(111,'Restaurant Management',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(112,'Retail',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(113,'Retail &amp; Wholesale',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(114,'Retail Buyer',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(115,'Retail Buying',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(116,'Retail Merchandising',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(117,'Safety &amp; Environment',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(118,'Sales',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(119,'Sales &amp; Business Development',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(120,'Sales Support',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(121,'Search Engine Optimization (SEO)',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(122,'Secretarial, Clerical &amp; Front Office',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(123,'Security',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(124,'Security &amp; Environment',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(125,'Security Guard',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(126,'SEM',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(127,'SMO',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(128,'Software &amp; Web Development',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(129,'Software Engineer',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(130,'Software Testing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(131,'Stores &amp; Warehousing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(132,'Supply Chain',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(133,'Supply Chain Management',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(134,'Systems Analyst',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(135,'Teachers/Education, Training &amp; Development',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(136,'Technical Writer',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(137,'Tele Sale Representative',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(138,'Telemarketing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(139,'Training &amp; Development',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(140,'Transportation &amp; Warehousing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(141,'TSR',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(142,'Typing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(143,'Warehousing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(144,'Web Developer',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(145,'Web Marketing',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(146,'Writer',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(147,'PR',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(148,'QA',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(149,'QC',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(150,'SEM',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(151,'SMO',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(152,'TSR',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(153,'HR',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(154,'QA',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(155,'QC',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(156,'SEM',0,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09');
/*!40000 ALTER TABLE `jb_functional_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_functional_areas_translations`
--

DROP TABLE IF EXISTS `jb_functional_areas_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_functional_areas_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_functional_areas_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_functional_areas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_functional_areas_translations`
--

LOCK TABLES `jb_functional_areas_translations` WRITE;
/*!40000 ALTER TABLE `jb_functional_areas_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_functional_areas_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_invoice_items`
--

DROP TABLE IF EXISTS `jb_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jb_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_invoice_items`
--

LOCK TABLES `jb_invoice_items` WRITE;
/*!40000 ALTER TABLE `jb_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_invoices`
--

DROP TABLE IF EXISTS `jb_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_invoices`
--

LOCK TABLES `jb_invoices` WRITE;
/*!40000 ALTER TABLE `jb_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_experiences`
--

DROP TABLE IF EXISTS `jb_job_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_experiences`
--

LOCK TABLES `jb_job_experiences` WRITE;
/*!40000 ALTER TABLE `jb_job_experiences` DISABLE KEYS */;
INSERT INTO `jb_job_experiences` VALUES (1,'Fresh',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(2,'Less Than 1 Year',1,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(3,'1 Year',2,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(4,'2 Year',3,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(5,'3 Year',4,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(6,'4 Year',5,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(7,'5 Year',6,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(8,'6 Year',7,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(9,'7 Year',8,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(10,'8 Year',9,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(11,'9 Year',10,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(12,'10 Year',11,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10');
/*!40000 ALTER TABLE `jb_job_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_experiences_translations`
--

DROP TABLE IF EXISTS `jb_job_experiences_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_experiences_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_job_experiences_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_job_experiences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_experiences_translations`
--

LOCK TABLES `jb_job_experiences_translations` WRITE;
/*!40000 ALTER TABLE `jb_job_experiences_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_job_experiences_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_shifts`
--

DROP TABLE IF EXISTS `jb_job_shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_shifts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_shifts`
--

LOCK TABLES `jb_job_shifts` WRITE;
/*!40000 ALTER TABLE `jb_job_shifts` DISABLE KEYS */;
INSERT INTO `jb_job_shifts` VALUES (1,'First Shift (Day)',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(2,'Second Shift (Afternoon)',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(3,'Third Shift (Night)',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(4,'Rotating',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10');
/*!40000 ALTER TABLE `jb_job_shifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_shifts_translations`
--

DROP TABLE IF EXISTS `jb_job_shifts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_shifts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_job_shifts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_job_shifts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_shifts_translations`
--

LOCK TABLES `jb_job_shifts_translations` WRITE;
/*!40000 ALTER TABLE `jb_job_shifts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_job_shifts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_skills`
--

DROP TABLE IF EXISTS `jb_job_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_skills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_skills`
--

LOCK TABLES `jb_job_skills` WRITE;
/*!40000 ALTER TABLE `jb_job_skills` DISABLE KEYS */;
INSERT INTO `jb_job_skills` VALUES (1,'JavaScript',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(2,'PHP',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(3,'Python',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(4,'Laravel',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(5,'CakePHP',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(6,'WordPress',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(7,'Flutter',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(8,'FilamentPHP',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(9,'React.js',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10');
/*!40000 ALTER TABLE `jb_job_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_skills_translations`
--

DROP TABLE IF EXISTS `jb_job_skills_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_skills_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_job_skills_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_job_skills_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_skills_translations`
--

LOCK TABLES `jb_job_skills_translations` WRITE;
/*!40000 ALTER TABLE `jb_job_skills_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_job_skills_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_types`
--

DROP TABLE IF EXISTS `jb_job_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_types`
--

LOCK TABLES `jb_job_types` WRITE;
/*!40000 ALTER TABLE `jb_job_types` DISABLE KEYS */;
INSERT INTO `jb_job_types` VALUES (1,'Contract',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(2,'Freelance',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(3,'Full Time',0,1,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(4,'Internship',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10'),(5,'Part Time',0,0,'published','2024-02-24 01:49:10','2024-02-24 01:49:10');
/*!40000 ALTER TABLE `jb_job_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_types_translations`
--

DROP TABLE IF EXISTS `jb_job_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_types_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_job_types_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_job_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_types_translations`
--

LOCK TABLES `jb_job_types_translations` WRITE;
/*!40000 ALTER TABLE `jb_job_types_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_job_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs`
--

DROP TABLE IF EXISTS `jb_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `apply_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint unsigned DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `is_freelance` tinyint unsigned NOT NULL DEFAULT '0',
  `career_level_id` bigint unsigned DEFAULT NULL,
  `salary_from` decimal(15,2) unsigned DEFAULT NULL,
  `salary_to` decimal(15,2) unsigned DEFAULT NULL,
  `salary_range` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hour',
  `currency_id` bigint unsigned DEFAULT NULL,
  `degree_level_id` bigint unsigned DEFAULT NULL,
  `job_shift_id` bigint unsigned DEFAULT NULL,
  `job_experience_id` bigint unsigned DEFAULT NULL,
  `functional_area_id` bigint unsigned DEFAULT NULL,
  `hide_salary` tinyint(1) NOT NULL DEFAULT '0',
  `number_of_positions` int unsigned NOT NULL DEFAULT '1',
  `expire_date` date DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `views` int unsigned NOT NULL DEFAULT '0',
  `number_of_applied` int unsigned NOT NULL DEFAULT '0',
  `hide_company` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `external_apply_clicks` int unsigned NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employer_colleagues` text COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `application_closing_date` date DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs`
--

LOCK TABLES `jb_jobs` WRITE;
/*!40000 ALTER TABLE `jb_jobs` DISABLE KEYS */;
INSERT INTO `jb_jobs` VALUES (1,'UI / UX Designer full-time','Nam rem iste est expedita rerum dolor. Odio voluptate tempore saepe. Ullam quia dolorem minus harum voluptatem in maxime amet. Quo dignissimos modi veritatis maiores.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',10,NULL,1,1,1,0,4,7400.00,9300.00,'yearly',0,2,1,4,27,0,9,'2024-03-29',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.577896','-76.174114',0,0,0,0,'published','approved','2024-01-01 04:54:16','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(2,'Full Stack Engineer','Distinctio cum iusto officia. Laborum sit eos nam vitae molestiae omnis. Placeat quam suscipit officia at. Nesciunt et voluptatem beatae quasi deleniti eligendi et.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','https://google.com',20,NULL,3,3,3,0,1,9100.00,12900.00,'hourly',0,3,2,1,65,0,7,'2024-03-19',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.469177','-75.30774',0,0,1,1,'published','approved','2024-01-06 21:02:51','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(3,'Java Software Engineer','Et quia error error voluptatem ullam. Nisi qui cum maiores corrupti provident architecto beatae. Placeat enim saepe est omnis et exercitationem. Voluptas quos molestiae voluptatem vitae.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',5,NULL,5,5,5,0,1,3200.00,5000.00,'monthly',0,3,4,1,125,0,10,'2024-04-08',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.769843','-75.974895',0,0,1,1,'published','approved','2024-02-09 04:24:05','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(4,'Digital Marketing Manager','Totam sit explicabo exercitationem et. Voluptate sint aut natus incidunt cupiditate. Laborum eveniet possimus molestias eos modi.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',2,NULL,5,5,5,0,4,2200.00,3800.00,'daily',1,7,1,3,70,0,6,'2024-03-09',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.715578','-75.903362',0,0,0,0,'published','approved','2024-01-09 08:48:48','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(5,'Frontend Developer','Esse aut id blanditiis dolor suscipit illo. Nobis omnis soluta a qui. Atque quae illum ab dicta dolores sed odit libero. Totam deserunt libero occaecati animi. Est mollitia nam cum sit.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',17,NULL,4,4,4,0,5,2500.00,12000.00,'weekly',1,5,2,3,97,0,3,'2024-04-12',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.669935','-75.705474',0,0,1,0,'published','approved','2024-02-15 18:26:22','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(6,'React Native Web Developer','Et ipsa dolore et repudiandae. Aperiam natus et sed suscipit nihil officia aperiam. Ipsa iusto temporibus cupiditate eos.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,1,4800.00,6700.00,'monthly',1,2,3,1,70,0,4,'2024-04-04',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.602311','-75.403912',0,0,1,0,'published','approved','2024-02-01 11:40:56','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(7,'Senior System Engineer','Cumque pariatur ut enim quia. Veritatis neque autem eveniet omnis vero incidunt. Esse iure itaque non omnis. Rerum earum nesciunt quae dolores maiores laboriosam.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,4,8200.00,18000.00,'hourly',0,5,1,5,36,0,2,'2024-04-12',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.602311','-75.403912',0,0,0,0,'published','approved','2024-01-10 14:23:58','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(8,'Products Manager','Molestiae vel ut dignissimos. Consectetur et voluptatem porro. Consectetur iure occaecati cum officiis.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',1,NULL,2,2,2,0,2,9300.00,14500.00,'monthly',0,8,1,4,33,0,2,'2024-03-08',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.548306','-75.160315',0,0,0,1,'published','approved','2024-01-11 00:35:20','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(9,'Lead Quality Control QA','Voluptate accusamus eligendi quibusdam voluptas qui quos. Provident ea non consequatur. Quis consequatur quibusdam iusto dolorem fugiat.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',18,NULL,2,2,2,0,3,5900.00,11500.00,'weekly',1,9,3,1,12,0,7,'2024-04-16',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.305993','-75.665116',0,0,0,0,'published','approved','2023-12-27 23:58:21','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(10,'Principal Designer, Design Systems','Doloremque excepturi esse eum quaerat. Natus non vero molestiae dicta esse. Maiores eum repellat et. Eligendi magni necessitatibus dolorum cupiditate. Facilis eius laboriosam ut vitae.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',20,NULL,3,3,3,0,2,5300.00,8500.00,'daily',0,2,1,2,142,0,2,'2024-03-03',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.469177','-75.30774',0,0,0,1,'published','approved','2024-01-22 04:37:41','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(11,'DevOps Architect','Corrupti est repellendus maxime saepe repellat numquam. Tempore quia illo deserunt. Deserunt et reiciendis sed vero molestiae ea. Quisquam nihil sequi excepturi rerum reprehenderit et.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',3,NULL,1,1,1,0,5,6900.00,7800.00,'daily',0,7,4,2,15,0,6,'2024-03-12',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.86402','-76.734193',0,0,1,1,'published','approved','2024-02-03 01:43:35','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(12,'Senior Software Engineer, npm CLI','Porro porro ut ea voluptates ut blanditiis voluptatem. Consequatur et harum quia porro voluptate. Accusantium unde sit magni repellat quidem.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',12,NULL,5,5,5,0,4,9200.00,19000.00,'hourly',1,7,4,4,94,0,8,'2024-03-25',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.310047','-75.815838',0,0,0,1,'published','approved','2024-02-09 15:04:21','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(13,'Senior Systems Engineer','Incidunt perferendis et facilis modi harum delectus doloribus. Incidunt exercitationem corrupti excepturi sint laudantium eos rerum. Magni omnis tenetur alias sit culpa iure.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',17,NULL,4,4,4,0,3,2600.00,10800.00,'hourly',0,6,3,3,97,0,8,'2024-04-18',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.669935','-75.705474',0,0,0,0,'published','approved','2024-01-22 19:22:58','2024-02-24 01:49:11',NULL,NULL,NULL,NULL),(14,'Software Engineer Actions Platform','Illo iusto placeat nihil consequatur minima et quibusdam qui. Id repellat voluptatem eum optio necessitatibus nobis voluptas esse. Odio soluta aliquam atque quis dicta.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',14,NULL,2,2,2,0,5,1000.00,1700.00,'monthly',1,4,1,5,59,0,7,'2024-04-20',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.714799','-75.084147',0,0,0,1,'published','approved','2024-01-15 06:20:34','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(15,'Staff Engineering Manager, Actions','Distinctio minus ut sunt perspiciatis facilis perspiciatis. Dolores corporis dolor sunt id magni quod accusamus. Vero enim reprehenderit occaecati qui.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',4,NULL,5,5,5,0,1,5700.00,13900.00,'yearly',0,6,4,5,20,0,3,'2024-03-20',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.325311','-75.651428',0,0,0,0,'published','approved','2024-01-17 23:04:30','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(16,'Staff Engineering Manager: Actions Runtime','Placeat eveniet dolorem sed. Qui magnam voluptatum temporibus esse. Quos ratione saepe fugit ut sed.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,3,3600.00,9600.00,'hourly',1,5,4,2,103,0,10,'2024-04-10',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.602311','-75.403912',0,0,0,0,'published','approved','2023-12-27 17:05:09','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(17,'Staff Engineering Manager, Packages','Numquam quasi sit earum sed magni. Accusamus qui aut eveniet sequi qui ipsum. Reiciendis expedita autem delectus consequatur enim. Numquam quidem consequuntur harum tenetur reprehenderit.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',7,NULL,1,1,1,0,4,4600.00,8500.00,'daily',0,7,2,3,86,0,9,'2024-03-13',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.009877','-75.918234',0,0,1,1,'published','approved','2024-02-15 09:01:48','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(18,'Staff Software Engineer','Officia et maxime quo aspernatur expedita dolorum quos. Fugit a ut voluptates pariatur assumenda provident. Rerum non deleniti illum voluptas ea voluptatem. Nostrum praesentium iste ad inventore.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',10,NULL,1,1,1,0,3,8700.00,10500.00,'hourly',0,6,2,2,145,0,9,'2024-04-04',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.577896','-76.174114',0,0,0,1,'published','approved','2024-01-28 20:19:01','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(19,'Systems Software Engineer','Ut quo labore odio id. Soluta eaque voluptatem doloribus qui harum dolor. Quidem magni earum occaecati reprehenderit et non voluptate. Tenetur dignissimos voluptas placeat quidem quia reiciendis.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',2,NULL,5,5,5,0,4,1700.00,9200.00,'daily',0,1,4,2,135,0,2,'2024-03-23',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.715578','-75.903362',0,0,1,0,'published','approved','2024-01-29 19:20:17','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(20,'Senior Compensation Analyst','Occaecati quis dolor et aut perspiciatis voluptatum natus sunt. Totam et maxime similique. Saepe neque labore quia aut illum vel.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',10,NULL,1,1,1,0,1,3600.00,8700.00,'monthly',1,2,2,2,126,0,9,'2024-04-06',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.577896','-76.174114',0,0,1,0,'published','approved','2024-02-06 19:02:04','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(21,'Senior Accessibility Program Manager','Nostrum pariatur suscipit mollitia fugiat. Provident sunt ea et quasi et quam. Exercitationem omnis maxime reiciendis ut ea. Optio recusandae inventore asperiores est corporis qui qui.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',6,NULL,2,2,2,0,4,4900.00,14500.00,'hourly',1,7,2,4,88,0,3,'2024-03-22',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.845178','-75.369992',0,0,1,1,'published','approved','2024-01-10 13:00:30','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(22,'Analyst Relations Manager, Application Security','Reprehenderit temporibus provident aspernatur numquam aperiam vel. Eius ut consequatur eum tempora. Delectus minima ipsam hic expedita. Corrupti vel quis fugiat aut sit.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',11,NULL,3,3,3,0,1,6700.00,9800.00,'daily',1,5,4,3,58,0,5,'2024-03-25',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.78432','-74.992238',0,0,0,0,'published','approved','2024-01-12 06:34:05','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(23,'Senior Enterprise Advocate, EMEA','Ipsam corporis qui ducimus est aut quis. Ut est fugiat in modi repellat. Rerum nihil qui sit qui accusamus ullam temporibus.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',12,NULL,5,5,5,0,3,3100.00,7000.00,'monthly',0,5,1,4,106,0,7,'2024-04-04',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.310047','-75.815838',0,0,1,1,'published','approved','2024-02-04 23:35:02','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(24,'Deal Desk Manager','Est illo ut labore eos tempora sunt. Adipisci quis fugiat blanditiis ipsam inventore vitae. Ipsam in excepturi esse sint aspernatur error. Dolores est aut molestiae placeat illo repellat quaerat.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',2,NULL,5,5,5,0,5,9000.00,11900.00,'weekly',0,4,3,2,6,0,9,'2024-03-15',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.715578','-75.903362',0,0,0,0,'published','approved','2023-12-26 14:47:34','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(25,'Director, Revenue Compensation','Ut sit occaecati aut voluptate explicabo incidunt. Qui sint architecto quasi neque omnis repellendus.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',16,NULL,1,1,1,0,3,5100.00,9100.00,'daily',1,2,2,2,36,0,3,'2024-03-05',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.940655','-76.180902',0,0,0,1,'published','approved','2024-01-27 11:36:12','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(26,'Program Manager','Rerum corporis sequi rerum consequatur laboriosam est voluptatem sit. Veritatis omnis autem qui ab non dolore. Veniam esse sint velit odio amet.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',10,NULL,1,1,1,0,5,700.00,6100.00,'yearly',0,10,4,5,62,0,8,'2024-04-13',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.577896','-76.174114',0,0,1,0,'published','approved','2024-01-10 18:22:25','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(27,'Sr. Manager, Deal Desk - INTL','Pariatur tempore distinctio aut. Est necessitatibus animi et ipsa. Quae natus mollitia esse. Numquam consequatur assumenda at eos nulla illum.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',9,NULL,5,5,5,0,2,5200.00,14000.00,'yearly',1,6,1,2,144,0,6,'2024-04-23',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.890609','-76.702363',0,0,0,0,'published','approved','2024-01-17 12:31:47','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(28,'Senior Director, Product Management, Actions Runners and Compute Services','Eius nihil nihil eos ea vel aut. Aut deleniti laudantium at laudantium enim ipsam. Voluptatum eius non illo et eaque. Nulla occaecati quae blanditiis quia aliquid occaecati.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,5,8000.00,9500.00,'hourly',1,4,4,1,65,0,4,'2024-04-03',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.602311','-75.403912',0,0,0,0,'published','approved','2024-02-07 01:44:05','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(29,'Alliances Director','Qui reprehenderit sit voluptatum magni aliquam asperiores. Omnis sed sit aut tempora autem ut eveniet illum. Est eveniet maiores blanditiis. Mollitia maiores aliquam sint incidunt ab id rerum.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,4,9300.00,12200.00,'yearly',0,7,3,4,37,0,4,'2024-03-17',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.602311','-75.403912',0,0,1,1,'published','approved','2024-02-09 13:16:53','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(30,'Corporate Sales Representative','Saepe adipisci aut ipsam odit sed. Quos impedit blanditiis quas saepe suscipit. Maxime fugiat iusto explicabo iure aperiam nisi assumenda.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',11,NULL,3,3,3,0,3,6600.00,15100.00,'hourly',0,2,4,2,99,0,9,'2024-03-16',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.78432','-74.992238',0,0,1,0,'published','approved','2024-02-05 08:05:27','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(31,'Country Leader','Eius quia voluptatibus fugit non deserunt eveniet impedit ab. Ab in corporis numquam ut illo quo. Nulla quidem dignissimos consectetur facilis. Aut eaque accusantium ea nulla consequuntur saepe.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',10,NULL,1,1,1,0,5,5400.00,6900.00,'weekly',1,1,3,3,1,0,2,'2024-04-05',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.577896','-76.174114',0,0,1,0,'published','approved','2024-01-16 18:15:02','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(32,'Customer Success Architect','A voluptate ea rerum aut inventore debitis nihil. Reprehenderit ut possimus accusamus nesciunt architecto molestiae sint. Beatae fugit eligendi quis ratione aut sunt at.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',11,NULL,3,3,3,0,4,6300.00,10200.00,'daily',1,9,2,2,23,0,5,'2024-03-09',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.78432','-74.992238',0,0,1,1,'published','approved','2024-01-27 02:25:28','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(33,'DevOps Account Executive - US Public Sector','Minus assumenda eos magni nihil nostrum necessitatibus. Aut aut distinctio nihil quisquam omnis tenetur. Doloremque optio facere quo eos et rerum. Officia id numquam ipsum exercitationem et at.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',5,NULL,5,5,5,0,4,8800.00,18200.00,'yearly',0,10,1,3,27,0,5,'2024-04-21',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.769843','-75.974895',0,0,1,1,'published','approved','2024-02-20 13:47:42','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(34,'Enterprise Account Executive','Dolorum dolores qui et aut quia hic. Recusandae et ut adipisci est autem et. Amet incidunt fugiat accusamus at qui vel minima. Eum ducimus ut hic ex.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',2,NULL,5,5,5,0,4,2400.00,11400.00,'daily',0,5,1,5,137,0,6,'2024-03-01',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.715578','-75.903362',0,0,1,1,'published','approved','2024-01-03 16:55:38','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(35,'Senior Engineering Manager, Product Security Engineering - Paved Paths','Consequuntur quo ab sed possimus. Ad sit eos explicabo sint sit ipsa voluptatibus autem. Enim adipisci quidem excepturi soluta temporibus neque molestias.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',5,NULL,5,5,5,0,4,6200.00,11700.00,'hourly',1,6,3,3,117,0,4,'2024-03-23',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.769843','-75.974895',0,0,0,0,'published','approved','2023-12-25 13:48:12','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(36,'Customer Reliability Engineer III','Assumenda sint quia nihil officiis. Ea et id debitis dolore labore. Suscipit et at tenetur aut. Dolorem consequuntur eligendi facere beatae.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',6,NULL,2,2,2,0,5,5900.00,8400.00,'hourly',1,8,3,5,128,0,4,'2024-04-04',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.845178','-75.369992',0,0,0,1,'published','approved','2024-02-06 13:09:20','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(37,'Support Engineer (Enterprise Support Japanese)','Voluptatibus aut voluptatem fugit ut pariatur. Et assumenda similique quia sapiente laudantium. Voluptas velit dolor qui qui.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',15,NULL,3,3,3,0,4,7700.00,11600.00,'monthly',0,3,3,4,22,0,8,'2024-03-10',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.368086','-74.817819',0,0,1,0,'published','approved','2024-01-01 02:53:44','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(38,'Technical Partner Manager','Ullam est debitis tempora magnam molestiae aut illum. Natus voluptas quisquam eum quasi repellat rerum nesciunt. Voluptas atque qui ea ratione debitis placeat commodi.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',3,NULL,1,1,1,0,5,6600.00,7200.00,'daily',1,2,1,3,17,0,5,'2024-03-31',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.86402','-76.734193',0,0,1,0,'published','approved','2024-02-17 00:30:00','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(39,'Sr Manager, Inside Account Management','Eum quis ipsum velit dolore. Itaque assumenda illo suscipit velit esse consequatur. Quia nemo et voluptatem. Asperiores in aut cumque voluptate fuga beatae velit.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',12,NULL,5,5,5,0,4,900.00,6600.00,'daily',1,5,3,3,91,0,10,'2024-04-09',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.310047','-75.815838',0,0,1,0,'published','approved','2023-12-31 11:38:42','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(40,'Services Sales Representative','Amet sequi ut quo quisquam cumque. Dignissimos illo delectus quo et accusantium. Debitis est voluptatibus non culpa. Molestiae aut deserunt tempore nihil. Facere sunt ducimus aspernatur ut incidunt.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',16,NULL,1,1,1,0,1,7700.00,16500.00,'hourly',1,7,1,3,40,0,5,'2024-03-13',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.940655','-76.180902',0,0,0,0,'published','approved','2024-01-20 12:59:15','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(41,'Services Delivery Manager','Est consequatur nemo quod soluta laboriosam. Eos animi qui sed dolorem necessitatibus asperiores. Sed distinctio numquam vel sunt. Perferendis fugiat praesentium fugit et.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',17,NULL,4,4,4,0,3,8800.00,11400.00,'monthly',1,2,1,1,42,0,7,'2024-04-12',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.669935','-75.705474',0,0,0,0,'published','approved','2024-01-23 13:54:25','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(42,'Senior Solutions Engineer','Ut eius et aliquam optio a quia. Et aliquam ab debitis. Porro sunt qui temporibus molestias.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',4,NULL,5,5,5,0,2,6000.00,7100.00,'hourly',1,1,2,1,134,0,9,'2024-04-08',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.325311','-75.651428',0,0,1,1,'published','approved','2023-12-26 15:04:55','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(43,'Senior Service Delivery Engineer','Saepe recusandae eius dolores sint soluta molestias. Nihil nihil doloremque asperiores atque. Et porro et accusantium et ullam repudiandae placeat. Magni qui et quia nam.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',17,NULL,4,4,4,0,1,9900.00,12400.00,'weekly',1,1,3,4,151,0,3,'2024-03-29',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.669935','-75.705474',0,0,0,0,'published','approved','2024-02-08 11:36:50','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(44,'Senior Director, Global Sales Development','Aut ipsum assumenda harum iste voluptatem aut et. Commodi est possimus et eos aut corrupti tempora.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',5,NULL,5,5,5,0,5,5300.00,7800.00,'hourly',1,1,2,1,39,0,10,'2024-04-07',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.769843','-75.974895',0,0,1,0,'published','approved','2024-01-14 11:31:07','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(45,'Partner Program Manager','Ad incidunt nemo quia et accusamus perspiciatis voluptates autem. Quo mollitia quam doloribus aliquam eos. Iste et quis nesciunt autem labore. Et deserunt itaque et eum.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',20,NULL,3,3,3,0,3,9300.00,11400.00,'monthly',1,9,1,5,65,0,9,'2024-03-19',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.469177','-75.30774',0,0,1,0,'published','approved','2024-01-28 04:21:24','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(46,'Principal Cloud Solutions Engineer','Rerum et ex sit veniam dolores. Exercitationem cumque dolor enim sapiente non. Molestiae commodi maxime qui omnis odio dolorum quia. Quia repellat voluptatem aspernatur veniam.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',2,NULL,5,5,5,0,1,5100.00,7500.00,'monthly',0,10,1,1,89,0,3,'2024-04-06',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.715578','-75.903362',0,0,1,1,'published','approved','2024-01-30 18:54:45','2024-02-24 01:49:12',NULL,NULL,NULL,NULL),(47,'Senior Cloud Solutions Engineer','Et dolorem excepturi sunt nisi repudiandae repellat. Recusandae dolor eius voluptate sunt molestiae harum. Maxime pariatur recusandae porro explicabo beatae. Nostrum alias sit ab aut.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',11,NULL,3,3,3,0,4,7400.00,10900.00,'monthly',0,5,2,3,87,0,7,'2024-04-13',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.78432','-74.992238',0,0,1,0,'published','approved','2023-12-24 12:24:47','2024-02-24 01:49:13',NULL,NULL,NULL,NULL),(48,'Senior Customer Success Manager','Laborum sed qui et quos. Accusantium eum architecto illo atque reiciendis. Commodi sit unde adipisci placeat nostrum perferendis recusandae.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',6,NULL,2,2,2,0,4,3400.00,7700.00,'weekly',0,5,2,5,93,0,5,'2024-03-17',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.845178','-75.369992',0,0,1,1,'published','approved','2024-01-23 04:49:31','2024-02-24 01:49:13',NULL,NULL,NULL,NULL),(49,'Inside Account Manager','Voluptas nesciunt fugiat officia rem corporis. Ut aut praesentium dicta veritatis sunt vero. Odit accusantium eos qui velit. Est totam nobis enim sed. Inventore laborum quos ut.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,2,7100.00,16500.00,'monthly',1,2,1,5,44,0,10,'2024-03-25',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.602311','-75.403912',0,0,1,1,'published','approved','2024-01-05 14:11:10','2024-02-24 01:49:13',NULL,NULL,NULL,NULL),(50,'UX Jobs Board','Quia voluptas assumenda quia qui animi et dolor. Inventore cum velit reprehenderit dolores.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',11,NULL,3,3,3,0,2,4800.00,12400.00,'monthly',1,5,1,2,156,0,3,'2024-03-02',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.78432','-74.992238',0,0,1,1,'published','approved','2023-12-28 10:01:36','2024-02-24 01:49:13',NULL,NULL,NULL,NULL),(51,'Senior Laravel Developer (TALL Stack)','Veritatis qui cupiditate et corrupti. Fuga quibusdam nihil et repudiandae optio voluptatem tempore. Reprehenderit vitae placeat error. Sit enim ullam quidem nulla molestiae quidem.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',10,NULL,1,1,1,0,4,4100.00,6400.00,'monthly',0,10,4,2,51,0,3,'2024-04-17',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.577896','-76.174114',0,0,0,1,'published','approved','2024-01-21 03:40:27','2024-02-24 01:49:13',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jb_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs_categories`
--

DROP TABLE IF EXISTS `jb_jobs_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs_categories` (
  `job_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs_categories`
--

LOCK TABLES `jb_jobs_categories` WRITE;
/*!40000 ALTER TABLE `jb_jobs_categories` DISABLE KEYS */;
INSERT INTO `jb_jobs_categories` VALUES (1,1),(1,2),(1,6),(2,1),(2,3),(2,10),(3,1),(3,3),(3,6),(4,1),(4,3),(4,8),(5,1),(5,3),(5,7),(6,1),(6,5),(6,9),(7,1),(7,5),(7,9),(8,1),(8,3),(8,6),(9,1),(9,3),(9,10),(10,1),(10,3),(10,9),(11,1),(11,4),(11,6),(12,1),(12,4),(12,8),(13,1),(13,4),(13,8),(14,1),(14,5),(14,7),(15,1),(15,5),(15,7),(16,1),(16,3),(16,6),(17,1),(17,4),(17,10),(18,1),(18,3),(18,6),(19,1),(19,2),(19,8),(20,1),(20,2),(20,7),(21,1),(21,4),(21,6),(22,1),(22,2),(22,7),(23,1),(23,4),(23,7),(24,1),(24,5),(24,6),(25,1),(25,2),(25,8),(26,1),(26,5),(26,7),(27,1),(27,4),(27,6),(28,1),(28,2),(28,8),(29,1),(29,4),(29,6),(30,1),(30,5),(30,6),(31,1),(31,5),(31,9),(32,1),(32,5),(32,8),(33,1),(33,4),(33,8),(34,1),(34,3),(34,7),(35,1),(35,4),(35,8),(36,1),(36,3),(36,9),(37,1),(37,3),(37,6),(38,1),(38,3),(38,10),(39,1),(39,5),(39,8),(40,1),(40,5),(40,8),(41,1),(41,5),(41,6),(42,1),(42,4),(42,6),(43,1),(43,3),(43,7),(44,1),(44,2),(44,8),(45,1),(45,4),(45,10),(46,1),(46,2),(46,7),(47,1),(47,2),(47,7),(48,1),(48,4),(48,8),(49,1),(49,4),(49,10),(50,1),(50,4),(50,8),(51,1),(51,4),(51,6);
/*!40000 ALTER TABLE `jb_jobs_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs_skills`
--

DROP TABLE IF EXISTS `jb_jobs_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs_skills` (
  `job_id` bigint unsigned NOT NULL,
  `job_skill_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs_skills`
--

LOCK TABLES `jb_jobs_skills` WRITE;
/*!40000 ALTER TABLE `jb_jobs_skills` DISABLE KEYS */;
INSERT INTO `jb_jobs_skills` VALUES (1,2),(2,8),(3,1),(4,1),(5,4),(6,4),(7,2),(8,2),(9,8),(10,8),(11,8),(12,7),(13,7),(14,2),(15,1),(16,5),(17,3),(18,3),(19,1),(20,9),(21,6),(22,6),(23,9),(24,5),(25,7),(26,7),(27,7),(28,3),(29,6),(30,9),(31,2),(32,4),(33,9),(34,5),(35,5),(36,8),(37,6),(38,3),(39,8),(40,7),(41,1),(42,5),(43,6),(44,8),(45,3),(46,1),(47,8),(48,8),(49,9),(50,7),(51,1);
/*!40000 ALTER TABLE `jb_jobs_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs_tags`
--

DROP TABLE IF EXISTS `jb_jobs_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs_tags` (
  `job_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`job_id`,`tag_id`),
  KEY `jb_jobs_tags_job_id_index` (`job_id`),
  KEY `jb_jobs_tags_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs_tags`
--

LOCK TABLES `jb_jobs_tags` WRITE;
/*!40000 ALTER TABLE `jb_jobs_tags` DISABLE KEYS */;
INSERT INTO `jb_jobs_tags` VALUES (1,3),(1,7),(2,1),(2,7),(3,4),(3,5),(4,4),(4,8),(5,3),(5,6),(6,3),(6,8),(7,1),(7,5),(8,4),(8,5),(9,2),(9,6),(10,1),(10,7),(11,1),(11,6),(12,3),(12,7),(13,2),(13,7),(14,4),(14,7),(15,2),(15,6),(16,1),(16,7),(17,3),(17,8),(18,3),(18,7),(19,1),(19,5),(20,1),(20,6),(21,3),(21,6),(22,1),(22,6),(23,1),(23,7),(24,1),(24,5),(25,3),(25,6),(26,4),(26,7),(27,1),(27,5),(28,1),(28,5),(29,3),(29,8),(30,1),(30,5),(31,4),(31,7),(32,2),(32,6),(33,3),(33,6),(34,4),(34,5),(35,1),(35,7),(36,4),(36,5),(37,3),(37,7),(38,2),(38,5),(39,2),(39,6),(40,4),(40,7),(41,3),(41,6),(42,1),(42,5),(43,3),(43,6),(44,1),(44,7),(45,3),(45,8),(46,1),(46,7),(47,3),(47,6),(48,1),(48,5),(49,2),(49,5),(50,1),(50,5),(51,1),(51,5);
/*!40000 ALTER TABLE `jb_jobs_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs_translations`
--

DROP TABLE IF EXISTS `jb_jobs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_jobs_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`jb_jobs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs_translations`
--

LOCK TABLES `jb_jobs_translations` WRITE;
/*!40000 ALTER TABLE `jb_jobs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_jobs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs_types`
--

DROP TABLE IF EXISTS `jb_jobs_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs_types` (
  `job_id` bigint unsigned NOT NULL,
  `job_type_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs_types`
--

LOCK TABLES `jb_jobs_types` WRITE;
/*!40000 ALTER TABLE `jb_jobs_types` DISABLE KEYS */;
INSERT INTO `jb_jobs_types` VALUES (1,5),(2,5),(3,3),(4,1),(5,4),(6,2),(7,1),(8,1),(9,1),(10,5),(11,1),(12,1),(13,1),(14,2),(15,3),(16,2),(17,2),(18,5),(19,4),(20,2),(21,4),(22,1),(23,1),(24,2),(25,4),(26,5),(27,2),(28,3),(29,2),(30,5),(31,2),(32,2),(33,5),(34,1),(35,3),(36,5),(37,5),(38,3),(39,2),(40,5),(41,1),(42,2),(43,2),(44,4),(45,3),(46,4),(47,5),(48,3),(49,2),(50,2),(51,2);
/*!40000 ALTER TABLE `jb_jobs_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_language_levels`
--

DROP TABLE IF EXISTS `jb_language_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_language_levels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_language_levels`
--

LOCK TABLES `jb_language_levels` WRITE;
/*!40000 ALTER TABLE `jb_language_levels` DISABLE KEYS */;
INSERT INTO `jb_language_levels` VALUES (1,'Expert',0,0,'published','2024-02-24 01:49:11','2024-02-24 01:49:11'),(2,'Intermediate',0,0,'published','2024-02-24 01:49:11','2024-02-24 01:49:11'),(3,'Beginner',0,0,'published','2024-02-24 01:49:11','2024-02-24 01:49:11');
/*!40000 ALTER TABLE `jb_language_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_language_levels_translations`
--

DROP TABLE IF EXISTS `jb_language_levels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_language_levels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_language_levels_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_language_levels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_language_levels_translations`
--

LOCK TABLES `jb_language_levels_translations` WRITE;
/*!40000 ALTER TABLE `jb_language_levels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_language_levels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_major_subjects`
--

DROP TABLE IF EXISTS `jb_major_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_major_subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_major_subjects`
--

LOCK TABLES `jb_major_subjects` WRITE;
/*!40000 ALTER TABLE `jb_major_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_major_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_packages`
--

DROP TABLE IF EXISTS `jb_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) unsigned NOT NULL,
  `currency_id` bigint unsigned NOT NULL,
  `percent_save` int unsigned DEFAULT '0',
  `number_of_listings` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `account_limit` int unsigned DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_packages`
--

LOCK TABLES `jb_packages` WRITE;
/*!40000 ALTER TABLE `jb_packages` DISABLE KEYS */;
INSERT INTO `jb_packages` VALUES (1,'Free First Post',0.00,1,0,1,0,1,0,'published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(2,'Single Post',250.00,1,0,1,0,NULL,1,'published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(3,'5 Posts',1000.00,1,20,5,0,NULL,0,'published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL);
/*!40000 ALTER TABLE `jb_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_packages_translations`
--

DROP TABLE IF EXISTS `jb_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_packages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_packages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_packages_translations`
--

LOCK TABLES `jb_packages_translations` WRITE;
/*!40000 ALTER TABLE `jb_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_reviews`
--

DROP TABLE IF EXISTS `jb_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reviewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint unsigned NOT NULL,
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_unique` (`reviewable_id`,`reviewable_type`,`created_by_id`,`created_by_type`),
  KEY `jb_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`),
  KEY `jb_reviews_created_by_type_created_by_id_index` (`created_by_type`,`created_by_id`),
  KEY `jb_reviews_reviewable_id_reviewable_type_status_index` (`reviewable_id`,`reviewable_type`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_reviews`
--

LOCK TABLES `jb_reviews` WRITE;
/*!40000 ALTER TABLE `jb_reviews` DISABLE KEYS */;
INSERT INTO `jb_reviews` VALUES (1,'Botble\\JobBoard\\Models\\Account',10,'Botble\\JobBoard\\Models\\Company',19,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(2,'Botble\\JobBoard\\Models\\Account',15,'Botble\\JobBoard\\Models\\Company',11,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(3,'Botble\\JobBoard\\Models\\Account',64,'Botble\\JobBoard\\Models\\Company',7,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(4,'Botble\\JobBoard\\Models\\Account',53,'Botble\\JobBoard\\Models\\Company',19,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(5,'Botble\\JobBoard\\Models\\Account',43,'Botble\\JobBoard\\Models\\Company',6,2.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(6,'Botble\\JobBoard\\Models\\Account',25,'Botble\\JobBoard\\Models\\Company',15,1.00,'Best ecommerce CMS online store!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(7,'Botble\\JobBoard\\Models\\Account',8,'Botble\\JobBoard\\Models\\Company',8,4.00,'Clean & perfect source code','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(8,'Botble\\JobBoard\\Models\\Company',2,'Botble\\JobBoard\\Models\\Account',42,3.00,'Best ecommerce CMS online store!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(9,'Botble\\JobBoard\\Models\\Company',20,'Botble\\JobBoard\\Models\\Account',77,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(10,'Botble\\JobBoard\\Models\\Company',10,'Botble\\JobBoard\\Models\\Account',17,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(11,'Botble\\JobBoard\\Models\\Account',56,'Botble\\JobBoard\\Models\\Company',2,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(12,'Botble\\JobBoard\\Models\\Account',55,'Botble\\JobBoard\\Models\\Company',11,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(13,'Botble\\JobBoard\\Models\\Account',40,'Botble\\JobBoard\\Models\\Company',19,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(14,'Botble\\JobBoard\\Models\\Company',1,'Botble\\JobBoard\\Models\\Account',74,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(15,'Botble\\JobBoard\\Models\\Account',98,'Botble\\JobBoard\\Models\\Company',14,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(16,'Botble\\JobBoard\\Models\\Account',85,'Botble\\JobBoard\\Models\\Company',15,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(17,'Botble\\JobBoard\\Models\\Account',75,'Botble\\JobBoard\\Models\\Company',20,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(18,'Botble\\JobBoard\\Models\\Company',20,'Botble\\JobBoard\\Models\\Account',90,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(19,'Botble\\JobBoard\\Models\\Company',4,'Botble\\JobBoard\\Models\\Account',5,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(20,'Botble\\JobBoard\\Models\\Account',25,'Botble\\JobBoard\\Models\\Company',8,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(21,'Botble\\JobBoard\\Models\\Company',20,'Botble\\JobBoard\\Models\\Account',10,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(22,'Botble\\JobBoard\\Models\\Company',13,'Botble\\JobBoard\\Models\\Account',18,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(23,'Botble\\JobBoard\\Models\\Account',6,'Botble\\JobBoard\\Models\\Company',6,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(24,'Botble\\JobBoard\\Models\\Account',14,'Botble\\JobBoard\\Models\\Company',20,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(25,'Botble\\JobBoard\\Models\\Company',9,'Botble\\JobBoard\\Models\\Account',92,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(26,'Botble\\JobBoard\\Models\\Account',47,'Botble\\JobBoard\\Models\\Company',17,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(27,'Botble\\JobBoard\\Models\\Company',1,'Botble\\JobBoard\\Models\\Account',65,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(28,'Botble\\JobBoard\\Models\\Account',67,'Botble\\JobBoard\\Models\\Company',1,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(29,'Botble\\JobBoard\\Models\\Account',32,'Botble\\JobBoard\\Models\\Company',9,2.00,'Best ecommerce CMS online store!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(30,'Botble\\JobBoard\\Models\\Company',4,'Botble\\JobBoard\\Models\\Account',77,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(31,'Botble\\JobBoard\\Models\\Company',13,'Botble\\JobBoard\\Models\\Account',71,3.00,'Clean & perfect source code','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(32,'Botble\\JobBoard\\Models\\Company',10,'Botble\\JobBoard\\Models\\Account',38,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(33,'Botble\\JobBoard\\Models\\Company',9,'Botble\\JobBoard\\Models\\Account',11,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(34,'Botble\\JobBoard\\Models\\Account',32,'Botble\\JobBoard\\Models\\Company',15,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(35,'Botble\\JobBoard\\Models\\Account',47,'Botble\\JobBoard\\Models\\Company',13,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(36,'Botble\\JobBoard\\Models\\Account',90,'Botble\\JobBoard\\Models\\Company',6,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(37,'Botble\\JobBoard\\Models\\Company',8,'Botble\\JobBoard\\Models\\Account',71,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(38,'Botble\\JobBoard\\Models\\Account',7,'Botble\\JobBoard\\Models\\Company',14,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(39,'Botble\\JobBoard\\Models\\Company',16,'Botble\\JobBoard\\Models\\Account',47,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(40,'Botble\\JobBoard\\Models\\Company',7,'Botble\\JobBoard\\Models\\Account',13,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(41,'Botble\\JobBoard\\Models\\Account',87,'Botble\\JobBoard\\Models\\Company',7,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(42,'Botble\\JobBoard\\Models\\Company',12,'Botble\\JobBoard\\Models\\Account',39,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(43,'Botble\\JobBoard\\Models\\Account',46,'Botble\\JobBoard\\Models\\Company',17,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(44,'Botble\\JobBoard\\Models\\Account',75,'Botble\\JobBoard\\Models\\Company',8,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(45,'Botble\\JobBoard\\Models\\Account',6,'Botble\\JobBoard\\Models\\Company',10,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(46,'Botble\\JobBoard\\Models\\Account',37,'Botble\\JobBoard\\Models\\Company',9,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(47,'Botble\\JobBoard\\Models\\Account',58,'Botble\\JobBoard\\Models\\Company',3,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(48,'Botble\\JobBoard\\Models\\Company',1,'Botble\\JobBoard\\Models\\Account',75,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(49,'Botble\\JobBoard\\Models\\Company',16,'Botble\\JobBoard\\Models\\Account',90,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(50,'Botble\\JobBoard\\Models\\Company',15,'Botble\\JobBoard\\Models\\Account',31,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(51,'Botble\\JobBoard\\Models\\Account',36,'Botble\\JobBoard\\Models\\Company',3,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(52,'Botble\\JobBoard\\Models\\Account',59,'Botble\\JobBoard\\Models\\Company',4,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(53,'Botble\\JobBoard\\Models\\Account',43,'Botble\\JobBoard\\Models\\Company',14,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(54,'Botble\\JobBoard\\Models\\Account',61,'Botble\\JobBoard\\Models\\Company',19,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(55,'Botble\\JobBoard\\Models\\Company',17,'Botble\\JobBoard\\Models\\Account',49,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(56,'Botble\\JobBoard\\Models\\Account',76,'Botble\\JobBoard\\Models\\Company',4,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(57,'Botble\\JobBoard\\Models\\Account',57,'Botble\\JobBoard\\Models\\Company',18,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(58,'Botble\\JobBoard\\Models\\Company',3,'Botble\\JobBoard\\Models\\Account',87,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(59,'Botble\\JobBoard\\Models\\Account',14,'Botble\\JobBoard\\Models\\Company',18,4.00,'Clean & perfect source code','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(60,'Botble\\JobBoard\\Models\\Account',46,'Botble\\JobBoard\\Models\\Company',9,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(61,'Botble\\JobBoard\\Models\\Account',26,'Botble\\JobBoard\\Models\\Company',4,3.00,'Clean & perfect source code','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(62,'Botble\\JobBoard\\Models\\Account',35,'Botble\\JobBoard\\Models\\Company',9,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(63,'Botble\\JobBoard\\Models\\Company',18,'Botble\\JobBoard\\Models\\Account',76,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(64,'Botble\\JobBoard\\Models\\Account',34,'Botble\\JobBoard\\Models\\Company',3,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(65,'Botble\\JobBoard\\Models\\Company',18,'Botble\\JobBoard\\Models\\Account',59,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(66,'Botble\\JobBoard\\Models\\Account',89,'Botble\\JobBoard\\Models\\Company',20,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(67,'Botble\\JobBoard\\Models\\Company',7,'Botble\\JobBoard\\Models\\Account',66,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(68,'Botble\\JobBoard\\Models\\Company',6,'Botble\\JobBoard\\Models\\Account',57,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(69,'Botble\\JobBoard\\Models\\Account',71,'Botble\\JobBoard\\Models\\Company',3,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(70,'Botble\\JobBoard\\Models\\Account',94,'Botble\\JobBoard\\Models\\Company',20,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(71,'Botble\\JobBoard\\Models\\Account',19,'Botble\\JobBoard\\Models\\Company',7,3.00,'Best ecommerce CMS online store!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(72,'Botble\\JobBoard\\Models\\Company',19,'Botble\\JobBoard\\Models\\Account',61,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(73,'Botble\\JobBoard\\Models\\Account',38,'Botble\\JobBoard\\Models\\Company',8,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(74,'Botble\\JobBoard\\Models\\Account',88,'Botble\\JobBoard\\Models\\Company',11,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(75,'Botble\\JobBoard\\Models\\Account',91,'Botble\\JobBoard\\Models\\Company',4,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(76,'Botble\\JobBoard\\Models\\Account',42,'Botble\\JobBoard\\Models\\Company',12,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(77,'Botble\\JobBoard\\Models\\Account',79,'Botble\\JobBoard\\Models\\Company',8,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(78,'Botble\\JobBoard\\Models\\Account',50,'Botble\\JobBoard\\Models\\Company',10,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(79,'Botble\\JobBoard\\Models\\Company',7,'Botble\\JobBoard\\Models\\Account',26,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(80,'Botble\\JobBoard\\Models\\Company',7,'Botble\\JobBoard\\Models\\Account',38,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(81,'Botble\\JobBoard\\Models\\Company',13,'Botble\\JobBoard\\Models\\Account',17,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(82,'Botble\\JobBoard\\Models\\Company',4,'Botble\\JobBoard\\Models\\Account',41,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(83,'Botble\\JobBoard\\Models\\Account',35,'Botble\\JobBoard\\Models\\Company',11,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(84,'Botble\\JobBoard\\Models\\Account',16,'Botble\\JobBoard\\Models\\Company',10,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(85,'Botble\\JobBoard\\Models\\Account',76,'Botble\\JobBoard\\Models\\Company',3,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(86,'Botble\\JobBoard\\Models\\Account',95,'Botble\\JobBoard\\Models\\Company',15,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(87,'Botble\\JobBoard\\Models\\Company',18,'Botble\\JobBoard\\Models\\Account',8,4.00,'Best ecommerce CMS online store!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(88,'Botble\\JobBoard\\Models\\Account',98,'Botble\\JobBoard\\Models\\Company',5,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(89,'Botble\\JobBoard\\Models\\Account',34,'Botble\\JobBoard\\Models\\Company',4,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(91,'Botble\\JobBoard\\Models\\Company',14,'Botble\\JobBoard\\Models\\Account',5,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(92,'Botble\\JobBoard\\Models\\Company',20,'Botble\\JobBoard\\Models\\Account',39,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(93,'Botble\\JobBoard\\Models\\Company',17,'Botble\\JobBoard\\Models\\Account',64,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(94,'Botble\\JobBoard\\Models\\Company',8,'Botble\\JobBoard\\Models\\Account',56,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(95,'Botble\\JobBoard\\Models\\Account',41,'Botble\\JobBoard\\Models\\Company',5,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(96,'Botble\\JobBoard\\Models\\Account',46,'Botble\\JobBoard\\Models\\Company',12,3.00,'Best ecommerce CMS online store!','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(97,'Botble\\JobBoard\\Models\\Account',67,'Botble\\JobBoard\\Models\\Company',17,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(98,'Botble\\JobBoard\\Models\\Company',8,'Botble\\JobBoard\\Models\\Account',9,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(99,'Botble\\JobBoard\\Models\\Account',7,'Botble\\JobBoard\\Models\\Company',6,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(100,'Botble\\JobBoard\\Models\\Company',5,'Botble\\JobBoard\\Models\\Account',52,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-24 01:49:42','2024-02-24 01:49:42');
/*!40000 ALTER TABLE `jb_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_saved_jobs`
--

DROP TABLE IF EXISTS `jb_saved_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_saved_jobs` (
  `account_id` bigint unsigned NOT NULL,
  `job_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`account_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_saved_jobs`
--

LOCK TABLES `jb_saved_jobs` WRITE;
/*!40000 ALTER TABLE `jb_saved_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_saved_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_tags`
--

DROP TABLE IF EXISTS `jb_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_tags`
--

LOCK TABLES `jb_tags` WRITE;
/*!40000 ALTER TABLE `jb_tags` DISABLE KEYS */;
INSERT INTO `jb_tags` VALUES (1,'Illustrator','','published','2024-02-24 01:49:11','2024-02-24 01:49:11'),(2,'Adobe XD','','published','2024-02-24 01:49:11','2024-02-24 01:49:11'),(3,'Figma','','published','2024-02-24 01:49:11','2024-02-24 01:49:11'),(4,'Sketch','','published','2024-02-24 01:49:11','2024-02-24 01:49:11'),(5,'Lunacy','','published','2024-02-24 01:49:11','2024-02-24 01:49:11'),(6,'PHP','','published','2024-02-24 01:49:11','2024-02-24 01:49:11'),(7,'Python','','published','2024-02-24 01:49:11','2024-02-24 01:49:11'),(8,'JavaScript','','published','2024-02-24 01:49:11','2024-02-24 01:49:11');
/*!40000 ALTER TABLE `jb_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_tags_translations`
--

DROP TABLE IF EXISTS `jb_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_tags_translations`
--

LOCK TABLES `jb_tags_translations` WRITE;
/*!40000 ALTER TABLE `jb_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_transactions`
--

DROP TABLE IF EXISTS `jb_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `credits` int unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_transactions`
--

LOCK TABLES `jb_transactions` WRITE;
/*!40000 ALTER TABLE `jb_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','b6df2f271424e5af4ff4df48e052a13a',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','b2008c90ffcfd3d38e7a019a8c737785',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','9782c3e12d6278863c7ebb45d91b0e6f',2,'Botble\\Menu\\Models\\Menu'),(4,'en_US','79583af71a29d3e59cd2b46dc716aa0d',3,'Botble\\Menu\\Models\\Menu'),(5,'en_US','e12318035b5a5d048919172eef80451d',4,'Botble\\Menu\\Models\\Menu'),(6,'en_US','2a78f9abace33ef361373438fe126bc2',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (41,0,'acer','acer',3,'image/png',285,'our-partners/acer.png','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(42,0,'asus','asus',3,'image/png',314,'our-partners/asus.png','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(43,0,'dell','dell',3,'image/png',296,'our-partners/dell.png','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(44,0,'microsoft','microsoft',3,'image/png',287,'our-partners/microsoft.png','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(45,0,'nokia','nokia',3,'image/png',308,'our-partners/nokia.png','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(46,0,'1','1',4,'image/jpeg',9803,'news/1.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(47,0,'10','10',4,'image/jpeg',9803,'news/10.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(48,0,'11','11',4,'image/jpeg',9803,'news/11.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(49,0,'12','12',4,'image/jpeg',9803,'news/12.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(50,0,'13','13',4,'image/jpeg',9803,'news/13.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(51,0,'14','14',4,'image/jpeg',9803,'news/14.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(52,0,'15','15',4,'image/jpeg',9803,'news/15.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(53,0,'16','16',4,'image/jpeg',9803,'news/16.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(54,0,'2','2',4,'image/jpeg',9803,'news/2.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(55,0,'3','3',4,'image/jpeg',9803,'news/3.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(56,0,'4','4',4,'image/jpeg',9803,'news/4.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(57,0,'5','5',4,'image/jpeg',9803,'news/5.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(58,0,'6','6',4,'image/jpeg',9803,'news/6.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(59,0,'7','7',4,'image/jpeg',9803,'news/7.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(60,0,'8','8',4,'image/jpeg',9803,'news/8.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(61,0,'9','9',4,'image/jpeg',9803,'news/9.jpg','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(62,0,'cover-image1','cover-image1',4,'image/png',9803,'news/cover-image1.png','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(63,0,'cover-image2','cover-image2',4,'image/png',9803,'news/cover-image2.png','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(64,0,'cover-image3','cover-image3',4,'image/png',9803,'news/cover-image3.png','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(65,0,'img-news1','img-news1',4,'image/png',9803,'news/img-news1.png','[]','2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(66,0,'img-news2','img-news2',4,'image/png',9803,'news/img-news2.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(67,0,'img-news3','img-news3',4,'image/png',9803,'news/img-news3.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(68,0,'1','1',5,'image/jpeg',6977,'galleries/1.jpg','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(69,0,'10','10',5,'image/jpeg',9803,'galleries/10.jpg','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(70,0,'2','2',5,'image/jpeg',6977,'galleries/2.jpg','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(71,0,'3','3',5,'image/jpeg',6977,'galleries/3.jpg','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(72,0,'4','4',5,'image/jpeg',6977,'galleries/4.jpg','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(73,0,'5','5',5,'image/jpeg',6977,'galleries/5.jpg','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(74,0,'6','6',5,'image/jpeg',6977,'galleries/6.jpg','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(75,0,'7','7',5,'image/jpeg',6977,'galleries/7.jpg','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(76,0,'8','8',5,'image/jpeg',9803,'galleries/8.jpg','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(77,0,'9','9',5,'image/jpeg',9803,'galleries/9.jpg','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(78,0,'widget-banner','widget-banner',6,'image/png',11079,'widgets/widget-banner.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(79,0,'404','404',7,'image/png',10947,'general/404.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(80,0,'android','android',7,'image/png',477,'general/android.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(81,0,'app-store','app-store',7,'image/png',477,'general/app-store.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(82,0,'content','content',7,'image/png',1692,'general/content.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(83,0,'cover-image','cover-image',7,'image/png',8992,'general/cover-image.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(84,0,'customer','customer',7,'image/png',2810,'general/customer.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(85,0,'favicon','favicon',7,'image/png',706,'general/favicon.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(86,0,'finance','finance',7,'image/png',2460,'general/finance.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(87,0,'human','human',7,'image/png',2359,'general/human.png','[]','2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(88,0,'img-about2','img-about2',7,'image/png',36911,'general/img-about2.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(89,0,'lightning','lightning',7,'image/png',2768,'general/lightning.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(90,0,'logo-company','logo-company',7,'image/png',3166,'general/logo-company.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(91,0,'logo-light','logo-light',7,'image/png',2352,'general/logo-light.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(92,0,'logo','logo',7,'image/png',2459,'general/logo.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(93,0,'management','management',7,'image/png',1915,'general/management.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(94,0,'marketing','marketing',7,'image/png',2134,'general/marketing.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(95,0,'newsletter-background-image','newsletter-background-image',7,'image/png',9830,'general/newsletter-background-image.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(96,0,'newsletter-image-left','newsletter-image-left',7,'image/png',4177,'general/newsletter-image-left.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(97,0,'newsletter-image-right','newsletter-image-right',7,'image/png',2886,'general/newsletter-image-right.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(98,0,'research','research',7,'image/png',3206,'general/research.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(99,0,'retail','retail',7,'image/png',2874,'general/retail.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(100,0,'security','security',7,'image/png',2986,'general/security.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(101,0,'img-1','img-1',8,'image/png',2377,'authentication/img-1.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(102,0,'img-2','img-2',8,'image/png',5009,'authentication/img-2.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(103,0,'background-cover-candidate','background-cover-candidate',9,'image/png',436821,'pages/background-cover-candidate.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(104,0,'background_breadcrumb','background_breadcrumb',9,'image/png',6111,'pages/background-breadcrumb.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(105,0,'banner-section-search-box','banner-section-search-box',9,'image/png',20501,'pages/banner-section-search-box.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(106,0,'banner1','banner1',9,'image/png',7381,'pages/banner1.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(107,0,'banner2','banner2',9,'image/png',4920,'pages/banner2.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(108,0,'banner3','banner3',9,'image/png',2472,'pages/banner3.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(109,0,'banner4','banner4',9,'image/png',1952,'pages/banner4.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(110,0,'banner5','banner5',9,'image/png',1545,'pages/banner5.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(111,0,'banner6','banner6',9,'image/png',1609,'pages/banner6.png','[]','2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(112,0,'bg-breadcrumb','bg-breadcrumb',9,'image/png',14250,'pages/bg-breadcrumb.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(113,0,'bg-cat','bg-cat',9,'image/png',60543,'pages/bg-cat.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(114,0,'bg-left-hiring','bg-left-hiring',9,'image/png',1631,'pages/bg-left-hiring.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(115,0,'bg-newsletter','bg-newsletter',9,'image/png',4587,'pages/bg-newsletter.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(116,0,'bg-right-hiring','bg-right-hiring',9,'image/png',3074,'pages/bg-right-hiring.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(117,0,'controlcard','controlcard',9,'image/png',7404,'pages/controlcard.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(118,0,'home-page-4-banner','home-page-4-banner',9,'image/png',7596,'pages/home-page-4-banner.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(119,0,'icon-bottom-banner','icon-bottom-banner',9,'image/png',274,'pages/icon-bottom-banner.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(120,0,'icon-top-banner','icon-top-banner',9,'image/png',362,'pages/icon-top-banner.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(121,0,'img-banner','img-banner',9,'image/png',10542,'pages/img-banner.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(122,0,'img-chart','img-chart',9,'image/png',7549,'pages/img-chart.png','[]','2024-02-24 01:49:08','2024-02-24 01:49:08',NULL),(123,0,'img-job-search','img-job-search',9,'image/png',35569,'pages/img-job-search.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(124,0,'img-profile','img-profile',9,'image/png',9177,'pages/img-profile.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(125,0,'img-single','img-single',9,'image/png',13060,'pages/img-single.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(126,0,'img1','img1',9,'image/png',10246,'pages/img1.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(127,0,'job-tools','job-tools',9,'image/png',2216,'pages/job-tools.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(128,0,'left-job-head','left-job-head',9,'image/png',14956,'pages/left-job-head.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(129,0,'newsletter-left','newsletter-left',9,'image/png',4177,'pages/newsletter-left.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(130,0,'newsletter-right','newsletter-right',9,'image/png',2886,'pages/newsletter-right.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(131,0,'planning-job','planning-job',9,'image/png',1623,'pages/planning-job.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(132,0,'right-job-head','right-job-head',9,'image/png',10955,'pages/right-job-head.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(133,0,'facebook','facebook',10,'image/png',795,'socials/facebook.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(134,0,'linkedin','linkedin',10,'image/png',804,'socials/linkedin.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(135,0,'twitter','twitter',10,'image/png',1029,'socials/twitter.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(136,0,'location1','location1',11,'image/png',5149,'locations/location1.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(137,0,'location2','location2',11,'image/png',5921,'locations/location2.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(138,0,'location3','location3',11,'image/png',5276,'locations/location3.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(139,0,'location4','location4',11,'image/png',5259,'locations/location4.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(140,0,'location5','location5',11,'image/png',5140,'locations/location5.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(141,0,'location6','location6',11,'image/png',4891,'locations/location6.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(142,0,'1','1',12,'image/png',407,'job-categories/1.png','[]','2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(143,0,'10','10',12,'image/png',407,'job-categories/10.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(144,0,'11','11',12,'image/png',407,'job-categories/11.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(145,0,'12','12',12,'image/png',407,'job-categories/12.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(146,0,'13','13',12,'image/png',407,'job-categories/13.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(147,0,'14','14',12,'image/png',407,'job-categories/14.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(148,0,'15','15',12,'image/png',407,'job-categories/15.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(149,0,'16','16',12,'image/png',407,'job-categories/16.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(150,0,'17','17',12,'image/png',407,'job-categories/17.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(151,0,'18','18',12,'image/png',407,'job-categories/18.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(152,0,'19','19',12,'image/png',407,'job-categories/19.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(153,0,'2','2',12,'image/png',407,'job-categories/2.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(154,0,'3','3',12,'image/png',407,'job-categories/3.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(155,0,'4','4',12,'image/png',407,'job-categories/4.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(156,0,'5','5',12,'image/png',407,'job-categories/5.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(157,0,'6','6',12,'image/png',407,'job-categories/6.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(158,0,'7','7',12,'image/png',407,'job-categories/7.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(159,0,'8','8',12,'image/png',407,'job-categories/8.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(160,0,'9','9',12,'image/png',407,'job-categories/9.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(161,0,'img-cover-1','img-cover-1',12,'image/png',33918,'job-categories/img-cover-1.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(162,0,'img-cover-2','img-cover-2',12,'image/png',33918,'job-categories/img-cover-2.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(163,0,'img-cover-3','img-cover-3',12,'image/png',33918,'job-categories/img-cover-3.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(164,0,'1','1',13,'image/png',598,'companies/1.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(165,0,'2','2',13,'image/png',598,'companies/2.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(166,0,'3','3',13,'image/png',598,'companies/3.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(167,0,'4','4',13,'image/png',598,'companies/4.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(168,0,'5','5',13,'image/png',598,'companies/5.png','[]','2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(169,0,'6','6',13,'image/png',598,'companies/6.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(170,0,'7','7',13,'image/png',598,'companies/7.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(171,0,'8','8',13,'image/png',598,'companies/8.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(172,0,'9','9',13,'image/png',598,'companies/9.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(173,0,'company-cover-image','company-cover-image',13,'image/png',8992,'companies/company-cover-image.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(174,0,'img1','img1',14,'image/png',5706,'jobs/img1.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(175,0,'img2','img2',14,'image/png',5706,'jobs/img2.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(176,0,'img3','img3',14,'image/png',5706,'jobs/img3.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(177,0,'img4','img4',14,'image/png',5706,'jobs/img4.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(178,0,'img5','img5',14,'image/png',5706,'jobs/img5.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(179,0,'img6','img6',14,'image/png',5706,'jobs/img6.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(180,0,'img7','img7',14,'image/png',5706,'jobs/img7.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(181,0,'img8','img8',14,'image/png',5706,'jobs/img8.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(182,0,'img9','img9',14,'image/png',5706,'jobs/img9.png','[]','2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(183,0,'01','01',15,'application/pdf',43496,'resume/01.pdf','[]','2024-02-24 01:49:13','2024-02-24 01:49:13',NULL),(184,0,'1','1',16,'image/png',3090,'avatars/1.png','[]','2024-02-24 01:49:13','2024-02-24 01:49:13',NULL),(185,0,'2','2',16,'image/png',2773,'avatars/2.png','[]','2024-02-24 01:49:13','2024-02-24 01:49:13',NULL),(186,0,'3','3',16,'image/png',2749,'avatars/3.png','[]','2024-02-24 01:49:13','2024-02-24 01:49:13',NULL),(187,0,'1','1',17,'image/png',395380,'covers/1.png','[]','2024-02-24 01:49:13','2024-02-24 01:49:13',NULL),(188,0,'2','2',17,'image/png',1308067,'covers/2.png','[]','2024-02-24 01:49:13','2024-02-24 01:49:13',NULL),(189,0,'3','3',17,'image/png',301502,'covers/3.png','[]','2024-02-24 01:49:13','2024-02-24 01:49:13',NULL),(190,0,'1','1',18,'image/png',4294,'teams/1.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(191,0,'2','2',18,'image/png',4294,'teams/2.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(192,0,'3','3',18,'image/png',4294,'teams/3.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(193,0,'4','4',18,'image/png',4294,'teams/4.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(194,0,'5','5',18,'image/png',4294,'teams/5.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(195,0,'6','6',18,'image/png',4294,'teams/6.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(196,0,'7','7',18,'image/png',4294,'teams/7.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(197,0,'8','8',18,'image/png',4294,'teams/8.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(198,0,'1','1',19,'image/png',3943,'testimonials/1.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(199,0,'2','2',19,'image/png',3943,'testimonials/2.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(200,0,'3','3',19,'image/png',3943,'testimonials/3.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(201,0,'4','4',19,'image/png',3943,'testimonials/4.png','[]','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (3,0,'our-partners',NULL,'our-partners',0,'2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(4,0,'news',NULL,'news',0,'2024-02-24 01:49:05','2024-02-24 01:49:05',NULL),(5,0,'galleries',NULL,'galleries',0,'2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(6,0,'widgets',NULL,'widgets',0,'2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(7,0,'general',NULL,'general',0,'2024-02-24 01:49:06','2024-02-24 01:49:06',NULL),(8,0,'authentication',NULL,'authentication',0,'2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(9,0,'pages',NULL,'pages',0,'2024-02-24 01:49:07','2024-02-24 01:49:07',NULL),(10,0,'socials',NULL,'socials',0,'2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(11,0,'locations',NULL,'locations',0,'2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(12,0,'job-categories',NULL,'job-categories',0,'2024-02-24 01:49:09','2024-02-24 01:49:09',NULL),(13,0,'companies',NULL,'companies',0,'2024-02-24 01:49:10','2024-02-24 01:49:10',NULL),(14,0,'jobs',NULL,'jobs',0,'2024-02-24 01:49:11','2024-02-24 01:49:11',NULL),(15,0,'resume',NULL,'resume',0,'2024-02-24 01:49:13','2024-02-24 01:49:13',NULL),(16,0,'avatars',NULL,'avatars',0,'2024-02-24 01:49:13','2024-02-24 01:49:13',NULL),(17,0,'covers',NULL,'covers',0,'2024-02-24 01:49:13','2024-02-24 01:49:13',NULL),(18,0,'teams',NULL,'teams',0,'2024-02-24 01:49:42','2024-02-24 01:49:42',NULL),(19,0,'testimonials',NULL,'testimonials',0,'2024-02-24 01:49:42','2024-02-24 01:49:42',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-02-24 01:49:43','2024-02-24 01:49:43');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage-1','fi fi-rr-home',1,'Home 1',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2','fi fi-rr-home',2,'Home 2',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3','fi fi-rr-home',3,'Home 3',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4','fi fi-rr-home',4,'Home 4',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(6,1,1,5,'Botble\\Page\\Models\\Page','/homepage-5','fi fi-rr-home',5,'Home 5',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(7,1,1,6,'Botble\\Page\\Models\\Page','/homepage-6','fi fi-rr-home',6,'Home 6',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(8,1,0,7,'Botble\\Page\\Models\\Page','/jobs',NULL,0,'Find a Job',NULL,'_self',1,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(9,1,8,NULL,NULL,'/jobs?layout=grid','fi fi-rr-briefcase',0,'Jobs Grid',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(10,1,8,NULL,NULL,'/jobs','fi fi-rr-briefcase',0,'Jobs List',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(11,1,8,NULL,NULL,'/jobs/ui-ux-designer-full-time','fi fi-rr-briefcase',0,'Job Details',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(12,1,8,NULL,NULL,'/jobs/full-stack-engineer','fi fi-rr-briefcase',0,'Job External',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(13,1,8,NULL,NULL,'/jobs/java-software-engineer','fi fi-rr-briefcase',0,'Job Hide Company',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(14,1,0,8,'Botble\\Page\\Models\\Page','/companies',NULL,0,'Companies',NULL,'_self',1,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(15,1,14,8,'Botble\\Page\\Models\\Page','/companies','fi fi-rr-briefcase',0,'Companies',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(16,1,14,NULL,NULL,'/companies/linkedin','fi fi-rr-info',0,'Company Details',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(17,1,0,9,'Botble\\Page\\Models\\Page','/candidates',NULL,0,'Candidates',NULL,'_self',1,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(18,1,17,9,'Botble\\Page\\Models\\Page','/candidates','fi fi-rr-user',0,'Candidates Grid',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(19,1,17,NULL,NULL,'/candidates/ola','fi fi-rr-info',0,'Candidate Details',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(20,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(21,1,20,10,'Botble\\Page\\Models\\Page','/about-us','fi fi-rr-star',0,'About Us',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(22,1,20,11,'Botble\\Page\\Models\\Page','/pricing-plan','fi fi-rr-database',0,'Pricing Plan',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(23,1,20,12,'Botble\\Page\\Models\\Page','/contact','fi fi-rr-paper-plane',0,'Contact Us',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(24,1,20,NULL,NULL,'/register','fi fi-rr-user-add',0,'Register',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(25,1,20,NULL,NULL,'/login','fi fi-rr-fingerprint',0,'Sign in',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(26,1,20,NULL,NULL,'/password/request','fi fi-rr-settings',0,'Reset Password',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(27,1,0,13,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(28,1,27,13,'Botble\\Page\\Models\\Page','/blog','fi fi-rr-edit',0,'Blog Grid',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(29,1,27,NULL,NULL,'/blog/interview-question-why-dont-you-have-a-degree','fi fi-rr-document-signed',0,'Blog Single',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(30,2,0,10,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(31,2,0,NULL,NULL,'#',NULL,0,'Our Team',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(32,2,0,NULL,NULL,'#',NULL,0,'Products',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(33,2,0,12,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(34,3,0,10,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Feature',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(35,3,0,11,'Botble\\Page\\Models\\Page','/pricing-plan',NULL,0,'Pricing',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(36,3,0,NULL,NULL,'#',NULL,0,'Credit',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(37,3,0,15,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQ',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(38,4,0,NULL,NULL,'#',NULL,0,'iOS',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(39,4,0,NULL,NULL,'#',NULL,0,'Android',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(40,4,0,NULL,NULL,'#',NULL,0,'Microsoft',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(41,4,0,NULL,NULL,'#',NULL,0,'Desktop',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(42,5,0,14,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(43,5,0,17,'Botble\\Page\\Models\\Page','/terms',NULL,0,'Terms',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43'),(44,5,0,5,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'FAQ',NULL,'_self',0,'2024-02-24 01:49:43','2024-02-24 01:49:43');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(2,'Resources','resources','published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(3,'Community','community','published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(4,'Quick links','quick-links','published','2024-02-24 01:49:43','2024-02-24 01:49:43'),(5,'More','more','published','2024-02-24 01:49:43','2024-02-24 01:49:43');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_breadcrumb','[\"pages\\/background-breadcrumb.png\"]',10,'Botble\\Page\\Models\\Page','2024-02-24 01:49:05','2024-02-24 01:49:05'),(2,'background_breadcrumb','[\"pages\\/background-breadcrumb.png\"]',12,'Botble\\Page\\Models\\Page','2024-02-24 01:49:05','2024-02-24 01:49:05'),(3,'cover_image','[\"news\\/cover-image1.png\"]',1,'Botble\\Blog\\Models\\Post','2024-02-24 01:49:06','2024-02-24 01:49:06'),(4,'cover_image','[\"news\\/cover-image2.png\"]',2,'Botble\\Blog\\Models\\Post','2024-02-24 01:49:06','2024-02-24 01:49:06'),(5,'cover_image','[\"news\\/cover-image3.png\"]',3,'Botble\\Blog\\Models\\Post','2024-02-24 01:49:06','2024-02-24 01:49:06'),(6,'icon_image','[\"general\\/content.png\"]',1,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(7,'job_category_image','[\"job-categories\\/img-cover-1.png\"]',1,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(8,'icon_image','[\"general\\/research.png\"]',2,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(9,'job_category_image','[\"job-categories\\/img-cover-1.png\"]',2,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(10,'icon_image','[\"general\\/marketing.png\"]',3,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(11,'job_category_image','[\"job-categories\\/img-cover-3.png\"]',3,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(12,'icon_image','[\"general\\/customer.png\"]',4,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(13,'job_category_image','[\"job-categories\\/img-cover-2.png\"]',4,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(14,'icon_image','[\"general\\/finance.png\"]',5,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(15,'job_category_image','[\"job-categories\\/img-cover-2.png\"]',5,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(16,'icon_image','[\"general\\/lightning.png\"]',6,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(17,'job_category_image','[\"job-categories\\/img-cover-2.png\"]',6,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(18,'icon_image','[\"general\\/human.png\"]',7,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(19,'job_category_image','[\"job-categories\\/img-cover-1.png\"]',7,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(20,'icon_image','[\"general\\/management.png\"]',8,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(21,'job_category_image','[\"job-categories\\/img-cover-3.png\"]',8,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(22,'icon_image','[\"general\\/retail.png\"]',9,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(23,'job_category_image','[\"job-categories\\/img-cover-3.png\"]',9,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(24,'icon_image','[\"general\\/security.png\"]',10,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(25,'job_category_image','[\"job-categories\\/img-cover-3.png\"]',10,'Botble\\JobBoard\\Models\\Category','2024-02-24 01:49:10','2024-02-24 01:49:10'),(26,'cover_image','[\"companies\\/company-cover-image.png\"]',1,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(27,'cover_image','[\"companies\\/company-cover-image.png\"]',2,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(28,'cover_image','[\"companies\\/company-cover-image.png\"]',3,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(29,'cover_image','[\"companies\\/company-cover-image.png\"]',4,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(30,'cover_image','[\"companies\\/company-cover-image.png\"]',5,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(31,'cover_image','[\"companies\\/company-cover-image.png\"]',6,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(32,'cover_image','[\"companies\\/company-cover-image.png\"]',7,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(33,'cover_image','[\"companies\\/company-cover-image.png\"]',8,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(34,'cover_image','[\"companies\\/company-cover-image.png\"]',9,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(35,'cover_image','[\"companies\\/company-cover-image.png\"]',10,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(36,'cover_image','[\"companies\\/company-cover-image.png\"]',11,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(37,'cover_image','[\"companies\\/company-cover-image.png\"]',12,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(38,'cover_image','[\"companies\\/company-cover-image.png\"]',13,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(39,'cover_image','[\"companies\\/company-cover-image.png\"]',14,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(40,'cover_image','[\"companies\\/company-cover-image.png\"]',15,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(41,'cover_image','[\"companies\\/company-cover-image.png\"]',16,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(42,'cover_image','[\"companies\\/company-cover-image.png\"]',17,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(43,'cover_image','[\"companies\\/company-cover-image.png\"]',18,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(44,'cover_image','[\"companies\\/company-cover-image.png\"]',19,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(45,'cover_image','[\"companies\\/company-cover-image.png\"]',20,'Botble\\JobBoard\\Models\\Company','2024-02-24 01:49:11','2024-02-24 01:49:11'),(46,'featured_image','[\"jobs\\/img1.png\"]',1,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(47,'featured_image','[\"jobs\\/img2.png\"]',2,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(48,'featured_image','[\"jobs\\/img3.png\"]',3,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(49,'featured_image','[\"jobs\\/img4.png\"]',4,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(50,'featured_image','[\"jobs\\/img5.png\"]',5,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(51,'featured_image','[\"jobs\\/img6.png\"]',6,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(52,'featured_image','[\"jobs\\/img7.png\"]',7,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(53,'featured_image','[\"jobs\\/img8.png\"]',8,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(54,'featured_image','[\"jobs\\/img9.png\"]',9,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(55,'featured_image','[\"jobs\\/img3.png\"]',10,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(56,'featured_image','[\"jobs\\/img6.png\"]',11,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(57,'featured_image','[\"jobs\\/img3.png\"]',12,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:11','2024-02-24 01:49:11'),(58,'featured_image','[\"jobs\\/img5.png\"]',13,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(59,'featured_image','[\"jobs\\/img8.png\"]',14,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(60,'featured_image','[\"jobs\\/img4.png\"]',15,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(61,'featured_image','[\"jobs\\/img2.png\"]',16,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(62,'featured_image','[\"jobs\\/img5.png\"]',17,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(63,'featured_image','[\"jobs\\/img9.png\"]',18,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(64,'featured_image','[\"jobs\\/img9.png\"]',19,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(65,'featured_image','[\"jobs\\/img9.png\"]',20,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(66,'featured_image','[\"jobs\\/img1.png\"]',21,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(67,'featured_image','[\"jobs\\/img8.png\"]',22,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(68,'featured_image','[\"jobs\\/img8.png\"]',23,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(69,'featured_image','[\"jobs\\/img5.png\"]',24,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(70,'featured_image','[\"jobs\\/img3.png\"]',25,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(71,'featured_image','[\"jobs\\/img2.png\"]',26,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(72,'featured_image','[\"jobs\\/img9.png\"]',27,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(73,'featured_image','[\"jobs\\/img3.png\"]',28,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(74,'featured_image','[\"jobs\\/img5.png\"]',29,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(75,'featured_image','[\"jobs\\/img7.png\"]',30,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(76,'featured_image','[\"jobs\\/img7.png\"]',31,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(77,'featured_image','[\"jobs\\/img9.png\"]',32,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(78,'featured_image','[\"jobs\\/img6.png\"]',33,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(79,'featured_image','[\"jobs\\/img7.png\"]',34,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(80,'featured_image','[\"jobs\\/img8.png\"]',35,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(81,'featured_image','[\"jobs\\/img2.png\"]',36,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(82,'featured_image','[\"jobs\\/img7.png\"]',37,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(83,'featured_image','[\"jobs\\/img4.png\"]',38,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(84,'featured_image','[\"jobs\\/img4.png\"]',39,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(85,'featured_image','[\"jobs\\/img8.png\"]',40,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(86,'featured_image','[\"jobs\\/img6.png\"]',41,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(87,'featured_image','[\"jobs\\/img3.png\"]',42,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(88,'featured_image','[\"jobs\\/img3.png\"]',43,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(89,'featured_image','[\"jobs\\/img2.png\"]',44,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(90,'featured_image','[\"jobs\\/img7.png\"]',45,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(91,'featured_image','[\"jobs\\/img7.png\"]',46,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:12','2024-02-24 01:49:12'),(92,'featured_image','[\"jobs\\/img9.png\"]',47,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:13','2024-02-24 01:49:13'),(93,'featured_image','[\"jobs\\/img9.png\"]',48,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:13','2024-02-24 01:49:13'),(94,'featured_image','[\"jobs\\/img4.png\"]',49,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:13','2024-02-24 01:49:13'),(95,'featured_image','[\"jobs\\/img1.png\"]',50,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:13','2024-02-24 01:49:13'),(96,'featured_image','[\"jobs\\/img8.png\"]',51,'Botble\\JobBoard\\Models\\Job','2024-02-24 01:49:13','2024-02-24 01:49:13'),(97,'cover_image','[\"covers\\/2.png\"]',1,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:14','2024-02-24 01:49:14'),(98,'cover_image','[\"covers\\/3.png\"]',2,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:14','2024-02-24 01:49:14'),(99,'cover_image','[\"covers\\/2.png\"]',3,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:14','2024-02-24 01:49:14'),(100,'cover_image','[\"covers\\/3.png\"]',4,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:15','2024-02-24 01:49:15'),(101,'cover_image','[\"covers\\/2.png\"]',5,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:15','2024-02-24 01:49:15'),(102,'cover_image','[\"covers\\/3.png\"]',6,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:15','2024-02-24 01:49:15'),(103,'cover_image','[\"covers\\/1.png\"]',7,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:15','2024-02-24 01:49:15'),(104,'cover_image','[\"covers\\/1.png\"]',8,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:16','2024-02-24 01:49:16'),(105,'cover_image','[\"covers\\/1.png\"]',9,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:16','2024-02-24 01:49:16'),(106,'cover_image','[\"covers\\/2.png\"]',10,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:16','2024-02-24 01:49:16'),(107,'cover_image','[\"covers\\/2.png\"]',11,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:16','2024-02-24 01:49:16'),(108,'cover_image','[\"covers\\/2.png\"]',12,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:17','2024-02-24 01:49:17'),(109,'cover_image','[\"covers\\/1.png\"]',13,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:17','2024-02-24 01:49:17'),(110,'cover_image','[\"covers\\/3.png\"]',14,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:17','2024-02-24 01:49:17'),(111,'cover_image','[\"covers\\/3.png\"]',15,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:18','2024-02-24 01:49:18'),(112,'cover_image','[\"covers\\/3.png\"]',16,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:18','2024-02-24 01:49:18'),(113,'cover_image','[\"covers\\/3.png\"]',17,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:18','2024-02-24 01:49:18'),(114,'cover_image','[\"covers\\/2.png\"]',18,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:18','2024-02-24 01:49:18'),(115,'cover_image','[\"covers\\/3.png\"]',19,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:19','2024-02-24 01:49:19'),(116,'cover_image','[\"covers\\/3.png\"]',20,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:19','2024-02-24 01:49:19'),(117,'cover_image','[\"covers\\/3.png\"]',21,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:19','2024-02-24 01:49:19'),(118,'cover_image','[\"covers\\/3.png\"]',22,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:20','2024-02-24 01:49:20'),(119,'cover_image','[\"covers\\/3.png\"]',23,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:20','2024-02-24 01:49:20'),(120,'cover_image','[\"covers\\/1.png\"]',24,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:20','2024-02-24 01:49:20'),(121,'cover_image','[\"covers\\/2.png\"]',25,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:21','2024-02-24 01:49:21'),(122,'cover_image','[\"covers\\/3.png\"]',26,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:21','2024-02-24 01:49:21'),(123,'cover_image','[\"covers\\/3.png\"]',27,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:21','2024-02-24 01:49:21'),(124,'cover_image','[\"covers\\/3.png\"]',28,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:22','2024-02-24 01:49:22'),(125,'cover_image','[\"covers\\/3.png\"]',29,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:22','2024-02-24 01:49:22'),(126,'cover_image','[\"covers\\/3.png\"]',30,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:22','2024-02-24 01:49:22'),(127,'cover_image','[\"covers\\/1.png\"]',31,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:23','2024-02-24 01:49:23'),(128,'cover_image','[\"covers\\/1.png\"]',32,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:23','2024-02-24 01:49:23'),(129,'cover_image','[\"covers\\/2.png\"]',33,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:23','2024-02-24 01:49:23'),(130,'cover_image','[\"covers\\/1.png\"]',34,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:24','2024-02-24 01:49:24'),(131,'cover_image','[\"covers\\/1.png\"]',35,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:24','2024-02-24 01:49:24'),(132,'cover_image','[\"covers\\/3.png\"]',36,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:25','2024-02-24 01:49:25'),(133,'cover_image','[\"covers\\/1.png\"]',37,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:25','2024-02-24 01:49:25'),(134,'cover_image','[\"covers\\/2.png\"]',38,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:25','2024-02-24 01:49:25'),(135,'cover_image','[\"covers\\/2.png\"]',39,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:25','2024-02-24 01:49:25'),(136,'cover_image','[\"covers\\/1.png\"]',40,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:26','2024-02-24 01:49:26'),(137,'cover_image','[\"covers\\/3.png\"]',41,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:26','2024-02-24 01:49:26'),(138,'cover_image','[\"covers\\/1.png\"]',42,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:26','2024-02-24 01:49:26'),(139,'cover_image','[\"covers\\/1.png\"]',43,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:26','2024-02-24 01:49:26'),(140,'cover_image','[\"covers\\/1.png\"]',44,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:27','2024-02-24 01:49:27'),(141,'cover_image','[\"covers\\/1.png\"]',45,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:27','2024-02-24 01:49:27'),(142,'cover_image','[\"covers\\/3.png\"]',46,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:27','2024-02-24 01:49:27'),(143,'cover_image','[\"covers\\/3.png\"]',47,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:28','2024-02-24 01:49:28'),(144,'cover_image','[\"covers\\/1.png\"]',48,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:28','2024-02-24 01:49:28'),(145,'cover_image','[\"covers\\/3.png\"]',49,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:28','2024-02-24 01:49:28'),(146,'cover_image','[\"covers\\/2.png\"]',50,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:28','2024-02-24 01:49:28'),(147,'cover_image','[\"covers\\/2.png\"]',51,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:29','2024-02-24 01:49:29'),(148,'cover_image','[\"covers\\/3.png\"]',52,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:29','2024-02-24 01:49:29'),(149,'cover_image','[\"covers\\/3.png\"]',53,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:29','2024-02-24 01:49:29'),(150,'cover_image','[\"covers\\/3.png\"]',54,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:29','2024-02-24 01:49:29'),(151,'cover_image','[\"covers\\/1.png\"]',55,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:30','2024-02-24 01:49:30'),(152,'cover_image','[\"covers\\/2.png\"]',56,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:30','2024-02-24 01:49:30'),(153,'cover_image','[\"covers\\/3.png\"]',57,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:30','2024-02-24 01:49:30'),(154,'cover_image','[\"covers\\/2.png\"]',58,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:30','2024-02-24 01:49:30'),(155,'cover_image','[\"covers\\/2.png\"]',59,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:31','2024-02-24 01:49:31'),(156,'cover_image','[\"covers\\/1.png\"]',60,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:31','2024-02-24 01:49:31'),(157,'cover_image','[\"covers\\/3.png\"]',61,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:31','2024-02-24 01:49:31'),(158,'cover_image','[\"covers\\/1.png\"]',62,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:32','2024-02-24 01:49:32'),(159,'cover_image','[\"covers\\/3.png\"]',63,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:32','2024-02-24 01:49:32'),(160,'cover_image','[\"covers\\/1.png\"]',64,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:32','2024-02-24 01:49:32'),(161,'cover_image','[\"covers\\/2.png\"]',65,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:32','2024-02-24 01:49:32'),(162,'cover_image','[\"covers\\/1.png\"]',66,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:33','2024-02-24 01:49:33'),(163,'cover_image','[\"covers\\/3.png\"]',67,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:33','2024-02-24 01:49:33'),(164,'cover_image','[\"covers\\/3.png\"]',68,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:33','2024-02-24 01:49:33'),(165,'cover_image','[\"covers\\/3.png\"]',69,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:34','2024-02-24 01:49:34'),(166,'cover_image','[\"covers\\/1.png\"]',70,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:34','2024-02-24 01:49:34'),(167,'cover_image','[\"covers\\/1.png\"]',71,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:34','2024-02-24 01:49:34'),(168,'cover_image','[\"covers\\/1.png\"]',72,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:34','2024-02-24 01:49:34'),(169,'cover_image','[\"covers\\/3.png\"]',73,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:35','2024-02-24 01:49:35'),(170,'cover_image','[\"covers\\/1.png\"]',74,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:35','2024-02-24 01:49:35'),(171,'cover_image','[\"covers\\/2.png\"]',75,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:35','2024-02-24 01:49:35'),(172,'cover_image','[\"covers\\/3.png\"]',76,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:36','2024-02-24 01:49:36'),(173,'cover_image','[\"covers\\/1.png\"]',77,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:36','2024-02-24 01:49:36'),(174,'cover_image','[\"covers\\/3.png\"]',78,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:36','2024-02-24 01:49:36'),(175,'cover_image','[\"covers\\/3.png\"]',79,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:36','2024-02-24 01:49:36'),(176,'cover_image','[\"covers\\/3.png\"]',80,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:37','2024-02-24 01:49:37'),(177,'cover_image','[\"covers\\/1.png\"]',81,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:37','2024-02-24 01:49:37'),(178,'cover_image','[\"covers\\/1.png\"]',82,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:37','2024-02-24 01:49:37'),(179,'cover_image','[\"covers\\/3.png\"]',83,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:37','2024-02-24 01:49:37'),(180,'cover_image','[\"covers\\/1.png\"]',84,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:38','2024-02-24 01:49:38'),(181,'cover_image','[\"covers\\/2.png\"]',85,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:38','2024-02-24 01:49:38'),(182,'cover_image','[\"covers\\/3.png\"]',86,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:38','2024-02-24 01:49:38'),(183,'cover_image','[\"covers\\/3.png\"]',87,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:38','2024-02-24 01:49:38'),(184,'cover_image','[\"covers\\/1.png\"]',88,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:39','2024-02-24 01:49:39'),(185,'cover_image','[\"covers\\/3.png\"]',89,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:39','2024-02-24 01:49:39'),(186,'cover_image','[\"covers\\/2.png\"]',90,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:39','2024-02-24 01:49:39'),(187,'cover_image','[\"covers\\/3.png\"]',91,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:40','2024-02-24 01:49:40'),(188,'cover_image','[\"covers\\/3.png\"]',92,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:40','2024-02-24 01:49:40'),(189,'cover_image','[\"covers\\/3.png\"]',93,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:40','2024-02-24 01:49:40'),(190,'cover_image','[\"covers\\/1.png\"]',94,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:40','2024-02-24 01:49:40'),(191,'cover_image','[\"covers\\/1.png\"]',95,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:41','2024-02-24 01:49:41'),(192,'cover_image','[\"covers\\/3.png\"]',96,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:41','2024-02-24 01:49:41'),(193,'cover_image','[\"covers\\/3.png\"]',97,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:41','2024-02-24 01:49:41'),(194,'cover_image','[\"covers\\/2.png\"]',98,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:41','2024-02-24 01:49:41'),(195,'cover_image','[\"covers\\/2.png\"]',99,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:42','2024-02-24 01:49:42'),(196,'cover_image','[\"covers\\/2.png\"]',100,'Botble\\JobBoard\\Models\\Account','2024-02-24 01:49:42','2024-02-24 01:49:42');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_10_103353_fix_social_links',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_07_19_152743_migrate_old_city_state_image',1),(30,'2023_08_21_090810_make_page_content_nullable',1),(31,'2023_09_14_021936_update_index_for_slugs_table',1),(32,'2023_12_06_100448_change_random_hash_for_media',1),(33,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(34,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(35,'2023_12_20_034718_update_invoice_amount',1),(36,'2015_06_29_025744_create_audit_history',2),(37,'2023_11_14_033417_change_request_column_in_table_audit_histories',2),(38,'2015_06_18_033822_create_blog_table',3),(39,'2021_02_16_092633_remove_default_value_for_author_type',3),(40,'2021_12_03_030600_create_blog_translations',3),(41,'2022_04_19_113923_add_index_to_table_posts',3),(42,'2023_08_29_074620_make_column_author_id_nullable',3),(43,'2016_06_17_091537_create_contacts_table',4),(44,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',4),(45,'2018_07_09_221238_create_faq_table',5),(46,'2021_12_03_082134_create_faq_translations',5),(47,'2023_11_17_063408_add_description_column_to_faq_categories_table',5),(48,'2016_10_13_150201_create_galleries_table',6),(49,'2021_12_03_082953_create_gallery_translations',6),(50,'2022_04_30_034048_create_gallery_meta_translations_table',6),(51,'2023_08_29_075308_make_column_user_id_nullable',6),(52,'2022_06_20_093259_create_job_board_tables',7),(53,'2022_09_12_061845_update_table_activity_logs',7),(54,'2022_09_13_042407_create_table_jb_jobs_types',7),(55,'2022_09_15_030017_update_jb_jobs_table',7),(56,'2022_09_15_094840_add_job_employer_colleagues',7),(57,'2022_09_27_000001_create_jb_invoices_tables',7),(58,'2022_09_30_144924_update_jobs_table',7),(59,'2022_10_04_085631_add_company_logo_to_jb_invoices',7),(60,'2022_10_10_030606_create_reviews_table',7),(61,'2022_11_09_065056_add_missing_jobs_page',7),(62,'2022_11_10_065056_add_columns_to_accounts',7),(63,'2022_11_16_034756_add_column_cover_letter_to_accounts',7),(64,'2022_11_29_304756_create_jb_account_favorite_skills_table',7),(65,'2022_11_29_304757_create_jb_account_favorite_tags',7),(66,'2022_12_26_304758_create_table_jb_experiences',7),(67,'2022_12_26_304759_create_table_jb_education',7),(68,'2023_01_31_023233_create_jb_custom_fields_table',7),(69,'2023_02_06_024257_add_package_translations',7),(70,'2023_02_08_062457_add_custom_fields_translation_table',7),(71,'2023_04_03_126927_add_parent_id_to_jb_categories_table',7),(72,'2023_05_04_000001_add_hide_cv_to_jb_accounts_table',7),(73,'2023_05_09_062031_unique_reviews_table',7),(74,'2023_05_13_180010_make_jb_reviews_table_morphable',7),(75,'2023_05_16_113126_fix_account_confirmed_at',7),(76,'2023_07_03_135746_add_zip_code_to_jb_jobs_table',7),(77,'2023_07_06_022808_create_jb_coupons_table',7),(78,'2023_07_14_045213_add_coupon_code_column_to_jb_invoices_table',7),(79,'2024_01_31_022842_add_description_to_jb_packages_table',7),(80,'2024_02_01_080657_add_tax_id_column_to_jb_companies_table',7),(81,'2016_10_03_032336_create_languages_table',8),(82,'2023_09_14_022423_add_index_for_language_table',8),(83,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(84,'2021_12_03_075608_create_page_translations',9),(85,'2023_07_06_011444_create_slug_translations_table',9),(86,'2019_11_18_061011_create_country_table',10),(87,'2021_12_03_084118_create_location_translations',10),(88,'2021_12_03_094518_migrate_old_location_data',10),(89,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(90,'2022_01_16_085908_improve_plugin_location',10),(91,'2022_08_04_052122_delete_location_backup_tables',10),(92,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(93,'2023_07_26_041451_add_more_columns_to_location_table',10),(94,'2023_07_27_041451_add_more_columns_to_location_translation_table',10),(95,'2023_08_15_073307_drop_unique_in_states_cities_translations',10),(96,'2023_10_21_065016_make_state_id_in_table_cities_nullable',10),(97,'2017_10_24_154832_create_newsletter_table',11),(98,'2017_05_18_080441_create_payment_tables',12),(99,'2021_03_27_144913_add_customer_type_into_table_payments',12),(100,'2021_05_24_034720_make_column_currency_nullable',12),(101,'2021_08_09_161302_add_metadata_column_to_payments_table',12),(102,'2021_10_19_020859_update_metadata_field',12),(103,'2022_06_28_151901_activate_paypal_stripe_plugin',12),(104,'2022_07_07_153354_update_charge_id_in_table_payments',12),(105,'2022_11_02_092723_team_create_team_table',13),(106,'2023_08_11_094574_update_team_table',13),(107,'2023_11_30_085354_add_missing_description_to_team',13),(108,'2018_07_09_214610_create_testimonial_table',14),(109,'2021_12_03_083642_create_testimonials_translations',14),(110,'2016_10_07_193005_create_translations_table',15),(111,'2023_12_12_105220_drop_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage 1','<div>[search-box title=\"The Easiest Way to Get Your New Job\" highlight_text=\"Easiest Way\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" banner_image_1=\"pages/banner1.png\" icon_top_banner=\"pages/icon-top-banner.png\" banner_image_2=\"pages/banner2.png\" icon_bottom_banner=\"pages/icon-bottom-banner.png\" style=\"style-1\" trending_keywords=\"Design,Development,Manager,Senior\"][/search-box]</div><div>[featured-job-categories title=\"Browse by category\" subtitle=\"Find the job that’s perfect for you. about 800+ new jobs everyday\"][/featured-job-categories]</div><div>[apply-banner subtitle=\"Let’s Work Together &lt;br\\&gt;&amp; Explore Opportunities\" highlight_sub_title_text=\"Work, Explore\" title_1=\"We are\" title_2=\"HIRING\" button_apply_text=\"Apply\" button_apply_link=\"#\" apply_image_left=\"pages/bg-left-hiring.png\" apply_image_right=\"pages/bg-right-hiring.png\"][/apply-banner]</div><div>[job-of-the-day title=\"Jobs of the day\" subtitle=\"Search and connect with the right candidates faster.\" job_categories=\"4,9,1,3,5,7\" style=\"style-1\"][/job-of-the-day]</div><div>[job-grid title=\"Find The One That’s Right For You\" high_light_title_text=\"Right\" subtitle=\"Millions Of Jobs.\" description=\"Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide. The right job is out there.\" image_job_1=\"pages/img-chart.png\" image_job_2=\"pages/controlcard.png\" image=\"pages/img1.png\" button_text=\"Search jobs\" button_url=\"#\" link_text=\"Learn more\" link_text_url=\"#\"][/job-grid]</div><div>[top-companies title=\"Top Recruiters\" description=\"Discover your next career move, freelance gig, or internship\"][/top-companies]</div><div>[job-by-location title=\"Jobs by Location\" description=\"Find your favourite jobs and get the benefits of yourself\" city=\"1,2,3,4,5,6\"][/job-by-location]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\"][/news-and-blogs]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(2,'Homepage 2','<div>[search-box subtitle=\"We have 150,000+ live jobs\" title=\"The #1 Job Board for Hiring or Find your next job\" highlight_text=\"Job Board for\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" counter_title_1=\"Daily Jobs Posted\" counter_number_1=\"265\" counter_title_2=\"Recruiters\" counter_number_2=\"17\" counter_title_3=\"Freelancers\" counter_number_3=\"15\" counter_title_4=\"Blog Tips\" counter_number_4=\"28\" background_image=\"pages/banner-section-search-box.png\" style=\"style-2\" trending_keywords=\"Design,Development,Manager,Senior\"][/search-box]</div><div>[job-of-the-day title=\"Jobs of the day\" subtitle=\"Search and connect with the right candidates faster.\" job_categories=\"1,2,5,4,7,8\" style=\"style-2\"][/job-of-the-day]</div><div>[popular-category title=\"Popular category\" subtitle=\"Search and connect with the right candidates faster.\"][/popular-category]</div><div>[job-by-location title=\"Jobs by Location\" description=\"Find your favourite jobs and get the benefits of yourself\" city=\"12,46,69,111,121,116,62\" style=\"style-2\"][/job-by-location]</div><div>[counter-section counter_title_1=\"Completed Cases\" counter_description_1=\"We always provide people a complete solution upon focused of any business\" counter_number_1=\"1000\" counter_title_2=\"Our Office\" counter_description_2=\"We always provide people a complete solution upon focused of any business\" counter_number_2=\"1\" counter_title_3=\"Skilled People\" counter_description_3=\"We always provide people a complete solution upon focused of any business\" counter_number_3=\"6\" counter_title_4=\"Happy Clients\" counter_description_4=\"We always provide people a complete solution upon focused of any business\" counter_number_4=\"2\"][/counter-section]</div><div>[top-companies title=\"Top Recruiters\" description=\"Discover your next career move, freelance gig, or internship\" style=\"style-2\"][/top-companies]</div><div>[advertisement-banner first_title=\"Job Tools Services\" first_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam laoreet rutrum quam, id faucibus erat interdum a. Curabitur eget tortor a nulla interdum semper.\" load_more_first_content_text=\"Find Out More\" load_more_link_first_content=\"#\" image_of_first_content=\"pages/job-tools.png\" second_title=\"Planning a Job?\" second_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam laoreet rutrum quam, id faucibus erat interdum a. Curabitur eget tortor a nulla interdum semper.\" load_more_second_content_text=\"Find Out More\" load_more_link_second_content=\"#\" image_of_second_content=\"pages/planning-job.png\"][/advertisement-banner]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\" style=\"style-2\"][/news-and-blogs]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(3,'Homepage 3','<div>[search-box title=\"The #1 Job Board for Hiring or Find your next job\" highlight_text=\"Job Board for\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" style=\"style-3\" trending_keywords=\"Design,Development,Manager,Senior\"][/search-box]</div><div>[job-of-the-day title=\"Jobs of the day\" subtitle=\"Search and connect with the right candidates faster.\" job_categories=\"1,2,5,4,7,8\" style=\"style-3\"][/job-of-the-day]</div><div>[top-candidates title=\"Top Candidates\" description=\"Jobs is a curated job board of the best jobs for developers, designers and marketers in the tech industry.\" limit=\"8\" style=\"style-3\"][/top-candidates]</div><div>[top-companies title=\"Top Recruiters\" description=\"Discover your next career move, freelance gig, or internship\" style=\"style-3\"][/top-companies]</div><div>[apply-banner subtitle=\"Let’s Work Together &lt;br\\&gt;&amp; Explore Opportunities\" highlight_sub_title_text=\"Work, Explore\" title_1=\"We are\" title_2=\"HIRING\" button_apply_text=\"Apply\" button_apply_link=\"#\" apply_image_left=\"pages/bg-left-hiring.png\" apply_image_right=\"pages/bg-right-hiring.png\" style=\"style-3\"][/apply-banner]</div><div>[our-partners title=\"Trusted by\" name_1=\"Asus\" url_1=\"https://www.asus.com\" image_1=\"our-partners/asus.png\" name_2=\"Dell\" url_2=\"https://www.dell.com\" image_2=\"our-partners/dell.png\" name_3=\"Microsoft\" url_3=\"https://www.microsoft.com\" image_3=\"our-partners/microsoft.png\" name_4=\"Acer\" url_4=\"https://www.acer.com\" image_4=\"our-partners/acer.png\" name_5=\"Nokia\" url_5=\"https://www.nokia.com\" image_5=\"our-partners/nokia.png\"][/our-partners]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\" style=\"style-3\"][/news-and-blogs]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(4,'Homepage 4','<div>[search-box title=\"Get The Right Job You Deserve\" highlight_text=\"Right Job\" banner_image_1=\"pages/home-page-4-banner.png\" style=\"style-1\" trending_keywords=\"Designer, Web, IOS, Developer, PHP, Senior, Engineer\" background_color=\"#000\"][/search-box]</div><div>[job-of-the-day title=\"Latest Jobs Post\" subtitle=\"Explore the different types of available jobs to apply discover which is right for you.\" job_categories=\"1,2,3,4,5,6,8,7\" style=\"style-3\"][/job-of-the-day]</div><div>[featured-job-categories title=\"Browse by category\" subtitle=\"Find the job that’s perfect for you. about 800+ new jobs everyday\" limit_category=\"10\" background_image=\"pages/bg-cat.png\" style=\"style-2\"][/featured-job-categories]</div><div>[[testimonials title=\"See Some Words\" description=\"Thousands of employee get their ideal jobs and feed back to us!\" style=\"style-2\"][/testimonials]</div><div>[our-partners title=\"Trusted by\" name_1=\"Asus\" url_1=\"https://www.asus.com\" image_1=\"our-partners/asus.png\" name_2=\"Dell\" url_2=\"https://www.dell.com\" image_2=\"our-partners/dell.png\" name_3=\"Microsoft\" url_3=\"https://www.microsoft.com\" image_3=\"our-partners/microsoft.png\" name_4=\"Acer\" url_4=\"https://www.acer.com\" image_4=\"our-partners/acer.png\" name_5=\"Nokia\" url_5=\"https://www.nokia.com\" image_5=\"our-partners/nokia.png\"][/our-partners]</div><div>[popular-category title=\"Popular category\" subtitle=\"Search and connect with the right candidates faster.\"][/popular-category]</div><div>[job-by-location title=\"Jobs by Location\" description=\"Find your favourite jobs and get the benefits of yourself\" city=\"12,46,69,111,121,116,62\" style=\"style-2\"][/job-by-location]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\"][/news-and-blogs]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(5,'Homepage 5','<div>[search-box title=\"Find Jobs, &#x3C;br&#x3E; Hire Creatives\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" banner_image_1=\"pages/banner1.png\" banner_image_2=\"pages/banner2.png\" banner_image_3=\"pages/banner3.png\" banner_image_4=\"pages/banner4.png\" banner_image_5=\"pages/banner5.png\" banner_image_6=\"pages/banner6.png\" style=\"style-5\"][/search-box]</div><div>[counter-section counter_title_1=\"Completed Cases\" counter_description_1=\"We always provide people a complete solution upon focused of any business\" counter_number_1=\"1000\" counter_title_2=\"Our Office\" counter_description_2=\"We always provide people a complete solution upon focused of any business\" counter_number_2=\"1\" counter_title_3=\"Skilled People\" counter_description_3=\"We always provide people a complete solution upon focused of any business\" counter_number_3=\"6\" counter_title_4=\"Happy Clients\" counter_description_4=\"We always provide people a complete solution upon focused of any business\" counter_number_4=\"2\"][/counter-section]</div><div>[popular-category title=\"Explore the Marketplace\" subtitle=\"Search and connect with the right candidates faster. Tell us what you’ve looking for and we’ll get to work for you.\" style=\"style-5\"][/popular-category]</div><div>[job-of-the-day title=\"Latest Jobs Post\" subtitle=\"Explore the different types of available jobs to apply &#x3C;br&#x3E; discover which is right for you.\" job_categories=\"1,2,5,4,7,8\" style=\"style-2\"][/job-of-the-day]</div><div>[job-grid style=\"style-2\" title=\"Create Your Personal Account Profile\" subtitle=\"Create Profile\" description=\"Work Profile is a personality assessment that measures an individual\'s work personality through their workplace traits, social and emotional traits; as well as the values and aspirations that drive them forward.\" image=\"pages/img-profile.png\" button_text=\"Create Profile\" button_url=\"/register\"][/job-grid]</div><div>[how-it-works title=\"How It Works\" description=\"Just via some simple steps, you will find your ideal candidates you’r looking for!\" step_label_1=\"Register an &#x3C;br&#x3E; account to start\" step_help_1=\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\" step_label_2=\"Explore over &#x3C;br&#x3E; thousands of resumes\" step_help_2=\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\" step_label_3=\"Find the most &#x3C;br&#x3E; suitable candidate\" step_help_3=\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\" button_label=\"Get Started\" button_url=\"#\"][/how-it-works]</div><div>[top-candidates title=\"Top Candidates\" description=\"Jobs is a curated job board of the best jobs for developers, designers &#x3C;br&#x3E; and marketers in the tech industry.\" limit=\"8\" style=\"style-5\"][/top-candidates]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\" style=\"style-2\"][/news-and-blogs]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(6,'Homepage 6','<div>[search-box title=\"There Are 102,256 Postings Here For you!\" highlight_text=\"102,256\" description=\"Find Jobs, Employment & Career Opportunities\" style=\"style-4\" trending_keywords=\"Design,Development,Manager,Senior,,\" background_color=\"#000\"][/search-box]</div><div>[gallery image_1=\"galleries/1.jpg\" image_2=\"galleries/2.jpg\" image_3=\"galleries/3.jpg\" image_4=\"galleries/4.jpg\" image_5=\"galleries/5.jpg\"][/gallery]</div><div>[featured-job-categories title=\"Browse by category\" subtitle=\"Find the job that’s perfect for you. about 800+ new jobs everyday\"][/featured-job-categories]</div><div>[job-grid style=\"style-2\" title=\"Create Your Personal Account Profile\" subtitle=\"Create Profile\" description=\"Work Profile is a personality assessment that measures an individual\'s work personality through their workplace traits, social and emotional traits; as well as the values and aspirations that drive them forward.\" image=\"pages/img-profile.png\" button_text=\"Create Profile\" button_url=\"/register\"][/job-grid]</div><div>[job-of-the-day title=\"Latest Jobs Post\" subtitle=\"Explore the different types of available jobs to apply discover which is right for you.\" job_categories=\"1,2,3,4,5,6\" style=\"style-2\"][/job-of-the-day]</div><div>[job-search-banner title=\"Job search for people passionate about startup\" background_image=\"pages/img-job-search.png\" checkbox_title_1=\"Create an account\" checkbox_description_1=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec justo a quam varius maximus. Maecenas sodales tortor quis tincidunt commodo.\" checkbox_title_2=\"Search for Jobs\" checkbox_description_2=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec justo a quam varius maximus. Maecenas sodales tortor quis tincidunt commodo.\" checkbox_title_3=\"Save & Apply\" checkbox_description_3=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec justo a quam varius maximus. Maecenas sodales tortor quis tincidunt commodo.\"][/job-search-banner]</div>',1,NULL,'homepage',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(7,'Jobs','<div>[search-box title=\"The official IT Jobs site\" highlight_text=\"IT Jobs\" description=\"“JobBox is our first stop whenever we\'re hiring a PHP role. We\'ve hired 10 PHP developers in the last few years, all thanks to JobBox.” — Andrew Hall, Elite JSC.\" banner_image_1=\"pages/left-job-head.png\" banner_image_2=\"pages/right-job-head.png\" style=\"style-3\" background_color=\"#000\"][/search-box]</div><div>[job-list max_salary_range=\"10000\"][/job-list]</div>',1,NULL,'default',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(8,'Companies','<div>[job-companies title=\"Browse Companies\" subtitle=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero repellendus magni, atque delectus molestias quis?\"][/job-companies]</div>',1,NULL,'default',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(9,'Candidates','<div>[job-candidates title=\"Browse Candidates\" description=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero repellendus magni, atque &#x3C;br&#x3E; delectus molestias quis?\" number_per_page=\"9\" style=\"grid\"][/job-candidates]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" style=\"style-2\"][/news-and-blogs]</div>',1,NULL,'default',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(10,'About us','<div>[company-about title=\"About Our Company\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ligula ante, dictum non aliquet eu, dapibus ac quam. Morbi vel ante viverra orci tincidunt tempor eu id ipsum. Sed consectetur, risus a blandit tempor, velit magna pellentesque risus, at congue tellus dui quis nisl.\" title_box=\"What we can do?\" image=\"general/img-about2.png\" description_box=\"Aenean sollicituin, lorem quis bibendum auctor nisi elit consequat ipsum sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet maurisorbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctora ornare odio. Aenean sollicituin, lorem quis bibendum auctor nisi elit consequat ipsum sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet maurisorbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctora ornare odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis non nisi purus. Integer sit nostra, per inceptos himenaeos. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis non nisi purus. Integer sit nostra, per inceptos himenaeos.\" url=\"/\" text_button_box=\"Read more\"][/company-about]</div><div>[team title=\"About Our Company\" sub_title=\"OUR COMPANY\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ligula ante, dictum non aliquet eu, dapibus ac quam. Morbi vel ante viverra orci tincidunt tempor eu id ipsum. Sed consectetur, risus a blandit tempor, velit magna pellentesque risus, at congue tellus dui quis nisl.\" number_of_people=\"8\"][/team]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"View More\" button_link=\"/blog\" style=\"style-2\"][/news-and-blogs]</div><div>[testimonials title=\"Our Happy Customer\" description=\"When it comes to choosing the right web hosting provider, we know how easy it is to get overwhelmed with the number.\"][/testimonials]</div>',1,NULL,'page-detail','Get the latest news, updates and tips','published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(11,'Pricing Plan','<div>[pricing-table title=\"Pricing Table\" subtitle=\"Choose The Best Plan That’s For You\" number_of_package=\"3\"][/pricing-table]</div><div>[faq title=\"Frequently Asked Questions\" subtitle=\"Aliquam a augue suscipit, luctus neque purus ipsum neque dolor primis a libero tempus, blandit and cursus varius and magnis sapien\" number_of_faq=\"4\"][/faq]</div><div>[testimonials title=\"Our Happy Customer\" subtitle=\"When it comes to choosing the right web hosting provider, we know how easy it is to get overwhelmed with the number.\"][/testimonials]</div>',1,NULL,'default',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(12,'Contact','<div>[company-information company_name=\"Jobbox Company\" logo_company=\"general/logo-company.png\" company_address=\"205 North Michigan Avenue, Suite 810 Chicago, 60601, US\" company_phone=\"0543213336\" company_email=\"contact@jobbox.com\" branch_company_name_0=\"London\" branch_company_address_0=\"2118 Thornridge Cir. Syracuse, Connecticut 35624\" branch_company_name_1=\"New York\" branch_company_address_1=\"4517 Washington Ave. Manchester, Kentucky 39495\" branch_company_name_2=\"Chicago\" branch_company_address_2=\"3891 Ranchview Dr. Richardson, California 62639\" branch_company_name_3=\"San Francisco\" branch_company_address_3=\"4140 Parker Rd. Allentown, New Mexico 31134\" branch_company_name_4=\"Sysney\" branch_company_address_4=\"3891 Ranchview Dr. Richardson, California 62639\" branch_company_name_5=\"Singapore\" branch_company_address_5=\"4140 Parker Rd. Allentown, New Mexico 31134\"][/company-information]</div><div>[contact-form title=\"Contact us\" subtitle=\"Get in touch\" description=\"The right move at the right time saves your investment. live the dream of expanding your business.\" image=\"image-contact.png\" show_newsletter=\"yes\"][/contact-form]</div><div>[team title=\"Meet Our Team\" subtitle=\"OUR COMPANY\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ligula ante, dictum non aliquet eu, dapibus ac quam. Morbi vel ante viverra orci tincidunt tempor eu id ipsum. Sed consectetur, risus a blandit tempor, velit magna pellentesque risus, at congue tellus dui quis nisl.\" number_of_people=\"8\"][/team]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"View More\" button_link=\"/blog\" style=\"style-2\"][/news-and-blogs]</div><div>[testimonials title=\"Our Happy Customer\" subtitle=\"When it comes to choosing the right web hosting provider, we know how easy it is to get overwhelmed with the number.\"][/testimonials]</div>',1,NULL,'page-detail','Get the latest news, updates and tips','published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(13,'Blog','---',1,NULL,'page-detail','Get the latest news, updates and tips','published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(14,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><ul><li>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</li><li>Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</li><li>XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</li></ul>',1,NULL,'page-detail-boxed',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(15,'FAQs','<div>[faq title=\"Frequently Asked Questions\" number_of_faq=\"4\"][/faq]</div>',1,NULL,'page-detail',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(16,'Services','<p>Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not stoop? Soup of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never had to stop and untwist it. After a time she had peeped into the jury-box, and saw that, in her French lesson-book. The Mouse looked at Alice, as she leant against a buttercup to rest her chin upon Alice\'s shoulder, and it was looking for the immediate adoption of more broken glass.) \'Now tell me, Pat, what\'s.</p><p>I\'ve offended it again!\' For the Mouse heard this, it turned a back-somersault in at the Queen, \'and he shall tell you more than Alice could think of nothing better to say anything. \'Why,\' said the one who got any advantage from the Queen jumped up and to wonder what Latitude was, or Longitude either, but thought they were gardeners, or soldiers, or courtiers, or three of the Rabbit\'s voice along--\'Catch him, you by the pope, was soon left alone. \'I wish you wouldn\'t mind,\' said Alice.</p><p>Alice\'s, and they repeated their arguments to her, though, as they were gardeners, or soldiers, or courtiers, or three of the water, and seemed to be listening, so she tried the roots of trees, and I\'ve tried to beat time when I grow up, I\'ll write one--but I\'m grown up now,\' she added in a shrill, passionate voice. \'Would YOU like cats if you don\'t know what it was too slippery; and when she next peeped out the answer to shillings and pence. \'Take off your hat,\' the King triumphantly.</p><p>King triumphantly, pointing to Alice a good deal to come out among the trees as well go in at the top of the evening, beautiful Soup! Soup of the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, with a yelp of delight, which changed into alarm in another moment it was very hot, she kept tossing the baby violently up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t write it, and fortunately was just going.</p>',1,NULL,'page-detail-boxed',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(17,'Terms','<p>Alice, \'shall I NEVER get any older than you, and don\'t speak a word till I\'ve finished.\' So they went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on to the Knave of Hearts, and I don\'t care which happens!\' She ate a little sharp bark just over her head to hide a smile: some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a natural way. \'I thought you did,\' said the Gryphon, before Alice could see, when she caught it, and.</p><p>Duchess! Oh my dear Dinah! I wonder what I eat\" is the reason of that?\' \'In my youth,\' said his father, \'I took to the table for it, she found herself in a trembling voice to a lobster--\' (Alice began to repeat it, but her head down to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said Alice. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen, pointing to the.</p><p>Dormouse fell asleep instantly, and Alice was soon left alone. \'I wish the creatures argue. It\'s enough to get an opportunity of saying to herself how this same little sister of hers would, in the middle. Alice kept her waiting!\' Alice felt so desperate that she never knew so much at first, perhaps,\' said the Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said the others. \'Are their heads down and make out that one of the conversation. Alice felt that it was too small, but at the sudden.</p><p>SOMETHING interesting is sure to make the arches. The chief difficulty Alice found at first she would get up and went by without noticing her. Then followed the Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said in a pleased tone. \'Pray don\'t trouble yourself to say a word, but slowly followed her back to the Caterpillar, and the reason is--\' here the conversation a little. \'\'Tis so,\' said Alice. \'Come, let\'s try the effect: the next question is.</p>',1,NULL,'page-detail-boxed',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05'),(18,'Job Categories','<div>[search-box title=\"22 Jobs Available Now\" highlight_text=\"22 Jobs\" description=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero repellendus magni, atque delectus molestias quis?\" banner_image_1=\"pages/left-job-head.png\" banner_image_2=\"pages/right-job-head.png\" style=\"style-3\" background_color=\"#000\"][/search-box]</div><div>[popular-category title=\"Popular category\" limit_category=\"8\" style=\"style-1\"][/popular-category]</div><div>[job-categories title=\"Categories\" subtitle=\"All categories\" limit_category=\"8\"][/job-categories]</div>',1,NULL,'default',NULL,'published','2024-02-24 01:49:05','2024-02-24 01:49:05');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
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
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (4,1),(6,1),(1,2),(6,2),(1,3),(7,3);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Interview Question: Why Dont You Have a Degree?','Voluptatem quasi omnis rerum at dolores. Natus ut excepturi voluptas aut. Aut et necessitatibus odit commodi.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Rabbit\'s voice; and the sounds will take care of the birds and animals that had fluttered down from the sky! Ugh, Serpent!\' \'But I\'m not Ada,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she felt a little pattering of footsteps in the schoolroom, and though this was his first remark, \'It was a large dish of tarts upon it: they looked so good, that it had struck her foot! She was looking at the stick, and made a dreadfully ugly child: but it did not much like keeping so close to them, and just as I was sent for.\' \'You ought to eat the comfits: this caused some noise and confusion, as the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, \'but it sounds uncommon nonsense.\' Alice said very politely, \'if I had our Dinah here, I know who I am! But I\'d better take him his fan and gloves, and, as a lark, And will talk in contemptuous tones of her age knew the right size, that it would make with the.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen! The Queen!\' and the words \'DRINK ME,\' but nevertheless she uncorked it and put it more clearly,\' Alice replied eagerly, for she had never before seen a rabbit with either a waistcoat-pocket, or a serpent?\' \'It matters a good deal until she made it out to her that she was up to her daughter \'Ah, my dear! Let this be a book written about me, that there ought! And when I was a body to cut it off from: that he had a pencil that squeaked. This of course, to begin with; and being ordered.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>There was nothing on it were nine o\'clock in the pictures of him), while the Mouse only growled in reply. \'Please come back with the Dormouse. \'Don\'t talk nonsense,\' said Alice sharply, for she felt that it might happen any minute, \'and then,\' thought she, \'what would become of it; so, after hunting all about it!\' Last came a little of her favourite word \'moral,\' and the two creatures, who had been anxiously looking across the garden, called out to be managed? I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a neat little house, on the door of which was sitting on the second time round, she came up to her feet as the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit. She was close behind it when she looked down at her side. She was a little wider. \'Come, it\'s pleased so far,\' thought Alice, \'and why it is I hate cats and dogs.\' It was high time you were all crowded together at one and then treading on my.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dinah my dear! I wish I could let you out, you know.\' \'And what an ignorant little girl she\'ll think me for asking! No, it\'ll never do to come down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! If they had to do so. \'Shall we try another figure of the ground--and I should be like then?\' And she squeezed herself up closer to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing on the shingle--will you come to an end! \'I wonder how many hours a day or two: wouldn\'t it be of very little use without my shoulders. Oh, how I wish I hadn\'t drunk quite so much!\' Alas! it was empty: she did it so yet,\' said Alice; \'but a grin without a moment\'s pause. The only things in the house, and found quite a chorus of voices asked. \'Why, SHE, of course,\' said the Duchess; \'and the moral of.</p>','published',3,'Botble\\JobBoard\\Models\\Account',1,'news/img-news1.png',767,NULL,'2024-02-02 19:55:49','2024-02-02 19:55:49'),(2,'21 Job Interview Tips: How To Make a Great Impression','Dolore quod ducimus ut voluptate et ut. Alias nostrum cumque voluptatem. Debitis dignissimos vitae quia in odio quis.','<p>Lizard\'s slate-pencil, and the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come and join the dance? \"You can really have no answers.\' \'If you please, sir--\' The Rabbit Sends in a large flower-pot that stood near the door, and tried to fancy to herself what such an extraordinary ways of living would be QUITE as much as she could. The next witness was the first to break the silence. \'What day of the March Hare. \'Sixteenth,\' added the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Mock Turtle. \'Very much indeed,\' said Alice. \'I\'ve tried every way, and then at the great concert given by the officers of the song. \'What trial is it?\' \'Why,\' said the Hatter. He came in sight of the reeds--the rattling teacups would change to tinkling sheep-bells, and the Queen put on your head-- Do you think, at your age, it is all the players, except the Lizard, who seemed to be a Caucus-race.\' \'What IS the use of a well?\'.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, and she jumped up and rubbed its eyes: then it chuckled. \'What fun!\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at Alice. \'It goes on, you know,\' the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little of her sharp little chin. \'I\'ve a right to grow to my right size again; and the second time round, she came upon a Gryphon, lying fast asleep in the pictures of him), while the rest of the moment he was in.</p><p class=\"text-center\"><img src=\"/storage/news/6.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen,\' and she soon made out the Fish-Footman was gone, and, by the prisoner to--to somebody.\' \'It must have been a holiday?\' \'Of course you know why it\'s called a whiting?\' \'I never could abide figures!\' And with that she hardly knew what she did, she picked up a little before she found it advisable--\"\' \'Found WHAT?\' said the White Rabbit put on your head-- Do you think, at your age, it is I hate cats and dogs.\' It was all dark overhead; before her was another long passage, and the little golden key and hurried upstairs, in great disgust, and walked a little pattering of feet on the twelfth?\' Alice went on, half to herself, and fanned herself with one elbow against the ceiling, and had just begun to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the last few minutes, and she dropped it hastily, just in time to begin with.\' \'A barrowful of WHAT?\' thought Alice; \'I might as well as I tell you!\' But she waited for some time with one finger pressed upon its nose. The.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>There were doors all round the table, but it all seemed quite dull and stupid for life to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the insolence of his teacup and bread-and-butter, and went on planning to herself that perhaps it was a sound of many footsteps, and Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Hatter. \'Nor I,\' said the Gryphon hastily. \'Go on with the next verse,\' the Gryphon added \'Come, let\'s try the first sentence in her pocket, and pulled out a race-course, in a pleased tone. \'Pray don\'t trouble yourself to say it out to sea. So they got their tails fast in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the twentieth time that day. \'No, no!\' said the March Hare meekly replied. \'Yes, but some crumbs must have a trial: For really this morning I\'ve nothing to what I see\"!\'.</p>','published',4,'Botble\\JobBoard\\Models\\Account',1,'news/img-news2.png',406,NULL,'2024-02-11 06:48:14','2024-02-11 06:48:14'),(3,'39 Strengths and Weaknesses To Discuss in a Job Interview','Ullam nobis voluptatem perferendis porro natus. Ut dolorem nam dolores quisquam aperiam delectus excepturi. Sequi adipisci et pariatur autem. Autem voluptate quam commodi eum.','<p>D,\' she added in an encouraging tone. Alice looked up, but it said nothing. \'Perhaps it doesn\'t matter which way I want to be?\' it asked. \'Oh, I\'m not Ada,\' she said, \'than waste it in less than no time to be a comfort, one way--never to be managed? I suppose I ought to be in a low voice, \'Your Majesty must cross-examine the next thing was waving its tail about in the shade: however, the moment how large she had tired herself out with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And ever since that,\' the Hatter hurriedly left the court, arm-in-arm with the tea,\' the March Hare said in a large dish of tarts upon it: they looked so grave that she had got so close to her, And mentioned me to introduce it.\' \'I don\'t think they play at all for any of them. However, on the glass table and the Gryphon as if he had never been so much already, that it might tell her something about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'What IS a.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter asked triumphantly. Alice did not answer, so Alice ventured to say. \'What is his sorrow?\' she asked the Mock Turtle drew a long hookah, and taking not the smallest idea how to speak with. Alice waited a little, half expecting to see if there are, nobody attends to them--and you\'ve no idea what to uglify is, you ARE a simpleton.\' Alice did not see anything that had made the whole place around her became alive with the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite.</p><p class=\"text-center\"><img src=\"/storage/news/6.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Do you think, at your age, it is I hate cats and dogs.\' It was so small as this before, never! And I declare it\'s too bad, that it was a treacle-well.\' \'There\'s no such thing!\' Alice was only too glad to find that the way YOU manage?\' Alice asked. \'We called him a fish)--and rapped loudly at the door as you go to on the glass table and the whole thing, and longed to change the subject,\' the March Hare. \'I didn\'t write it, and found that, as nearly as large as himself, and this he handed over to the door, she ran with all speed back to the general conclusion, that wherever you go to on the trumpet, and then at the top of her voice. Nobody moved. \'Who cares for you?\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied thoughtfully. \'They have their tails fast in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the same as the whole pack rose up into a large piece out of its mouth, and addressed her in an offended tone, \'so I can\'t get out again. That\'s.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>NOT be an old crab, HE was.\' \'I never went to the jury, who instantly made a dreadfully ugly child: but it had struck her foot! She was a sound of many footsteps, and Alice thought the poor animal\'s feelings. \'I quite agree with you,\' said Alice, \'I\'ve often seen a cat without a moment\'s delay would cost them their lives. All the time at the flowers and those cool fountains, but she did not notice this last remark that had made the whole party swam to the seaside once in the prisoner\'s handwriting?\' asked another of the court, arm-in-arm with the Lory, as soon as she spoke. \'I must be getting home; the night-air doesn\'t suit my throat!\' and a pair of boots every Christmas.\' And she began looking at the Hatter, it woke up again as she listened, or seemed to be a walrus or hippopotamus, but then she walked off, leaving Alice alone with the name again!\' \'I won\'t have any rules in particular; at least, if there were any tears. No, there were no tears. \'If you\'re going to be, from one of.</p>','published',5,'Botble\\JobBoard\\Models\\Account',1,'news/img-news3.png',2141,NULL,'2024-02-20 09:05:50','2024-02-20 09:05:50');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"plugins.job-board\":true,\"jobs.index\":true,\"jobs.create\":true,\"jobs.edit\":true,\"jobs.destroy\":true,\"import-jobs.index\":true,\"export-jobs.index\":true,\"job-applications.index\":true,\"job-applications.edit\":true,\"job-applications.destroy\":true,\"accounts.index\":true,\"accounts.create\":true,\"accounts.edit\":true,\"accounts.destroy\":true,\"accounts.import\":true,\"accounts.export\":true,\"packages.index\":true,\"packages.create\":true,\"packages.edit\":true,\"packages.destroy\":true,\"companies.index\":true,\"companies.create\":true,\"companies.edit\":true,\"companies.destroy\":true,\"export-companies.index\":true,\"import-companies.index\":true,\"job-board.custom-fields.index\":true,\"job-board.custom-fields.create\":true,\"job-board.custom-fields.edit\":true,\"job-board.custom-fields.destroy\":true,\"job-attributes.index\":true,\"job-categories.index\":true,\"job-categories.create\":true,\"job-categories.edit\":true,\"job-categories.destroy\":true,\"job-types.index\":true,\"job-types.create\":true,\"job-types.edit\":true,\"job-types.destroy\":true,\"job-skills.index\":true,\"job-skills.create\":true,\"job-skills.edit\":true,\"job-skills.destroy\":true,\"job-shifts.index\":true,\"job-shifts.create\":true,\"job-shifts.edit\":true,\"job-shifts.destroy\":true,\"job-experiences.index\":true,\"job-experiences.create\":true,\"job-experiences.edit\":true,\"job-experiences.destroy\":true,\"language-levels.index\":true,\"language-levels.create\":true,\"language-levels.edit\":true,\"language-levels.destroy\":true,\"career-levels.index\":true,\"career-levels.create\":true,\"career-levels.edit\":true,\"career-levels.destroy\":true,\"functional-areas.index\":true,\"functional-areas.create\":true,\"functional-areas.edit\":true,\"functional-areas.destroy\":true,\"degree-types.index\":true,\"degree-types.create\":true,\"degree-types.edit\":true,\"degree-types.destroy\":true,\"degree-levels.index\":true,\"degree-levels.create\":true,\"degree-levels.edit\":true,\"degree-levels.destroy\":true,\"job-board.tag.index\":true,\"job-board.tag.create\":true,\"job-board.tag.edit\":true,\"job-board.tag.destroy\":true,\"job-board.settings\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"invoice-template.index\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"social-login.settings\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2024-02-24 01:49:02','2024-02-24 01:49:02');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-02-24 01:49:03'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"faq\",\"gallery\",\"job-board\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"team\",\"testimonial\",\"translation\"]',NULL,'2024-02-24 01:49:03'),(6,'language_hide_default','1',NULL,NULL),(7,'language_switcher_display','dropdown',NULL,NULL),(8,'language_display','all',NULL,NULL),(9,'language_hide_languages','[]',NULL,NULL),(10,'show_admin_bar','1',NULL,NULL),(11,'theme','jobbox',NULL,NULL),(12,'admin_logo','general/logo-light.png',NULL,NULL),(13,'admin_favicon','general/favicon.png',NULL,NULL),(14,'theme-jobbox-site_title','JobBox - Laravel Job Board Script',NULL,NULL),(15,'theme-jobbox-seo_description','JobBox is a neat, clean and professional job board website script for your organization. It’s easy to build a complete Job Board site with JobBox script.',NULL,NULL),(16,'theme-jobbox-copyright','©2024 Archi Elite JSC. All right reserved.',NULL,NULL),(17,'theme-jobbox-favicon','general/favicon.png',NULL,NULL),(18,'theme-jobbox-logo','general/logo.png',NULL,NULL),(19,'theme-jobbox-hotline','+(123) 345-6789',NULL,NULL),(20,'theme-jobbox-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(21,'theme-jobbox-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(22,'theme-jobbox-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(23,'theme-jobbox-homepage_id','1',NULL,NULL),(24,'theme-jobbox-blog_page_id','13',NULL,NULL),(25,'theme-jobbox-preloader_enabled','no',NULL,NULL),(26,'theme-jobbox-job_categories_page_id','18',NULL,NULL),(27,'theme-jobbox-job_candidates_page_id','9',NULL,NULL),(28,'theme-jobbox-default_company_cover_image','general/cover-image.png',NULL,NULL),(29,'theme-jobbox-job_companies_page_id','8',NULL,NULL),(30,'theme-jobbox-job_list_page_id','7',NULL,NULL),(31,'theme-jobbox-email','contact@jobbox.com',NULL,NULL),(32,'theme-jobbox-404_page_image','general/404.png',NULL,NULL),(33,'theme-jobbox-background_breadcrumb','pages/bg-breadcrumb.png',NULL,NULL),(34,'theme-jobbox-blog_page_template_blog','blog_gird_1',NULL,NULL),(35,'theme-jobbox-background_blog_single','pages/img-single.png',NULL,NULL),(36,'theme-jobbox-auth_background_image_1','authentication/img-1.png',NULL,NULL),(37,'theme-jobbox-auth_background_image_2','authentication/img-2.png',NULL,NULL),(38,'theme-jobbox-background_cover_candidate_default','pages/background-cover-candidate.png',NULL,NULL),(39,'theme-jobbox-job_board_max_salary_filter','10000',NULL,NULL),(40,'theme-jobbox-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"socials\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"socials\\/linkedin.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"socials\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/twitter.com\"}]]',NULL,NULL),(41,'media_random_hash','e1c83509db1d79860cc1c3e9a580283a',NULL,NULL),(42,'permalink-botble-blog-models-post','blog',NULL,NULL),(43,'permalink-botble-blog-models-category','blog',NULL,NULL),(44,'payment_cod_status','1',NULL,NULL),(45,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(46,'payment_bank_transfer_status','1',NULL,NULL),(47,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(48,'payment_stripe_payment_type','stripe_checkout',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage-1',1,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(2,'homepage-2',2,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(3,'homepage-3',3,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(4,'homepage-4',4,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(5,'homepage-5',5,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(6,'homepage-6',6,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(7,'jobs',7,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(8,'companies',8,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(9,'candidates',9,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(10,'about-us',10,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(11,'pricing-plan',11,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(12,'contact',12,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(13,'blog',13,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(14,'cookie-policy',14,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(15,'faqs',15,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(16,'services',16,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(17,'terms',17,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(18,'job-categories',18,'Botble\\Page\\Models\\Page','','2024-02-24 01:49:05','2024-02-24 01:49:05'),(19,'design',1,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:49:06','2024-02-24 01:49:09'),(20,'lifestyle',2,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:49:06','2024-02-24 01:49:09'),(21,'travel-tips',3,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:49:06','2024-02-24 01:49:09'),(22,'healthy',4,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:49:06','2024-02-24 01:49:09'),(23,'travel-tips',5,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:49:06','2024-02-24 01:49:09'),(24,'hotel',6,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:49:06','2024-02-24 01:49:09'),(25,'nature',7,'Botble\\Blog\\Models\\Category','blog','2024-02-24 01:49:06','2024-02-24 01:49:09'),(26,'new',1,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:49:06','2024-02-24 01:49:06'),(27,'event',2,'Botble\\Blog\\Models\\Tag','tag','2024-02-24 01:49:06','2024-02-24 01:49:06'),(28,'interview-question-why-dont-you-have-a-degree',1,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:49:06','2024-02-24 01:49:09'),(29,'21-job-interview-tips-how-to-make-a-great-impression',2,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:49:06','2024-02-24 01:49:09'),(30,'39-strengths-and-weaknesses-to-discuss-in-a-job-interview',3,'Botble\\Blog\\Models\\Post','blog','2024-02-24 01:49:06','2024-02-24 01:49:09'),(31,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-24 01:49:06','2024-02-24 01:49:06'),(32,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-24 01:49:06','2024-02-24 01:49:06'),(33,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-24 01:49:06','2024-02-24 01:49:06'),(34,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-24 01:49:06','2024-02-24 01:49:06'),(35,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-24 01:49:06','2024-02-24 01:49:06'),(36,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-24 01:49:06','2024-02-24 01:49:06'),(37,'content-writer',1,'Botble\\JobBoard\\Models\\Category','job-categories','2024-02-24 01:49:10','2024-02-24 01:49:10'),(38,'market-research',2,'Botble\\JobBoard\\Models\\Category','job-categories','2024-02-24 01:49:10','2024-02-24 01:49:10'),(39,'marketing-sale',3,'Botble\\JobBoard\\Models\\Category','job-categories','2024-02-24 01:49:10','2024-02-24 01:49:10'),(40,'customer-help',4,'Botble\\JobBoard\\Models\\Category','job-categories','2024-02-24 01:49:10','2024-02-24 01:49:10'),(41,'finance',5,'Botble\\JobBoard\\Models\\Category','job-categories','2024-02-24 01:49:10','2024-02-24 01:49:10'),(42,'software',6,'Botble\\JobBoard\\Models\\Category','job-categories','2024-02-24 01:49:10','2024-02-24 01:49:10'),(43,'human-resource',7,'Botble\\JobBoard\\Models\\Category','job-categories','2024-02-24 01:49:10','2024-02-24 01:49:10'),(44,'management',8,'Botble\\JobBoard\\Models\\Category','job-categories','2024-02-24 01:49:10','2024-02-24 01:49:10'),(45,'retail-products',9,'Botble\\JobBoard\\Models\\Category','job-categories','2024-02-24 01:49:10','2024-02-24 01:49:10'),(46,'security-analyst',10,'Botble\\JobBoard\\Models\\Category','job-categories','2024-02-24 01:49:10','2024-02-24 01:49:10'),(47,'linkedin',1,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(48,'adobe-illustrator',2,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(49,'bing-search',3,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(50,'dailymotion',4,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(51,'linkedin',5,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(52,'quora-jsc',6,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(53,'nintendo',7,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(54,'periscope',8,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(55,'newsum',9,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(56,'powerhome',10,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(57,'whopcom',11,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(58,'greenwood',12,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(59,'kentucky',13,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(60,'equity',14,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(61,'honda',15,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(62,'toyota',16,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(63,'lexus',17,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(64,'ondo',18,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(65,'square',19,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(66,'visa',20,'Botble\\JobBoard\\Models\\Company','companies','2024-02-24 01:49:11','2024-02-24 01:49:11'),(67,'illustrator',1,'Botble\\JobBoard\\Models\\Tag','job-tags','2024-02-24 01:49:11','2024-02-24 01:49:11'),(68,'adobe-xd',2,'Botble\\JobBoard\\Models\\Tag','job-tags','2024-02-24 01:49:11','2024-02-24 01:49:11'),(69,'figma',3,'Botble\\JobBoard\\Models\\Tag','job-tags','2024-02-24 01:49:11','2024-02-24 01:49:11'),(70,'sketch',4,'Botble\\JobBoard\\Models\\Tag','job-tags','2024-02-24 01:49:11','2024-02-24 01:49:11'),(71,'lunacy',5,'Botble\\JobBoard\\Models\\Tag','job-tags','2024-02-24 01:49:11','2024-02-24 01:49:11'),(72,'php',6,'Botble\\JobBoard\\Models\\Tag','job-tags','2024-02-24 01:49:11','2024-02-24 01:49:11'),(73,'python',7,'Botble\\JobBoard\\Models\\Tag','job-tags','2024-02-24 01:49:11','2024-02-24 01:49:11'),(74,'javascript',8,'Botble\\JobBoard\\Models\\Tag','job-tags','2024-02-24 01:49:11','2024-02-24 01:49:11'),(75,'ui-ux-designer-full-time',1,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(76,'full-stack-engineer',2,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(77,'java-software-engineer',3,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(78,'digital-marketing-manager',4,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(79,'frontend-developer',5,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(80,'react-native-web-developer',6,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(81,'senior-system-engineer',7,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(82,'products-manager',8,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(83,'lead-quality-control-qa',9,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(84,'principal-designer-design-systems',10,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(85,'devops-architect',11,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(86,'senior-software-engineer-npm-cli',12,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(87,'senior-systems-engineer',13,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:11','2024-02-24 01:49:11'),(88,'software-engineer-actions-platform',14,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(89,'staff-engineering-manager-actions',15,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(90,'staff-engineering-manager-actions-runtime',16,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(91,'staff-engineering-manager-packages',17,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(92,'staff-software-engineer',18,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(93,'systems-software-engineer',19,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(94,'senior-compensation-analyst',20,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(95,'senior-accessibility-program-manager',21,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(96,'analyst-relations-manager-application-security',22,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(97,'senior-enterprise-advocate-emea',23,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(98,'deal-desk-manager',24,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(99,'director-revenue-compensation',25,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(100,'program-manager',26,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(101,'sr-manager-deal-desk-intl',27,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(102,'senior-director-product-management-actions-runners-and-compute-services',28,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(103,'alliances-director',29,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(104,'corporate-sales-representative',30,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(105,'country-leader',31,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(106,'customer-success-architect',32,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(107,'devops-account-executive-us-public-sector',33,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(108,'enterprise-account-executive',34,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(109,'senior-engineering-manager-product-security-engineering-paved-paths',35,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(110,'customer-reliability-engineer-iii',36,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(111,'support-engineer-enterprise-support-japanese',37,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(112,'technical-partner-manager',38,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(113,'sr-manager-inside-account-management',39,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(114,'services-sales-representative',40,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(115,'services-delivery-manager',41,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(116,'senior-solutions-engineer',42,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(117,'senior-service-delivery-engineer',43,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(118,'senior-director-global-sales-development',44,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(119,'partner-program-manager',45,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(120,'principal-cloud-solutions-engineer',46,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:12','2024-02-24 01:49:12'),(121,'senior-cloud-solutions-engineer',47,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:13','2024-02-24 01:49:13'),(122,'senior-customer-success-manager',48,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:13','2024-02-24 01:49:13'),(123,'inside-account-manager',49,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:13','2024-02-24 01:49:13'),(124,'ux-jobs-board',50,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:13','2024-02-24 01:49:13'),(125,'senior-laravel-developer-tall-stack',51,'Botble\\JobBoard\\Models\\Job','jobs','2024-02-24 01:49:13','2024-02-24 01:49:13'),(126,'maye',1,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:14','2024-02-24 01:49:14'),(127,'gage',2,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:14','2024-02-24 01:49:14'),(128,'sarah',3,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:14','2024-02-24 01:49:14'),(129,'steven',4,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:15','2024-02-24 01:49:15'),(130,'william',5,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:15','2024-02-24 01:49:15'),(131,'maybelle',6,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:15','2024-02-24 01:49:15'),(132,'gianni',7,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:15','2024-02-24 01:49:15'),(133,'nikolas',8,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:16','2024-02-24 01:49:16'),(134,'rachael',9,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:16','2024-02-24 01:49:16'),(135,'earnestine',10,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:16','2024-02-24 01:49:16'),(136,'sid',11,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:16','2024-02-24 01:49:16'),(137,'ola',12,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:17','2024-02-24 01:49:17'),(138,'maureen',13,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:17','2024-02-24 01:49:17'),(139,'magdalen',14,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:17','2024-02-24 01:49:17'),(140,'cortez',15,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:18','2024-02-24 01:49:18'),(141,'brenda',16,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:18','2024-02-24 01:49:18'),(142,'bryce',17,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:18','2024-02-24 01:49:18'),(143,'gladyce',18,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:18','2024-02-24 01:49:18'),(144,'lilyan',19,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:19','2024-02-24 01:49:19'),(145,'donavon',20,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:19','2024-02-24 01:49:19'),(146,'penelope',21,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:19','2024-02-24 01:49:19'),(147,'alexandria',22,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:20','2024-02-24 01:49:20'),(148,'cory',23,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:20','2024-02-24 01:49:20'),(149,'jairo',24,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:20','2024-02-24 01:49:20'),(150,'wilson',25,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:21','2024-02-24 01:49:21'),(151,'jedidiah',26,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:21','2024-02-24 01:49:21'),(152,'cristopher',27,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:21','2024-02-24 01:49:21'),(153,'sheila',28,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:22','2024-02-24 01:49:22'),(154,'hyman',29,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:22','2024-02-24 01:49:22'),(155,'alberto',30,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:22','2024-02-24 01:49:22'),(156,'tyreek',31,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:23','2024-02-24 01:49:23'),(157,'leopoldo',32,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:23','2024-02-24 01:49:23'),(158,'zora',33,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:23','2024-02-24 01:49:23'),(159,'precious',34,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:24','2024-02-24 01:49:24'),(160,'vergie',35,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:24','2024-02-24 01:49:24'),(161,'gregg',36,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:25','2024-02-24 01:49:25'),(162,'calista',37,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:25','2024-02-24 01:49:25'),(163,'hazel',38,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:25','2024-02-24 01:49:25'),(164,'tabitha',39,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:25','2024-02-24 01:49:25'),(165,'alexzander',40,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:26','2024-02-24 01:49:26'),(166,'cielo',41,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:26','2024-02-24 01:49:26'),(167,'guadalupe',42,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:26','2024-02-24 01:49:26'),(168,'albina',43,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:26','2024-02-24 01:49:26'),(169,'dusty',44,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:27','2024-02-24 01:49:27'),(170,'reina',45,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:27','2024-02-24 01:49:27'),(171,'else',46,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:27','2024-02-24 01:49:27'),(172,'stephon',47,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:28','2024-02-24 01:49:28'),(173,'dayton',48,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:28','2024-02-24 01:49:28'),(174,'trace',49,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:28','2024-02-24 01:49:28'),(175,'katarina',50,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:28','2024-02-24 01:49:28'),(176,'ena',51,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:29','2024-02-24 01:49:29'),(177,'tierra',52,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:29','2024-02-24 01:49:29'),(178,'ford',53,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:29','2024-02-24 01:49:29'),(179,'norval',54,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:29','2024-02-24 01:49:29'),(180,'wellington',55,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:30','2024-02-24 01:49:30'),(181,'fabian',56,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:30','2024-02-24 01:49:30'),(182,'demetris',57,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:30','2024-02-24 01:49:30'),(183,'constantin',58,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:30','2024-02-24 01:49:30'),(184,'francesco',59,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:31','2024-02-24 01:49:31'),(185,'fernando',60,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:31','2024-02-24 01:49:31'),(186,'carmella',61,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:31','2024-02-24 01:49:31'),(187,'rogers',62,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:32','2024-02-24 01:49:32'),(188,'zechariah',63,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:32','2024-02-24 01:49:32'),(189,'coy',64,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:32','2024-02-24 01:49:32'),(190,'adelia',65,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:32','2024-02-24 01:49:32'),(191,'vladimir',66,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:33','2024-02-24 01:49:33'),(192,'fern',67,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:33','2024-02-24 01:49:33'),(193,'kareem',68,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:33','2024-02-24 01:49:33'),(194,'eloise',69,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:34','2024-02-24 01:49:34'),(195,'ken',70,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:34','2024-02-24 01:49:34'),(196,'neva',71,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:34','2024-02-24 01:49:34'),(197,'effie',72,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:34','2024-02-24 01:49:34'),(198,'jasper',73,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:35','2024-02-24 01:49:35'),(199,'karlie',74,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:35','2024-02-24 01:49:35'),(200,'erica',75,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:35','2024-02-24 01:49:35'),(201,'rahsaan',76,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:36','2024-02-24 01:49:36'),(202,'tremaine',77,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:36','2024-02-24 01:49:36'),(203,'sage',78,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:36','2024-02-24 01:49:36'),(204,'carmela',79,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:36','2024-02-24 01:49:36'),(205,'kris',80,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:37','2024-02-24 01:49:37'),(206,'myah',81,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:37','2024-02-24 01:49:37'),(207,'braulio',82,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:37','2024-02-24 01:49:37'),(208,'amari',83,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:37','2024-02-24 01:49:37'),(209,'desmond',84,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:38','2024-02-24 01:49:38'),(210,'julianne',85,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:38','2024-02-24 01:49:38'),(211,'nola',86,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:38','2024-02-24 01:49:38'),(212,'frederick',87,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:38','2024-02-24 01:49:38'),(213,'nellie',88,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:39','2024-02-24 01:49:39'),(214,'louvenia',89,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:39','2024-02-24 01:49:39'),(215,'thaddeus',90,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:39','2024-02-24 01:49:39'),(216,'lorenza',91,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:40','2024-02-24 01:49:40'),(217,'quentin',92,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:40','2024-02-24 01:49:40'),(218,'demarcus',93,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:40','2024-02-24 01:49:40'),(219,'ahmed',94,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:40','2024-02-24 01:49:40'),(220,'karli',95,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:41','2024-02-24 01:49:41'),(221,'pete',96,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:41','2024-02-24 01:49:41'),(222,'muriel',97,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:41','2024-02-24 01:49:41'),(223,'kylee',98,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:41','2024-02-24 01:49:41'),(224,'paolo',99,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:42','2024-02-24 01:49:42'),(225,'theron',100,'Botble\\JobBoard\\Models\\Account','candidates','2024-02-24 01:49:42','2024-02-24 01:49:42'),(226,'interview-question-why-dont-you-have-a-degree',1,'Botble\\Blog\\Models\\Post','','2024-02-24 01:49:43','2024-02-24 01:49:43'),(227,'21-job-interview-tips-how-to-make-a-great-impression',2,'Botble\\Blog\\Models\\Post','','2024-02-24 01:49:43','2024-02-24 01:49:43'),(228,'39-strengths-and-weaknesses-to-discuss-in-a-job-interview',3,'Botble\\Blog\\Models\\Post','','2024-02-24 01:49:43','2024-02-24 01:49:43'),(229,'design',1,'Botble\\Blog\\Models\\Category','','2024-02-24 01:49:43','2024-02-24 01:49:43'),(230,'lifestyle',2,'Botble\\Blog\\Models\\Category','','2024-02-24 01:49:43','2024-02-24 01:49:43'),(231,'travel-tips',3,'Botble\\Blog\\Models\\Category','','2024-02-24 01:49:43','2024-02-24 01:49:43'),(232,'healthy',4,'Botble\\Blog\\Models\\Category','','2024-02-24 01:49:43','2024-02-24 01:49:43'),(233,'travel-tips',5,'Botble\\Blog\\Models\\Category','','2024-02-24 01:49:43','2024-02-24 01:49:43'),(234,'hotel',6,'Botble\\Blog\\Models\\Category','','2024-02-24 01:49:43','2024-02-24 01:49:43'),(235,'nature',7,'Botble\\Blog\\Models\\Category','','2024-02-24 01:49:43','2024-02-24 01:49:43'),(236,'jack-persion',1,'Botble\\Team\\Models\\Team','teams','2024-02-24 01:49:43','2024-02-24 01:49:43'),(237,'tyler-men',2,'Botble\\Team\\Models\\Team','teams','2024-02-24 01:49:43','2024-02-24 01:49:43'),(238,'mohamed-salah',3,'Botble\\Team\\Models\\Team','teams','2024-02-24 01:49:43','2024-02-24 01:49:43'),(239,'xao-shin',4,'Botble\\Team\\Models\\Team','teams','2024-02-24 01:49:43','2024-02-24 01:49:43'),(240,'peter-cop',5,'Botble\\Team\\Models\\Team','teams','2024-02-24 01:49:43','2024-02-24 01:49:43'),(241,'jacob-jones',6,'Botble\\Team\\Models\\Team','teams','2024-02-24 01:49:43','2024-02-24 01:49:43'),(242,'court-henry',7,'Botble\\Team\\Models\\Team','teams','2024-02-24 01:49:43','2024-02-24 01:49:43'),(243,'theresa',8,'Botble\\Team\\Models\\Team','teams','2024-02-24 01:49:43','2024-02-24 01:49:43');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'France','france','FR',1,0,NULL,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(2,'England','england','EN',2,0,NULL,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(3,'New York','new-york','NY',1,0,NULL,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(4,'Holland','holland','HL',4,0,NULL,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(5,'Denmark','denmark','DN',5,0,NULL,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09'),(6,'Germany','germany','GER',1,0,NULL,0,'published','2024-02-24 01:49:09','2024-02-24 01:49:09');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'New',NULL,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:49:06','2024-02-24 01:49:06'),(2,'Event',NULL,'Botble\\ACL\\Models\\User','','published','2024-02-24 01:49:06','2024-02-24 01:49:06');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Jack Persion','teams/1.png','Developer Fullstack','USA','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Tyler Men','teams/2.png','Business Analyst','Qatar','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Mohamed Salah','teams/3.png','Developer Fullstack','India','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Xao Shin','teams/4.png','Developer Fullstack','China','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Peter Cop','teams/5.png','Designer','Russia','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL,NULL,NULL,NULL,NULL,NULL),(6,'Jacob Jones','teams/6.png','Frontend Developer','New York, US','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Court Henry','teams/7.png','Backend Developer','Portugal','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL,NULL,NULL,NULL,NULL,NULL),(8,'Theresa','teams/8.png','Backend Developer','Thailand','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2024-02-24 01:49:42','2024-02-24 01:49:42',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_translations`
--

DROP TABLE IF EXISTS `teams_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_translations`
--

LOCK TABLES `teams_translations` WRITE;
/*!40000 ALTER TABLE `teams_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Ellis Kim','And with that she wanted to send the hedgehog had unrolled itself, and was going to turn into a pig,\' Alice quietly said, just as I\'d taken the highest tree in the common way. So they got their.','testimonials/1.png','Digital Artist','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(2,'John Smith','I wonder?\' And here poor Alice began to repeat it, but her head impatiently; and, turning to Alice, very earnestly. \'I\'ve had nothing else to say whether the pleasure of making a daisy-chain would.','testimonials/2.png','Product designer','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(3,'Sayen Ahmod','HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could bear: she got to come upon them THIS size: why, I should.','testimonials/3.png','Developer','published','2024-02-24 01:49:42','2024-02-24 01:49:42'),(4,'Tayla Swef','The other side will make you a present of everything I\'ve said as yet.\' \'A cheap sort of thing that would be offended again. \'Mine is a raven like a tunnel for some time without interrupting it.','testimonials/4.png','Graphic designer','published','2024-02-24 01:49:42','2024-02-24 01:49:42');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nadia.green@anderson.com',NULL,'$2y$12$pJo9hhMciT2.1q3dkWGCVu6jdneu.wBE97ge52EzA1xXUhWp8Lp.6',NULL,'2024-02-24 01:49:02','2024-02-24 01:49:02','Crystal','Hartmann','botble',NULL,1,1,NULL,NULL),(2,'emmy.dibbert@schuppe.com',NULL,'$2y$12$18bjUol4qC9MQAtj4..Y2.lUsEy2A7hYX5s98QP6ZyfnMTAnKSDti',NULL,'2024-02-24 01:49:02','2024-02-24 01:49:02','Seamus','Casper','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'NewsletterWidget','pre_footer_sidebar','jobbox',0,'{\"id\":\"NewsletterWidget\",\"title\":\"New Things Will Always <br> Update Regularly\",\"background_image\":\"general\\/newsletter-background-image.png\",\"image_left\":\"general\\/newsletter-image-left.png\",\"image_right\":\"general\\/newsletter-image-right.png\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(2,'SiteInformationWidget','footer_sidebar','jobbox',1,'{\"introduction\":\"JobBox is the heart of the design community and the best resource to discover and connect with designers and jobs worldwide.\",\"facebook_url\":\"#\",\"twitter_url\":\"#\",\"linkedin_url\":\"#\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(3,'CustomMenuWidget','footer_sidebar','jobbox',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Resources\",\"menu_id\":\"resources\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(4,'CustomMenuWidget','footer_sidebar','jobbox',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Community\",\"menu_id\":\"community\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(5,'CustomMenuWidget','footer_sidebar','jobbox',4,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(6,'CustomMenuWidget','footer_sidebar','jobbox',5,'{\"id\":\"CustomMenuWidget\",\"name\":\"More\",\"menu_id\":\"more\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(7,'DownloadWidget','footer_sidebar','jobbox',6,'{\"app_store_url\":\"#\",\"app_store_image\":\"general\\/app-store.png\",\"android_app_url\":\"#\",\"google_play_image\":\"general\\/android.png\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(8,'BlogSearchWidget','primary_sidebar','jobbox',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(9,'BlogCategoriesWidget','primary_sidebar','jobbox',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(10,'BlogPostsWidget','primary_sidebar','jobbox',3,'{\"id\":\"BlogPostsWidget\",\"type\":\"popular\",\"name\":\"Popular Posts\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(11,'BlogTagsWidget','primary_sidebar','jobbox',4,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(12,'BlogSearchWidget','blog_sidebar','jobbox',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Blog Search\",\"description\":\"Search blog posts\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(13,'BlogPostsWidget','blog_sidebar','jobbox',1,'{\"id\":\"BlogPostsWidget\",\"name\":\"Blog posts\",\"description\":\"Blog posts widget.\",\"type\":\"popular\",\"number_display\":5}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(14,'AdsBannerWidget','blog_sidebar','jobbox',2,'{\"id\":\"AdsBannerWidget\",\"name\":\"Ads banner\",\"banner_ads\":\"widgets\\/widget-banner.png\",\"url\":\"\\/\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(15,'GalleryWidget','blog_sidebar','jobbox',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"title_gallery\":\"Gallery\",\"number_image\":8}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(16,'AdsBannerWidget','candidate_sidebar','jobbox',0,'{\"id\":\"AdsBannerWidget\",\"name\":\"Ads banner\",\"banner_ads\":\"widgets\\/widget-banner.png\",\"url\":\"\\/\"}','2024-02-24 01:49:06','2024-02-24 01:49:06'),(17,'AdsBannerWidget','company_sidebar','jobbox',0,'{\"id\":\"AdsBannerWidget\",\"name\":\"Ads banner\",\"banner_ads\":\"widgets\\/widget-banner.png\",\"url\":\"\\/\"}','2024-02-24 01:49:06','2024-02-24 01:49:06');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-24 15:49:44
