-- MySQL dump 10.13  Distrib 8.0.14, for macos10.14 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.14

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
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer_orders` (
  `Order_ID` int(11) NOT NULL,
  `Customer_Name` varchar(45) DEFAULT NULL,
  `Order_Time` varchar(45) NOT NULL,
  `Table_Table_ID` int(11) NOT NULL,
  PRIMARY KEY (`Order_ID`,`Table_Table_ID`),
  KEY `fk_Order_Table1_idx` (`Table_Table_ID`),
  CONSTRAINT `fk_Order_Table1` FOREIGN KEY (`Table_Table_ID`) REFERENCES `dining_tables` (`Table_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_orders`
--

LOCK TABLES `customer_orders` WRITE;
/*!40000 ALTER TABLE `customer_orders` DISABLE KEYS */;
INSERT INTO `customer_orders` VALUES (101,'John Doe','12:30',1),(102,'Mary Smith','13:00',2),(103,'James Wilson','18:30',3),(104,'Patricia Taylor','19:00',4),(105,'Robert Moore','19:15',5),(106,'Linda Anderson','20:00',6),(107,'Michael Thomas','12:45',7),(108,'Barbara White','13:15',8),(109,'William Harris','18:45',9),(110,'Elizabeth Martin','19:30',10);
/*!40000 ALTER TABLE `customer_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dining_tables`
--

DROP TABLE IF EXISTS `dining_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dining_tables` (
  `Table_ID` int(11) NOT NULL,
  `Location` varchar(45) NOT NULL,
  `Num_Of_Seats` varchar(45) NOT NULL,
  `Money_Charged` varchar(45) NOT NULL,
  PRIMARY KEY (`Table_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dining_tables`
--

LOCK TABLES `dining_tables` WRITE;
/*!40000 ALTER TABLE `dining_tables` DISABLE KEYS */;
INSERT INTO `dining_tables` VALUES (1,'Window','5','$44.91'),(2,'Middle #2','2','$25.89'),(3,'Patio','4','$65.20'),(4,'Bar','1','$15.00'),(5,'Corner Booth','6','$120.50'),(6,'Window','2','$35.45'),(7,'Middle #3','4','$55.00'),(8,'Kitchen View','2','$42.10'),(9,'Patio','4','$70.00'),(10,'Private Room','10','$250.00');
/*!40000 ALTER TABLE `dining_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menu` (
  `Food_ID` int(11) NOT NULL,
  `Food_Type` varchar(45) NOT NULL,
  `Food_Price` double NOT NULL,
  `Allergy_Warning` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Food_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Main Dish',12.99,'Yes'),(2,'Dessert',10.49,'Yes'),(3,'Drink',6.99,'No'),(4,'Dessert',6.99,'Yes'),(5,'Main Dish',15.99,'No'),(6,'SIde Dish',4.99,'No'),(7,'Dessert',9.99,'Yes'),(8,'Mian Dish',12.99,'Yes'),(9,'Mian Dish',13.5,'Yes'),(10,'Drink',3.5,'No');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_has_order`
--

