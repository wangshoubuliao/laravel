-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: lanxi
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`add_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,NULL,1),(2,353338482,1),(3,NULL,1),(4,NULL,1),(5,NULL,4),(6,366540745,1),(7,NULL,1),(8,389024990,1),(9,389024990,5),(10,389024990,1),(11,NULL,1),(12,NULL,1),(13,NULL,1),(14,NULL,1),(15,NULL,1),(16,NULL,1),(17,NULL,1),(18,NULL,1),(19,NULL,1),(20,NULL,1),(21,NULL,1),(22,NULL,1),(23,NULL,1),(24,516999233,1);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,13,'37',2,1551335316,'1'),(2,20,'37',1,1551336645,'1'),(3,21,'37',1,1551336852,'1'),(4,10,'37',1,1551350716,'1');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cate`
--

DROP TABLE IF EXISTS `cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cate` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(45) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `cate_show` tinyint(4) DEFAULT NULL,
  `cate_navshow` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate`
--

LOCK TABLES `cate` WRITE;
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` VALUES (1,'生鲜水果',1542262522,0,1,1),(2,'母婴玩具',1542262522,0,1,2),(4,'家具建材',1542262522,0,1,1),(5,'医药保健',1542262522,0,1,2),(6,'保健品',1542262522,5,1,2),(7,'医药',1542262522,5,1,2),(8,'医疗器械',1542250480,5,1,2),(9,'轮椅',1542262522,8,1,2),(10,'血压计',1542262522,8,1,2),(11,'腰酸腿疼',1542250480,7,1,2),(12,'感冒咳嗽',1542262522,7,1,2),(13,'蛋类',1542250480,1,1,1),(14,'肉类',1542262522,1,1,2),(16,'鸭蛋',1542262522,13,1,2),(17,'牛肉',1542262522,14,1,2),(18,'羊肉',1542250480,14,1,1),(19,'卧室家具',1542262522,4,1,2),(20,'书房儿童',1542262522,4,1,1),(21,'床',1542250480,19,1,2),(22,'电脑桌',1542262522,20,1,2),(23,'儿童床',1542250480,20,1,2),(26,'小汽车',1545046501,2,1,2),(28,'板砖',1545046557,4,1,2),(29,'水果',1545048215,1,1,2),(30,'家用电器',1545096925,0,1,1),(31,'手机/运营商',1545096984,0,1,2),(32,'电脑/办公',1545097059,0,1,2),(33,'家具、餐具',1545097101,0,1,2),(34,'服装',1545097112,0,1,2),(35,'美装',1545097132,0,1,2),(38,'电视',1545097341,30,1,1),(39,'空调',1545097358,30,1,2),(40,'洗衣机',1545097374,30,1,2),(41,'曲面电视',1545097402,38,1,2),(42,'超波电视',1545097437,38,1,2),(43,'OLED电视',1545097458,38,1,2),(44,'立式空调',1545097479,39,1,2),(45,'挂试空调',1545097517,39,1,2),(46,'滚筒洗衣机',1545097534,40,1,2),(47,'迷你洗衣机',1545097553,40,1,2),(48,'手机通讯',1545097587,31,1,1),(49,'手机挂件',1545097610,31,1,2),(50,'运营商',1545097623,31,1,2),(51,'老人机',1545097640,48,1,2),(52,'游戏手机',1545097657,48,1,2),(53,'对讲机',1545097675,48,1,2),(54,'童车童床',1545097884,2,1,2),(55,'电动、遥控',1545097960,54,1,2),(56,'手机壳',1545097998,49,1,2),(57,'手机膜',1545098022,49,1,2),(58,'手机电池',1545098042,49,1,2),(59,'合约机',1545098066,50,1,2),(60,'办套餐',1545098099,50,1,2),(61,'电脑整机',1545098137,32,1,2),(62,'电脑配件',1545098156,32,1,2),(63,'游戏产品',1545098176,32,1,2),(64,'笔记本',1545098187,61,1,2),(65,'游戏本',1545098204,61,1,2),(66,'平板',1545098229,61,1,2),(67,'显示器',1545098242,62,1,2),(68,'CPU',1545098257,62,1,2),(69,'显卡',1545098270,62,1,2),(70,'主板',1545098286,62,1,2),(71,'游戏手柄',1545098332,63,1,2),(72,'游戏耳机',1545098349,63,1,2),(73,'厨具',1545098466,33,1,2),(74,'家纺',1545098493,33,1,2),(75,'水具酒具',1545098526,73,1,2),(76,'咖啡具',1545098543,73,1,2),(77,'炒锅',1545098606,73,1,2),(78,'四件套',1545098637,74,1,2),(79,'被子',1545098650,74,1,2),(80,'毛巾浴巾',1545098687,74,1,2),(81,'男装',1545098716,34,1,2),(82,'女装',1545098734,34,1,2),(83,'T恤',1545098761,81,1,2),(84,'卫衣',1545098780,81,1,2),(85,'皮草',1545098793,82,1,2),(86,'礼服',1545098812,82,1,2),(87,'面部护肤',1545098865,35,1,2),(88,'礼盒',1545098882,87,1,2),(89,'洗发护理',1545098913,35,1,2),(90,'洗头膏',1545098924,89,1,2),(91,'造型',1545098975,90,1,2);
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cata_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cata_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'阅读'),(2,'运动'),(3,'睡觉'),(4,'游戏');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `time` int(20) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES (1,'111','13211212312',1550739410,1),(2,'111','13212312312',1550739439,1),(3,'100','18735978024',1550739768,1),(4,'111','18735978024',1550739965,1),(5,'111','12414142',1550739977,1),(6,'111','1241241',1550739989,1),(7,'5041','18735978024',1550800000,0),(8,'111','13212312312',1550802335,1),(9,'111','13212312312',1550802529,1),(10,'111','13212312314',1550805044,1),(11,'111','13278979889',1550805088,0),(12,'111','13255567899',1550816968,0);
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_marketprice` decimal(10,0) DEFAULT NULL,
  `goods_selfprice` decimal(10,0) DEFAULT NULL,
  `goods_new` tinyint(4) DEFAULT '2',
  `goods_up` int(255) DEFAULT '2',
  `goods_best` tinyint(4) DEFAULT '2',
  `goods_hot` tinyint(4) DEFAULT '2',
  `goods_num` int(11) DEFAULT NULL,
  `goods_score` int(11) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_imgs` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `cate_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `goods_name` varchar(45) DEFAULT NULL,
  `goods_content` varchar(255) DEFAULT NULL,
  `sale_num` int(11) DEFAULT NULL,
  `goods_sn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `fk_shop_goods_shop_category_idx` (`cate_id`),
  KEY `fk_shop_goods_shop_brand1_idx` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (9,111,1111,1,2,1,2,99,11,'20181220\\b179635a8b8e640740d68e1959e6c944.png','',1545048169,29,21,'肠子','大肠子',1,NULL),(10,19,10,1,1,1,2,1111,111,'20181221\\96a33e82125759e4a19c113a5e95c24e.jpg','',1545048265,29,19,'苹果','<img src=\"/public/goodscontent/20181217\\c4acb6430db1dd1e17ca93583a79b61b.jpg\" alt=\"商品详情图\">',2,NULL),(11,17,10,1,1,1,2,112,18,'20181220\\aa253fd7bf6b13dfcba5b075738978bf.jpg','20181220\\031a732ae97c11da738126e7fa8c8bf7.jpg',1545048303,29,19,'梨','<img src=\"/public/goodscontent/20181217\\dbb7c0d0cf347bdf76ed5b3f07dd25dd.jpg\" alt=\"商品详情图\">',1,NULL),(12,10002,10000,2,1,1,2,100,111,'20181220\\ae057ef8f3745332f112d6659244bd24.jpg','20181220\\b0bae371ce609fff2cafe6e3d2f9af3b.jpg',1545048407,26,17,'ThinkPad','二娃',3,NULL),(13,111,111,2,1,2,2,11111,11,'20181220\\42e2b3fcae3bd3a1172cdfd50e72f7bc.jpg','20181220\\0ab2ad44834262ab36e11cec12a14151.jpg',1545048449,26,15,'华为','<img src=\"/public/goodscontent/20181217\\8725043fc02be1f089e9cd70f0a59e9b.jpg\" alt=\"商品详情图\">',5,NULL),(15,500,1000,2,1,2,1,1111,11,'20181220\\1f8f101f10c26b171428bdc705a0dfd0.jpg','20181220\\0debf31ddd699e4fb27ad02026395669.jpg',1545048690,26,18,'牛犊子','<img src=\"/public/goodscontent/20181217\\b790aa3481583c63b3ac28c7fbabe479.jpg\" alt=\"商品详情图\">',9,NULL),(18,124,123,2,1,2,2,412,12,'20181220\\3a3536dea2a7746b15aa26f70bce17e5.jpg','20181220\\baf9b12dcdd253ad809470cb1d53c42d.jpg20181220\\4ca83ec36d3904d2833ab913f733c267.jpg',1545295544,26,19,'荔枝','<img src=\"/public/goodscontent/20181220\\92c564eda8d10f6daec5eff78ebb301f.jpg\" alt=\"商品详情图\">',18,NULL),(19,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,26,13,'诺基亚N85',NULL,NULL,NULL),(20,3612,3010,1,1,1,1,4,NULL,'岁',NULL,NULL,26,13,'诺基亚N85',NULL,NULL,'SN201901070020'),(21,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,26,13,'诺基亚N85',NULL,NULL,'SN201901070021'),(22,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,26,13,'诺基亚N85',NULL,NULL,'SN201901070022'),(23,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,54,13,'诺基亚N85',NULL,NULL,'SN201901070023'),(24,3612,3010,1,1,1,1,4,NULL,'20190107\\a921db18993557b0d5d1b583b415933b.jpg',NULL,NULL,54,13,'诺基亚N85',NULL,NULL,'SN201901070024'),(25,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,54,14,'诺基亚N85',NULL,NULL,'SN201901070025'),(26,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,51,14,'诺基亚N8',NULL,NULL,'SN201901070026'),(27,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,51,14,'诺基亚N8',NULL,NULL,'SN201901070027'),(28,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,51,14,'诺基亚N8',NULL,NULL,'SN201901070028'),(29,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,51,14,'诺基亚N85',NULL,NULL,'SN201901070029'),(30,3612,3010,1,1,1,2,100,0,'20190108\\62c5c0c11996bd24b04391854619d802.jpg','',NULL,16,14,'诺5','UI无IE阿玉i',NULL,'SN201901070030'),(31,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,14,16,'诺基亚N85',NULL,NULL,'SN201901070031'),(32,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,17,14,'诺基亚N85',NULL,NULL,'SN201901070032'),(33,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,16,14,'诺',NULL,NULL,'SN201901080033'),(34,3612,3010,1,1,1,1,4,NULL,'20190108\\95c71902829c83da26fcd29a2d5b2b4f.jpg',NULL,NULL,16,14,'诺基',NULL,NULL,'SN201901080034'),(35,3612,3010,1,1,1,1,4,NULL,'20190108\\79d299d7243eeb97307fd94cc334e0ff.jpg',NULL,NULL,16,14,'诺基',NULL,NULL,'SN201901080035'),(36,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,16,14,'诺85',NULL,NULL,'SN201901080036'),(37,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,0,0,'诺基亚N85',NULL,NULL,'SN201901080037'),(38,3612,3010,1,1,1,1,4,NULL,NULL,NULL,NULL,16,14,'诺基0',NULL,NULL,'SN201901080038'),(39,3612,3010,1,1,1,1,4,NULL,'20190108\\68ccc6f3afbf48a2be94b600255bab00.jpg',NULL,NULL,16,14,'诺基亚N',NULL,NULL,'SN201901080039'),(40,3612,3010,1,1,1,1,2,NULL,'20190109\\3b1208cd08131b9ea40e3de8e7e6e693.jpg',NULL,NULL,23,14,'看我哦啊',NULL,NULL,'SN201901090040');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_amount` varchar(255) DEFAULT NULL,
  `order_pay_type` varchar(255) DEFAULT NULL COMMENT '支付方式：1.线上支付,2.货到付款',
  `pay_status` varchar(255) DEFAULT NULL COMMENT '支付状态：1.未付款，2.已付款',
  `pay_way` varchar(255) DEFAULT NULL COMMENT '支付方式：1.支付宝，2.微信，3.网银,4.网银支付,5.货到付款',
  `status` varchar(255) DEFAULT NULL COMMENT '1.未支付，2.已支付,3.已确认,4.备货中5.发货中6.已发货，7.订单完成',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'353338482',37,'222','1','1','1','1',1551335335),(2,'366540745',37,'3232','1','1','1','1',1551336655),(3,'368510315',37,'6242','1','1','1','1',1551336854),(4,'389024990',37,'6242','1','1','1','1',1551338907),(5,'507160342',37,'6252','1','1','1','1',1551350719),(6,'516999233',37,'6252','1','1','1','1',1551351694);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_address`
