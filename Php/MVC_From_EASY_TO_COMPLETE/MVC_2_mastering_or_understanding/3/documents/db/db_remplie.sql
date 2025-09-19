CREATE DATABASE  IF NOT EXISTS `retro_monsters_2025` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `retro_monsters_2025`;
-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: retro_monsters_2025
-- ------------------------------------------------------
-- Server version	5.7.39

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
-- Table structure for table `monster_types`
--

DROP TABLE IF EXISTS `monster_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_types`
--

LOCK TABLES `monster_types` WRITE;
/*!40000 ALTER TABLE `monster_types` DISABLE KEYS */;
INSERT INTO `monster_types` VALUES (1,'Aquatique','2024-01-08 18:47:04'),(2,'Terrestre','2024-01-08 18:47:04'),(3,'Volant','2024-01-08 18:47:04'),(4,'Cosmique','2024-01-08 18:47:04'),(5,'Spectral','2024-01-08 18:47:04'),(6,'Légendaire','2024-01-08 18:47:04');
/*!40000 ALTER TABLE `monster_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsters`
--

DROP TABLE IF EXISTS `monsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monsters` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `defense` int(11) NOT NULL DEFAULT '0',
  `rarety_id` int(11) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `FK_rarety_idx` (`rarety_id`),
  CONSTRAINT `FK_rarety` FOREIGN KEY (`rarety_id`) REFERENCES `rareties` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_type` FOREIGN KEY (`type_id`) REFERENCES `monster_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsters`
--

LOCK TABLES `monsters` WRITE;
/*!40000 ALTER TABLE `monsters` DISABLE KEYS */;
INSERT INTO `monsters` VALUES (1,'AquaDragon',1,150,100,'aquadragon.png','Un dragon aquatique légendaire.','2024-01-06 21:33:58',140,4),(2,'TerraWolf',2,120,80,'terrawolf.png','Un loup terrestre féroce.','2024-01-06 21:33:58',137,6),(3,'SkyEagle',3,100,70,'skyeagle.png','Un aigle majestueux volant haut dans le ciel.','2024-01-06 21:33:58',116,7),(4,'CosmoSerpent',4,130,90,'cosmoserpent.png','Un serpent cosmique mystérieux.','2024-01-06 21:33:58',119,8),(5,'GhostPhantom',5,110,60,'ghostphantom.png','Un fantôme spectral énigmatique.','2024-01-06 21:33:58',97,4),(6,'LavaGiant',2,140,95,'lavagiant.png','Un géant de lave indestructible.','2024-01-06 21:33:58',80,1),(7,'IcePixie',3,90,65,'icepixie.png','Un pixie de glace charmant.','2024-01-06 21:33:58',59,2),(8,'StormRider',3,115,75,'stormrider.png','Un cavalier tempétueux.','2024-01-06 21:33:58',105,6),(9,'RockGolem',2,135,85,'rockgolem.png','Un golem de roche solide.','2024-01-06 21:33:58',100,6),(10,'FlameSprite',1,105,55,'flamesprite.png','Un esprit de flamme vif.','2024-01-06 21:33:58',136,7),(11,'MysticDragon',4,160,105,'mysticdragon.png','Un dragon mystique avec des pouvoirs magiques.','2024-01-06 21:35:16',129,6),(12,'EarthBear',2,130,85,'earthbear.png','Un ours robuste avec une force terrifiante.','2024-01-06 21:35:16',87,2),(13,'WindFalcon',3,110,80,'windfalcon.png','Un faucon rapide qui contrôle les vents.','2024-01-06 21:35:16',100,8),(14,'VoidWorm',4,135,95,'voidworm.png','Un ver de l’espace connu pour sa nature vorace.','2024-01-06 21:35:16',91,7),(15,'SpiritShade',5,120,70,'spiritshade.png','Une ombre spirituelle insaisissable.','2024-01-06 21:35:16',102,6),(16,'MagmaTroll',2,145,100,'magmatroll.png','Un troll de magma indestructible.','2024-01-06 21:35:16',91,6),(17,'FrostElf',3,95,75,'frostelf.png','Un elfe de givre élégant et agile.','2024-01-06 21:35:16',97,4),(18,'ThunderSerpent',3,125,90,'thunderserpent.png','Un serpent tonnerre puissant et électrique.','2024-01-06 21:35:16',62,8),(19,'StoneGiant',2,150,110,'stonegiant.png','Un géant de pierre imposant avec une grande endurance.','2024-01-06 21:35:16',70,7),(20,'InfernoPixie',1,100,60,'infernopixie.png','Un pixie infernal malicieux et rapide.','2024-01-06 21:35:16',116,7),(21,'LightningCheetah',3,145,120,'lightningcheetah.png','Un guépard rapide comme l’éclair.','2024-01-06 21:36:31',120,6),(22,'AbyssalShark',1,155,95,'abyssalshark.png','Un requin abyssal redoutable.','2024-01-06 21:36:31',103,8),(23,'SkyPhoenix',3,115,85,'skyphoenix.png','Un phénix céleste majestueux.','2024-01-06 21:36:31',105,7),(24,'ShadowBat',5,140,90,'shadowbat.png','Une chauve-souris de l’ombre insaisissable.','2024-01-06 21:36:31',65,2),(25,'CrystalUnicorn',2,130,75,'crystalunicorn.png','Une licorne cristalline magique.','2024-01-06 21:36:31',60,5),(26,'FireLion',1,160,110,'firelion.png','Un lion de feu impétueux.','2024-01-06 21:36:31',55,1),(27,'IceWolf',3,120,80,'icewolf.png','Un loup de glace froid et calculateur.','2024-01-06 21:36:31',147,7),(28,'StormEagle',3,135,105,'stormeagle.png','Un aigle de tempête dominateur.','2024-01-06 21:36:31',120,7),(29,'EarthElemental',2,170,115,'earthelemental.png','Un élémentaire de terre imposant.','2024-01-06 21:36:31',108,4),(30,'FlameDragon',1,125,100,'flamedragon.png','Un dragon de flamme terrifiant.','2024-01-06 21:36:31',131,1),(31,'AquaLizzard',1,130,80,'aqualizzard.png','Un lézard du grand Lac Noir','2024-01-07 11:36:31',81,7),(32,'ShadowMonkey',2,150,140,'shadowmonkey.png','Un monkey à éviter...','2024-01-07 12:28:14',64,6),(33,'SpectralSpirit',5,200,150,'spectralspirit.png','SpectralSpirit est légendaire...','2024-01-07 12:28:14',127,2),(34,'RockMountain',2,150,125,'rockmountain.png','RockMountain vit dans les montagnes dans lesquelles il se fond.','2024-01-07 12:28:14',94,1),(35,'UmbraRoot',2,90,115,'umbraroot.png','Enveloppé dans les murmures des bois anciens, RacineOmbre est une entité gothique qui prospère sous le manteau de la nuit. Avec des vrilles délicates et une aura étrangement belle.','2024-01-09 12:28:14',139,6);
/*!40000 ALTER TABLE `monsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rareties`
--

DROP TABLE IF EXISTS `rareties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rareties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rareties`
--

LOCK TABLES `rareties` WRITE;
/*!40000 ALTER TABLE `rareties` DISABLE KEYS */;
INSERT INTO `rareties` VALUES (1,'Commun','2023-12-31 23:00:00',NULL),(2,'Peu Commun','2023-12-31 23:00:00',NULL),(3,'Rare','2023-12-31 23:00:00',NULL),(4,'Très Rare','2023-12-31 23:00:00',NULL),(5,'Épique','2023-12-31 23:00:00',NULL),(6,'Légendaire','2023-12-31 23:00:00',NULL),(7,'Mythique','2023-12-31 23:00:00',NULL),(8,'Unique','2023-12-31 23:00:00',NULL);
/*!40000 ALTER TABLE `rareties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `recents_monsters`
--

DROP TABLE IF EXISTS `recents_monsters`;
/*!50001 DROP VIEW IF EXISTS `recents_monsters`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recents_monsters` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `type_id`,
 1 AS `pv`,
 1 AS `attack`,
 1 AS `image_url`,
 1 AS `description`,
 1 AS `created_at`,
 1 AS `defense`,
 1 AS `rarety_id`,
 1 AS `rarety`,
 1 AS `type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `level` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dracula','dracula@example.com',5,'$2y$10$e0NR7Ol2GaZlHZDfUOLsHe','2025-01-15 14:30:00'),(2,'Frankenstein','frankenstein@example.com',4,'$2y$10$e0NR7Ol2GaZlHZDfUOLsHf','2025-01-16 09:45:00'),(3,'Mummy','mummy@example.com',3,'$2y$10$e0NR7Ol2GaZlHZDfUOLsHg','2025-01-17 10:15:00'),(4,'WolfMan','wolfman@example.com',2,'$2y$10$e0NR7Ol2GaZlHZDfUOLsHh','2025-01-18 12:00:00'),(5,'ZombieKing','zombiek@example.com',4,'$2y$10$e0NR7Ol2GaZlHZDfUOLsHi','2025-01-19 16:20:00'),(6,'GoblinLord','goblin@example.com',1,'$2y$10$e0NR7Ol2GaZlHZDfUOLsHj','2025-01-20 18:30:00'),(7,'VampQueen','vampqueen@example.com',5,'$2y$10$e0NR7Ol2GaZlHZDfUOLsHk','2025-01-21 20:45:00'),(8,'Banshee','banshee@example.com',2,'$2y$10$e0NR7Ol2GaZlHZDfUOLsHl','2025-01-22 08:10:00'),(9,'Specter','specter@example.com',3,'$2y$10$e0NR7Ol2GaZlHZDfUOLsHm','2025-01-23 11:55:00'),(10,'GhoulMaster','ghoul@example.com',1,'$2y$10$e0NR7Ol2GaZlHZDfUOLsHn','2025-01-24 14:05:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `recents_monsters`
--

/*!50001 DROP VIEW IF EXISTS `recents_monsters`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recents_monsters` AS select `m`.`id` AS `id`,`m`.`name` AS `name`,`m`.`type_id` AS `type_id`,`m`.`pv` AS `pv`,`m`.`attack` AS `attack`,`m`.`image_url` AS `image_url`,`m`.`description` AS `description`,`m`.`created_at` AS `created_at`,`m`.`defense` AS `defense`,`m`.`rarety_id` AS `rarety_id`,`r`.`name` AS `rarety`,`t`.`name` AS `type` from ((`monsters` `m` join `rareties` `r` on((`m`.`rarety_id` = `r`.`id`))) join `monster_types` `t` on((`m`.`type_id` = `t`.`id`))) order by `m`.`created_at` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-10 15:38:55
