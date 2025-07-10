-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: db_empresa
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `area_trabajo`
--

DROP TABLE IF EXISTS `area_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_trabajo` (
  `id_area_trabajo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_area_trabajo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_trabajo`
--

LOCK TABLES `area_trabajo` WRITE;
/*!40000 ALTER TABLE `area_trabajo` DISABLE KEYS */;
INSERT INTO `area_trabajo` VALUES (1,'Desarrollo de Software'),(2,'Soporte Técnico'),(3,'Ventas'),(4,'Logística'),(5,'Administración');
/*!40000 ALTER TABLE `area_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  KEY `correo_idx` (`correo`),
  KEY `telefono_idx` (`telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Anderson','Restrepo','carloscastillo@example.com','3233701400'),(2,'Elías','Méndez','victor78@example.org','6038558000'),(3,'Esteban','Díaz','patriciadiaz@example.com','+573016094391'),(4,'Ángel','Rojas','ocontreras@example.net','772 03 13'),(5,'Antonio','Romero','josegiraldo@example.net','6036929735'),(6,'Junior','Romero','stevensanchez@example.org','+573239389920'),(7,'Alexandra','Márquez','juliotorres@example.org','573261850761'),(8,'Nicolás','Caicedo','lgomez@example.com','57 321 823 60 10'),(9,'Lisbeth','Sánchez','mosquerasantiago@example.net','308 821 76 48'),(10,'Humberto','Patiño','cramirez@example.com','+57 609 123 32 22'),(11,'Fernando','Gallego','johana25@example.net','(+57) 603 622 56 06'),(12,'Laura','Hoyos','ovargas@example.net','323 118 04 67'),(13,'Esperanza','Niño','reyesvalentina@example.net','573118520136'),(14,'Carolina','Durán','enrique39@example.net','325 615 47 05'),(15,'Yolanda','Jaramillo','segundonavarro@example.com','664 11 95'),(16,'Elisa','Rodríguez','escobarleonor@example.org','+573178752070'),(17,'Edwin','Rodríguez','edilmasanchez@example.org','(+57)6052971212'),(18,'Walter','Córdoba','nespitia@example.com','(+57)3289760987'),(19,'Fernanda','Pérez','osantos@example.org','573027607598'),(20,'Andrés','Ortega','oromero@example.org','573131916543'),(21,'María','Molina','rosa12@example.org','3019150576'),(22,'Luisa','Gutiérrez','svera@example.com','7002687'),(23,'Viviana','Vásquez','tzapata@example.net','+573297416365'),(24,'Graciela','Cerón','esteban00@example.com','57 305 537 30 96'),(25,'Hermes','Ospina','urielmendoza@example.org','312 963 53 05'),(26,'Juan','Pinzón','auragonzalez@example.net','3076364315'),(27,'David','Alarcón','david54@example.com','573234544344'),(28,'Julián','Mercado','david69@example.net','57 309 344 97 43'),(29,'Carlos','Ortiz','hortiz@example.net','01 8002 230 958'),(30,'Mireya','Calderón','nvanegas@example.net','018008941321'),(31,'Fidel','Bolívar','shernandez@example.org','57 606 470 75 48'),(32,'Alexandra','Blanco','earias@example.net','+57 605 720 30 04'),(33,'Gustavo','Flórez','sanchezdavid@example.net','+576048025121'),(34,'Nelly','Medina','andres96@example.org','(+57)3195708619'),(35,'David','Barbosa','camilo84@example.org','+57 305 663 11 38'),(36,'Luis','Martínez','stelladiaz@example.com','3020334742'),(37,'Mónica','Rojas','rodriguezcristina@example.com','3286800852'),(38,'Carlos','Castro','sanchezricardo@example.org','57 327 417 43 04'),(39,'Laura','Ruiz','angelaalzate@example.com','+576076228946'),(40,'Rosa','Espinosa','alejandrahernandez@example.org','300 202 56 91'),(41,'Fernanda','Monsalve','mariaramirez@example.com','(+57)3271167507'),(42,'Guillermo','Sánchez','wleon@example.com','57 300 245 30 12'),(43,'Steven','Galvis','victor23@example.org','(+57)3042028471'),(44,'Gonzalo','Vera','lopezoscar@example.org','+57 605 940 50 76'),(45,'Lucila','Guevara','serranoirene@example.net','57 325 461 99 24'),(46,'Luz','Mosquera','andrescaceres@example.org','322 581 22 59'),(47,'María','Arteaga','constanza84@example.net','+57 308 237 33 79'),(48,'Ángel','García','dianagarcia@example.org','57 609 787 80 35'),(49,'Mario','Villamizar','camachoadolfo@example.org','(+57)3207403925'),(50,'Sandra','Domínguez','jhon29@example.com','57 607 571 22 27'),(51,'Tatiana','Velásquez','claudiamosquera@example.com','(+57) 605 721 62 65'),(52,'Gustavo','Ramírez','jairorodriguez@example.net','+573034447048'),(53,'Héctor','Sierra','maria70@example.org','6596851'),(54,'Liliana','Carrillo','smunoz@example.org','(+57) 316 329 56 34'),(55,'Rosa','Cáceres','kruiz@example.org','319 206 16 58'),(56,'Ana','Montes','mariaarias@example.net','3029411563'),(57,'María','Vega','rafael96@example.org','573237262942'),(58,'María','Rivera','alexander98@example.org','01 8005 133 138'),(59,'Rafael','Gómez','carlos32@example.org','522 12 15'),(60,'José','Vallejo','amayaandres@example.com','018006876401'),(61,'Cristian','González','lina80@example.com','573142006298'),(62,'Albeiro','Zapata','uvargas@example.net','+573166464196'),(63,'Daniel','Rojas','marthahernandez@example.com','(+57) 602 121 32 04'),(64,'Amparo','Ávila','williamgonzalez@example.net','57 328 911 79 72'),(65,'Augusto','Parra','carlos81@example.net','3083180036'),(66,'Rubiela','Rodríguez','camilomartinez@example.com','+573028538631'),(67,'María','Barrera','edwin43@example.net','57 308 058 26 92'),(68,'Alexander','Ospina','martinezfanny@example.net','573227633283'),(69,'Alonso','Sierra','nsandoval@example.org','326 185 18 62'),(70,'Catalina','López','xcaicedo@example.org','4132823'),(71,'Óscar','Sánchez','dorisdiaz@example.net','(+57)6087875067'),(72,'Diana','Gómez','augusto20@example.net','018008143192'),(73,'Nury','Marín','ggonzalez@example.net','57 609 559 69 83'),(74,'Judith','Zapata','arroyoarmando@example.org','(+57) 316 568 62 95'),(75,'Carlos','López','yesica49@example.net','3055394607'),(76,'Jairo','Murcia','marinantonio@example.org','3269417996'),(77,'Yeny','Londoño','rsuarez@example.com','+57 308 599 46 41'),(78,'Leonel','Ramírez','martha73@example.com','(+57)3285369881'),(79,'Dany','Jiménez','ortizvalentina@example.net','3086052102'),(80,'Fanny','Salamanca','medinanancy@example.net','+576069082484'),(81,'Sandra','Torres','germancifuentes@example.com','324 883 99 74'),(82,'Hernán','Sarmiento','cortesmarta@example.org','4275000'),(83,'Luz','Herrera','zochoa@example.org','313 056 41 84'),(84,'Sebastián','Ramírez','qgonzales@example.com','573279087018'),(85,'Zoraida','Peña','gomezfernando@example.org','573251034444'),(86,'Marcela','Hurtado','medinaesperanza@example.com','573286524062'),(87,'Fabián','Hernández','steven99@example.com','322 562 22 19'),(88,'María','Moreno','estella04@example.com','573176484559'),(89,'Inés','Mendoza','dianabravo@example.org','018003507124'),(90,'Nelly','Romero','perezpablo@example.net','+576028036221'),(91,'Leidy','Patiño','fernandorestrepo@example.org','573248839585'),(92,'Alejandro','Ruiz','carolina94@example.org','312 516 18 57'),(93,'Aura','García','martinezwilmer@example.net','+576085549147'),(94,'Alba','Moreno','fernando52@example.com','+573284171594'),(95,'Diego','Puentes','sramirez@example.net','(+57)3005378803'),(96,'Elena','Contreras','ygarcia@example.org','+573038926087'),(97,'José','Naranjo','romerocarolina@example.net','323 048 62 51'),(98,'Eugenia','González','maribel35@example.net','307 801 89 15'),(99,'Miriam','Acosta','blanca67@example.org','327 629 69 14'),(100,'Lorena','Aguilar','juanescobar@example.com','573245099990'),(101,'Eduardo','González','carol90@example.net','305 211 89 68'),(102,'Nancy','Gutiérrez','ligia88@example.com','(+57)3295728575'),(103,'Fernando','Jaramillo','giovannyvillamizar@example.net','+576092221797'),(104,'Leonardo','Suárez','jorgefajardo@example.com','570 59 84'),(105,'Robinson','Arrieta','william36@example.com','3086811230'),(106,'Laura','Mora','hmiranda@example.org','57 309 781 45 90'),(107,'Sergio','Rodríguez','hernanmarin@example.net','+576044552866'),(108,'Armando','Arias','mauricio80@example.net','(+57)3205326011'),(109,'Carlos','Mesa','rodriguezrichard@example.net','+57 602 497 42 55'),(110,'Daniel','Gómez','barriosteresa@example.net','603 581 04 50'),(111,'Laura','Cruz','vgarcia@example.net','(+57) 327 366 27 13'),(112,'Eduardo','Palacios','njaramillo@example.com','57 309 005 85 61'),(113,'Victoria','Arteaga','fsoto@example.net','(+57)3166397925'),(114,'Erika','Monsalve','riveraesther@example.net','576081283772'),(115,'Guillermo','Vásquez','porjuela@example.com','3205342816'),(116,'Mario','Muñoz','ggarcia@example.net','(+57)3253584640'),(117,'Hermes','Corredor','diazluis@example.org','+57 607 473 04 27'),(118,'Rubiela','Saavedra','ortizbeatriz@example.com','(+57)3218939530'),(119,'Carlos','Córdoba','guerreromariela@example.net','9922884'),(120,'Elvia','Ortiz','alfonso51@example.net','57 305 872 71 74'),(121,'Alexis','Rodríguez','jarevalo@example.org','609 964 03 43'),(122,'Rodrigo','Palacios','luismarin@example.net','318 333 64 77'),(123,'María','Vargas','oscarcalderon@example.net','57 609 353 86 02'),(124,'Rosalba','Romero','dannysalgado@example.org','3031905772'),(125,'María','Uribe','rodriguezcamilo@example.com','(+57) 301 932 45 38'),(126,'Jorge','Martínez','tforero@example.org','(+57) 609 824 87 09'),(127,'Lucía','Giraldo','wilson96@example.org','573025174224'),(128,'María','Roa','carolinalopez@example.net','+576027034686'),(129,'Fernanda','Ortega','luiscardona@example.net','3002009536'),(130,'Kevin','Peña','patriciamosquera@example.com','018009005779'),(131,'Eugenia','Martínez','vvargas@example.net','4073971'),(132,'Alfonso','Gómez','fperez@example.org','(+57)3086908716'),(133,'Aleida','Díaz','cifuentesjohana@example.net','(+57) 306 171 92 81'),(134,'Danna','Rodríguez','viviana60@example.org','304 422 52 16'),(135,'María','Herrera','emilioortiz@example.org','(+57) 603 709 44 77'),(136,'David','Rojas','marisolpineda@example.com','605 932 76 17'),(137,'María','Manrique','luisaherrera@example.net','319 851 60 21'),(138,'Sandra','Soto','wilmar89@example.org','3068649864'),(139,'Oliva','Osorio','dhernandez@example.com','+576051088447'),(140,'José','Moreno','rendonsandra@example.org','57 324 992 16 40'),(141,'Luz','Jaramillo','ingridburgos@example.net','+57 609 735 34 84'),(142,'Luisa','Garcés','morapaola@example.net','(+57) 326 546 22 02'),(143,'Patricia','Pérez','vpacheco@example.org','1550330'),(144,'María','Caicedo','svargas@example.net','(+57) 317 391 90 08'),(145,'José','Solano','gonzalezpaola@example.org','6038916923'),(146,'Alejandra','Cruz','nmena@example.org','+57 310 854 81 86'),(147,'Geraldine','Muñoz','mariarodriguez@example.net','+57 324 336 11 37'),(148,'Ana','López','ruizalexander@example.net','57 314 582 94 20'),(149,'Liliana','Muñoz','garciaadriana@example.org','(+57) 306 607 56 99'),(150,'Juan','Gutiérrez','nelson67@example.org','+576039108240'),(151,'Steven','Pacheco','marcoarango@example.net','+573294026208'),(152,'Erika','Murcia','umunoz@example.org','(+57)3235364235'),(153,'Ronal','Rodríguez','andrea91@example.net','+57 602 385 18 16'),(154,'Fabián','Bastidas','carlos46@example.org','576057079230'),(155,'Maribel','Martínez','luisguzman@example.com','701 23 29'),(156,'Patricia','López','hoyosmonica@example.net','57 310 766 53 44'),(157,'Nidia','Gómez','jesus27@example.com','304 601 91 53'),(158,'María','Sierra','smithalvarez@example.org','+57 303 586 17 68'),(159,'Claudia','Ballesteros','zambranocarmen@example.com','573067086665'),(160,'León','Páez','guillermocastro@example.org','+573268784947'),(161,'Nury','García','carloshenao@example.com','8061848'),(162,'Alveiro','Quiroz','leidyalvarado@example.org','573104668212'),(163,'Andrea','Mercado','mbenitez@example.net','312 549 20 64'),(164,'Francisco','Franco','castanedadiana@example.net','57 323 881 82 73'),(165,'María','Camacho','vivianaquintero@example.net','3188218849'),(166,'Francisco','Montoya','xparra@example.org','311 102 12 54'),(167,'Elena','Zambrano','menesesrosa@example.org','57 601 460 49 86'),(168,'Azucena','López','dmartinez@example.org','3003197899'),(169,'Alberto','Bustos','lopezesperanza@example.org','(+57)3047131719'),(170,'Armando','Castellanos','vgomez@example.org','+57 312 590 84 19'),(171,'Jesús','Meza','vpinto@example.com','6113753'),(172,'Andrés','Toro','ortegaclaudia@example.net','+573280727903'),(173,'Nataly','Garcés','osorioluis@example.net','57 607 597 22 39'),(174,'Yanet','Guevara','leydivelasco@example.org','+573268102480'),(175,'Javier','Becerra','julian78@example.org','7244323'),(176,'Smith','Pérez','giraldomaria@example.com','+57 318 574 67 06'),(177,'Francisco','Carrillo','patricia91@example.org','57 312 150 16 42'),(178,'Yulieth','Rodríguez','rojasjuliana@example.net','(+57) 324 243 19 83'),(179,'Carlos','Gutiérrez','jose30@example.org','573116910530'),(180,'Milena','Arias','riveraoscar@example.net','01 8006 463 395'),(181,'Cristina','Caicedo','rodriguezmaria@example.org','(+57) 307 642 78 96'),(182,'Guillermo','González','vvargas@example.com','57 602 328 17 75'),(183,'Cristina','Arias','vmora@example.com','+57 302 609 72 36'),(184,'María','Jiménez','edilma54@example.com','(+57)3272051710'),(185,'Magda','Martínez','ygonzalez@example.com','328 370 31 75'),(186,'Viviana','Torres','castanoalexis@example.com','(+57)6013485726'),(187,'Luis','Quintero','zduque@example.org','+573228840766'),(188,'Tatiana','Rodríguez','jcarrillo@example.com','(+57)6073353867'),(189,'Clara','Hernández','ecamargo@example.net','+576043604886'),(190,'Luz','Quintero','jaime40@example.com','6072892739'),(191,'Ronald','Valencia','qosorio@example.org','+573135670789'),(192,'Alonso','Sierra','johanna26@example.org','6047384227'),(193,'César','Hernández','gloriatoro@example.org','(+57) 608 771 11 75'),(194,'Alberto','Tamayo','salazarluz@example.com','3098514486'),(195,'Carlos','Moreno','gloria16@example.net','7392202'),(196,'Cristobal','Castrillón','lopezagustin@example.com','573064710680'),(197,'Gabriel','Cardona','caceresmario@example.org','(+57) 313 705 00 49'),(198,'Alejandra','Díaz','rdiaz@example.com','301 729 47 63'),(199,'Albeiro','Rodríguez','anibalgomez@example.com','+573140259985'),(200,'Sandra','Agudelo','carmenbermudez@example.com','573081291635');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaborador`
--

DROP TABLE IF EXISTS `colaborador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaborador` (
  `id_colaborador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `area_trabajo_id_area_trabajo` int NOT NULL,
  PRIMARY KEY (`id_colaborador`),
  UNIQUE KEY `documento_UNIQUE` (`documento`),
  KEY `fk_colaborador_area_trabajo1_idx` (`area_trabajo_id_area_trabajo`),
  KEY `correo_UNIQUE` (`correo`),
  CONSTRAINT `fk_colaborador_area_trabajo1` FOREIGN KEY (`area_trabajo_id_area_trabajo`) REFERENCES `area_trabajo` (`id_area_trabajo`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaborador`
--

LOCK TABLES `colaborador` WRITE;
/*!40000 ALTER TABLE `colaborador` DISABLE KEYS */;
INSERT INTO `colaborador` VALUES (1,'Jorge','Suarez','1001000001','jorge.suarez@email.com','3101000001','1990-05-12',4200000.00,1),(2,'Andrea','Castro','1001000002','andrea.castro@email.com','3101000002','1989-11-03',3800000.00,2),(3,'Camilo','Torres','1001000003','camilo.torres@email.com','3101000003','1992-03-21',5200000.00,3),(4,'Lucia','Morales','1001000004','lucia.morales@email.com','3101000004','1987-08-17',4700000.00,4),(5,'Carlos','Ruiz','1001000005','carlos.ruiz@email.com','3101000005','1993-12-09',3600000.00,1),(6,'Valentina','Jimenez','1001000006','valentina.jimenez@email.com','3101000006','1991-06-01',4900000.00,2),(7,'Esteban','Mendoza','1001000007','esteban.mendoza@email.com','3101000007','1988-02-28',5300000.00,3),(8,'Maria','Silva','1001000008','maria.silva@email.com','3101000008','1995-10-15',4100000.00,4),(9,'Felipe','Nieto','1001000009','felipe.nieto@email.com','3101000009','1989-04-26',5700000.00,5),(10,'Paula','Castillo','1001000010','paula.castillo@email.com','3101000010','1992-07-30',3300000.00,2),(11,'Sebastian','Ortega','1001000011','sebastian.ortega@email.com','3101000011','1986-09-12',4800000.00,3),(12,'Laura','Gonzalez','1001000012','laura.gonzalez@email.com','3101000012','1994-01-08',4200000.00,4),(13,'Ivan','Moreno','1001000013','ivan.moreno@email.com','3101000013','1990-10-04',5000000.00,1),(14,'Juliana','Perez','1001000014','juliana.perez@email.com','3101000014','1987-12-25',3900000.00,5),(15,'Tomas','Cardenas','1001000015','tomas.cardenas@email.com','3101000015','1991-03-05',4600000.00,3),(16,'Sara','Aguilar','1001000016','sara.aguilar@email.com','3101000016','1988-11-14',5400000.00,2),(17,'David','Leal','1001000017','david.leal@email.com','3101000017','1995-08-11',3700000.00,4),(18,'Daniela','Rojas','1001000018','daniela.rojas@email.com','3101000018','1992-06-18',5100000.00,5),(19,'Manuel','Ramirez','1001000019','manuel.ramirez@email.com','3101000019','1993-09-23',4400000.00,3),(20,'Carolina','Salazar','1001000020','carolina.salazar@email.com','3101000020','1989-02-19',5800000.00,2),(21,'Juan','Martinez','1001000021','juan.martinez@email.com','3101000021','1991-04-09',3900000.00,1),(22,'Ana','Hernandez','1001000022','ana.hernandez@email.com','3101000022','1990-07-24',4700000.00,4),(23,'Santiago','Lopez','1001000023','santiago.lopez@email.com','3101000023','1994-10-01',4900000.00,3),(24,'Isabel','Camargo','1001000024','isabel.camargo@email.com','3101000024','1988-03-29',4200000.00,5),(25,'Leonardo','Prieto','1001000025','leonardo.prieto@email.com','3101000025','1987-01-30',5600000.00,2),(26,'Camila','Bonilla','1001000026','camila.bonilla@email.com','3101000026','1993-08-07',3700000.00,1),(27,'Matias','Quintero','1001000027','matias.quintero@email.com','3101000027','1992-05-10',5100000.00,3),(28,'Nicole','Barreto','1001000028','nicole.barreto@email.com','3101000028','1986-06-05',4800000.00,4),(29,'Emilio','Torralba','1001000029','emilio.torralba@email.com','3101000029','1995-09-19',3300000.00,5),(30,'Luisa','Giraldo','1001000030','luisa.giraldo@email.com','3101000030','1990-12-01',5700000.00,3),(31,'Carlos','Reyes','1001000031','carlos.reyes@email.com','3101000031','1989-10-18',4000000.00,2),(32,'Fernanda','Chaparro','1001000032','fernanda.chaparro@email.com','3101000032','1991-02-13',4500000.00,1),(33,'Cristian','Bermudez','1001000033','cristian.bermudez@email.com','3101000033','1987-05-03',6100000.00,4),(34,'Melissa','Urrego','1001000034','melissa.urrego@email.com','3101000034','1988-09-09',3900000.00,5),(35,'Julian','Maya','1001000035','julian.maya@email.com','3101000035','1994-04-14',5500000.00,3),(36,'Monica','Toro','1001000036','monica.toro@email.com','3101000036','1993-06-30',4400000.00,2),(37,'Dario','Mendez','1001000037','dario.mendez@email.com','3101000037','1991-11-22',4700000.00,1),(38,'Karen','Vargas','1001000038','karen.vargas@email.com','3101000038','1989-08-15',5100000.00,5),(39,'Diego','Fonseca','1001000039','diego.fonseca@email.com','3101000039','1986-03-28',5200000.00,4),(40,'Tatiana','Linares','1001000040','tatiana.linares@email.com','3101000040','1992-12-16',3900000.00,3),(41,'Gabriel','Triana','1001000041','gabriel.triana@email.com','3101000041','1987-06-10',4700000.00,2),(42,'Carla','Buitrago','1001000042','carla.buitrago@email.com','3101000042','1990-09-07',4300000.00,4),(43,'Oscar','Velasquez','1001000043','oscar.velasquez@email.com','3101000043','1988-01-19',5500000.00,1),(44,'Sofia','Ayala','1001000044','sofia.ayala@email.com','3101000044','1995-05-13',3900000.00,5),(45,'Mauricio','Lagos','1001000045','mauricio.lagos@email.com','3101000045','1991-07-03',4700000.00,3),(46,'Yulieth','Navarro','1001000046','yulieth.navarro@email.com','3101000046','1993-02-25',4200000.00,2),(47,'Angelica','Palacios','1001000047','angelica.palacios@email.com','3101000047','1986-10-30',5000000.00,4),(48,'Nelson','Calderon','1001000048','nelson.calderon@email.com','3101000048','1990-11-11',5300000.00,1),(49,'Renata','Duque','1001000049','renata.duque@email.com','3101000049','1992-01-20',3600000.00,3),(50,'Mario','Restrepo','1001000050','mario.restrepo@email.com','3101000050','1989-06-27',6000000.00,2),(51,'Angela','Torralba','1001000051','angela.torralba@email.com','3101000051','1991-12-04',4000000.00,5),(52,'Ivan','Clavijo','1001000052','ivan.clavijo@email.com','3101000052','1988-05-01',5200000.00,3),(53,'Veronica','Bernal','1001000053','veronica.bernal@email.com','3101000053','1995-03-29',4100000.00,4),(54,'Rafael','Zapata','1001000054','rafael.zapata@email.com','3101000054','1987-07-06',4600000.00,1),(55,'Natalia','Valdes','1001000055','natalia.valdes@email.com','3101000055','1994-08-13',4900000.00,2),(56,'Sergio','Garcia','1001000056','sergio.garcia@email.com','3101000056','1990-03-11',3700000.00,4),(57,'Karen','Chaves','1001000057','karen.chaves@email.com','3101000057','1986-12-26',5800000.00,5),(58,'Martin','Ariza','1001000058','martin.ariza@email.com','3101000058','1993-01-18',4300000.00,1),(59,'Daniela','Bermudez','1001000059','daniela.bermudez@email.com','3101000059','1991-09-01',4600000.00,3),(60,'Luis','Botero','1001000060','luis.botero@email.com','3101000060','1989-07-22',5400000.00,2);
/*!40000 ALTER TABLE `colaborador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id_detalle_venta` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `venta_id_venta` int NOT NULL,
  `producto_id_producto` int NOT NULL,
  PRIMARY KEY (`id_detalle_venta`),
  KEY `fk_detalle_venta_venta1_idx` (`venta_id_venta`),
  KEY `fk_detalle_venta_producto1_idx` (`producto_id_producto`),
  CONSTRAINT `fk_detalle_venta_producto1` FOREIGN KEY (`producto_id_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `fk_detalle_venta_venta1` FOREIGN KEY (`venta_id_venta`) REFERENCES `venta` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,10,1800000.00,2,6),(2,4,640000.00,2,13),(3,6,810000.00,3,3),(4,1,270000.00,3,10),(5,10,7800000.00,3,7),(6,6,1080000.00,3,6),(7,4,380000.00,4,19),(8,2,4500000.00,4,1),(9,1,270000.00,4,10),(10,3,2850000.00,5,11),(11,4,280000.00,6,18),(12,10,1600000.00,7,13),(13,3,1560000.00,8,8),(14,2,1960000.00,8,14),(15,1,120000.00,8,5),(16,3,540000.00,8,6),(17,10,26000000.00,8,15),(18,4,2840000.00,9,17),(19,6,4260000.00,10,17),(20,9,4680000.00,11,8),(21,3,360000.00,11,5),(22,7,595000.00,12,9),(23,8,560000.00,12,18),(24,2,320000.00,12,13),(25,5,4900000.00,12,14),(26,1,135000.00,13,3),(27,7,1540000.00,13,16),(28,4,280000.00,14,18),(29,5,675000.00,14,3),(30,6,270000.00,14,2),(31,6,5340000.00,14,20),(32,9,1440000.00,16,13),(33,8,280000.00,16,12),(34,10,9800000.00,16,14),(35,3,405000.00,18,3),(36,1,710000.00,19,17),(37,2,1900000.00,19,11),(38,4,540000.00,19,3),(39,4,880000.00,20,16),(40,9,315000.00,21,12),(41,7,1540000.00,22,16),(42,9,855000.00,22,19),(43,6,5700000.00,22,11),(44,1,950000.00,23,11),(45,10,6000000.00,23,4),(46,1,180000.00,23,6),(47,7,595000.00,24,9),(48,7,490000.00,25,18),(49,5,900000.00,25,6),(50,9,765000.00,25,9),(51,10,450000.00,26,2),(52,4,140000.00,26,12),(53,5,675000.00,26,3),(54,8,680000.00,26,9),(55,10,2200000.00,27,16),(56,1,710000.00,27,17),(57,8,560000.00,27,18),(58,4,2840000.00,28,17),(59,3,2850000.00,29,11),(60,10,1800000.00,30,6),(61,6,1620000.00,30,10),(62,7,315000.00,31,2),(63,1,160000.00,32,13),(64,7,245000.00,32,12),(65,9,1080000.00,32,5),(66,6,420000.00,32,18),(67,7,315000.00,32,2),(68,3,135000.00,33,2),(69,1,600000.00,34,4),(70,5,600000.00,36,5),(71,3,105000.00,36,12),(72,4,9000000.00,36,1),(73,6,13500000.00,39,1),(74,4,880000.00,39,16),(75,4,640000.00,39,13),(76,8,560000.00,40,18),(77,1,890000.00,41,20),(78,3,105000.00,41,12),(79,1,220000.00,42,16),(80,1,70000.00,42,18),(81,9,1080000.00,43,5),(82,2,1780000.00,44,20),(83,8,280000.00,44,12),(84,9,765000.00,45,9),(85,4,180000.00,45,2),(86,4,380000.00,45,19),(87,8,760000.00,46,19),(88,3,2850000.00,47,11),(89,10,1200000.00,48,5),(90,7,1540000.00,49,16),(91,7,490000.00,49,18),(92,1,220000.00,51,16),(93,3,210000.00,51,18),(94,9,5400000.00,52,4),(95,6,720000.00,52,5),(96,9,855000.00,52,19),(97,3,105000.00,52,12),(98,5,350000.00,55,18),(99,6,510000.00,55,9),(100,1,2250000.00,56,1),(101,1,135000.00,56,3),(102,6,570000.00,57,19),(103,4,540000.00,57,3),(104,8,760000.00,59,19),(105,2,1900000.00,60,11),(106,1,85000.00,61,9),(107,3,2850000.00,61,11),(108,5,175000.00,61,12),(109,1,980000.00,62,14),(110,5,600000.00,62,5),(111,10,350000.00,63,12),(112,2,440000.00,65,16),(113,4,540000.00,65,3),(114,7,665000.00,67,19),(115,1,85000.00,68,9),(116,3,105000.00,69,12),(117,1,710000.00,69,17),(118,6,420000.00,70,18),(119,2,440000.00,70,16),(120,9,315000.00,70,12),(121,8,760000.00,70,19),(122,8,280000.00,72,12),(123,7,840000.00,73,5),(124,6,210000.00,73,12),(125,1,95000.00,74,19),(126,2,360000.00,75,6),(127,3,285000.00,75,19),(128,1,85000.00,76,9),(129,7,245000.00,77,12),(130,6,570000.00,78,19),(131,2,4500000.00,79,1),(132,5,225000.00,79,2),(133,7,315000.00,83,2),(134,3,105000.00,83,12),(135,5,425000.00,84,9),(136,2,1900000.00,84,11),(137,1,35000.00,87,12),(138,3,105000.00,89,12),(139,1,120000.00,90,5),(140,9,855000.00,90,19),(141,10,1350000.00,90,3),(142,6,810000.00,91,3),(143,9,405000.00,92,2),(144,7,315000.00,93,2),(145,1,120000.00,97,5),(146,5,175000.00,99,12),(147,1,120000.00,104,5),(148,10,850000.00,107,9),(149,9,315000.00,107,12),(150,5,175000.00,109,12),(151,10,850000.00,110,9),(152,9,315000.00,112,12),(153,1,120000.00,119,5),(154,2,70000.00,121,12),(155,2,190000.00,123,19),(156,1,135000.00,124,3),(157,4,180000.00,128,2),(158,5,425000.00,129,9),(159,10,350000.00,130,12),(160,2,360000.00,130,6),(161,5,425000.00,133,9),(162,9,315000.00,134,12),(163,7,245000.00,136,12),(164,7,595000.00,138,9),(165,3,135000.00,138,2),(166,6,270000.00,145,2),(167,4,340000.00,162,9),(168,2,70000.00,166,12),(169,7,245000.00,169,12),(170,3,255000.00,173,9),(171,3,210000.00,182,18),(172,8,280000.00,183,12),(173,2,90000.00,192,2),(174,4,140000.00,192,12),(175,10,350000.00,200,12);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_salarial`
--

DROP TABLE IF EXISTS `historial_salarial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_salarial` (
  `id_historial_salarial` int NOT NULL AUTO_INCREMENT,
  `salario_anterior` decimal(10,2) NOT NULL,
  `salario_nuevo` decimal(10,2) NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `colaborador_id_colaborador` int NOT NULL,
  PRIMARY KEY (`id_historial_salarial`),
  KEY `fk_historial_salarial_colaborador1_idx` (`colaborador_id_colaborador`),
  CONSTRAINT `fk_historial_salarial_colaborador1` FOREIGN KEY (`colaborador_id_colaborador`) REFERENCES `colaborador` (`id_colaborador`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_salarial`
--

LOCK TABLES `historial_salarial` WRITE;
/*!40000 ALTER TABLE `historial_salarial` DISABLE KEYS */;
INSERT INTO `historial_salarial` VALUES (1,3100000.00,3500000.00,'2023-03-15',1),(2,4200000.00,4600000.00,'2022-11-10',2),(3,5200000.00,5700000.00,'2023-05-01',3),(4,3100000.00,3400000.00,'2023-01-25',4),(5,6000000.00,6500000.00,'2023-06-18',5),(6,4700000.00,5000000.00,'2023-04-10',6),(7,3900000.00,4100000.00,'2023-02-20',7),(8,5500000.00,5900000.00,'2022-12-05',8),(9,4300000.00,4700000.00,'2023-03-30',9),(10,5700000.00,6000000.00,'2022-10-12',10),(11,4600000.00,4900000.00,'2023-01-03',11),(12,6100000.00,6500000.00,'2023-05-22',12),(13,3400000.00,3700000.00,'2023-03-19',13),(14,5800000.00,6100000.00,'2023-06-01',14),(15,4000000.00,4200000.00,'2023-02-07',15),(16,4900000.00,5100000.00,'2023-04-16',16),(17,5200000.00,5600000.00,'2022-09-10',17),(18,3100000.00,3300000.00,'2023-01-28',18),(19,5900000.00,6200000.00,'2023-06-11',19),(20,4400000.00,4700000.00,'2023-02-25',20),(21,4700000.00,4900000.00,'2023-05-05',21),(22,5300000.00,5700000.00,'2023-04-12',22),(23,3900000.00,4200000.00,'2023-03-17',23),(24,5600000.00,5900000.00,'2022-11-30',24),(25,4500000.00,4700000.00,'2023-01-22',25),(26,6100000.00,6500000.00,'2023-06-20',26),(27,3300000.00,3600000.00,'2022-12-08',27),(28,4700000.00,5000000.00,'2023-04-01',28),(29,3900000.00,4200000.00,'2023-01-11',29),(30,5100000.00,5400000.00,'2023-03-26',30),(31,4000000.00,4300000.00,'2023-05-14',31),(32,4800000.00,5100000.00,'2023-06-08',32),(33,4300000.00,4500000.00,'2022-11-18',33),(34,5800000.00,6100000.00,'2023-03-08',34),(35,3700000.00,4000000.00,'2023-04-19',35),(36,6000000.00,6300000.00,'2023-02-01',36),(37,4200000.00,4400000.00,'2023-05-25',37),(38,5300000.00,5600000.00,'2022-10-28',38);
/*!40000 ALTER TABLE `historial_salarial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodo_pago`
--

DROP TABLE IF EXISTS `metodo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodo_pago` (
  `id_metodo_pago` int NOT NULL AUTO_INCREMENT,
  `metodo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_metodo_pago`),
  UNIQUE KEY `metodo_UNIQUE` (`metodo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodo_pago`
--

LOCK TABLES `metodo_pago` WRITE;
/*!40000 ALTER TABLE `metodo_pago` DISABLE KEYS */;
INSERT INTO `metodo_pago` VALUES (5,'Daviplata'),(1,'Efectivo'),(4,'Nequi'),(2,'Tarjeta'),(3,'Transferencia');
/*!40000 ALTER TABLE `metodo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `referencia_convenio` varchar(50) NOT NULL,
  `numero_tarjeta` varchar(19) DEFAULT NULL,
  `venta_id_venta` int NOT NULL,
  `metodo_pago_id_metodo_pago` int NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `fk_pago_venta1_idx` (`venta_id_venta`),
  KEY `fk_pago_metodo_pago1_idx` (`metodo_pago_id_metodo_pago`),
  CONSTRAINT `fk_pago_metodo_pago1` FOREIGN KEY (`metodo_pago_id_metodo_pago`) REFERENCES `metodo_pago` (`id_metodo_pago`),
  CONSTRAINT `fk_pago_venta1` FOREIGN KEY (`venta_id_venta`) REFERENCES `venta` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,'RF-8471VTLB','4345123456789012',1,2),(2,'RF-1395KXZC','',2,1),(3,'RF-5017UTNR','4111111111111111',3,2),(4,'RF-2763JDQN','',4,5),(5,'RF-6279EWXA','',5,3),(6,'RF-4312QPMG','4556789034567890',6,2),(7,'RF-9934HTOK','',7,4),(8,'RF-3217LZBN','4000123412341234',8,2),(9,'RF-6482ARUJ','',9,1),(10,'RF-7410YHCM','',10,3),(11,'RF-1827ZKLD','4222333344445555',11,2),(12,'RF-5039NVCX','',12,4),(13,'RF-3491TWME','',13,5),(14,'RF-7306XDQL','4012888888881881',14,2),(15,'RF-2856KRTG','',15,1),(16,'RF-1579ZVJE','',16,3),(17,'RF-6241LQPN','4539876543210987',17,2),(18,'RF-3902EBWL','',18,5),(19,'RF-8617CMXA','',19,4),(20,'RF-9760HDBQ','4444555566667777',20,2),(21,'RF-5098TRKJ','',21,1),(22,'RF-2147WLGN','',22,3),(23,'RF-1326XVBA','4007000000027',23,2),(24,'RF-4763ZKEM','',24,4),(25,'RF-8804MVNC','',25,5),(26,'RF-2935LWOQ','4485275742308327',26,2),(27,'RF-6213VPLB','',27,1),(28,'RF-7032MRCZ','',28,3),(29,'RF-5149KJND','6011000990139424',29,2),(30,'RF-3275WHXL','',30,5),(31,'RF-4482UYPA','',31,4),(32,'RF-9176XTMB','4917610000000000',32,2),(33,'RF-1834BCWD','',33,1),(34,'RF-4729EZNC','',34,3),(35,'RF-6253PHMQ','6011514433546201',35,2),(36,'RF-2094WTLC','',36,5),(37,'RF-3812NKVF','',37,4),(38,'RF-7486QZRG','4111111111111111',38,2),(39,'RF-3968YXMB','',39,1),(40,'RF-2391LKWO','',40,3),(41,'RF-5843CRZV','3530111333300000',41,2),(42,'RF-9105JDLN','',42,4),(43,'RF-1762MSKE','',43,5),(44,'RF-2047WNXB','5555555555554444',44,2),(45,'RF-8631TKCV','',45,1),(46,'RF-3419ZBPM','',46,3),(47,'RF-7724YHNK','4716108999716531',47,2),(48,'RF-1548JKRC','',48,4),(49,'RF-4963QZVM','',49,5),(50,'RF-9264LPTW','6011000400000000',50,2),(51,'REF95123','4532758490123456',51,1),(52,'REF84765','',52,3),(53,'REF12893','4024007192920001',53,2),(54,'REF71354','',54,4),(55,'REF30184','6011009001234567',55,1),(56,'REF62470','',56,5),(57,'REF98273','4532758490123456',57,1),(58,'REF24567','4024007192920001',58,2),(59,'REF73582','',59,4),(60,'REF17834','',60,5),(61,'REF46985','6011009001234567',61,1),(62,'REF92356','',62,3),(63,'REF81937','4532758490123456',63,1),(64,'REF67235','4024007192920001',64,2),(65,'REF78124','',65,4),(66,'REF15827','',66,3),(67,'REF90817','6011009001234567',67,1),(68,'REF47123','4532758490123456',68,1),(69,'REF38274','',69,5),(70,'REF65293','',70,4),(71,'REF71394','4024007192920001',71,2),(72,'REF94712','',72,3),(73,'REF58124','6011009001234567',73,1),(74,'REF18234','4532758490123456',74,1),(75,'REF72934','',75,4),(76,'REF94284','',76,5),(77,'REF89372','4024007192920001',77,2),(78,'REF63918','',78,3),(79,'REF20493','6011009001234567',79,1),(80,'REF14728','4532758490123456',80,1),(81,'REF91238','',81,4),(82,'REF10384','',82,3),(83,'REF89234','4024007192920001',83,2),(84,'REF37829','6011009001234567',84,1),(85,'REF47129','',85,5),(86,'REF52039','',86,3),(87,'REF17283','4532758490123456',87,1),(88,'REF69284','',88,4),(89,'REF13729','4024007192920001',89,2),(90,'REF94827','',90,5),(91,'REF28734','6011009001234567',91,1),(92,'REF47283','4532758490123456',92,1),(93,'REF92813','',93,3),(94,'REF38472','',94,5),(95,'REF90284','4024007192920001',95,2),(96,'REF62193','6011009001234567',96,1),(97,'REF78123','',97,3),(98,'REF48192','4532758490123456',98,1),(99,'REF82347','',99,4),(100,'REF92748','',100,5),(101,'REF-PAY-101','XXXX-XXXX-XXXX-9823',101,3),(102,'REF-PAY-102',NULL,102,1),(103,'REF-PAY-103','XXXX-XXXX-XXXX-3478',103,2),(104,'REF-PAY-104',NULL,104,4),(105,'REF-PAY-105','XXXX-XXXX-XXXX-5912',105,3),(106,'REF-PAY-106',NULL,106,1),(107,'REF-PAY-107','XXXX-XXXX-XXXX-7651',107,2),(108,'REF-PAY-108',NULL,108,4),(109,'REF-PAY-109','XXXX-XXXX-XXXX-4280',109,3),(110,'REF-PAY-110','XXXX-XXXX-XXXX-8132',110,2),(111,'REF-PAY-111',NULL,111,1),(112,'REF-PAY-112','XXXX-XXXX-XXXX-9673',112,3),(113,'REF-PAY-113',NULL,113,4),(114,'REF-PAY-114',NULL,114,1),(115,'REF-PAY-115','XXXX-XXXX-XXXX-3821',115,2),(116,'REF-PAY-116',NULL,116,3),(117,'REF-PAY-117','XXXX-XXXX-XXXX-2098',117,2),(118,'REF-PAY-118',NULL,118,1),(119,'REF-PAY-119','XXXX-XXXX-XXXX-5369',119,3),(120,'REF-PAY-120',NULL,120,4),(121,'REF-PAY-121','XXXX-XXXX-XXXX-7734',121,2),(122,'REF-PAY-122','XXXX-XXXX-XXXX-6825',122,3),(123,'REF-PAY-123',NULL,123,1),(124,'REF-PAY-124',NULL,124,4),(125,'REF-PAY-125','XXXX-XXXX-XXXX-9947',125,2),(126,'REF-PAY-126',NULL,126,3),(127,'REF-PAY-127','XXXX-XXXX-XXXX-6173',127,2),(128,'REF-PAY-128',NULL,128,4),(129,'REF-PAY-129',NULL,129,1),(130,'REF-PAY-130','XXXX-XXXX-XXXX-8802',130,3),(131,'REF-PAY-131',NULL,131,4),(132,'REF-PAY-132','XXXX-XXXX-XXXX-7659',132,2),(133,'REF-PAY-133',NULL,133,1),(134,'REF-PAY-134','XXXX-XXXX-XXXX-9517',134,3),(135,'REF-PAY-135','XXXX-XXXX-XXXX-7021',135,2),(136,'REF-PAY-136',NULL,136,4),(137,'REF-PAY-137',NULL,137,1),(138,'REF-PAY-138','XXXX-XXXX-XXXX-1248',138,3),(139,'REF-PAY-139',NULL,139,2),(140,'REF-PAY-140','XXXX-XXXX-XXXX-5504',140,4),(141,'REF-PAY-141',NULL,141,1),(142,'REF-PAY-142','XXXX-XXXX-XXXX-3106',142,3),(143,'REF-PAY-143','XXXX-XXXX-XXXX-4139',143,2),(144,'REF-PAY-144',NULL,144,4),(145,'REF-PAY-145',NULL,145,1),(146,'REF-PAY-146','XXXX-XXXX-XXXX-2347',146,3),(147,'REF-PAY-147',NULL,147,4),(148,'REF-PAY-148','XXXX-XXXX-XXXX-6782',148,2),(149,'REF-PAY-149',NULL,149,1),(150,'REF-PAY-150','XXXX-XXXX-XXXX-9713',150,3),(151,'REF-PAY-151','XXXX-XXXX-XXXX-9284',151,2),(152,'REF-PAY-152',NULL,152,4),(153,'REF-PAY-153',NULL,153,1),(154,'REF-PAY-154',NULL,154,1),(155,'REF-PAY-155','XXXX-XXXX-XXXX-3051',155,3),(156,'REF-PAY-156',NULL,156,4),(157,'REF-PAY-157','XXXX-XXXX-XXXX-7403',157,2),(158,'REF-PAY-158',NULL,158,4),(159,'REF-PAY-159',NULL,159,1),(160,'REF-PAY-160','XXXX-XXXX-XXXX-6238',160,3),(161,'REF-PAY-161',NULL,161,4),(162,'REF-PAY-162','XXXX-XXXX-XXXX-1169',162,2),(163,'REF-PAY-163',NULL,163,1),(164,'REF-PAY-164','XXXX-XXXX-XXXX-8273',164,3),(165,'REF-PAY-165',NULL,165,4),(166,'REF-PAY-166',NULL,166,1),(167,'REF-PAY-167','XXXX-XXXX-XXXX-2935',167,2),(168,'REF-PAY-168','XXXX-XXXX-XXXX-7180',168,3),(169,'REF-PAY-169',NULL,169,1),(170,'REF-PAY-170',NULL,170,4),(171,'REF-PAY-171','XXXX-XXXX-XXXX-5559',171,2),(172,'REF-PAY-172',NULL,172,1),(173,'REF-PAY-173',NULL,173,4),(174,'REF-PAY-174',NULL,174,1),(175,'REF-PAY-175','XXXX-XXXX-XXXX-4022',175,2),(176,'REF-PAY-176','XXXX-XXXX-XXXX-3447',176,3),(177,'REF-PAY-177',NULL,177,4),(178,'REF-PAY-178','XXXX-XXXX-XXXX-8290',178,3),(179,'REF-PAY-179',NULL,179,1),(180,'REF-PAY-180',NULL,180,4),(181,'REF-PAY-181','XXXX-XXXX-XXXX-1824',181,2),(182,'REF-PAY-182',NULL,182,4),(183,'REF-PAY-183',NULL,183,1),(184,'REF-PAY-184','XXXX-XXXX-XXXX-9983',184,3),(185,'REF-PAY-185',NULL,185,1),(186,'REF-PAY-186','XXXX-XXXX-XXXX-7110',186,2),(187,'REF-PAY-187',NULL,187,1),(188,'REF-PAY-188',NULL,188,4),(189,'REF-PAY-189','XXXX-XXXX-XXXX-6437',189,3),(190,'REF-PAY-190',NULL,190,4),(191,'REF-PAY-191','XXXX-XXXX-XXXX-3791',191,2),(192,'REF-PAY-192',NULL,192,1),(193,'REF-PAY-193','XXXX-XXXX-XXXX-5522',193,2),(194,'REF-PAY-194',NULL,194,1),(195,'REF-PAY-195',NULL,195,4),(196,'REF-PAY-196',NULL,196,1),(197,'REF-PAY-197','XXXX-XXXX-XXXX-1707',197,3),(198,'REF-PAY-198',NULL,198,4),(199,'REF-PAY-199','XXXX-XXXX-XXXX-4856',199,2),(200,'REF-PAY-200',NULL,200,1);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `nombre_producto_idx` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'PortÃƒÂ¡til Lenovo Ideapad 3',2250000.00,0),(2,'Mouse Logitech M185',45000.00,0),(3,'Teclado Redragon Kumara',135000.00,0),(4,'Monitor Samsung 24\"\"',600000.00,0),(5,'Auriculares Xiaomi Redmi Buds 4',120000.00,1),(6,'Disco SSD Kingston 480GB',180000.00,1),(7,'Impresora HP Ink Tank 415',780000.00,0),(8,'Silla ErgonÃƒÂ³mica Gamer',520000.00,0),(9,'Cargador Tipo C 25W Samsung',85000.00,2),(10,'CÃƒÂ¡mara Logitech C920',270000.00,0),(11,'Tablet Samsung Galaxy Tab A7',950000.00,0),(12,'Memoria USB SanDisk 64GB',35000.00,13),(13,'Router TP-Link Archer C6',160000.00,0),(14,'Smartphone Motorola G72',980000.00,0),(15,'Laptop HP Pavilion 15',2600000.00,0),(16,'Smartwatch Amazfit Bip U',220000.00,0),(17,'Monitor LG 27\"\"',710000.00,0),(18,'BaterÃƒÂ­a externa Xiaomi 10000mAh',70000.00,0),(19,'AudÃƒÂ­fonos JBL Tune 500',95000.00,1),(20,'Impresora Epson L3250',890000.00,0),(21,'Teclado Logitech K380',120000.00,35),(22,'Mouse Gamer Razer DeathAdder',160000.00,40),(23,'Monitor ASUS TUF Gaming 27\"\"',1290000.00,5),(24,'Auriculares Sony WH-CH510',160000.00,55),(25,'Hub USB 4 Puertos',30000.00,90),(26,'Disco Duro Externo 1TB WD',250000.00,22),(27,'Cable HDMI 2.0 2m',25000.00,150),(28,'CÃƒÂ¡mara de Seguridad WiFi',170000.00,13),(29,'Base Refrigerante para Laptop',40000.00,65),(30,'LÃƒÂ¡mpara LED Escritorio USB',28000.00,75);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha_venta` date NOT NULL,
  `total_venta` decimal(10,2) DEFAULT '0.00',
  `colaborador_id_colaborador` int NOT NULL,
  `cliente_id_cliente` int NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `fecha_venta_idx` (`fecha_venta`),
  KEY `fk_venta_colaborador1_idx` (`colaborador_id_colaborador`),
  KEY `fk_venta_cliente1_idx` (`cliente_id_cliente`),
  CONSTRAINT `fk_venta_cliente1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_venta_colaborador1` FOREIGN KEY (`colaborador_id_colaborador`) REFERENCES `colaborador` (`id_colaborador`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'2023-12-29',0.00,11,78),(2,'2024-06-15',2440000.00,19,24),(3,'2023-03-07',9960000.00,59,32),(4,'2024-08-13',5150000.00,7,61),(5,'2024-12-30',2850000.00,40,71),(6,'2024-07-26',280000.00,15,53),(7,'2023-09-15',1600000.00,59,50),(8,'2023-07-09',30180000.00,59,1),(9,'2024-11-10',2840000.00,40,96),(10,'2024-07-01',4260000.00,45,86),(11,'2023-08-22',5040000.00,45,19),(12,'2024-12-19',6375000.00,49,95),(13,'2024-01-13',1675000.00,23,72),(14,'2024-06-20',6565000.00,35,23),(15,'2024-03-17',0.00,49,7),(16,'2023-02-28',11520000.00,40,56),(17,'2023-04-28',0.00,59,35),(18,'2023-10-16',405000.00,11,25),(19,'2024-02-27',3150000.00,3,72),(20,'2024-03-22',880000.00,35,2),(21,'2023-01-03',315000.00,52,68),(22,'2023-12-21',8095000.00,45,50),(23,'2024-05-17',7130000.00,49,60),(24,'2024-07-07',595000.00,7,45),(25,'2023-05-26',2155000.00,27,26),(26,'2023-08-22',1945000.00,49,53),(27,'2023-04-14',3470000.00,23,92),(28,'2023-04-11',2840000.00,30,100),(29,'2024-05-30',2850000.00,15,6),(30,'2024-01-20',3420000.00,45,87),(31,'2024-01-13',315000.00,27,64),(32,'2024-08-10',2220000.00,11,94),(33,'2023-04-20',135000.00,49,88),(34,'2023-05-19',600000.00,52,7),(35,'2023-08-16',0.00,23,26),(36,'2024-08-09',9705000.00,15,82),(37,'2024-08-27',0.00,11,61),(38,'2024-09-06',0.00,45,88),(39,'2024-06-03',15020000.00,19,19),(40,'2023-07-12',560000.00,3,24),(41,'2024-06-10',995000.00,23,17),(42,'2024-05-18',290000.00,23,83),(43,'2023-12-23',1080000.00,52,55),(44,'2024-11-22',2060000.00,52,69),(45,'2023-04-16',1325000.00,59,73),(46,'2023-11-29',760000.00,45,64),(47,'2024-11-09',2850000.00,40,2),(48,'2024-09-09',1200000.00,59,59),(49,'2024-09-09',2030000.00,35,30),(50,'2023-03-26',0.00,49,78),(51,'2023-10-25',430000.00,49,56),(52,'2023-12-07',7080000.00,59,94),(53,'2023-03-07',0.00,27,97),(54,'2023-04-18',0.00,30,80),(55,'2023-06-16',860000.00,52,99),(56,'2024-07-07',2385000.00,15,58),(57,'2024-11-05',1110000.00,11,77),(58,'2023-08-13',0.00,52,54),(59,'2023-06-20',760000.00,11,16),(60,'2023-11-02',1900000.00,19,67),(61,'2023-01-27',3110000.00,40,42),(62,'2023-06-04',1580000.00,59,25),(63,'2024-09-15',350000.00,27,45),(64,'2024-06-22',0.00,30,81),(65,'2024-09-08',980000.00,15,90),(66,'2023-01-29',0.00,19,78),(67,'2023-05-24',665000.00,27,9),(68,'2023-04-20',85000.00,49,73),(69,'2024-07-21',815000.00,23,47),(70,'2024-10-28',1935000.00,15,9),(71,'2024-07-24',0.00,45,16),(72,'2023-06-24',280000.00,49,53),(73,'2024-09-27',1050000.00,40,54),(74,'2024-08-16',95000.00,27,88),(75,'2024-02-27',645000.00,7,99),(76,'2023-05-24',85000.00,30,72),(77,'2024-05-11',245000.00,15,89),(78,'2023-04-20',570000.00,59,71),(79,'2023-06-15',4725000.00,15,97),(80,'2023-10-01',0.00,19,10),(81,'2024-12-06',0.00,3,81),(82,'2023-08-21',0.00,15,22),(83,'2023-12-22',420000.00,30,65),(84,'2023-12-18',2325000.00,35,50),(85,'2024-10-09',0.00,30,16),(86,'2024-03-08',0.00,59,92),(87,'2023-05-08',35000.00,40,2),(88,'2023-08-18',0.00,3,2),(89,'2023-06-10',105000.00,7,90),(90,'2024-04-28',2325000.00,35,66),(91,'2023-02-25',810000.00,49,6),(92,'2023-03-13',405000.00,59,39),(93,'2023-06-14',315000.00,49,30),(94,'2023-09-29',0.00,30,76),(95,'2024-06-03',0.00,30,95),(96,'2024-05-14',0.00,15,62),(97,'2023-04-12',120000.00,11,51),(98,'2023-08-12',0.00,23,60),(99,'2024-09-20',175000.00,27,82),(100,'2024-01-16',0.00,19,19),(101,'2023-08-25',0.00,19,33),(102,'2024-01-12',0.00,30,73),(103,'2024-02-09',0.00,15,31),(104,'2024-12-06',120000.00,45,17),(105,'2023-05-24',0.00,40,28),(106,'2023-12-18',0.00,3,75),(107,'2024-12-20',1165000.00,40,44),(108,'2024-01-09',0.00,11,61),(109,'2024-06-25',175000.00,23,21),(110,'2023-08-12',850000.00,19,1),(111,'2024-12-12',0.00,11,27),(112,'2024-02-16',315000.00,11,50),(113,'2023-04-29',0.00,45,73),(114,'2024-12-22',0.00,15,90),(115,'2023-04-29',0.00,30,34),(116,'2023-12-17',0.00,27,6),(117,'2024-12-21',0.00,27,42),(118,'2024-07-24',0.00,19,54),(119,'2024-09-20',120000.00,3,52),(120,'2023-08-14',0.00,23,69),(121,'2023-07-20',70000.00,19,10),(122,'2024-06-29',0.00,11,69),(123,'2024-11-19',190000.00,19,30),(124,'2023-08-11',135000.00,52,70),(125,'2023-11-24',0.00,35,38),(126,'2024-04-30',0.00,15,3),(127,'2024-09-12',0.00,45,22),(128,'2024-03-16',180000.00,11,85),(129,'2023-03-27',425000.00,23,17),(130,'2024-01-31',710000.00,52,27),(131,'2023-02-25',0.00,40,97),(132,'2024-01-14',0.00,49,33),(133,'2023-03-14',425000.00,52,55),(134,'2023-11-28',315000.00,11,67),(135,'2024-08-27',0.00,35,58),(136,'2023-01-24',245000.00,35,99),(137,'2023-03-02',0.00,3,99),(138,'2024-12-07',730000.00,7,33),(139,'2023-03-20',0.00,40,82),(140,'2023-10-19',0.00,23,63),(141,'2023-02-23',0.00,30,95),(142,'2024-12-08',0.00,7,32),(143,'2023-03-07',0.00,3,22),(144,'2024-11-23',0.00,45,61),(145,'2023-11-19',270000.00,45,93),(146,'2024-11-06',0.00,23,14),(147,'2023-09-29',0.00,59,52),(148,'2024-06-01',0.00,52,25),(149,'2023-11-26',0.00,19,22),(150,'2023-04-12',0.00,52,71),(151,'2023-10-03',0.00,59,9),(152,'2023-06-20',0.00,49,26),(153,'2023-08-14',0.00,49,90),(154,'2023-11-23',0.00,19,31),(155,'2024-03-31',0.00,3,45),(156,'2023-01-28',0.00,45,78),(157,'2024-03-18',0.00,52,67),(158,'2023-08-25',0.00,3,9),(159,'2023-02-12',0.00,27,67),(160,'2023-06-13',0.00,40,90),(161,'2024-01-14',0.00,7,43),(162,'2023-09-25',340000.00,30,12),(163,'2023-10-13',0.00,45,69),(164,'2023-11-25',0.00,15,45),(165,'2024-10-23',0.00,3,50),(166,'2023-09-16',70000.00,11,74),(167,'2023-04-16',0.00,35,24),(168,'2024-04-24',0.00,52,55),(169,'2024-07-22',245000.00,45,29),(170,'2023-12-16',0.00,27,3),(171,'2024-05-20',0.00,59,60),(172,'2024-12-13',0.00,40,61),(173,'2024-06-22',255000.00,15,1),(174,'2023-01-20',0.00,15,48),(175,'2024-02-01',0.00,7,85),(176,'2023-05-04',0.00,3,36),(177,'2023-01-14',0.00,15,89),(178,'2024-09-04',0.00,23,80),(179,'2023-06-08',0.00,3,66),(180,'2024-06-22',0.00,40,28),(181,'2023-07-19',0.00,11,25),(182,'2023-06-16',210000.00,52,67),(183,'2023-03-05',280000.00,52,67),(184,'2024-04-18',0.00,19,61),(185,'2024-08-30',0.00,35,39),(186,'2023-01-25',0.00,59,53),(187,'2023-01-04',0.00,52,38),(188,'2023-02-20',0.00,52,68),(189,'2024-12-05',0.00,23,76),(190,'2023-08-06',0.00,49,88),(191,'2024-07-21',0.00,19,21),(192,'2024-05-14',230000.00,40,6),(193,'2023-11-16',0.00,52,14),(194,'2024-04-30',0.00,3,83),(195,'2024-03-10',0.00,23,25),(196,'2023-12-01',0.00,40,84),(197,'2023-07-22',0.00,52,84),(198,'2023-09-15',0.00,23,45),(199,'2023-01-03',0.00,23,62),(200,'2024-12-25',350000.00,7,60);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-06 20:33:38