--

DROP TABLE IF EXISTS `order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `consignee_name` varchar(30) DEFAULT NULL,
  `consignee_tel` char(11) DEFAULT NULL,
  `address_status` tinyint(4) DEFAULT '1' COMMENT '订单状态 1待支付2已支付3已取消4商家确认5已发货6已签收7已完成',
  `detailed_address` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_address`
--

LOCK TABLES `order_address` WRITE;
/*!40000 ALTER TABLE `order_address` DISABLE KEYS */;
INSERT INTO `order_address` VALUES (1,37,'而且',NULL,NULL,'千万去','13214',2,'气味去',1551335358,1551336865,1),(2,37,'挖人啊',NULL,NULL,'我的娃娃单位','2412',2,'确认日期为',1551335455,1551336672,2),(3,37,'213切切',NULL,NULL,'我问问','12131',2,'确认',1551336756,NULL,2),(4,37,'1 414去日确认',NULL,NULL,'无法前往v','1421',2,'欠人情',1551336795,1551336808,2),(5,37,'141224',NULL,NULL,'千万人群','124142',2,'14212',1551339221,NULL,1);
/*!40000 ALTER TABLE `order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` varchar(100) DEFAULT NULL,
  `buy_number` varchar(100) DEFAULT NULL,
  `goods_price` varchar(100) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,'353338482',37,'13','2','111','华为',1551335335),(2,'366540745',37,'13','2','111','华为',1551336655),(3,'366540745',37,'20','1','3010','诺基亚N85',1551336655),(4,'368510315',37,'13','2','111','华为',1551336854),(5,'368510315',37,'20','1','3010','诺基亚N85',1551336854),(6,'368510315',37,'21','1','3010','诺基亚N85',1551336854),(7,'389024990',37,'13','2','111','华为',1551338907),(8,'389024990',37,'20','1','3010','诺基亚N85',1551338907),(9,'389024990',37,'21','1','3010','诺基亚N85',1551338907),(10,'507160342',37,'13','2','111','华为',1551350719),(11,'507160342',37,'20','1','3010','诺基亚N85',1551350719),(12,'507160342',37,'21','1','3010','诺基亚N85',1551350719),(13,'507160342',37,'10','1','10','苹果',1551350719),(14,'516999233',37,'13','2','111','华为',1551351694),(15,'516999233',37,'20','1','3010','诺基亚N85',1551351694),(16,'516999233',37,'21','1','3010','诺基亚N85',1551351694),(17,'516999233',37,'10','1','10','苹果',1551351694);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (28,'13212312314','1111111'),(27,'13212312319','1111111'),(22,'13212312312','1111111'),(23,'13212312312','1111111'),(24,'13212312312','1111111'),(25,'13212312312','1111111'),(26,'13212312312','1111111'),(29,'13212312313','1111111'),(30,'15134567890','111111'),(31,'15155555555','111111'),(32,'18735978028','111111'),(33,'13211232133','1111111'),(34,'111111',NULL),(35,'11111',NULL),(36,'18735978924','124124'),(37,'18735978024','111111'),(38,'13278979889','123123'),(39,'13255567899','123123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-02 10:32:25