DROP TABLE IF EXISTS `menu_has_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menu_has_order` (
  `Menu_Food_ID` int(11) NOT NULL,
  `Order_Order_ID` int(11) NOT NULL,
  `Order_Item_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`Order_Item_ID`),
  KEY `fk_Menu_has_Order_Order1_idx` (`Order_Order_ID`),
  KEY `fk_Menu_has_Order_Menu_idx` (`Menu_Food_ID`),
  CONSTRAINT `fk_Menu_has_Order_Menu` FOREIGN KEY (`Menu_Food_ID`) REFERENCES `menu` (`Food_ID`),
  CONSTRAINT `fk_Menu_has_Order_Order1` FOREIGN KEY (`Order_Order_ID`) REFERENCES `customer_orders` (`Order_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_has_order`
--

LOCK TABLES `menu_has_order` WRITE;
/*!40000 ALTER TABLE `menu_has_order` DISABLE KEYS */;
INSERT INTO `menu_has_order` VALUES (1,101,'ITEM-001'),(2,102,'ITEM-002'),(3,103,'ITEM-003'),(4,104,'ITEM-004'),(5,105,'ITEM-005'),(6,106,'ITEM-006'),(7,107,'ITEM-007'),(8,108,'ITEM-008'),(9,109,'ITEM-009'),(10,110,'ITEM-010');
/*!40000 ALTER TABLE `menu_has_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schedule` (
  `Schedule_ID` int(11) NOT NULL,
  `Open` varchar(45) NOT NULL,
  `Opening_Time` varchar(45) DEFAULT NULL,
  `Closing_Time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Schedule_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'Yes','08:00','22:00'),(2,'Yes','08:00','22:00'),(3,'Yes','08:00','22:00'),(4,'Yes','08:00','22:00'),(5,'Yes','08:00','23:00'),(6,'Yes','09:00','23:00'),(7,'Yes','09:00','21:00'),(8,'Yes','08:00','22:00'),(9,'Yes','08:00','22:00'),(10,'No',NULL,NULL);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_has_staff`
--

DROP TABLE IF EXISTS `schedule_has_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schedule_has_staff` (
  `Schedule_Schedule_ID` int(11) NOT NULL,
  `Staff_Employee_ID` int(11) NOT NULL,
  `Schedule_has_Staff_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`Schedule_Schedule_ID`,`Staff_Employee_ID`,`Schedule_has_Staff_ID`),
  KEY `fk_Schedule_has_Staff_Staff1_idx` (`Staff_Employee_ID`),
  KEY `fk_Schedule_has_Staff_Schedule1_idx` (`Schedule_Schedule_ID`),
  CONSTRAINT `fk_Schedule_has_Staff_Schedule1` FOREIGN KEY (`Schedule_Schedule_ID`) REFERENCES `schedule` (`Schedule_ID`),
  CONSTRAINT `fk_Schedule_has_Staff_Staff1` FOREIGN KEY (`Staff_Employee_ID`) REFERENCES `staff` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_has_staff`
--

LOCK TABLES `schedule_has_staff` WRITE;
/*!40000 ALTER TABLE `schedule_has_staff` DISABLE KEYS */;
INSERT INTO `schedule_has_staff` VALUES (1,1,'SCH-STAFF-01'),(2,2,'SCH-STAFF-02'),(3,3,'SCH-STAFF-03'),(4,4,'SCH-STAFF-04'),(5,5,'SCH-STAFF-05'),(6,6,'SCH-STAFF-06'),(7,7,'SCH-STAFF-07'),(8,8,'SCH-STAFF-08'),(9,9,'SCH-STAFF-09'),(1,10,'SCH-STAFF-10');
/*!40000 ALTER TABLE `schedule_has_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff` (
  `Employee_ID` int(11) NOT NULL,
  `Staff_Name` varchar(45) NOT NULL,
  `Salary` double NOT NULL,
  `Role` varchar(45) NOT NULL,
  `Start_Shift` varchar(45) NOT NULL,
  `End_Shift` varchar(45) NOT NULL,
  `Table_Table_ID` int(11) NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `fk_Staff_Table1_idx` (`Table_Table_ID`),
  CONSTRAINT `fk_Staff_Table1` FOREIGN KEY (`Table_Table_ID`) REFERENCES `table` (`Table_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Alice Smith',3500,'Server','08:00','16:00',1),(2,'Bob Johnson',3200,'Server','16:00','22:00',2),(3,'Charlie Brown',4500,'Manager','09:00','17:00',3),(4,'Diana Prince',3800,'Chef','10:00','18:00',4),(5,'Evan Wright',3000,'Busser','12:00','20:00',5),(6,'Fiona Glen',3500,'Server','08:00','16:00',6),(7,'George Miller',3200,'Server','16:00','22:00',7),(8,'Hannah Abbott',3100,'Hostess','11:00','19:00',8),(9,'Ian Curtis',3800,'Chef','14:00','22:00',9),(10,'Jane Doe',3000,'Busser','16:00','23:00',10);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-29 12:13:20
