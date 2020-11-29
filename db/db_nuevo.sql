-- MySQL dump 10.16  Distrib 10.1.47-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: localPR
-- ------------------------------------------------------
-- Server version	10.1.47-MariaDB-0ubuntu0.18.04.1

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
-- Table structure for table `addon_account`
--

DROP TABLE IF EXISTS `addon_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_account`
--

LOCK TABLES `addon_account` WRITE;
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` VALUES ('bank_savings','Livret Bleu',0),('caution','Precaución',0),('property_black_money','Propiedad de venta de dinero',0),('society_ambulance','Ambulance',1),('society_banker','Banque',1),('society_cardealer','Cardealer',1),('society_mechanic','Mécano',1),('society_police','Policía',1),('society_realestateagent','Real Estate Company',1),('society_taxi','Taxi',1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_account_data`
--

DROP TABLE IF EXISTS `addon_account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_account_data`
--

LOCK TABLES `addon_account_data` WRITE;
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT INTO `addon_account_data` VALUES (1,'society_ambulance',0,NULL),(2,'society_banker',0,NULL),(3,'society_cardealer',0,NULL),(4,'society_mechanic',5000000,NULL),(5,'society_police',0,NULL),(6,'society_realestateagent',0,NULL),(7,'society_taxi',0,NULL),(8,'bank_savings',0,'5ac1fd1b0807f31987e23f903b22d1864d701c32'),(9,'caution',0,'5ac1fd1b0807f31987e23f903b22d1864d701c32'),(10,'property_black_money',0,'5ac1fd1b0807f31987e23f903b22d1864d701c32');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_inventory`
--

DROP TABLE IF EXISTS `addon_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_inventory`
--

LOCK TABLES `addon_inventory` WRITE;
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` VALUES ('property','Propiedad',0),('society_ambulance','Ambulance',1),('society_cardealer','Cardealer',1),('society_mechanic','Mécano',1),('society_police','Policía',1),('society_taxi','Taxi',1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_inventory_items`
--

DROP TABLE IF EXISTS `addon_inventory_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_inventory_items`
--

LOCK TABLES `addon_inventory_items` WRITE;
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
INSERT INTO `addon_inventory_items` VALUES (1,'society_mechanic','repairkit',0,NULL),(2,'society_mechanic','fixkit',7,NULL);
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardealer_vehicles`
--

DROP TABLE IF EXISTS `cardealer_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardealer_vehicles`
--

LOCK TABLES `cardealer_vehicles` WRITE;
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datastore`
--

DROP TABLE IF EXISTS `datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datastore`
--

LOCK TABLES `datastore` WRITE;
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` VALUES ('property','Propiedad',0),('society_ambulance','Ambulance',1),('society_mechanic','Mécano',1),('society_police','Policía',1),('society_taxi','Taxi',1),('user_ears','Accesorio de oreja',0),('user_glasses','Gafas',0),('user_helmet','Casco',0),('user_mask','Máscara',0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datastore_data`
--

DROP TABLE IF EXISTS `datastore_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datastore_data`
--

LOCK TABLES `datastore_data` WRITE;
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT INTO `datastore_data` VALUES (1,'society_ambulance',NULL,'{}'),(2,'society_mechanic',NULL,'{}'),(3,'society_police',NULL,'{}'),(4,'society_taxi',NULL,'{}'),(5,'property','5ac1fd1b0807f31987e23f903b22d1864d701c32','{\"dressing\":[{\"label\":\"azul y rojo\",\"skin\":{\"age_1\":0,\"blush_3\":0,\"ears_2\":0,\"eyebrows_2\":0,\"shoes_1\":4,\"chain_2\":0,\"lipstick_2\":0,\"moles_1\":0,\"glasses_1\":0,\"eyebrows_3\":0,\"bracelets_1\":-1,\"torso_1\":7,\"makeup_3\":0,\"sex\":0,\"bodyb_1\":0,\"bracelets_2\":0,\"bproof_1\":0,\"decals_1\":0,\"beard_3\":0,\"torso_2\":3,\"bags_2\":0,\"moles_2\":0,\"makeup_1\":0,\"chain_1\":0,\"helmet_2\":0,\"hair_color_1\":11,\"lipstick_4\":0,\"shoes_2\":4,\"sun_2\":0,\"watches_1\":-1,\"beard_4\":0,\"arms_2\":0,\"chest_1\":0,\"mask_2\":0,\"beard_2\":0,\"skin\":0,\"sun_1\":0,\"bags_1\":0,\"mask_1\":25,\"lipstick_3\":0,\"helmet_1\":-1,\"watches_2\":0,\"decals_2\":0,\"ears_1\":-1,\"blemishes_2\":0,\"chest_3\":0,\"makeup_4\":0,\"pants_2\":5,\"glasses_2\":0,\"hair_2\":0,\"bodyb_2\":0,\"eyebrows_1\":0,\"tshirt_1\":0,\"makeup_2\":0,\"chest_2\":0,\"hair_1\":5,\"bproof_2\":0,\"beard_1\":0,\"hair_color_2\":0,\"arms\":1,\"eyebrows_4\":0,\"blush_2\":0,\"blemishes_1\":0,\"age_2\":0,\"lipstick_1\":0,\"complexion_1\":0,\"eye_color\":0,\"pants_1\":26,\"tshirt_2\":0,\"blush_1\":0,\"face\":0,\"complexion_2\":0}},{\"label\":\"camisa corta con pantalon negro\",\"skin\":{\"age_1\":0,\"blush_3\":0,\"chest_2\":0,\"eyebrows_2\":0,\"hair_1\":6,\"chain_2\":0,\"lipstick_2\":0,\"moles_1\":0,\"hair_color_2\":0,\"eyebrows_3\":0,\"lipstick_1\":0,\"torso_1\":13,\"makeup_3\":0,\"sex\":0,\"bodyb_1\":0,\"bracelets_2\":0,\"bproof_1\":0,\"decals_1\":0,\"beard_3\":2,\"torso_2\":0,\"bags_2\":0,\"moles_2\":0,\"eye_color\":1,\"chain_1\":0,\"helmet_2\":0,\"hair_color_1\":11,\"bodyb_2\":0,\"face\":0,\"sun_2\":0,\"watches_1\":-1,\"beard_4\":0,\"arms_2\":0,\"chest_1\":0,\"mask_2\":0,\"beard_2\":0,\"skin\":0,\"sun_1\":0,\"bags_1\":0,\"bproof_2\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"watches_2\":0,\"decals_2\":0,\"ears_1\":-1,\"blemishes_2\":0,\"chest_3\":0,\"makeup_4\":0,\"pants_2\":0,\"glasses_2\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"glasses_1\":0,\"tshirt_1\":13,\"hair_2\":0,\"age_2\":0,\"ears_2\":0,\"shoes_1\":21,\"mask_1\":25,\"beard_1\":1,\"arms\":11,\"complexion_1\":0,\"blush_2\":0,\"blemishes_1\":0,\"bracelets_1\":-1,\"pants_1\":13,\"blush_1\":0,\"makeup_1\":0,\"lipstick_4\":0,\"tshirt_2\":0,\"shoes_2\":0,\"eyebrows_4\":0,\"complexion_2\":0}}]}'),(6,'user_helmet','5ac1fd1b0807f31987e23f903b22d1864d701c32','{}'),(7,'user_glasses','5ac1fd1b0807f31987e23f903b22d1864d701c32','{}'),(8,'user_mask','5ac1fd1b0807f31987e23f903b22d1864d701c32','{\"skin\":{\"mask_2\":0,\"mask_1\":35},\"hasMask\":true}'),(9,'user_ears','5ac1fd1b0807f31987e23f903b22d1864d701c32','{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types`
--

DROP TABLE IF EXISTS `fine_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types`
--

LOCK TABLES `fine_types` WRITE;
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` VALUES (1,'Mal uso del claxon',30,0),(2,'Cruzar indebidamente la línea continua',40,0),(3,'Conducir por el lado incorrecto de la carretera',250,0),(4,'Giro indebido',250,0),(5,'Conducir indebidamente fuera de la carretera',170,0),(6,'No hacer caso a una orden de un agente',30,0),(7,'Detener el vehículo de forma incorrecta',150,0),(8,'Aparcar en un lugar no habilitado',70,0),(9,'No ceder al girar a la derecha',70,0),(10,'No cumplir con los datos de tu vehículo',90,0),(11,'No pararse en una señal de STOP',105,0),(12,'No pararse en un semáforo cuando está en rojo',130,0),(13,'Cruzar indebidamente',100,0),(14,'Conducir un coche no permitido',100,0),(15,'Conducir sin carnet de conducción',1500,0),(16,'Chocar y darse a la fuga',800,0),(17,'Exceder la velocidad permitida en 5 km/h',90,0),(18,'Exceder la velocidad permitida entre 5 y 15 km/h',120,0),(19,'Exceder la velocidad permitida entre 15 y 30 km/h',180,0),(20,'Exceder la velocidad permitida más de 30 km/h',300,0),(21,'Generar atasco en una carretera',110,1),(22,'Intoxicación pública',90,1),(23,'Conducta alocada',90,1),(24,'Obstrucción a la justicia',130,1),(25,'Insultos hacia civiles',75,1),(26,'Insultos hacia un agente',110,1),(27,'Amenaza verbar a un civil',90,1),(28,'Amenaza verbal a un agente',150,1),(29,'Dar información falsa',250,1),(30,'Intento de corrupción',1500,1),(31,'Tendencia de armas en los limites de la ciudad',120,2),(32,'Tendencia de armas letales en los limites de la ciudad',300,2),(33,'No tener licencia de armas',600,2),(34,'Posesión de un arma ilegal',700,2),(35,'Posesión de herramientas para robos',300,2),(36,'Desorden público',1800,2),(37,'Intento de venta o distribución de sustancias ilegales',1500,2),(38,'Fabricación de sustancias ilegales',1500,2),(39,'Posesión de sustancias ilegales',650,2),(40,'Secuestro de un civil',1500,2),(41,'Secuestro de un agente',2000,2),(42,'Robo',650,2),(43,'Robo armado a una tienda',650,2),(44,'Robo armado a un banco',1500,2),(45,'Asalto a un civil',2000,3),(46,'Asalto a un agente',2500,3),(47,'Intento de asesinato a un civil',3000,3),(48,'Intento de asesinato a un agente',5000,3),(49,'Asesinato de un civil',10000,3),(50,'Asesinato de un policia',30000,3),(51,'Homicidio involuntario',1800,3),(52,'Fraude',2000,2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '1',
  `rare` tinyint(4) NOT NULL DEFAULT '0',
  `can_remove` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('alive_chicken','Pollo vivo',1,0,1),('bandage','Bandage',2,0,1),('beer','Cerveza',1,0,1),('bijoux','piedra preciosa',1,0,1),('bijoux_pooch','Joyería',1,0,1),('blowpipe','Chalumeaux',2,0,1),('bread','Pan',1,0,1),('cannabis','Cannabis',3,0,1),('carokit','Kit carroceria',3,0,1),('carotool','outils carosserie',2,0,1),('champagne','Champagne',1,0,1),('chips','Papas fritas',1,0,1),('chocolate','Chocolate',1,0,1),('cigarett','Cigarro',1,0,1),('clothe','Paño',1,0,1),('cocacola','Cocacola',1,0,1),('coffe','Cafè',1,0,1),('coke','Cocaina',1,0,1),('coke_pooch','Bolsa de cocaina',1,0,1),('copper','Cobre',1,0,1),('cupcake','Pastel de Manzana',1,0,1),('cutted_wood','Madera cortada',1,0,1),('diamond','Diamante',1,0,1),('essence','Gas',1,0,1),('fabric','Tela',1,0,1),('fish','Pez',1,0,1),('fixkit','Kit de reparacion',1,0,1),('fixtool','outils réparation',2,0,1),('gazbottle','bouteille de gaz',2,0,1),('gold','Oro',1,0,1),('hamburger','Hamburguesa',1,0,1),('icetea','Te frio',1,0,1),('iron','Hierro',1,0,1),('lighter','Mechero',1,0,1),('marijuana','Marijuana',2,0,1),('medikit','Kit Medico',2,0,1),('meth','Meta',1,0,1),('meth_pooch','Bolsa de meta',1,0,1),('munition','Cargador vacio',1,0,1),('munition_pooch','Cargador simple',1,0,1),('opium','Opio',1,0,1),('opium_pooch','Bolsa de opio',1,0,1),('organ','venta de organos',1,0,1),('organ_pooch','órgano esterilizado',1,0,1),('packaged_chicken','Filete de pollo',1,0,1),('packaged_plank','Madera empaquetada',1,0,1),('papier','Papel',1,0,1),('papier_pooch','Pasaportes',1,0,1),('pastilla','Pastillas anti-stress',1,0,1),('petrol','Gasolina',1,0,1),('petrol_raffin','Gasolina destilada',1,0,1),('repairkit','Kit de Reparación',5,0,1),('sandwich','Sandwich',1,0,1),('slaughtered_chicken','Pollo sacrificado',1,0,1),('stone','Piedra',1,0,1),('tequila','Tequila',1,0,1),('vodka','Vodka',1,0,1),('washed_stone','Piedra pulida',1,0,1),('water','Agua',1,0,1),('weed','Marihuana',1,0,1),('weed_pooch','Bolsa de marihuna',1,0,1),('whisky','Whisky',1,0,1),('wine','Vino',1,0,1),('wood','Madera',1,0,1),('wool','Lana',1,0,1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_grades`
--

DROP TABLE IF EXISTS `job_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_grades`
--

LOCK TABLES `job_grades` WRITE;
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` VALUES (1,'unemployed',0,'unemployed','Desempleado',200,'{}','{}'),(2,'ambulance',0,'ambulance','Tecnico Ambulancia',20,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(3,'ambulance',1,'doctor','Medico',40,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(4,'ambulance',2,'chief_doctor','Medico-Jefe',60,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(5,'ambulance',3,'boss','Cirijano',80,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(6,'banker',0,'advisor','Concejero',10,'{}','{}'),(7,'banker',1,'banker','Banquero',20,'{}','{}'),(8,'banker',2,'business_banker','Banquier d\'affaire',30,'{}','{}'),(9,'banker',3,'trader','Trader',40,'{}','{}'),(10,'banker',4,'boss','Patron',0,'{}','{}'),(18,'mechanic',0,'recrue','Recluta',1500,'{}','{}'),(19,'mechanic',1,'novice','Novato',2000,'{}','{}'),(20,'mechanic',2,'experimente','Experimentado',2500,'{}','{}'),(21,'mechanic',3,'chief','Jefe de equipo',3500,'{}','{}'),(22,'mechanic',4,'boss','Patron',3500,'{}','{}'),(23,'police',0,'recruit','Recluta',20,'{}','{}'),(24,'police',1,'officer','Oficial',40,'{}','{}'),(25,'police',2,'sergeant','Sargento',60,'{}','{}'),(26,'police',3,'lieutenant','Teniente',85,'{}','{}'),(27,'police',4,'boss','Jefe',100,'{}','{}'),(28,'realestateagent',0,'location','Renting Agent',10,'{}','{}'),(29,'realestateagent',1,'vendeur','Agent',25,'{}','{}'),(30,'realestateagent',2,'gestion','Management',40,'{}','{}'),(31,'realestateagent',3,'boss','Broker',0,'{}','{}'),(32,'lumberjack',0,'employee','Trabajador',0,'{}','{}'),(33,'fisherman',0,'employee','Trabajador',0,'{}','{}'),(34,'fueler',0,'employee','Trabajador',0,'{}','{}'),(35,'reporter',0,'employee','Trabajador',0,'{}','{}'),(36,'tailor',0,'employee','Trabajador',0,'{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}','{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),(37,'miner',0,'employee','Trabajador',0,'{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}','{}'),(38,'slaughterer',0,'employee','Trabajador',0,'{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}','{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),(39,'taxi',0,'recrue','Recluta',12,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(40,'taxi',1,'novice','Taxista',24,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(41,'taxi',2,'experimente','Experiencia',36,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(42,'taxi',3,'uber','Taxista de Uber',48,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(43,'taxi',4,'boss','Jefe de taxista',0,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(44,'cardealer',0,'recruit','Recluta',10,'{}','{}'),(45,'cardealer',1,'novice','Novato',25,'{}','{}'),(46,'cardealer',2,'experienced','Experimentado',40,'{}','{}'),(47,'cardealer',3,'boss','Jefe',0,'{}','{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES ('ambulance','Ambulance',0),('banker','Banquier',0),('cardealer','Cardealer',0),('fisherman','Pescador',0),('fueler','Camionero',0),('lumberjack','Leñador',0),('mechanic','Mecanico',0),('miner','Minero',0),('police','Policía',0),('realestateagent','Realtor',0),('reporter','Repartidor',0),('slaughterer','Carnicero',0),('tailor','Sastre',0),('taxi','Taxi',0),('unemployed','Unemployed',0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenses`
--

LOCK TABLES `licenses` WRITE;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` VALUES ('boat','Licencia de bote'),('dmv','Code de la route'),('drive','Licencia de auto'),('drive_bike','Licencia de moto'),('drive_truck','Licencia de camion'),('weapon','Licencia de porte de arma'),('weed_processing','Licencia de procesamiento de Hierva');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owned_properties`
--

DROP TABLE IF EXISTS `owned_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_properties`
--

LOCK TABLES `owned_properties` WRITE;
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owned_vehicles`
--

DROP TABLE IF EXISTS `owned_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owned_vehicles` (
  `owner` varchar(40) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_vehicles`
--

LOCK TABLES `owned_vehicles` WRITE;
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
INSERT INTO `owned_vehicles` VALUES ('5ac1fd1b0807f31987e23f903b22d1864d701c32',1,'PME 747','{\"plate\":\"PME 747\",\"model\":-1232836011}','car',NULL,0),('5ac1fd1b0807f31987e23f903b22d1864d701c32',1,'RHL 123','{\"modTrimB\":-1,\"modExhaust\":-1,\"xenonColor\":255,\"wheelColor\":34,\"modHorns\":-1,\"modAirFilter\":-1,\"plate\":\"RHL 123\",\"neonEnabled\":[1,1,1,1],\"modDial\":-1,\"modTrunk\":-1,\"color2\":118,\"color1\":39,\"modFrontWheels\":42,\"modFrame\":-1,\"model\":-2107990196,\"modFender\":-1,\"modSpoilers\":-1,\"bodyHealth\":956.0,\"modTank\":-1,\"modArmor\":4,\"tankHealth\":994.7,\"modRearBumper\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modRoof\":-1,\"modWindows\":-1,\"modXenon\":1,\"modTurbo\":1,\"modOrnaments\":-1,\"modFrontBumper\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"modShifterLeavers\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,0,0],\"modAerials\":-1,\"modSuspension\":4,\"modVanityPlate\":-1,\"engineHealth\":970.3,\"pearlescentColor\":13,\"modLivery\":-1,\"modRightFender\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"extras\":[],\"modEngine\":3,\"modHood\":-1,\"modPlateHolder\":-1,\"modHydrolic\":-1,\"wheels\":0,\"modStruts\":-1,\"modBackWheels\":-1,\"plateIndex\":4,\"modDashboard\":-1,\"dirtLevel\":15.0,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"neonColor\":[255,255,0],\"modBrakes\":2,\"modTrimA\":-1,\"modTransmission\":2,\"modArchCover\":-1,\"fuelLevel\":43.5}','car',NULL,0);
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_app_chat`
--

DROP TABLE IF EXISTS `phone_app_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_app_chat`
--

LOCK TABLES `phone_app_chat` WRITE;
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_calls`
--

DROP TABLE IF EXISTS `phone_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_calls`
--

LOCK TABLES `phone_calls` WRITE;
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_messages`
--

DROP TABLE IF EXISTS `phone_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_messages`
--

LOCK TABLES `phone_messages` WRITE;
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
INSERT INTO `phone_messages` VALUES (106,'police','66642','De #66642 : Algún sospechoso está vendiendo drogas entre Alta St y  -112.09001922608, -611.16809082032','2020-11-29 10:39:21',0,0),(107,'police','66642','De #66642 : Algún sospechoso está vendiendo drogas entre Alta St y  -84.749923706054, -669.33190917968','2020-11-29 11:10:34',0,0),(108,'police','66642','De #66642 : Algún sospechoso está vendiendo drogas entre San Andreas Ave y Power St 1.1029233932496, -779.90802001954','2020-11-29 11:22:48',0,0),(109,'police','66642','De #66642 : Algún sospechoso está vendiendo drogas entre Eclipse Blvd y  -327.2914428711, 235.65914916992','2020-11-29 12:02:22',0,0),(110,'police','66642','De #66642 : Algún sospechoso está vendiendo drogas entre Eclipse Blvd y  -286.8484802246, 245.66450500488','2020-11-29 12:03:00',0,0),(111,'police','66642','De #66642 : Algún sospechoso está vendiendo drogas entre Eclipse Blvd y San Vitus Blvd -240.38012695312, 246.43559265136','2020-11-29 12:04:15',0,0),(112,'police','66642','De #66642 : Algún sospechoso está vendiendo drogas entre Eclipse Blvd y  -411.3937072754, 227.60162353516','2020-11-29 12:09:06',0,0);
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_users_contacts`
--

DROP TABLE IF EXISTS `phone_users_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_users_contacts`
--

LOCK TABLES `phone_users_contacts` WRITE;
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=473 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'WhispymoundDrive','2677 Whispymound Drive','{\"y\":564.89,\"z\":182.959,\"x\":119.384}','{\"x\":117.347,\"y\":559.506,\"z\":183.304}','{\"y\":557.032,\"z\":183.301,\"x\":118.037}','{\"y\":567.798,\"z\":182.131,\"x\":119.249}','[]',NULL,1,1,0,'{\"x\":118.748,\"y\":566.573,\"z\":175.697}',1500000),(2,'NorthConkerAvenue2045','2045 North Conker Avenue','{\"x\":372.796,\"y\":428.327,\"z\":144.685}','{\"x\":373.548,\"y\":422.982,\"z\":144.907},','{\"y\":420.075,\"z\":145.904,\"x\":372.161}','{\"x\":372.454,\"y\":432.886,\"z\":143.443}','[]',NULL,1,1,0,'{\"x\":377.349,\"y\":429.422,\"z\":137.3}',1500000),(3,'RichardMajesticApt2','Richard Majestic, Apt 2','{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}','{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}','{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}','{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}','[]',NULL,1,1,0,'{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}',1700000),(4,'NorthConkerAvenue2044','2044 North Conker Avenue','{\"y\":440.8,\"z\":146.702,\"x\":346.964}','{\"y\":437.456,\"z\":148.394,\"x\":341.683}','{\"y\":435.626,\"z\":148.394,\"x\":339.595}','{\"x\":350.535,\"y\":443.329,\"z\":145.764}','[]',NULL,1,1,0,'{\"x\":337.726,\"y\":436.985,\"z\":140.77}',1500000),(5,'WildOatsDrive','3655 Wild Oats Drive','{\"y\":502.696,\"z\":136.421,\"x\":-176.003}','{\"y\":497.817,\"z\":136.653,\"x\":-174.349}','{\"y\":495.069,\"z\":136.666,\"x\":-173.331}','{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}','[]',NULL,1,1,0,'{\"x\":-174.725,\"y\":493.095,\"z\":129.043}',1500000),(6,'HillcrestAvenue2862','2862 Hillcrest Avenue','{\"y\":596.58,\"z\":142.641,\"x\":-686.554}','{\"y\":591.988,\"z\":144.392,\"x\":-681.728}','{\"y\":590.608,\"z\":144.392,\"x\":-680.124}','{\"y\":599.019,\"z\":142.059,\"x\":-689.492}','[]',NULL,1,1,0,'{\"x\":-680.46,\"y\":588.6,\"z\":136.769}',1500000),(7,'LowEndApartment','Basic apartment','{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}','{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}','{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}','{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}','[]',NULL,1,1,0,'{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}',562500),(8,'MadWayneThunder','2113 Mad Wayne Thunder','{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}','{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}','{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}','{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}','[]',NULL,1,1,0,'{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}',1500000),(9,'HillcrestAvenue2874','2874 Hillcrest Avenue','{\"x\":-853.346,\"y\":696.678,\"z\":147.782}','{\"y\":690.875,\"z\":151.86,\"x\":-859.961}','{\"y\":688.361,\"z\":151.857,\"x\":-859.395}','{\"y\":701.628,\"z\":147.773,\"x\":-855.007}','[]',NULL,1,1,0,'{\"x\":-858.543,\"y\":697.514,\"z\":144.253}',1500000),(10,'HillcrestAvenue2868','2868 Hillcrest Avenue','{\"y\":620.494,\"z\":141.588,\"x\":-752.82}','{\"y\":618.62,\"z\":143.153,\"x\":-759.317}','{\"y\":617.629,\"z\":143.153,\"x\":-760.789}','{\"y\":621.281,\"z\":141.254,\"x\":-750.919}','[]',NULL,1,1,0,'{\"x\":-762.504,\"y\":618.992,\"z\":135.53}',1500000),(11,'TinselTowersApt12','Tinsel Towers, Apt 42','{\"y\":37.025,\"z\":42.58,\"x\":-618.299}','{\"y\":58.898,\"z\":97.2,\"x\":-603.301}','{\"y\":58.941,\"z\":97.2,\"x\":-608.741}','{\"y\":30.603,\"z\":42.524,\"x\":-620.017}','[]',NULL,1,1,0,'{\"x\":-622.173,\"y\":54.585,\"z\":96.599}',1700000),(12,'MiltonDrive','Milton Drive','{\"x\":-775.17,\"y\":312.01,\"z\":84.658}',NULL,NULL,'{\"x\":-775.346,\"y\":306.776,\"z\":84.7}','[]',NULL,0,0,1,NULL,0),(13,'Modern1Apartment','Modern Apartment 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_01_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.661,\"y\":327.672,\"z\":210.396}',1300000),(14,'Modern2Apartment','Modern Apartment 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_01_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.735,\"y\":326.757,\"z\":186.313}',1300000),(15,'Modern3Apartment','Modern Apartment 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_01_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.386,\"y\":330.782,\"z\":195.08}',1300000),(16,'Mody1Apartment','Mody Apartment 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_02_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.615,\"y\":327.878,\"z\":210.396}',1300000),(17,'Mody2Apartment','Mody Apartment 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_02_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.297,\"y\":327.092,\"z\":186.313}',1300000),(18,'Mody3Apartment','Mody Apartment 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_02_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.303,\"y\":330.932,\"z\":195.085}',1300000),(19,'Vibrant1Apartment','Vibrant Apartment 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_03_a\"]','MiltonDrive',0,1,0,'{\"x\":-765.885,\"y\":327.641,\"z\":210.396}',1300000),(20,'Vibrant2Apartment','Vibrant Apartment 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_03_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.607,\"y\":327.344,\"z\":186.313}',1300000),(21,'Vibrant3Apartment','Vibrant Apartment 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_03_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.525,\"y\":330.851,\"z\":195.085}',1300000),(22,'Sharp1Apartment','Sharp Apartment 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_04_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.527,\"y\":327.89,\"z\":210.396}',1300000),(23,'Sharp2Apartment','Sharp Apartment 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_04_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.642,\"y\":326.497,\"z\":186.313}',1300000),(24,'Sharp3Apartment','Sharp Apartment 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_04_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.503,\"y\":331.318,\"z\":195.085}',1300000),(25,'Monochrome1Apartment','Monochrome Apartment 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_05_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.289,\"y\":328.086,\"z\":210.396}',1300000),(26,'Monochrome2Apartment','Monochrome Apartment 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_05_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.692,\"y\":326.762,\"z\":186.313}',1300000),(27,'Monochrome3Apartment','Monochrome Apartment 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_05_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.094,\"y\":330.976,\"z\":195.085}',1300000),(28,'Seductive1Apartment','Seductive Apartment 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_06_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.263,\"y\":328.104,\"z\":210.396}',1300000),(29,'Seductive2Apartment','Seductive Apartment 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_06_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.655,\"y\":326.611,\"z\":186.313}',1300000),(30,'Seductive3Apartment','Seductive Apartment 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_06_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.3,\"y\":331.414,\"z\":195.085}',1300000),(31,'Regal1Apartment','Regal Apartment 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_07_a\"]','MiltonDrive',0,1,0,'{\"x\":-765.956,\"y\":328.257,\"z\":210.396}',1300000),(32,'Regal2Apartment','Regal Apartment 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_07_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.545,\"y\":326.659,\"z\":186.313}',1300000),(33,'Regal3Apartment','Regal Apartment 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_07_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.087,\"y\":331.429,\"z\":195.123}',1300000),(34,'Aqua1Apartment','Aqua Apartment 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_08_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.187,\"y\":328.47,\"z\":210.396}',1300000),(35,'Aqua2Apartment','Aqua Apartment 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_08_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.658,\"y\":326.563,\"z\":186.313}',1300000),(36,'Aqua3Apartment','Aqua Apartment 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_08_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.287,\"y\":331.084,\"z\":195.086}',1300000),(37,'IntegrityWay','4 Integrity Way','{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}',NULL,NULL,'{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}','[]',NULL,0,0,1,NULL,0),(38,'IntegrityWay28','4 Integrity Way - Apt 28',NULL,'{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}','{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}',NULL,'[]','IntegrityWay',0,1,0,'{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}',1700000),(39,'IntegrityWay30','4 Integrity Way - Apt 30',NULL,'{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}','{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}',NULL,'[]','IntegrityWay',0,1,0,'{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}',1700000),(40,'DellPerroHeights','Dell Perro Heights','{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}',NULL,NULL,'{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}','[]',NULL,0,0,1,NULL,0),(41,'DellPerroHeightst4','Dell Perro Heights - Apt 28',NULL,'{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}','{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}',NULL,'[]','DellPerroHeights',0,1,0,'{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}',1700000),(42,'DellPerroHeightst7','Dell Perro Heights - Apt 30',NULL,'{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}','{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}',NULL,'[]','DellPerroHeights',0,1,0,'{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}',1700000),(182,'MotelRoom1','Room 1','{\"y\":-218.82,\"z\":54.22,\"x\":312.86}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-218.82,\"z\":54.22,\"x\":312.86}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(183,'MotelRoom2','Room 2','{\"y\":-217.9,\"z\":54.22,\"x\":310.89}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-217.9,\"z\":54.22,\"x\":310.89}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(184,'MotelRoom3','Room 3','{\"y\":-216.47,\"z\":54.22,\"x\":307.24}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-216.47,\"z\":54.22,\"x\":307.24}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(185,'MotelRoom4','Room 4','{\"y\":-213.32,\"z\":54.22,\"x\":307.52}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-213.32,\"z\":54.22,\"x\":307.52}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(186,'MotelRoom5a','Room 5a','{\"y\":-208.03,\"z\":54.22,\"x\":309.46}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-208.03,\"z\":54.22,\"x\":309.46}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(187,'MotelRoom5b','Room 5b','{\"y\":-203.38,\"z\":54.22,\"x\":311.32}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-203.38,\"z\":54.22,\"x\":311.32}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(188,'MotelRoom6','Room 6','{\"y\":-198.14,\"z\":54.22,\"x\":313.71}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-198.14,\"z\":54.22,\"x\":313.71}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(189,'MotelRoom7','Room 7','{\"y\":-194.93,\"z\":54.22,\"x\":315.66}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-194.93,\"z\":54.22,\"x\":315.66}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(190,'MotelRoom8','Room 8','{\"y\":-196.54,\"z\":54.22,\"x\":319.17}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-196.54,\"z\":54.22,\"x\":319.17}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(191,'MotelRoom9','Room 9','{\"y\":-197.22,\"z\":54.22,\"x\":321.31}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-197.22,\"z\":54.22,\"x\":321.31}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(192,'MotelRoom11','Room 11','{\"y\":-218.82,\"z\":58.02,\"x\":312.86}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-218.82,\"z\":58.02,\"x\":312.86}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(193,'MotelRoom12','Room 12','{\"y\":-217.9,\"z\":58.02,\"x\":310.89}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-217.9,\"z\":58.02,\"x\":310.89}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(194,'MotelRoom13','Room 13','{\"y\":-216.47,\"z\":58.02,\"x\":307.24}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-216.47,\"z\":58.02,\"x\":307.24}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(195,'MotelRoom14','Room 14','{\"y\":-213.32,\"z\":58.02,\"x\":307.52}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-213.32,\"z\":58.02,\"x\":307.52}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(196,'MotelRoom15','Room 15','{\"y\":-208.03,\"z\":58.02,\"x\":309.46}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-208.03,\"z\":58.02,\"x\":309.46}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(197,'MotelRoom16','Room 16','{\"y\":-203.38,\"z\":58.02,\"x\":311.32}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-203.38,\"z\":58.02,\"x\":311.32}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(198,'MotelRoom17','Room 17','{\"y\":-198.14,\"z\":58.02,\"x\":313.71}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-198.14,\"z\":58.02,\"x\":313.71}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(199,'MotelRoom18','Room 18','{\"y\":-194.93,\"z\":58.02,\"x\":315.66}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-194.93,\"z\":58.02,\"x\":315.66}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(200,'MotelRoom19','Room 19','{\"y\":-196.54,\"z\":58.02,\"x\":319.17}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-196.54,\"z\":58.02,\"x\":319.17}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(201,'MotelRoom20','Room 20','{\"y\":-197.22,\"z\":58.02,\"x\":321.31}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-197.22,\"z\":58.02,\"x\":321.31}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(202,'MotelRoom29','Room 29','{\"y\":-199.74,\"z\":54.22,\"x\":346.81}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-199.74,\"z\":54.22,\"x\":346.81}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(203,'MotelRoom28','Room 28','{\"y\":-204.98,\"z\":54.22,\"x\":344.75}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-204.98,\"z\":54.22,\"x\":344.75}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(204,'MotelRoom27','Room 27','{\"y\":-209.61,\"z\":54.22,\"x\":343.02}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-209.61,\"z\":54.22,\"x\":343.02}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(205,'MotelRoom26','Room 26','{\"y\":-214.96,\"z\":54.22,\"x\":340.94}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-214.96,\"z\":54.22,\"x\":340.94}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(206,'MotelRoom25','Room 25','{\"y\":-219.54,\"z\":54.22,\"x\":339.16}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-219.54,\"z\":54.22,\"x\":339.16}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(207,'MotelRoom24','Room 24','{\"y\":-224.83,\"z\":54.22,\"x\":337.03}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-224.83,\"z\":54.22,\"x\":337.03}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(208,'MotelRoom23','Room 23','{\"y\":-227.39,\"z\":54.22,\"x\":334.92}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-227.39,\"z\":54.22,\"x\":334.92}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(209,'MotelRoom22','Room 22','{\"y\":-226.0,\"z\":54.22,\"x\":331.34}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-226.0,\"z\":54.22,\"x\":331.34}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(210,'MotelRoom21','Room 21','{\"y\":-225.17,\"z\":54.22,\"x\":329.3}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-225.17,\"z\":54.22,\"x\":329.3}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(211,'MotelRoom38','Room 38','{\"y\":-199.74,\"z\":58.02,\"x\":346.81}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-199.74,\"z\":58.02,\"x\":346.81}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(212,'MotelRoom37','Room 37','{\"y\":-204.98,\"z\":58.02,\"x\":344.75}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-204.98,\"z\":58.02,\"x\":344.75}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(213,'MotelRoom36','Room 36','{\"y\":-209.61,\"z\":58.02,\"x\":343.02}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-209.61,\"z\":58.02,\"x\":343.02}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(214,'MotelRoom35','Room 35','{\"y\":-214.96,\"z\":58.02,\"x\":340.94}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-214.96,\"z\":58.02,\"x\":340.94}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(215,'MotelRoom34','Room 34','{\"y\":-219.54,\"z\":58.02,\"x\":339.16}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-219.54,\"z\":58.02,\"x\":339.16}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(216,'MotelRoom33','Room 33','{\"y\":-224.83,\"z\":58.02,\"x\":337.03}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-224.83,\"z\":58.02,\"x\":337.03}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(217,'MotelRoom32','Room 32','{\"y\":-227.39,\"z\":58.02,\"x\":334.92}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-227.39,\"z\":58.02,\"x\":334.92}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(218,'MotelRoom31','Room 31','{\"y\":-226.0,\"z\":58.02,\"x\":331.34}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-226.0,\"z\":58.02,\"x\":331.34}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(219,'MotelRoom30','Room 30','{\"y\":-225.17,\"z\":58.02,\"x\":329.3}','{\"x\":151.48,\"y\":-1007.59,\"z\":-99.00}','{\"y\":-1007.59,\"z\":-99.00,\"x\":151.48}','{\"y\":-225.17,\"z\":58.02,\"x\":329.3}','[]',NULL,1,1,0,'{\"x\":151.62,\"y\":-1003.27,\"z\":-99.00}',250000),(454,'1ProcopioDrive','1 Procopio Drive','{\"x\":-467.91,\"y\":6206.53,\"z\":28.55}','{\"x\":-454.99,\"y\":6187.85,\"z\":20.55},','{\"x\":-454.99,\"y\":6187.85,\"z\":20.55}','{\"x\":-467.91,\"y\":6206.53,\"z\":28.55}','[]',NULL,1,1,0,'{\"x\":-449.96,\"y\":6199.84,\"z\":20.55}',980000),(455,'2ProcopioDrive','2 Procopio Drive','{\"x\":-448.07,\"y\":6259.67,\"z\":29.05}','{\"x\":-444.76,\"y\":6253.75,\"z\":21.68},','{\"x\":-444.76,\"y\":6253.75,\"z\":21.68}','{\"x\":-448.07,\"y\":6259.67,\"z\":29.05}','[]',NULL,1,1,0,'{\"x\":-436.82,\"y\":6265.13,\"z\":21.68}',930000),(456,'3ProcopioDrive','3 Procopio Drive','{\"x\":-407.03,\"y\":6314.03,\"z\":27.94}','{\"x\":-395.32,\"y\":6308.13,\"z\":20.55}','{\"x\":-395.32,\"y\":6308.13,\"z\":20.55}','{\"x\":-407.03,\"y\":6314.03,\"z\":27.94}','[]',NULL,1,1,0,'{\"x\":-398.76,\"y\":6321.58,\"z\":20.55}',945000),(457,'4ProcopioDrive','4 Procopio Drive','{\"x\":-359.44,\"y\":6334.31,\"z\":28.85}','{\"x\":-355.91,\"y\":6324.56,\"z\":21.86}','{\"x\":-355.91,\"y\":6324.56,\"z\":21.86}','{\"x\":-359.44,\"y\":6334.31,\"z\":28.85}','[]',NULL,1,1,0,'{\"x\":-361.42,\"y\":6336.98,\"z\":21.86}',928000),(458,'5ProcopioDrive','5 Procopio Drive','{\"x\":-271.92,\"y\":6400.05,\"z\":30.34}','{\"x\":-266.14,\"y\":6392.72,\"z\":11.78}','{\"x\":-266.14,\"y\":6392.72,\"z\":11.78}','{\"x\":-271.92,\"y\":6400.05,\"z\":30.34}','[]',NULL,1,1,0,'{\"x\":-272.72,\"y\":6404.57,\"z\":11.78}',820000),(459,'6ProcopioDrive','6 Procopio Drive','{\"x\":-246.26,\"y\":6414.10,\"z\":30.46}','{\"x\":-259.74,\"y\":6405.56,\"z\":16.68}','{\"x\":-259.74,\"y\":6405.56,\"z\":16.68}','{\"x\":-246.26,\"y\":6414.10,\"z\":30.46}','[]',NULL,1,1,0,'{\"x\":-247.92,\"y\":6411.08,\"z\":16.68}',850000),(460,'7ProcopioDrive','7 Procopio Drive','{\"x\":-229.82,\"y\":6445.04,\"z\":30.20}','{\"x\":-211.54,\"y\":6448.95,\"z\":21.98}','{\"x\":-211.54,\"y\":6448.95,\"z\":21.98}','{\"x\":-229.82,\"y\":6445.04,\"z\":30.20}','[]',NULL,1,1,0,'{\"x\":-200.12,\"y\":6457.06,\"z\":21.98}',910000),(461,'8ProcopioDrive','8 Procopio Drive','{\"x\":-130.69,\"y\":6551.94,\"z\":28.87}','{\"x\":-115.98,\"y\":6551.94,\"z\":15.02}','{\"x\":-115.98,\"y\":6551.94,\"z\":15.02}','{\"x\":-130.69,\"y\":6551.94,\"z\":28.87}','[]',NULL,1,1,0,'{\"x\":-119.98,\"y\":6564.45,\"z\":15.02}',870000),(462,'9ProcopioDrive','9 Procopio Drive','{\"x\":-41.30,\"y\":6636.87,\"z\":30.09}','{\"x\":-39.03,\"y\":6636.18,\"z\":18.26}','{\"x\":-39.03,\"y\":6636.18,\"z\":18.26}','{\"x\":-41.30,\"y\":6636.87,\"z\":30.09}','[]',NULL,1,1,0,'{\"x\":-42.04,\"y\":6648.94,\"z\":18.26}',810000),(463,'10ProcopioDrive','10 Procopio Drive','{\"x\":-9.49,\"y\":6653.92,\"z\":30.48}','{\"x\":-1.92,\"y\":6640.94,\"z\":17.89}','{\"x\":-1.92,\"y\":6640.94,\"z\":17.89}','{\"x\":-9.49,\"y\":6653.92,\"z\":30.48}','[]',NULL,1,1,0,'{\"x\":-2.35,\"y\":6653.89,\"z\":17.89}',840000),(464,'11ProcopioDrive','11 Procopio Drive','{\"x\":35.39,\"y\":6662.78,\"z\":31.19}','{\"x\":34.63,\"y\":6655.86,\"z\":18.12}','{\"x\":34.63,\"y\":6655.86,\"z\":18.12}','{\"x\":35.39,\"y\":6662.78,\"z\":31.19}','[]',NULL,1,1,0,'{\"x\":39.33,\"y\":6667.02,\"z\":18.12}',830000),(466,'12ProcopioDrive','12 Sandy Shore','{\"x\":1879.61,\"y\":3920.41,\"z\":32.18}','{\"x\":1875.07,\"y\":3921.64,\"z\":22.70}','{\"x\":1875.07,\"y\":3921.64,\"z\":22.70}','{\"x\":1879.61,\"y\":3920.41,\"z\":32.19}','[]',NULL,1,1,0,'{\"x\":1875.79,\"y\":3928.13,\"z\":22.71}',100000),(467,'13ProcopioDrive','13 Sandy Shore','{\"x\":1802.97,\"y\":3913.67,\"z\":36.05}','{\"x\":1872.65,\"y\":3998.63,\"z\":22.70}','{\"x\":1872.65,\"y\":3998.63,\"z\":22.70}','{\"x\":1802.97,\"y\":3913.67,\"z\":36.06}','[]',NULL,1,1,0,'{\"x\":1873.27,\"y\":3945.01,\"z\":22.71}',100000),(468,'14ProcopioDrive','14 Sandy Shore','{\"x\":1733.2 ,\"y\":3895.5 ,\"z\":34.55}','{\"x\":1889.91,\"y\":3955.21,\"z\":22.70}','{\"x\":1889.91,\"y\":3955.21,\"z\":22.70}','{\"x\":1733.2 ,\"y\":3895.5 ,\"z\":34.56}','[]',NULL,1,1,0,'{\"x\":1890.62,\"y\":3961.73,\"z\":22.71}',100000),(469,'15ProcopioDrive','15 Sandy Shore','{\"x\":1881.04,\"y\":3811.03,\"z\":31.77}','{\"x\":1889.97,\"y\":3938.19,\"z\":22.70}','{\"x\":1889.97,\"y\":3938.19,\"z\":22.70}','{\"x\":1881.04,\"y\":3811.03,\"z\":31.78}','[]',NULL,1,1,0,'{\"x\":1890.63,\"y\":3944.78,\"z\":22.71}',100000),(470,'16ProcopioDrive','16 Sandy Shore','{\"x\":1774.1,\"y\":3742.45,\"z\":33.66}','{\"x\":1889.9,\"y\":3921.79,\"z\": 22.70}','{\"x\":1889.9 ,\"y\":3921.79,\"z\":22.70}','{\"x\":1774.1,\"y\":3742.45,\"z\":33.66}','[]',NULL,1,1,0,'{\"x\":1890.58,\"y\":3927.38,\"z\":22.71}',100000),(471,'17ProcopioDrive','17 Sandy Shore','{\"x\":1663.11,\"y\":3727.64,\"z\":34.07}','{\"x\":1889.86,\"y\":3895.05,\"z\":22.70}','{\"x\":1889.86,\"y\":3895.05,\"z\":22.70}','{\"x\":1663.11,\"y\":3727.64,\"z\":34.07}','[]',NULL,1,1,0,'{\"x\":1890.76,\"y\":3901.48,\"z\":22.71}',100000),(472,'18ProcopioDrive','18 Sandy Shore','{\"x\":1908.17,\"y\":3869.55,\"z\":31.99}','{\"x\":1913.42,\"y\":3921.59,\"z\":22.70}','{\"x\":1913.42,\"y\":3921.59,\"z\":22.70}','{\"x\":1908.17,\"y\":3869.55,\"z\":31.99}','[]',NULL,1,1,0,'{\"x\":1914.12,\"y\":3928.34,\"z\":22.71}',100000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented_vehicles`
--

DROP TABLE IF EXISTS `rented_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented_vehicles`
--

LOCK TABLES `rented_vehicles` WRITE;
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,'TwentyFourSeven','bread',30),(2,'TwentyFourSeven','water',15),(3,'RobsLiquor','bread',30),(4,'RobsLiquor','water',15),(5,'LTDgasoline','bread',30),(6,'LTDgasoline','water',15),(7,'TwentyFourSeven','fixkit',8000),(8,'LTDgasoline','fixkit',10000),(9,'TwentyFourSeven','cocacola',30),(10,'RobsLiquor','cocacola',30),(11,'LTDgasoline','cocacola',30),(12,'TwentyFourSeven','cigarett',15),(13,'RobsLiquor','cigarett',15),(14,'LTDgasoline','cigarett',15),(15,'TwentyFourSeven','beer',20),(16,'RobsLiquor','beer',15),(17,'LTDgasoline','beer',15),(18,'TwentyFourSeven','lighter',15),(19,'RobsLiquor','lighter',15),(20,'LTDgasoline','lighter',15),(21,'TwentyFourSeven','tequila',15),(22,'RobsLiquor','tequila',15),(23,'TwentyFourSeven','whisky',20),(24,'RobsLiquor','whisky',20),(27,'LTDgasoline','coffe',10),(28,'TwentyFourSeven','icetea',15),(29,'RobsLiquor','icetea',15),(30,'LTDgasoline','icetea',15),(31,'TwentyFourSeven','chips',10),(32,'RobsLiquor','chips',10),(33,'LTDgasoline','chips',10),(34,'LTDgasoline','cupcake',10),(35,'TwentyFourSeven','sandwich',25),(36,'RobsLiquor','sandwich',10),(37,'LTDgasoline','sandwich',10),(38,'TwentyFourSeven','hamburger',25),(39,'RobsLiquor','hamburger',15),(40,'LTDgasoline','pastilla',45),(41,'TwentyFourSeven','vodka',45),(42,'RobsLiquor','vodka',30);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `society_moneywash`
--

DROP TABLE IF EXISTS `society_moneywash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society_moneywash`
--

LOCK TABLES `society_moneywash` WRITE;
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
INSERT INTO `society_moneywash` VALUES (1,'5ac1fd1b0807f31987e23f903b22d1864d701c32','mechanic',5000000);
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck_inventory`
--

DROP TABLE IF EXISTS `truck_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owned` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`item`,`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck_inventory`
--

LOCK TABLES `truck_inventory` WRITE;
/*!40000 ALTER TABLE `truck_inventory` DISABLE KEYS */;
INSERT INTO `truck_inventory` VALUES (1,'water',0,'RHL 123 ','Agua','0'),(3,'bread',0,'RHL 123 ','Pan','0');
/*!40000 ALTER TABLE `truck_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_accounts`
--

DROP TABLE IF EXISTS `twitter_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_accounts`
--

LOCK TABLES `twitter_accounts` WRITE;
/*!40000 ALTER TABLE `twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_likes`
--

DROP TABLE IF EXISTS `twitter_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_likes`
--

LOCK TABLES `twitter_likes` WRITE;
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_tweets`
--

DROP TABLE IF EXISTS `twitter_tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_tweets`
--

LOCK TABLES `twitter_tweets` WRITE;
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contacts`
--

DROP TABLE IF EXISTS `user_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(35) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contacts`
--

LOCK TABLES `user_contacts` WRITE;
/*!40000 ALTER TABLE `user_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_lastcharacter`
--

DROP TABLE IF EXISTS `user_lastcharacter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_lastcharacter`
--

LOCK TABLES `user_lastcharacter` WRITE;
/*!40000 ALTER TABLE `user_lastcharacter` DISABLE KEYS */;
INSERT INTO `user_lastcharacter` VALUES ('steam:110000142d368bd',1);
/*!40000 ALTER TABLE `user_lastcharacter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_licenses`
--

DROP TABLE IF EXISTS `user_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_licenses`
--

LOCK TABLES `user_licenses` WRITE;
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
INSERT INTO `user_licenses` VALUES (1,'boat','5ac1fd1b0807f31987e23f903b22d1864d701c32');
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_parkings`
--

DROP TABLE IF EXISTS `user_parkings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_parkings`
--

LOCK TABLES `user_parkings` WRITE;
/*!40000 ALTER TABLE `user_parkings` DISABLE KEYS */;
INSERT INTO `user_parkings` VALUES (1,'5ac1fd1b0807f31987e23f903b22d1864d701c32','DidionWay',5,'{\"modHydrolic\":-1,\"modHorns\":-1,\"modSeats\":-1,\"fuelLevel\":65.0,\"modXenon\":false,\"modSpoilers\":-1,\"model\":1663218586,\"modBackWheels\":-1,\"modStruts\":-1,\"modTrimA\":-1,\"extras\":[],\"modDashboard\":-1,\"modLivery\":-1,\"wheelColor\":0,\"neonEnabled\":[false,false,false,false],\"modTrunk\":-1,\"color1\":7,\"plateIndex\":0,\"modHood\":-1,\"modSuspension\":-1,\"modRearBumper\":-1,\"modExhaust\":-1,\"tankHealth\":998.4,\"modFrontWheels\":-1,\"color2\":7,\"modSpeakers\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"xenonColor\":255,\"modBrakes\":-1,\"modAirFilter\":-1,\"modArmor\":-1,\"modDoorSpeaker\":-1,\"modRightFender\":-1,\"modVanityPlate\":-1,\"plate\":\"03BPK652\",\"modAerials\":-1,\"wheels\":7,\"modTank\":-1,\"dirtLevel\":2.1,\"neonColor\":[255,0,255],\"bodyHealth\":983.8,\"modTrimB\":-1,\"pearlescentColor\":3,\"engineHealth\":1000.0,\"modFender\":-1,\"modArchCover\":-1,\"modAPlate\":-1,\"modEngine\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modTransmission\":-1,\"modSideSkirt\":-1,\"modOrnaments\":-1,\"modFrame\":-1,\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modTurbo\":false,\"modEngineBlock\":-1,\"modWindows\":-1}');
/*!40000 ALTER TABLE `user_parkings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `identifier` varchar(40) NOT NULL,
  `accounts` longtext,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `is_dead` tinyint(1) DEFAULT '0',
  `last_property` varchar(255) DEFAULT NULL,
  `skin` longtext,
  `status` longtext,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `phone_number` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `index_users_phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('5ac1fd1b0807f31987e23f903b22d1864d701c32','{\"bank\":217480,\"black_money\":0,\"money\":0}','admin','{\"water\":15,\"bread\":15}','police',1,'[]','{\"heading\":135.8,\"z\":26.4,\"y\":-1103.4,\"x\":-35.5}',0,'1MirrorParkHouse','{\"bags_1\":0,\"bodyb_2\":0,\"pants_2\":0,\"arms\":11,\"skin\":0,\"chest_2\":0,\"arms_2\":0,\"lipstick_2\":0,\"ears_2\":0,\"hair_2\":0,\"bracelets_2\":0,\"eyebrows_1\":0,\"chain_2\":0,\"makeup_4\":0,\"mask_1\":25,\"watches_1\":-1,\"tshirt_2\":0,\"bags_2\":0,\"helmet_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"complexion_1\":0,\"glasses_2\":0,\"blush_2\":0,\"makeup_1\":0,\"watches_2\":0,\"beard_4\":0,\"blemishes_1\":0,\"hair_color_2\":0,\"age_1\":0,\"blemishes_2\":0,\"shoes_2\":0,\"decals_2\":0,\"beard_2\":0,\"blush_3\":0,\"bracelets_1\":-1,\"glasses_1\":0,\"sun_2\":0,\"bproof_1\":0,\"complexion_2\":0,\"blush_1\":0,\"bproof_2\":0,\"beard_1\":1,\"lipstick_3\":0,\"hair_1\":6,\"eyebrows_2\":0,\"sun_1\":0,\"chest_1\":0,\"face\":0,\"moles_1\":0,\"shoes_1\":21,\"eye_color\":1,\"lipstick_1\":0,\"chain_1\":0,\"hair_color_1\":11,\"pants_1\":13,\"tshirt_1\":13,\"torso_1\":13,\"makeup_2\":0,\"decals_1\":0,\"beard_3\":2,\"helmet_1\":-1,\"eyebrows_4\":0,\"chest_3\":0,\"moles_2\":0,\"mask_2\":0,\"age_2\":0,\"bodyb_1\":0,\"eyebrows_3\":0,\"torso_2\":0,\"ears_1\":-1,\"sex\":0}','[{\"percent\":45.82,\"name\":\"hunger\",\"val\":458200},{\"percent\":46.865,\"name\":\"thirst\",\"val\":468650},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]','Jean','Cana','05/16/2000','m',84,'66642');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_categories`
--

DROP TABLE IF EXISTS `vehicle_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_categories`
--

LOCK TABLES `vehicle_categories` WRITE;
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` VALUES ('compacts','Compacts'),('coupes','Coupes'),('ff1','Rapidos y Furiosos 1'),('motorcycles','Motos'),('muscle','Muscle'),('offroad','Off Road'),('reales','Reales'),('sedans','Sedans'),('sports','Sports'),('sportsclassics','Sports Classics'),('super','Super'),('suvs','SUVs'),('vans','Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_sold`
--

DROP TABLE IF EXISTS `vehicle_sold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_sold`
--

LOCK TABLES `vehicle_sold` WRITE;
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('Nissan Skyline GT-R34 1999','2f2fgtr34',45000,'ff1'),('2003 Mitsubishi Eclipse Spyder GTS','2f2fgts',29000,'ff1'),('Toyota Supra MK IV 1994','2f2fmk4',39000,'ff1'),('Mitsubishi Lancer Evolution VII 2002','2f2fmle7',22000,'ff1'),('1994 Mazda RX-7','2f2frx7',32000,'ff1'),('2001 Honda S2000','2f2fs2000',32000,'ff1'),('2002 Nissan 350z DK','350zdk',27000,'ff1'),('2002 Nissan 350z Morimoto','350zm',32000,'ff1'),('1997 Acura NSX','acura2f2f',88000,'ff1'),('Adder','adder',900000,'super'),('Akuma','AKUMA',7500,'motorcycles'),('Alpha','alpha',60000,'sports'),('Ardent','ardent',1150000,'sportsclassics'),('Asea','asea',5500,'sedans'),('Autarch','autarch',1955000,'super'),('Avarus','avarus',18000,'motorcycles'),('Bagger','bagger',13500,'motorcycles'),('Baller','baller2',40000,'suvs'),('Baller Sport','baller3',60000,'suvs'),('Banshee','banshee',70000,'sports'),('Banshee 900R','banshee2',255000,'super'),('Bati 801','bati',12000,'motorcycles'),('Bati 801RR','bati2',19000,'motorcycles'),('Tahoe bc21 Tunning','bc21tahoe',52000,'reales'),('Tahoe bc21','bc21tahoes',51000,'reales'),('Bestia GTS','bestiagts',55000,'sports'),('BF400','bf400',6500,'motorcycles'),('Bf Injection','bfinjection',16000,'offroad'),('Bifta','bifta',12000,'offroad'),('Bison','bison',45000,'vans'),('Blade','blade',15000,'muscle'),('Blazer','blazer',6500,'offroad'),('Blazer Sport','blazer4',8500,'offroad'),('blazer5','blazer5',1755600,'offroad'),('Blista','blista',8000,'compacts'),('BMX (velo)','bmx',160,'motorcycles'),('Bobcat XL','bobcatxl',32000,'vans'),('Brawler','brawler',45000,'offroad'),('Brioso R/A','brioso',18000,'compacts'),('Btype','btype',62000,'sportsclassics'),('Btype Hotroad','btype2',155000,'sportsclassics'),('Btype Luxe','btype3',85000,'sportsclassics'),('Buccaneer','buccaneer',18000,'muscle'),('Buccaneer Rider','buccaneer2',24000,'muscle'),('Buffalo','buffalo',12000,'sports'),('Buffalo S','buffalo2',20000,'sports'),('Bullet','bullet',90000,'super'),('Burrito','burrito3',19000,'vans'),('Camper','camper',42000,'vans'),('Carbonizzare','carbonizzare',75000,'sports'),('Carbon RS','carbonrs',18000,'motorcycles'),('Casco','casco',30000,'sportsclassics'),('Cavalcade','cavalcade2',55000,'suvs'),('Cheetah','cheetah',375000,'super'),('Chimera','chimera',38000,'motorcycles'),('Chino','chino',15000,'muscle'),('Chino Luxe','chino2',19000,'muscle'),('Bugatti Chiron','CHIRON17',12000000,'reales'),('Cliffhanger','cliffhanger',9500,'motorcycles'),('Cognoscenti Cabrio','cogcabrio',55000,'coupes'),('Cognoscenti','cognoscenti',55000,'sedans'),('Comet','comet2',65000,'sports'),('Comet 5','comet5',1145000,'sports'),('Contender','contender',70000,'suvs'),('Coquette','coquette',65000,'sports'),('Coquette Classic','coquette2',40000,'sportsclassics'),('Coquette BlackFin','coquette3',55000,'muscle'),('Cruiser (velo)','cruiser',510,'motorcycles'),('Cyclone','cyclone',1890000,'super'),('Daemon','daemon',11500,'motorcycles'),('Daemon High','daemon2',13500,'motorcycles'),('Defiler','defiler',9800,'motorcycles'),('Deluxo','deluxo',4721500,'sportsclassics'),('Dominator','dominator',35000,'muscle'),('Double T','double',28000,'motorcycles'),('Drif DODGE','driftram',52000,'reales'),('Dubsta','dubsta',45000,'suvs'),('Dubsta Luxuary','dubsta2',60000,'suvs'),('Bubsta 6x6','dubsta3',120000,'offroad'),('Dukes','dukes',28000,'muscle'),('Dune Buggy','dune',8000,'offroad'),('Elegy','elegy2',38500,'sports'),('Emperor','emperor',8500,'sedans'),('Enduro','enduro',5500,'motorcycles'),('Entity XF','entityxf',425000,'super'),('Esskey','esskey',4200,'motorcycles'),('Exemplar','exemplar',32000,'coupes'),('F620','f620',40000,'coupes'),('Faction','faction',20000,'muscle'),('Faction Rider','faction2',30000,'muscle'),('Faction XL','faction3',40000,'muscle'),('Faggio','faggio',1900,'motorcycles'),('Vespa','faggio2',2800,'motorcycles'),('Felon','felon',42000,'coupes'),('Felon GT','felon2',55000,'coupes'),('Feltzer','feltzer2',55000,'sports'),('Stirling GT','feltzer3',65000,'sportsclassics'),('2009 Subaru WRX STI','ff4wrx',35000,'ff1'),('Fixter (velo)','fixter',225,'motorcycles'),('FMJ','fmj',185000,'super'),('1999 Nissan Skyline GT-R34','fnf4r34',45000,'ff1'),('1995 Volkswagen Jetta','fnfjetta',20000,'ff1'),('2002 Mitsubishi Lancer Evolution VII','fnflan',15000,'ff1'),('1995 Mitsubishi Eclipse GSX','fnfmits',23000,'ff1'),('1994 Toyota Supra MK IV','fnfmk4',50000,'ff1'),('1994 Mazda RX-7 VeilSide','fnfrx7',30000,'ff1'),('1993 Mazda RX-7','fnfrx7dom',32500,'ff1'),('Ford Tunning','fordh',50000,'reales'),('Fhantom','fq2',17000,'suvs'),('Fugitive','fugitive',12000,'sedans'),('Furore GT','furoregt',45000,'sports'),('Fusilade','fusilade',40000,'sports'),('Gargoyle','gargoyle',16500,'motorcycles'),('Gauntlet','gauntlet',30000,'muscle'),('Gang Burrito','gburrito',45000,'vans'),('Burrito','gburrito2',29000,'vans'),('Glendale','glendale',6500,'sedans'),('Grabger','granger',50000,'suvs'),('Gresley','gresley',47500,'suvs'),('GT 500','gt500',785000,'sportsclassics'),('Guardian','guardian',45000,'offroad'),('Hakuchou','hakuchou',31000,'motorcycles'),('Hakuchou Sport','hakuchou2',55000,'motorcycles'),('Honda Civic EJ1','hcej1',35000,'ff1'),('Hermes','hermes',535000,'muscle'),('Hexer','hexer',12000,'motorcycles'),('Hotknife','hotknife',125000,'muscle'),('Huntley S','huntley',40000,'suvs'),('Hustler','hustler',625000,'muscle'),('Infernus','infernus',180000,'super'),('Innovation','innovation',23500,'motorcycles'),('Intruder','intruder',7500,'sedans'),('Issi','issi2',10000,'compacts'),('Jackal','jackal',38000,'coupes'),('Jester','jester',65000,'sports'),('Jester(Racecar)','jester2',135000,'sports'),('Journey','journey',6500,'vans'),('Kamacho','kamacho',345000,'offroad'),('Khamelion','khamelion',38000,'sports'),('Kuruma','kuruma',30000,'sports'),('Landstalker','landstalker',35000,'suvs'),('RE-7B','le7b',325000,'super'),('Lynx','lynx',40000,'sports'),('Mamba','mamba',70000,'sports'),('Manana','manana',12800,'sportsclassics'),('Manchez','manchez',5300,'motorcycles'),('Massacro','massacro',65000,'sports'),('Massacro(Racecar)','massacro2',130000,'sports'),('Mclaren GT','mcgt20',215000,'reales'),('Mesa','mesa',16000,'suvs'),('Mesa Trail','mesa3',40000,'suvs'),('Minivan','minivan',13000,'vans'),('Monroe','monroe',55000,'sportsclassics'),('The Liberator','monster',210000,'offroad'),('Moonbeam','moonbeam',18000,'vans'),('Moonbeam Rider','moonbeam2',35000,'vans'),('Nemesis','nemesis',5800,'motorcycles'),('Neon','neon',1500000,'sports'),('Nightblade','nightblade',35000,'motorcycles'),('Nightshade','nightshade',65000,'muscle'),('9F','ninef',65000,'sports'),('9F Cabrio','ninef2',80000,'sports'),('Omnis','omnis',35000,'sports'),('Oppressor','oppressor',3524500,'super'),('Oracle XS','oracle2',35000,'coupes'),('Osiris','osiris',160000,'super'),('Panto','panto',10000,'compacts'),('Paradise','paradise',19000,'vans'),('Pariah','pariah',1420000,'sports'),('Patriot','patriot',55000,'suvs'),('PCJ-600','pcj',6200,'motorcycles'),('Penumbra','penumbra',28000,'sports'),('Pfister','pfister811',85000,'super'),('Phoenix','phoenix',12500,'muscle'),('Picador','picador',18000,'muscle'),('Pigalle','pigalle',20000,'sportsclassics'),('Prairie','prairie',12000,'compacts'),('Premier','premier',8000,'sedans'),('Primo Custom','primo2',14000,'sedans'),('X80 Proto','prototipo',2500000,'super'),('Radius','radi',29000,'suvs'),('raiden','raiden',1375000,'sports'),('Rapid GT','rapidgt',35000,'sports'),('Rapid GT Convertible','rapidgt2',45000,'sports'),('Rapid GT3','rapidgt3',885000,'sportsclassics'),('Reaper','reaper',150000,'super'),('Rebel','rebel2',35000,'offroad'),('Regina','regina',5000,'sedans'),('Retinue','retinue',615000,'sportsclassics'),('Revolter','revolter',1610000,'sports'),('riata','riata',380000,'offroad'),('Mercedes-AMG','rmodc63amg',69000,'reales'),('Koenigsegg ','rmodjesko',3000000,'reales'),('Rocoto','rocoto',45000,'suvs'),('Ruffian','ruffian',6800,'motorcycles'),('Ruiner 2','ruiner2',5745600,'muscle'),('Rumpo','rumpo',15000,'vans'),('Rumpo Trail','rumpo3',19500,'vans'),('Sabre Turbo','sabregt',20000,'muscle'),('Sabre GT','sabregt2',25000,'muscle'),('Sanchez','sanchez',5300,'motorcycles'),('Sanchez Sport','sanchez2',5300,'motorcycles'),('Sanctus','sanctus',25000,'motorcycles'),('Sandking','sandking',55000,'offroad'),('Savestra','savestra',990000,'sportsclassics'),('SC 1','sc1',1603000,'super'),('Schafter','schafter2',25000,'sedans'),('Schafter V12','schafter3',50000,'sports'),('Scorcher (velo)','scorcher',280,'motorcycles'),('Seminole','seminole',25000,'suvs'),('Sentinel','sentinel',32000,'coupes'),('Sentinel XS','sentinel2',40000,'coupes'),('Sentinel3','sentinel3',650000,'sports'),('Seven 70','seven70',39500,'sports'),('ETR1','sheava',220000,'super'),('Shotaro Concept','shotaro',320000,'motorcycles'),('1997 Nissan Silvia','silvias15',30000,'ff1'),('Slam Van','slamvan3',11500,'muscle'),('Sovereign','sovereign',22000,'motorcycles'),('Stinger','stinger',80000,'sportsclassics'),('Stinger GT','stingergt',75000,'sportsclassics'),('Streiter','streiter',500000,'sports'),('Stretch','stretch',90000,'sedans'),('Stromberg','stromberg',3185350,'sports'),('Sultan','sultan',15000,'sports'),('Sultan RS','sultanrs',65000,'super'),('Super Diamond','superd',130000,'sedans'),('Surano','surano',50000,'sports'),('Surfer','surfer',12000,'vans'),('T20','t20',300000,'super'),('Tailgater','tailgater',30000,'sedans'),('Tampa','tampa',16000,'muscle'),('Drift Tampa','tampa2',80000,'sports'),('Thrust','thrust',24000,'motorcycles'),('Tri bike (velo)','tribike3',520,'motorcycles'),('Trophy Truck','trophytruck',60000,'offroad'),('Trophy Truck Limited','trophytruck2',80000,'offroad'),('Tropos','tropos',40000,'sports'),('Turismo R','turismor',350000,'super'),('Tyrus','tyrus',600000,'super'),('Vacca','vacca',120000,'super'),('Vader','vader',7200,'motorcycles'),('Verlierer','verlierer2',70000,'sports'),('Vigero','vigero',12500,'muscle'),('Virgo','virgo',14000,'muscle'),('Viseris','viseris',875000,'sportsclassics'),('Visione','visione',2250000,'super'),('Voltic','voltic',90000,'super'),('Voltic 2','voltic2',3830400,'super'),('Voodoo','voodoo',7200,'muscle'),('Vortex','vortex',9800,'motorcycles'),('Warrener','warrener',4000,'sedans'),('Washington','washington',9000,'sedans'),('Windsor','windsor',95000,'coupes'),('Windsor Drop','windsor2',125000,'coupes'),('Woflsbane','wolfsbane',9000,'motorcycles'),('XLS','xls',32000,'suvs'),('Yosemite','yosemite',485000,'muscle'),('Youga','youga',10800,'vans'),('Youga Luxuary','youga2',14500,'vans'),('Z190','z190',900000,'sportsclassics'),('Zentorno','zentorno',1500000,'super'),('Zion','zion',36000,'coupes'),('Zion Cabrio','zion2',45000,'coupes'),('Zombie','zombiea',9500,'motorcycles'),('Zombie Luxuary','zombieb',12000,'motorcycles'),('Z-Type','ztype',220000,'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weashops`
--

DROP TABLE IF EXISTS `weashops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weashops`
--

LOCK TABLES `weashops` WRITE;
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT INTO `weashops` VALUES (1,'GunShop','WEAPON_PISTOL',300),(2,'BlackWeashop','WEAPON_PISTOL',500),(3,'GunShop','WEAPON_FLASHLIGHT',60),(4,'BlackWeashop','WEAPON_FLASHLIGHT',70),(5,'GunShop','WEAPON_MACHETE',90),(6,'BlackWeashop','WEAPON_MACHETE',110),(7,'GunShop','WEAPON_NIGHTSTICK',150),(8,'BlackWeashop','WEAPON_NIGHTSTICK',150),(9,'GunShop','WEAPON_BAT',100),(10,'BlackWeashop','WEAPON_BAT',100),(11,'GunShop','WEAPON_STUNGUN',50),(12,'BlackWeashop','WEAPON_STUNGUN',50),(13,'GunShop','WEAPON_MICROSMG',1400),(14,'BlackWeashop','WEAPON_MICROSMG',1700),(15,'GunShop','WEAPON_PUMPSHOTGUN',3400),(16,'BlackWeashop','WEAPON_PUMPSHOTGUN',3500),(17,'GunShop','WEAPON_ASSAULTRIFLE',10000),(18,'BlackWeashop','WEAPON_ASSAULTRIFLE',11000),(19,'GunShop','WEAPON_SPECIALCARBINE',15000),(20,'BlackWeashop','WEAPON_SPECIALCARBINE',16500),(21,'GunShop','WEAPON_SNIPERRIFLE',22000),(22,'BlackWeashop','WEAPON_SNIPERRIFLE',24000),(23,'GunShop','WEAPON_FIREWORK',18000),(24,'BlackWeashop','WEAPON_FIREWORK',20000),(25,'GunShop','WEAPON_GRENADE',500),(26,'BlackWeashop','WEAPON_GRENADE',650),(27,'GunShop','WEAPON_BZGAS',200),(28,'BlackWeashop','WEAPON_BZGAS',350),(29,'GunShop','WEAPON_FIREEXTINGUISHER',100),(30,'BlackWeashop','WEAPON_FIREEXTINGUISHER',100),(31,'GunShop','WEAPON_BALL',50),(32,'BlackWeashop','WEAPON_BALL',50),(33,'GunShop','WEAPON_SMOKEGRENADE',100),(34,'BlackWeashop','WEAPON_SMOKEGRENADE',100),(35,'BlackWeashop','WEAPON_APPISTOL',1100),(36,'BlackWeashop','WEAPON_CARBINERIFLE',12000),(37,'BlackWeashop','WEAPON_HEAVYSNIPER',30000),(38,'BlackWeashop','WEAPON_MINIGUN',45000),(39,'BlackWeashop','WEAPON_RAILGUN',50000),(40,'BlackWeashop','WEAPON_STICKYBOMB',500);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-29 14:14:38
