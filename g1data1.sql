CREATE DATABASE IF NOT EXISTS vee1;

use vee1;

DROP TABLE IF EXISTS `security`;
CREATE TABLE `security` (
  `id` int NOT NULL AUTO_INCREMENT,
  `security_type` varchar(100) DEFAULT NULL,
  `security_name` varchar(100) DEFAULT NULL,
  `security_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
);

LOCK TABLES `security` WRITE;
INSERT INTO `security` VALUES (1,'Stock','Tesla',598.25),(2,'Stock','Microsoft',251.66),(3,'Crypto','Bitcoin',37965.938),(4,'Cash','Cash',1),(5,'Fixed Income','Canadian Pension Fund', 50.45);
UNLOCK TABLES;

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'Leslie Tan'),(2,'Benjamin Lim'),(3,'Tracy Chia'),(4,'Simon Fernandes'),(5,'Terry Lawrence');
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` date DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `security_id` int DEFAULT NULL,
  `transaction_type` varchar(100) DEFAULT NULL,
  `transaction_units` int DEFAULT NULL,
  `transacted_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
);

LOCK TABLES `transactions` WRITE;
INSERT INTO `transactions` VALUES (1,'2019-07-16',1,1,"Buy",7, 556.55), (2,'2019-07-16',1,2,"Buy",7, 256.10);
UNLOCK TABLES;
