-- MySQL dump 10.14  Distrib 5.5.44-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: jiradb_ldap
-- ------------------------------------------------------
-- Server version	5.5.44-MariaDB

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
-- Table structure for table `AO_21D670_WHITELIST_RULES`
--

DROP TABLE IF EXISTS `AO_21D670_WHITELIST_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_21D670_WHITELIST_RULES` (
  `ALLOWINBOUND` tinyint(1) DEFAULT NULL,
  `EXPRESSION` longtext COLLATE utf8_bin NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_21D670_WHITELIST_RULES`
--

LOCK TABLES `AO_21D670_WHITELIST_RULES` WRITE;
/*!40000 ALTER TABLE `AO_21D670_WHITELIST_RULES` DISABLE KEYS */;
INSERT INTO `AO_21D670_WHITELIST_RULES` VALUES (0,'http://www.atlassian.com/*',1,'WILDCARD_EXPRESSION');
/*!40000 ALTER TABLE `AO_21D670_WHITELIST_RULES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_38321B_CUSTOM_CONTENT_LINK`
--

DROP TABLE IF EXISTS `AO_38321B_CUSTOM_CONTENT_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_38321B_CUSTOM_CONTENT_LINK` (
  `CONTENT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LINK_LABEL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LINK_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEQUENCE` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `index_ao_38321b_cus1828044926` (`CONTENT_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_38321B_CUSTOM_CONTENT_LINK`
--

LOCK TABLES `AO_38321B_CUSTOM_CONTENT_LINK` WRITE;
/*!40000 ALTER TABLE `AO_38321B_CUSTOM_CONTENT_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_38321B_CUSTOM_CONTENT_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_3B1893_LOOP_DETECTION`
--

DROP TABLE IF EXISTS `AO_3B1893_LOOP_DETECTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_3B1893_LOOP_DETECTION` (
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `EXPIRES_AT` bigint(20) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SENDER_EMAIL` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_3B1893_LOOP_DETECTION`
--

LOCK TABLES `AO_3B1893_LOOP_DETECTION` WRITE;
/*!40000 ALTER TABLE `AO_3B1893_LOOP_DETECTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_3B1893_LOOP_DETECTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_4AEACD_WEBHOOK_DAO`
--

DROP TABLE IF EXISTS `AO_4AEACD_WEBHOOK_DAO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4AEACD_WEBHOOK_DAO` (
  `ENABLED` tinyint(1) DEFAULT NULL,
  `ENCODED_EVENTS` longtext COLLATE utf8_bin,
  `FILTER` longtext COLLATE utf8_bin,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `JQL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDATED` datetime NOT NULL,
  `LAST_UPDATED_USER` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME` longtext COLLATE utf8_bin NOT NULL,
  `REGISTRATION_METHOD` varchar(255) COLLATE utf8_bin NOT NULL,
  `URL` longtext COLLATE utf8_bin NOT NULL,
  `EXCLUDE_ISSUE_DETAILS` tinyint(1) DEFAULT NULL,
  `PARAMETERS` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_4AEACD_WEBHOOK_DAO`
--

LOCK TABLES `AO_4AEACD_WEBHOOK_DAO` WRITE;
/*!40000 ALTER TABLE `AO_4AEACD_WEBHOOK_DAO` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_4AEACD_WEBHOOK_DAO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_550953_SHORTCUT`
--

DROP TABLE IF EXISTS `AO_550953_SHORTCUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_550953_SHORTCUT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT_ID` bigint(20) DEFAULT NULL,
  `SHORTCUT_URL` longtext COLLATE utf8_bin,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ICON` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_550953_sho1778115994` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_550953_SHORTCUT`
--

LOCK TABLES `AO_550953_SHORTCUT` WRITE;
/*!40000 ALTER TABLE `AO_550953_SHORTCUT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_550953_SHORTCUT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_563AEE_ACTIVITY_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_ACTIVITY_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_ACTIVITY_ENTITY` (
  `ACTIVITY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ACTOR_ID` int(11) DEFAULT NULL,
  `CONTENT` longtext COLLATE utf8_bin,
  `GENERATOR_DISPLAY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GENERATOR_ID` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `ICON_ID` int(11) DEFAULT NULL,
  `ID` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `ISSUE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_ID` int(11) DEFAULT NULL,
  `POSTER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PUBLISHED` datetime DEFAULT NULL,
  `TARGET_ID` int(11) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VERB` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ACTIVITY_ID`),
  KEY `index_ao_563aee_act995325379` (`ACTOR_ID`),
  KEY `index_ao_563aee_act972488439` (`ICON_ID`),
  KEY `index_ao_563aee_act1642652291` (`OBJECT_ID`),
  KEY `index_ao_563aee_act1978295567` (`TARGET_ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_actor_id` FOREIGN KEY (`ACTOR_ID`) REFERENCES `AO_563AEE_ACTOR_ENTITY` (`ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_icon_id` FOREIGN KEY (`ICON_ID`) REFERENCES `AO_563AEE_MEDIA_LINK_ENTITY` (`ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_object_id` FOREIGN KEY (`OBJECT_ID`) REFERENCES `AO_563AEE_OBJECT_ENTITY` (`ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_target_id` FOREIGN KEY (`TARGET_ID`) REFERENCES `AO_563AEE_TARGET_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_563AEE_ACTIVITY_ENTITY`
--

LOCK TABLES `AO_563AEE_ACTIVITY_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_563AEE_ACTIVITY_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_563AEE_ACTIVITY_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_563AEE_ACTOR_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_ACTOR_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_ACTOR_ENTITY` (
  `FULL_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROFILE_PAGE_URI` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `PROFILE_PICTURE_URI` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_563AEE_ACTOR_ENTITY`
--

LOCK TABLES `AO_563AEE_ACTOR_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_563AEE_ACTOR_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_563AEE_ACTOR_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_563AEE_MEDIA_LINK_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_MEDIA_LINK_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_MEDIA_LINK_ENTITY` (
  `DURATION` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_563AEE_MEDIA_LINK_ENTITY`
--

LOCK TABLES `AO_563AEE_MEDIA_LINK_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_563AEE_MEDIA_LINK_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_563AEE_MEDIA_LINK_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_563AEE_OBJECT_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_OBJECT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_OBJECT_ENTITY` (
  `CONTENT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `OBJECT_ID` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_TYPE` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_563aee_obj696886343` (`IMAGE_ID`),
  CONSTRAINT `fk_ao_563aee_object_entity_image_id` FOREIGN KEY (`IMAGE_ID`) REFERENCES `AO_563AEE_MEDIA_LINK_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_563AEE_OBJECT_ENTITY`
--

LOCK TABLES `AO_563AEE_OBJECT_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_563AEE_OBJECT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_563AEE_OBJECT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_563AEE_TARGET_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_TARGET_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_TARGET_ENTITY` (
  `CONTENT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `OBJECT_ID` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_TYPE` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_563aee_tar521440921` (`IMAGE_ID`),
  CONSTRAINT `fk_ao_563aee_target_entity_image_id` FOREIGN KEY (`IMAGE_ID`) REFERENCES `AO_563AEE_MEDIA_LINK_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_563AEE_TARGET_ENTITY`
--

LOCK TABLES `AO_563AEE_TARGET_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_563AEE_TARGET_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_563AEE_TARGET_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_575BF5_PROCESSED_COMMITS`
--

DROP TABLE IF EXISTS `AO_575BF5_PROCESSED_COMMITS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_575BF5_PROCESSED_COMMITS` (
  `COMMIT_HASH` varchar(255) COLLATE utf8_bin NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  KEY `index_ao_575bf5_pro1681808571` (`COMMIT_HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_575BF5_PROCESSED_COMMITS`
--

LOCK TABLES `AO_575BF5_PROCESSED_COMMITS` WRITE;
/*!40000 ALTER TABLE `AO_575BF5_PROCESSED_COMMITS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_575BF5_PROCESSED_COMMITS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_575BF5_PROVIDER_ISSUE`
--

DROP TABLE IF EXISTS `AO_575BF5_PROVIDER_ISSUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_575BF5_PROVIDER_ISSUE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_ID` bigint(20) NOT NULL DEFAULT '0',
  `PROVIDER_SOURCE_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `STALE_AFTER` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_575bf5_pro1117502689` (`STALE_AFTER`),
  KEY `index_ao_575bf5_pro1348521624` (`PROVIDER_SOURCE_ID`),
  KEY `index_ao_575bf5_pro741170824` (`ISSUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_575BF5_PROVIDER_ISSUE`
--

LOCK TABLES `AO_575BF5_PROVIDER_ISSUE` WRITE;
/*!40000 ALTER TABLE `AO_575BF5_PROVIDER_ISSUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_575BF5_PROVIDER_ISSUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_587B34_PROJECT_CONFIG`
--

DROP TABLE IF EXISTS `AO_587B34_PROJECT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_587B34_PROJECT_CONFIG` (
  `CONFIGURATION_GROUP_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_UNIQUE_CONSTRAINT` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROJECT_ID` bigint(20) NOT NULL DEFAULT '0',
  `ROOM_ID` bigint(20) NOT NULL DEFAULT '0',
  `VALUE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `U_AO_587B34_PROJECT2070954277` (`NAME_UNIQUE_CONSTRAINT`),
  KEY `index_ao_587b34_pro2093917684` (`PROJECT_ID`),
  KEY `index_ao_587b34_pro1732672724` (`ROOM_ID`),
  KEY `index_ao_587b34_pro193829489` (`CONFIGURATION_GROUP_ID`),
  KEY `index_ao_587b34_pro2115480362` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_587B34_PROJECT_CONFIG`
--

LOCK TABLES `AO_587B34_PROJECT_CONFIG` WRITE;
/*!40000 ALTER TABLE `AO_587B34_PROJECT_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_587B34_PROJECT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_5FB9D7_AOHIP_CHAT_LINK`
--

DROP TABLE IF EXISTS `AO_5FB9D7_AOHIP_CHAT_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_5FB9D7_AOHIP_CHAT_LINK` (
  `ADDON_TOKEN_EXPIRY` datetime DEFAULT NULL,
  `API_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CONNECT_DESCRIPTOR` longtext COLLATE utf8_bin,
  `GROUP_ID` int(11) DEFAULT '0',
  `GROUP_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OAUTH_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SECRET_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SYSTEM_PASSWORD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SYSTEM_TOKEN_EXPIRY` datetime DEFAULT NULL,
  `SYSTEM_USER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SYSTEM_USER_TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_5FB9D7_AOHIP_CHAT_LINK`
--

LOCK TABLES `AO_5FB9D7_AOHIP_CHAT_LINK` WRITE;
/*!40000 ALTER TABLE `AO_5FB9D7_AOHIP_CHAT_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_5FB9D7_AOHIP_CHAT_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_5FB9D7_AOHIP_CHAT_USER`
--

DROP TABLE IF EXISTS `AO_5FB9D7_AOHIP_CHAT_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_5FB9D7_AOHIP_CHAT_USER` (
  `HIP_CHAT_LINK_ID` int(11) DEFAULT NULL,
  `HIP_CHAT_USER_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HIP_CHAT_USER_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REFRESH_CODE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_SCOPES` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_TOKEN_EXPIRY` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_5fb9d7_aoh1981563178` (`USER_KEY`),
  KEY `index_ao_5fb9d7_aoh49772492` (`HIP_CHAT_LINK_ID`),
  CONSTRAINT `fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id` FOREIGN KEY (`HIP_CHAT_LINK_ID`) REFERENCES `AO_5FB9D7_AOHIP_CHAT_LINK` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_5FB9D7_AOHIP_CHAT_USER`
--

LOCK TABLES `AO_5FB9D7_AOHIP_CHAT_USER` WRITE;
/*!40000 ALTER TABLE `AO_5FB9D7_AOHIP_CHAT_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_5FB9D7_AOHIP_CHAT_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_AUDITENTRY`
--

DROP TABLE IF EXISTS `AO_60DB71_AUDITENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_AUDITENTRY` (
  `CATEGORY` varchar(255) COLLATE utf8_bin NOT NULL,
  `DATA` longtext COLLATE utf8_bin NOT NULL,
  `ENTITY_CLASS` varchar(255) COLLATE utf8_bin NOT NULL,
  `ENTITY_ID` bigint(20) NOT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TIME` bigint(20) DEFAULT NULL,
  `USER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_aud604788536` (`ENTITY_ID`),
  KEY `index_ao_60db71_aud137736645` (`ENTITY_CLASS`),
  KEY `index_ao_60db71_aud1756477597` (`CATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_AUDITENTRY`
--

LOCK TABLES `AO_60DB71_AUDITENTRY` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_AUDITENTRY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_AUDITENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_BOARDADMINS`
--

DROP TABLE IF EXISTS `AO_60DB71_BOARDADMINS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_BOARDADMINS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KEY` varchar(255) COLLATE utf8_bin NOT NULL,
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  `TYPE` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_boa2110227660` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_boardadmins_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_BOARDADMINS`
--

LOCK TABLES `AO_60DB71_BOARDADMINS` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_BOARDADMINS` DISABLE KEYS */;
INSERT INTO `AO_60DB71_BOARDADMINS` VALUES (1,'suja',1,'USER'),(2,'user2',2,'USER'),(3,'jenkins',3,'USER');
/*!40000 ALTER TABLE `AO_60DB71_BOARDADMINS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_CARDCOLOR`
--

DROP TABLE IF EXISTS `AO_60DB71_CARDCOLOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_CARDCOLOR` (
  `COLOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `POS` int(11) NOT NULL DEFAULT '0',
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  `STRATEGY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VAL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_car2031978979` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_cardcolor_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_CARDCOLOR`
--

LOCK TABLES `AO_60DB71_CARDCOLOR` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_CARDCOLOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_CARDCOLOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_CARDLAYOUT`
--

DROP TABLE IF EXISTS `AO_60DB71_CARDLAYOUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_CARDLAYOUT` (
  `FIELD_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MODE_NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `POS` int(11) NOT NULL DEFAULT '0',
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_car149237770` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_cardlayout_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_CARDLAYOUT`
--

LOCK TABLES `AO_60DB71_CARDLAYOUT` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_CARDLAYOUT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_CARDLAYOUT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_COLUMN`
--

DROP TABLE IF EXISTS `AO_60DB71_COLUMN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_COLUMN` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MAXIM` double DEFAULT NULL,
  `MINIM` double DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `POS` int(11) NOT NULL DEFAULT '0',
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_col2098611346` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_column_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_COLUMN`
--

LOCK TABLES `AO_60DB71_COLUMN` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_COLUMN` DISABLE KEYS */;
INSERT INTO `AO_60DB71_COLUMN` VALUES (4,NULL,NULL,'gh.workflow.preset.todo',0,1),(5,NULL,NULL,'gh.workflow.preset.inprogress',1,1),(6,NULL,NULL,'gh.workflow.preset.done',2,1),(10,NULL,NULL,'gh.workflow.preset.todo',0,2),(11,NULL,NULL,'gh.workflow.preset.inprogress',1,2),(12,NULL,NULL,'gh.workflow.preset.done',2,2),(16,NULL,NULL,'gh.workflow.preset.todo',0,3),(17,NULL,NULL,'gh.workflow.preset.inprogress',1,3),(18,NULL,NULL,'gh.workflow.preset.done',2,3);
/*!40000 ALTER TABLE `AO_60DB71_COLUMN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_COLUMNSTATUS`
--

DROP TABLE IF EXISTS `AO_60DB71_COLUMNSTATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_COLUMNSTATUS` (
  `COLUMN_ID` bigint(20) NOT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `POS` int(11) NOT NULL DEFAULT '0',
  `STATUS_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_col1856623434` (`COLUMN_ID`),
  CONSTRAINT `fk_ao_60db71_columnstatus_column_id` FOREIGN KEY (`COLUMN_ID`) REFERENCES `AO_60DB71_COLUMN` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_COLUMNSTATUS`
--

LOCK TABLES `AO_60DB71_COLUMNSTATUS` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_COLUMNSTATUS` DISABLE KEYS */;
INSERT INTO `AO_60DB71_COLUMNSTATUS` VALUES (4,4,0,'10000'),(5,5,0,'3'),(6,6,0,'10001'),(10,10,0,'10000'),(11,11,0,'3'),(12,12,0,'10001'),(16,16,0,'10000'),(17,17,0,'3'),(18,18,0,'10001');
/*!40000 ALTER TABLE `AO_60DB71_COLUMNSTATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_DETAILVIEWFIELD`
--

DROP TABLE IF EXISTS `AO_60DB71_DETAILVIEWFIELD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_DETAILVIEWFIELD` (
  `FIELD_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `POS` int(11) NOT NULL DEFAULT '0',
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_det878495474` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_detailviewfield_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_DETAILVIEWFIELD`
--

LOCK TABLES `AO_60DB71_DETAILVIEWFIELD` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_DETAILVIEWFIELD` DISABLE KEYS */;
INSERT INTO `AO_60DB71_DETAILVIEWFIELD` VALUES ('status',1,0,1),('components',2,1,1),('labels',3,2,1),('versions',4,3,1),('fixVersions',5,4,1),('issuelinks',6,5,1),('reporter',7,6,1),('assignee',8,7,1),('created',9,8,1),('updated',10,9,1),('customfield_10006',11,10,1),('status',12,0,2),('components',13,1,2),('labels',14,2,2),('versions',15,3,2),('fixVersions',16,4,2),('issuelinks',17,5,2),('reporter',18,6,2),('assignee',19,7,2),('created',20,8,2),('updated',21,9,2),('customfield_10006',22,10,2),('status',23,0,3),('components',24,1,3),('labels',25,2,3),('versions',26,3,3),('fixVersions',27,4,3),('issuelinks',28,5,3),('reporter',29,6,3),('assignee',30,7,3),('created',31,8,3),('updated',32,9,3),('customfield_10006',33,10,3);
/*!40000 ALTER TABLE `AO_60DB71_DETAILVIEWFIELD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_ESTIMATESTATISTIC`
--

DROP TABLE IF EXISTS `AO_60DB71_ESTIMATESTATISTIC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_ESTIMATESTATISTIC` (
  `FIELD_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  `TYPE_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_est1680565966` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_estimatestatistic_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_ESTIMATESTATISTIC`
--

LOCK TABLES `AO_60DB71_ESTIMATESTATISTIC` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_ESTIMATESTATISTIC` DISABLE KEYS */;
INSERT INTO `AO_60DB71_ESTIMATESTATISTIC` VALUES ('customfield_10002',1,1,'field'),('customfield_10002',2,2,'field'),('customfield_10002',3,3,'field');
/*!40000 ALTER TABLE `AO_60DB71_ESTIMATESTATISTIC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_ISSUERANKING`
--

DROP TABLE IF EXISTS `AO_60DB71_ISSUERANKING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_ISSUERANKING` (
  `CUSTOM_FIELD_ID` bigint(20) NOT NULL DEFAULT '0',
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ISSUE_ID` bigint(20) NOT NULL DEFAULT '0',
  `NEXT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_iss1616896230` (`ISSUE_ID`),
  KEY `index_ao_60db71_iss1786461035` (`CUSTOM_FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_ISSUERANKING`
--

LOCK TABLES `AO_60DB71_ISSUERANKING` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_ISSUERANKING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_ISSUERANKING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_ISSUERANKINGLOG`
--

DROP TABLE IF EXISTS `AO_60DB71_ISSUERANKINGLOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_ISSUERANKINGLOG` (
  `CUSTOM_FIELD_ID` bigint(20) DEFAULT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ISSUE_ID` bigint(20) DEFAULT NULL,
  `LOG_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NEW_NEXT_ID` bigint(20) DEFAULT NULL,
  `NEW_PREVIOUS_ID` bigint(20) DEFAULT NULL,
  `OLD_NEXT_ID` bigint(20) DEFAULT NULL,
  `OLD_PREVIOUS_ID` bigint(20) DEFAULT NULL,
  `SANITY_CHECKED` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_ISSUERANKINGLOG`
--

LOCK TABLES `AO_60DB71_ISSUERANKINGLOG` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_ISSUERANKINGLOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_ISSUERANKINGLOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_LEXORANK`
--

DROP TABLE IF EXISTS `AO_60DB71_LEXORANK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_LEXORANK` (
  `FIELD_ID` bigint(20) NOT NULL DEFAULT '0',
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ISSUE_ID` bigint(20) NOT NULL DEFAULT '0',
  `LOCK_HASH` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME` bigint(20) DEFAULT NULL,
  `RANK` varchar(255) COLLATE utf8_bin NOT NULL,
  `TYPE` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_lexorank_rank` (`RANK`),
  KEY `index_ao_60db71_lex604083109` (`ISSUE_ID`),
  KEY `index_ao_60db71_lex1632828616` (`LOCK_HASH`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_LEXORANK`
--

LOCK TABLES `AO_60DB71_LEXORANK` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_LEXORANK` DISABLE KEYS */;
INSERT INTO `AO_60DB71_LEXORANK` VALUES (10004,7,-9223372036854775808,NULL,NULL,'0|000000:',0),(10004,8,9223372036854775807,NULL,NULL,'0|zzzzzz:',2),(10004,9,10000,NULL,NULL,'0|hzzzzz:',1),(10004,10,10001,NULL,NULL,'0|i00007:',1),(10004,11,10002,NULL,NULL,'0|i0000f:',1);
/*!40000 ALTER TABLE `AO_60DB71_LEXORANK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_LEXORANKBALANCER`
--

DROP TABLE IF EXISTS `AO_60DB71_LEXORANKBALANCER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_LEXORANKBALANCER` (
  `DISABLE_RANK_OPERATIONS` tinyint(1) NOT NULL,
  `FIELD_ID` bigint(20) NOT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `REBALANCE_TIME` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_LEXORANKBALANCER`
--

LOCK TABLES `AO_60DB71_LEXORANKBALANCER` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_LEXORANKBALANCER` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_LEXORANKBALANCER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_NONWORKINGDAY`
--

DROP TABLE IF EXISTS `AO_60DB71_NONWORKINGDAY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_NONWORKINGDAY` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ISO8601_DATE` varchar(255) COLLATE utf8_bin NOT NULL,
  `WORKING_DAYS_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_non1145824037` (`WORKING_DAYS_ID`),
  CONSTRAINT `fk_ao_60db71_nonworkingday_working_days_id` FOREIGN KEY (`WORKING_DAYS_ID`) REFERENCES `AO_60DB71_WORKINGDAYS` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_NONWORKINGDAY`
--

LOCK TABLES `AO_60DB71_NONWORKINGDAY` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_NONWORKINGDAY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_NONWORKINGDAY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_QUICKFILTER`
--

DROP TABLE IF EXISTS `AO_60DB71_QUICKFILTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_QUICKFILTER` (
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LONG_QUERY` longtext COLLATE utf8_bin,
  `NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `POS` int(11) NOT NULL DEFAULT '0',
  `QUERY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_qui432573905` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_quickfilter_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_QUICKFILTER`
--

LOCK TABLES `AO_60DB71_QUICKFILTER` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_QUICKFILTER` DISABLE KEYS */;
INSERT INTO `AO_60DB71_QUICKFILTER` VALUES ('gh.rapid.quickfilters.only.my.issues.desc',1,'assignee = currentUser()','gh.rapid.quickfilters.only.my.issues',0,NULL,1),('gh.rapid.quickfilters.recently.updated.desc',2,'updatedDate >= -1d','gh.rapid.quickfilters.recently.updated',1,NULL,1),('gh.rapid.quickfilters.only.my.issues.desc',3,'assignee = currentUser()','gh.rapid.quickfilters.only.my.issues',0,NULL,2),('gh.rapid.quickfilters.recently.updated.desc',4,'updatedDate >= -1d','gh.rapid.quickfilters.recently.updated',1,NULL,2),('gh.rapid.quickfilters.only.my.issues.desc',5,'assignee = currentUser()','gh.rapid.quickfilters.only.my.issues',0,NULL,3),('gh.rapid.quickfilters.recently.updated.desc',6,'updatedDate >= -1d','gh.rapid.quickfilters.recently.updated',1,NULL,3);
/*!40000 ALTER TABLE `AO_60DB71_QUICKFILTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_RANKABLEOBJECT`
--

DROP TABLE IF EXISTS `AO_60DB71_RANKABLEOBJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_RANKABLEOBJECT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_RANKABLEOBJECT`
--

LOCK TABLES `AO_60DB71_RANKABLEOBJECT` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_RANKABLEOBJECT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_RANKABLEOBJECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_RANK_ISSUE_LINK`
--

DROP TABLE IF EXISTS `AO_60DB71_RANK_ISSUE_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_RANK_ISSUE_LINK` (
  `ISSUE_ID` bigint(20) NOT NULL,
  `NEXT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ISSUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_RANK_ISSUE_LINK`
--

LOCK TABLES `AO_60DB71_RANK_ISSUE_LINK` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_RANK_ISSUE_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_RANK_ISSUE_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_RAPIDVIEW`
--

DROP TABLE IF EXISTS `AO_60DB71_RAPIDVIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_RAPIDVIEW` (
  `CARD_COLOR_STRATEGY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `OWNER_USER_NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `SAVED_FILTER_ID` bigint(20) NOT NULL,
  `SHOW_DAYS_IN_COLUMN` tinyint(1) DEFAULT NULL,
  `SPRINTS_ENABLED` tinyint(1) DEFAULT NULL,
  `SPRINT_MARKERS_MIGRATED` tinyint(1) DEFAULT NULL,
  `SWIMLANE_STRATEGY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_RAPIDVIEW`
--

LOCK TABLES `AO_60DB71_RAPIDVIEW` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_RAPIDVIEW` DISABLE KEYS */;
INSERT INTO `AO_60DB71_RAPIDVIEW` VALUES ('none',1,'DEMO board','suja',10000,0,1,1,'parentChild'),('none',2,'DEMO board','user2',10001,0,1,1,'parentChild'),('none',3,'DEMO board','jenkins',10002,0,1,1,'parentChild');
/*!40000 ALTER TABLE `AO_60DB71_RAPIDVIEW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_SPRINT`
--

DROP TABLE IF EXISTS `AO_60DB71_SPRINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_SPRINT` (
  `CLOSED` tinyint(1) NOT NULL,
  `COMPLETE_DATE` bigint(20) DEFAULT NULL,
  `END_DATE` bigint(20) DEFAULT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `RAPID_VIEW_ID` bigint(20) DEFAULT NULL,
  `SEQUENCE` bigint(20) DEFAULT NULL,
  `STARTED` tinyint(1) DEFAULT NULL,
  `START_DATE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_spr1457658269` (`SEQUENCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_SPRINT`
--

LOCK TABLES `AO_60DB71_SPRINT` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_SPRINT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_SPRINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_SPRINTMARKER`
--

DROP TABLE IF EXISTS `AO_60DB71_SPRINTMARKER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_SPRINTMARKER` (
  `ID` bigint(20) NOT NULL DEFAULT '0',
  `MARKER_CONTEXT` bigint(20) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_SPRINTMARKER`
--

LOCK TABLES `AO_60DB71_SPRINTMARKER` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_SPRINTMARKER` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_SPRINTMARKER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_STATSFIELD`
--

DROP TABLE IF EXISTS `AO_60DB71_STATSFIELD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_STATSFIELD` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  `TYPE_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_sta1907922871` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_statsfield_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_STATSFIELD`
--

LOCK TABLES `AO_60DB71_STATSFIELD` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_STATSFIELD` DISABLE KEYS */;
INSERT INTO `AO_60DB71_STATSFIELD` VALUES (1,1,'none'),(2,2,'none'),(3,3,'none');
/*!40000 ALTER TABLE `AO_60DB71_STATSFIELD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_SUBQUERY`
--

DROP TABLE IF EXISTS `AO_60DB71_SUBQUERY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_SUBQUERY` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LONG_QUERY` longtext COLLATE utf8_bin,
  `QUERY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RAPID_VIEW_ID` bigint(20) DEFAULT NULL,
  `SECTION` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_sub730851836` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_subquery_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_SUBQUERY`
--

LOCK TABLES `AO_60DB71_SUBQUERY` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_SUBQUERY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_SUBQUERY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_SWIMLANE`
--

DROP TABLE IF EXISTS `AO_60DB71_SWIMLANE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_SWIMLANE` (
  `DEFAULT_LANE` tinyint(1) NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LONG_QUERY` longtext COLLATE utf8_bin,
  `NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `POS` int(11) NOT NULL DEFAULT '0',
  `QUERY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_swi1429284592` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_swimlane_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_SWIMLANE`
--

LOCK TABLES `AO_60DB71_SWIMLANE` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_SWIMLANE` DISABLE KEYS */;
INSERT INTO `AO_60DB71_SWIMLANE` VALUES (1,'',1,'','gh.rapid.swimlane.default.name',0,NULL,1),(1,'',2,'','gh.rapid.swimlane.default.name',0,NULL,2),(1,'',3,'','gh.rapid.swimlane.default.name',0,NULL,3);
/*!40000 ALTER TABLE `AO_60DB71_SWIMLANE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_TRACKINGSTATISTIC`
--

DROP TABLE IF EXISTS `AO_60DB71_TRACKINGSTATISTIC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_TRACKINGSTATISTIC` (
  `FIELD_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  `TYPE_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_tra1711190333` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_trackingstatistic_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_TRACKINGSTATISTIC`
--

LOCK TABLES `AO_60DB71_TRACKINGSTATISTIC` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_TRACKINGSTATISTIC` DISABLE KEYS */;
INSERT INTO `AO_60DB71_TRACKINGSTATISTIC` VALUES (NULL,1,1,'none'),(NULL,2,2,'none'),(NULL,3,3,'none');
/*!40000 ALTER TABLE `AO_60DB71_TRACKINGSTATISTIC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_VERSION`
--

DROP TABLE IF EXISTS `AO_60DB71_VERSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_VERSION` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `START_DATE` bigint(20) DEFAULT NULL,
  `VERSION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_VERSION`
--

LOCK TABLES `AO_60DB71_VERSION` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_VERSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_60DB71_VERSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_60DB71_WORKINGDAYS`
--

DROP TABLE IF EXISTS `AO_60DB71_WORKINGDAYS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_60DB71_WORKINGDAYS` (
  `FRIDAY` tinyint(1) NOT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MONDAY` tinyint(1) NOT NULL,
  `RAPID_VIEW_ID` bigint(20) NOT NULL,
  `SATURDAY` tinyint(1) NOT NULL,
  `SUNDAY` tinyint(1) NOT NULL,
  `THURSDAY` tinyint(1) NOT NULL,
  `TIMEZONE` varchar(255) COLLATE utf8_bin NOT NULL,
  `TUESDAY` tinyint(1) NOT NULL,
  `WEDNESDAY` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_60db71_wor1205491794` (`RAPID_VIEW_ID`),
  CONSTRAINT `fk_ao_60db71_workingdays_rapid_view_id` FOREIGN KEY (`RAPID_VIEW_ID`) REFERENCES `AO_60DB71_RAPIDVIEW` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_60DB71_WORKINGDAYS`
--

LOCK TABLES `AO_60DB71_WORKINGDAYS` WRITE;
/*!40000 ALTER TABLE `AO_60DB71_WORKINGDAYS` DISABLE KEYS */;
INSERT INTO `AO_60DB71_WORKINGDAYS` VALUES (1,1,1,1,0,0,1,'defaultTimeZoneId',1,1),(1,2,1,2,0,0,1,'defaultTimeZoneId',1,1),(1,3,1,3,0,0,1,'defaultTimeZoneId',1,1);
/*!40000 ALTER TABLE `AO_60DB71_WORKINGDAYS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_97EDAB_USERINVITATION`
--

DROP TABLE IF EXISTS `AO_97EDAB_USERINVITATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_97EDAB_USERINVITATION` (
  `APPLICATION_KEYS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXPIRY` datetime DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REDEEMED` tinyint(1) DEFAULT NULL,
  `SENDER_USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_97EDAB_USERINVITATION`
--

LOCK TABLES `AO_97EDAB_USERINVITATION` WRITE;
/*!40000 ALTER TABLE `AO_97EDAB_USERINVITATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_97EDAB_USERINVITATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_A0B856_WEB_HOOK_LISTENER_AO`
--

DROP TABLE IF EXISTS `AO_A0B856_WEB_HOOK_LISTENER_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_A0B856_WEB_HOOK_LISTENER_AO` (
  `DESCRIPTION` longtext COLLATE utf8_bin,
  `ENABLED` tinyint(1) DEFAULT NULL,
  `EVENTS` longtext COLLATE utf8_bin,
  `EXCLUDE_BODY` tinyint(1) DEFAULT NULL,
  `FILTERS` longtext COLLATE utf8_bin,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LAST_UPDATED` datetime NOT NULL,
  `LAST_UPDATED_USER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME` longtext COLLATE utf8_bin NOT NULL,
  `PARAMETERS` longtext COLLATE utf8_bin,
  `REGISTRATION_METHOD` varchar(255) COLLATE utf8_bin NOT NULL,
  `URL` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_A0B856_WEB_HOOK_LISTENER_AO`
--

LOCK TABLES `AO_A0B856_WEB_HOOK_LISTENER_AO` WRITE;
/*!40000 ALTER TABLE `AO_A0B856_WEB_HOOK_LISTENER_AO` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_A0B856_WEB_HOOK_LISTENER_AO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_A44657_HEALTH_CHECK_ENTITY`
--

DROP TABLE IF EXISTS `AO_A44657_HEALTH_CHECK_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_A44657_HEALTH_CHECK_ENTITY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_A44657_HEALTH_CHECK_ENTITY`
--

LOCK TABLES `AO_A44657_HEALTH_CHECK_ENTITY` WRITE;
/*!40000 ALTER TABLE `AO_A44657_HEALTH_CHECK_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_A44657_HEALTH_CHECK_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_B9A0F0_APPLIED_TEMPLATE`
--

DROP TABLE IF EXISTS `AO_B9A0F0_APPLIED_TEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_B9A0F0_APPLIED_TEMPLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` bigint(20) DEFAULT '0',
  `PROJECT_TEMPLATE_MODULE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT_TEMPLATE_WEB_ITEM_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_B9A0F0_APPLIED_TEMPLATE`
--

LOCK TABLES `AO_B9A0F0_APPLIED_TEMPLATE` WRITE;
/*!40000 ALTER TABLE `AO_B9A0F0_APPLIED_TEMPLATE` DISABLE KEYS */;
INSERT INTO `AO_B9A0F0_APPLIED_TEMPLATE` VALUES (1,10000,'com.pyxis.greenhopper.jira:gh-scrum-template','com.pyxis.greenhopper.jira:gh-scrum-template'),(2,10001,'com.pyxis.greenhopper.jira:gh-scrum-template','com.pyxis.greenhopper.jira:gh-scrum-template'),(3,10002,'com.pyxis.greenhopper.jira:gh-scrum-template','com.pyxis.greenhopper.jira:gh-scrum-template');
/*!40000 ALTER TABLE `AO_B9A0F0_APPLIED_TEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_CFF990_AOTRANSITION_FAILURE`
--

DROP TABLE IF EXISTS `AO_CFF990_AOTRANSITION_FAILURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_CFF990_AOTRANSITION_FAILURE` (
  `ERROR_MESSAGES` longtext COLLATE utf8_bin,
  `FAILURE_TIME` datetime DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_ID` bigint(20) DEFAULT '0',
  `LOG_REFERRAL_HASH` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRANSITION_ID` bigint(20) DEFAULT '0',
  `TRIGGER_ID` bigint(20) DEFAULT '0',
  `USER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `WORKFLOW_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_CFF990_AOTRANSITION_FAILURE`
--

LOCK TABLES `AO_CFF990_AOTRANSITION_FAILURE` WRITE;
/*!40000 ALTER TABLE `AO_CFF990_AOTRANSITION_FAILURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_CFF990_AOTRANSITION_FAILURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_BRANCH`
--

DROP TABLE IF EXISTS `AO_E8B6CC_BRANCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_BRANCH` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REPOSITORY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_bra405461593` (`REPOSITORY_ID`),
  CONSTRAINT `fk_ao_e8b6cc_branch_repository_id` FOREIGN KEY (`REPOSITORY_ID`) REFERENCES `AO_E8B6CC_REPOSITORY_MAPPING` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_BRANCH`
--

LOCK TABLES `AO_E8B6CC_BRANCH` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_BRANCH` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_BRANCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_BRANCH_HEAD_MAPPING`
--

DROP TABLE IF EXISTS `AO_E8B6CC_BRANCH_HEAD_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_BRANCH_HEAD_MAPPING` (
  `BRANCH_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HEAD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPOSITORY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_bra1368852151` (`REPOSITORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_BRANCH_HEAD_MAPPING`
--

LOCK TABLES `AO_E8B6CC_BRANCH_HEAD_MAPPING` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_BRANCH_HEAD_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_BRANCH_HEAD_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_CHANGESET_MAPPING`
--

DROP TABLE IF EXISTS `AO_E8B6CC_CHANGESET_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_CHANGESET_MAPPING` (
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BRANCH` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `FILES_DATA` longtext COLLATE utf8_bin,
  `FILE_COUNT` int(11) DEFAULT '0',
  `FILE_DETAILS_JSON` longtext COLLATE utf8_bin,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_bin,
  `NODE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENTS_DATA` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RAW_AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RAW_NODE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REPOSITORY_ID` int(11) DEFAULT '0',
  `SMARTCOMMIT_AVAILABLE` tinyint(1) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_cha1483243924` (`NODE`),
  KEY `index_ao_e8b6cc_cha897886051` (`AUTHOR`),
  KEY `index_ao_e8b6cc_cha509722037` (`RAW_NODE`),
  KEY `index_ao_e8b6cc_cha1086340152` (`SMARTCOMMIT_AVAILABLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_CHANGESET_MAPPING`
--

LOCK TABLES `AO_E8B6CC_CHANGESET_MAPPING` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_CHANGESET_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_CHANGESET_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_COMMIT`
--

DROP TABLE IF EXISTS `AO_E8B6CC_COMMIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_COMMIT` (
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `AUTHOR_AVATAR_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATE` datetime NOT NULL,
  `DOMAIN_ID` int(11) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MERGE` tinyint(1) DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_bin,
  `NODE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RAW_AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_commit_node` (`NODE`),
  KEY `index_ao_e8b6cc_com1308336834` (`DOMAIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_COMMIT`
--

LOCK TABLES `AO_E8B6CC_COMMIT` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_COMMIT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_COMMIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_GIT_HUB_EVENT`
--

DROP TABLE IF EXISTS `AO_E8B6CC_GIT_HUB_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_GIT_HUB_EVENT` (
  `CREATED_AT` datetime NOT NULL,
  `GIT_HUB_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPOSITORY_ID` int(11) NOT NULL,
  `SAVE_POINT` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_git1804640320` (`REPOSITORY_ID`),
  KEY `index_ao_e8b6cc_git1120895454` (`GIT_HUB_ID`),
  CONSTRAINT `fk_ao_e8b6cc_git_hub_event_repository_id` FOREIGN KEY (`REPOSITORY_ID`) REFERENCES `AO_E8B6CC_REPOSITORY_MAPPING` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_GIT_HUB_EVENT`
--

LOCK TABLES `AO_E8B6CC_GIT_HUB_EVENT` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_GIT_HUB_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_GIT_HUB_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_ISSUE_MAPPING`
--

DROP TABLE IF EXISTS `AO_E8B6CC_ISSUE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_ISSUE_MAPPING` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NODE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REPOSITORY_URI` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_ISSUE_MAPPING`
--

LOCK TABLES `AO_E8B6CC_ISSUE_MAPPING` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_ISSUE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_ISSUE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_ISSUE_MAPPING_V2`
--

DROP TABLE IF EXISTS `AO_E8B6CC_ISSUE_MAPPING_V2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_ISSUE_MAPPING_V2` (
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BRANCH` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `FILES_DATA` longtext COLLATE utf8_bin,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_bin,
  `NODE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENTS_DATA` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RAW_AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RAW_NODE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REPOSITORY_ID` int(11) DEFAULT '0',
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_ISSUE_MAPPING_V2`
--

LOCK TABLES `AO_E8B6CC_ISSUE_MAPPING_V2` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_ISSUE_MAPPING_V2` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_ISSUE_MAPPING_V2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_ISSUE_TO_BRANCH`
--

DROP TABLE IF EXISTS `AO_E8B6CC_ISSUE_TO_BRANCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_ISSUE_TO_BRANCH` (
  `BRANCH_ID` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_iss1325927291` (`BRANCH_ID`),
  KEY `index_ao_e8b6cc_iss353204826` (`ISSUE_KEY`),
  CONSTRAINT `fk_ao_e8b6cc_issue_to_branch_branch_id` FOREIGN KEY (`BRANCH_ID`) REFERENCES `AO_E8B6CC_BRANCH` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_ISSUE_TO_BRANCH`
--

LOCK TABLES `AO_E8B6CC_ISSUE_TO_BRANCH` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_ISSUE_TO_BRANCH` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_ISSUE_TO_BRANCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_ISSUE_TO_CHANGESET`
--

DROP TABLE IF EXISTS `AO_E8B6CC_ISSUE_TO_CHANGESET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_ISSUE_TO_CHANGESET` (
  `CHANGESET_ID` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_iss1229805759` (`CHANGESET_ID`),
  KEY `index_ao_e8b6cc_iss648895902` (`PROJECT_KEY`),
  KEY `index_ao_e8b6cc_iss417950110` (`ISSUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_ISSUE_TO_CHANGESET`
--

LOCK TABLES `AO_E8B6CC_ISSUE_TO_CHANGESET` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_ISSUE_TO_CHANGESET` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_ISSUE_TO_CHANGESET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_MESSAGE`
--

DROP TABLE IF EXISTS `AO_E8B6CC_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_MESSAGE` (
  `ADDRESS` varchar(255) COLLATE utf8_bin NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAYLOAD` longtext COLLATE utf8_bin NOT NULL,
  `PAYLOAD_TYPE` varchar(255) COLLATE utf8_bin NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_mes1247039512` (`ADDRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_MESSAGE`
--

LOCK TABLES `AO_E8B6CC_MESSAGE` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_MESSAGE_QUEUE_ITEM`
--

DROP TABLE IF EXISTS `AO_E8B6CC_MESSAGE_QUEUE_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_MESSAGE_QUEUE_ITEM` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LAST_FAILED` datetime DEFAULT NULL,
  `MESSAGE_ID` int(11) NOT NULL,
  `QUEUE` varchar(255) COLLATE utf8_bin NOT NULL,
  `RETRIES_COUNT` int(11) NOT NULL DEFAULT '0',
  `STATE` varchar(255) COLLATE utf8_bin NOT NULL,
  `STATE_INFO` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_mes59146529` (`STATE`),
  KEY `index_ao_e8b6cc_mes60959905` (`QUEUE`),
  KEY `index_ao_e8b6cc_mes344532677` (`MESSAGE_ID`),
  CONSTRAINT `fk_ao_e8b6cc_message_queue_item_message_id` FOREIGN KEY (`MESSAGE_ID`) REFERENCES `AO_E8B6CC_MESSAGE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_MESSAGE_QUEUE_ITEM`
--

LOCK TABLES `AO_E8B6CC_MESSAGE_QUEUE_ITEM` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_MESSAGE_QUEUE_ITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_MESSAGE_QUEUE_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_MESSAGE_TAG`
--

DROP TABLE IF EXISTS `AO_E8B6CC_MESSAGE_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_MESSAGE_TAG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MESSAGE_ID` int(11) DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_mes1648007831` (`TAG`),
  KEY `index_ao_e8b6cc_mes1391090780` (`MESSAGE_ID`),
  CONSTRAINT `fk_ao_e8b6cc_message_tag_message_id` FOREIGN KEY (`MESSAGE_ID`) REFERENCES `AO_E8B6CC_MESSAGE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_MESSAGE_TAG`
--

LOCK TABLES `AO_E8B6CC_MESSAGE_TAG` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_MESSAGE_TAG` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_MESSAGE_TAG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_ORGANIZATION_MAPPING`
--

DROP TABLE IF EXISTS `AO_E8B6CC_ORGANIZATION_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_ORGANIZATION_MAPPING` (
  `ACCESS_TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ADMIN_PASSWORD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ADMIN_USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `AUTOLINK_NEW_REPOS` tinyint(1) DEFAULT NULL,
  `DEFAULT_GROUPS_SLUGS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DVCS_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HOST_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OAUTH_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OAUTH_SECRET` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PRINCIPAL_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SMARTCOMMITS_FOR_NEW_REPOS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_org1513110290` (`DVCS_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_ORGANIZATION_MAPPING`
--

LOCK TABLES `AO_E8B6CC_ORGANIZATION_MAPPING` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_ORGANIZATION_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_ORGANIZATION_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_PROJECT_MAPPING`
--

DROP TABLE IF EXISTS `AO_E8B6CC_PROJECT_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_PROJECT_MAPPING` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REPOSITORY_URI` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_PROJECT_MAPPING`
--

LOCK TABLES `AO_E8B6CC_PROJECT_MAPPING` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_PROJECT_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_PROJECT_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_PROJECT_MAPPING_V2`
--

DROP TABLE IF EXISTS `AO_E8B6CC_PROJECT_MAPPING_V2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_PROJECT_MAPPING_V2` (
  `ACCESS_TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ADMIN_PASSWORD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ADMIN_USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LAST_COMMIT_DATE` datetime DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REPOSITORY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REPOSITORY_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REPOSITORY_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_PROJECT_MAPPING_V2`
--

LOCK TABLES `AO_E8B6CC_PROJECT_MAPPING_V2` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_PROJECT_MAPPING_V2` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_PROJECT_MAPPING_V2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_PR_ISSUE_KEY`
--

DROP TABLE IF EXISTS `AO_E8B6CC_PR_ISSUE_KEY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_PR_ISSUE_KEY` (
  `DOMAIN_ID` int(11) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISSUE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PULL_REQUEST_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_pr_2106805302` (`ISSUE_KEY`),
  KEY `index_ao_e8b6cc_pr_281193494` (`PULL_REQUEST_ID`),
  KEY `index_ao_e8b6cc_pr_1639282617` (`DOMAIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_PR_ISSUE_KEY`
--

LOCK TABLES `AO_E8B6CC_PR_ISSUE_KEY` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_PR_ISSUE_KEY` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_PR_ISSUE_KEY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_PR_PARTICIPANT`
--

DROP TABLE IF EXISTS `AO_E8B6CC_PR_PARTICIPANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_PR_PARTICIPANT` (
  `APPROVED` tinyint(1) DEFAULT NULL,
  `DOMAIN_ID` int(11) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PULL_REQUEST_ID` int(11) DEFAULT NULL,
  `ROLE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_pr_1105917040` (`PULL_REQUEST_ID`),
  KEY `index_ao_e8b6cc_pr_758084799` (`DOMAIN_ID`),
  CONSTRAINT `fk_ao_e8b6cc_pr_participant_pull_request_id` FOREIGN KEY (`PULL_REQUEST_ID`) REFERENCES `AO_E8B6CC_PULL_REQUEST` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_PR_PARTICIPANT`
--

LOCK TABLES `AO_E8B6CC_PR_PARTICIPANT` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_PR_PARTICIPANT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_PR_PARTICIPANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_PR_TO_COMMIT`
--

DROP TABLE IF EXISTS `AO_E8B6CC_PR_TO_COMMIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_PR_TO_COMMIT` (
  `COMMIT_ID` int(11) NOT NULL,
  `DOMAIN_ID` int(11) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REQUEST_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_pr_1458633226` (`COMMIT_ID`),
  KEY `index_ao_e8b6cc_pr_1045528152` (`REQUEST_ID`),
  KEY `index_ao_e8b6cc_pr_685151049` (`DOMAIN_ID`),
  CONSTRAINT `fk_ao_e8b6cc_pr_to_commit_commit_id` FOREIGN KEY (`COMMIT_ID`) REFERENCES `AO_E8B6CC_COMMIT` (`ID`),
  CONSTRAINT `fk_ao_e8b6cc_pr_to_commit_request_id` FOREIGN KEY (`REQUEST_ID`) REFERENCES `AO_E8B6CC_PULL_REQUEST` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_PR_TO_COMMIT`
--

LOCK TABLES `AO_E8B6CC_PR_TO_COMMIT` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_PR_TO_COMMIT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_PR_TO_COMMIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_PULL_REQUEST`
--

DROP TABLE IF EXISTS `AO_E8B6CC_PULL_REQUEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_PULL_REQUEST` (
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `COMMENT_COUNT` int(11) DEFAULT '0',
  `CREATED_ON` datetime DEFAULT NULL,
  `DESTINATION_BRANCH` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOMAIN_ID` int(11) NOT NULL DEFAULT '0',
  `EXECUTED_BY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LAST_STATUS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REMOTE_ID` bigint(20) DEFAULT NULL,
  `SOURCE_BRANCH` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SOURCE_REPO` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TO_REPOSITORY_ID` int(11) DEFAULT '0',
  `UPDATED_ON` datetime DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_pul602811170` (`REMOTE_ID`),
  KEY `index_ao_e8b6cc_pul1448445182` (`TO_REPOSITORY_ID`),
  KEY `index_ao_e8b6cc_pul1230717024` (`DOMAIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_PULL_REQUEST`
--

LOCK TABLES `AO_E8B6CC_PULL_REQUEST` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_PULL_REQUEST` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_PULL_REQUEST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_REPOSITORY_MAPPING`
--

DROP TABLE IF EXISTS `AO_E8B6CC_REPOSITORY_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_REPOSITORY_MAPPING` (
  `ACTIVITY_LAST_SYNC` datetime DEFAULT NULL,
  `DELETED` tinyint(1) DEFAULT NULL,
  `FORK` tinyint(1) DEFAULT NULL,
  `FORK_OF_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FORK_OF_OWNER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FORK_OF_SLUG` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LAST_CHANGESET_NODE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_COMMIT_DATE` datetime DEFAULT NULL,
  `LINKED` tinyint(1) DEFAULT NULL,
  `LOGO` longtext COLLATE utf8_bin,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ORGANIZATION_ID` int(11) DEFAULT '0',
  `SLUG` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SMARTCOMMITS_ENABLED` tinyint(1) DEFAULT NULL,
  `UPDATE_LINK_AUTHORISED` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_rep702725269` (`ORGANIZATION_ID`),
  KEY `index_ao_e8b6cc_rep93578901` (`LINKED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_REPOSITORY_MAPPING`
--

LOCK TABLES `AO_E8B6CC_REPOSITORY_MAPPING` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_REPOSITORY_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_REPOSITORY_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_REPO_TO_CHANGESET`
--

DROP TABLE IF EXISTS `AO_E8B6CC_REPO_TO_CHANGESET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_REPO_TO_CHANGESET` (
  `CHANGESET_ID` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPOSITORY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_rep922992576` (`CHANGESET_ID`),
  KEY `index_ao_e8b6cc_rep1082901832` (`REPOSITORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_REPO_TO_CHANGESET`
--

LOCK TABLES `AO_E8B6CC_REPO_TO_CHANGESET` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_REPO_TO_CHANGESET` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_REPO_TO_CHANGESET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_REPO_TO_PROJECT`
--

DROP TABLE IF EXISTS `AO_E8B6CC_REPO_TO_PROJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_REPO_TO_PROJECT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REPOSITORY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_rep1928770529` (`REPOSITORY_ID`),
  CONSTRAINT `fk_ao_e8b6cc_repo_to_project_repository_id` FOREIGN KEY (`REPOSITORY_ID`) REFERENCES `AO_E8B6CC_REPOSITORY_MAPPING` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_REPO_TO_PROJECT`
--

LOCK TABLES `AO_E8B6CC_REPO_TO_PROJECT` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_REPO_TO_PROJECT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_REPO_TO_PROJECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_SYNC_AUDIT_LOG`
--

DROP TABLE IF EXISTS `AO_E8B6CC_SYNC_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_SYNC_AUDIT_LOG` (
  `END_DATE` datetime DEFAULT NULL,
  `EXC_TRACE` longtext COLLATE utf8_bin,
  `FIRST_REQUEST_DATE` datetime DEFAULT NULL,
  `FLIGHT_TIME_MS` int(11) DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NUM_REQUESTS` int(11) DEFAULT '0',
  `REPO_ID` int(11) DEFAULT '0',
  `START_DATE` datetime DEFAULT NULL,
  `SYNC_STATUS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SYNC_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOTAL_ERRORS` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_syn203792807` (`REPO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_SYNC_AUDIT_LOG`
--

LOCK TABLES `AO_E8B6CC_SYNC_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_SYNC_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_SYNC_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AO_E8B6CC_SYNC_EVENT`
--

DROP TABLE IF EXISTS `AO_E8B6CC_SYNC_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_E8B6CC_SYNC_EVENT` (
  `EVENT_CLASS` longtext COLLATE utf8_bin NOT NULL,
  `EVENT_DATE` datetime NOT NULL,
  `EVENT_JSON` longtext COLLATE utf8_bin NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPO_ID` int(11) NOT NULL DEFAULT '0',
  `SCHEDULED_SYNC` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_e8b6cc_syn493078035` (`REPO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AO_E8B6CC_SYNC_EVENT`
--

LOCK TABLES `AO_E8B6CC_SYNC_EVENT` WRITE;
/*!40000 ALTER TABLE `AO_E8B6CC_SYNC_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `AO_E8B6CC_SYNC_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_BLOB_TRIGGERS`
--

LOCK TABLES `JQUARTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_CALENDARS`
--

DROP TABLE IF EXISTS `JQUARTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `CALENDAR` blob,
  PRIMARY KEY (`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_CALENDARS`
--

LOCK TABLES `JQUARTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `CRON_EXPRESSION` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_CRON_TRIGGERS`
--

LOCK TABLES `JQUARTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `ENTRY_ID` varchar(95) COLLATE utf8_bin NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `INSTANCE_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `FIRED_TIME` bigint(20) DEFAULT NULL,
  `SCHED_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `STATE` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`),
  KEY `idx_qrtz_ft_trig_inst_name` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `idx_qrtz_ft_inst_job_req_rcvry` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `idx_qrtz_ft_j_g` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_ft_jg` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_ft_t_g` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_ft_tg` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_FIRED_TRIGGERS`
--

LOCK TABLES `JQUARTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `JQUARTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_j_req_recovery` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `idx_qrtz_j_grp` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_JOB_DETAILS`
--

LOCK TABLES `JQUARTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_JOB_LISTENERS`
--

DROP TABLE IF EXISTS `JQUARTZ_JOB_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_JOB_LISTENERS` (
  `JOB_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `JOB_LISTENER` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`,`JOB_LISTENER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_JOB_LISTENERS`
--

LOCK TABLES `JQUARTZ_JOB_LISTENERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_JOB_LISTENERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_JOB_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_LOCKS`
--

DROP TABLE IF EXISTS `JQUARTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_NAME` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_LOCKS`
--

LOCK TABLES `JQUARTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `JQUARTZ_LOCKS` VALUES (NULL,'CALENDAR_ACCESS'),(NULL,'JOB_ACCESS'),(NULL,'MISFIRE_ACCESS'),(NULL,'STATE_ACCESS'),(NULL,'TRIGGER_ACCESS');
/*!40000 ALTER TABLE `JQUARTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `JQUARTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `JQUARTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `JQUARTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `INSTANCE_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) DEFAULT NULL,
  `CHECKIN_INTERVAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_SCHEDULER_STATE`
--

LOCK TABLES `JQUARTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `REPEAT_COUNT` bigint(20) DEFAULT NULL,
  `REPEAT_INTERVAL` bigint(20) DEFAULT NULL,
  `TIMES_TRIGGERED` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `JQUARTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `JQUARTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME` bigint(20) DEFAULT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `MISFIRE_INSTR` smallint(5) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_t_j` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_t_jg` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_t_c` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `idx_qrtz_j_g` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_j_state` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_n_state` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_n_g_state` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_next_fire_time` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_st` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_misfire` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_st_misfire` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_nft_st_misfire_grp` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_TRIGGERS`
--

LOCK TABLES `JQUARTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JQUARTZ_TRIGGER_LISTENERS`
--

DROP TABLE IF EXISTS `JQUARTZ_TRIGGER_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_TRIGGER_LISTENERS` (
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_LISTENER` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`TRIGGER_GROUP`,`TRIGGER_LISTENER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JQUARTZ_TRIGGER_LISTENERS`
--

LOCK TABLES `JQUARTZ_TRIGGER_LISTENERS` WRITE;
/*!40000 ALTER TABLE `JQUARTZ_TRIGGER_LISTENERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `JQUARTZ_TRIGGER_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OS_CURRENTSTEP`
--

DROP TABLE IF EXISTS `OS_CURRENTSTEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_CURRENTSTEP` (
  `ID` decimal(18,0) NOT NULL,
  `ENTRY_ID` decimal(18,0) DEFAULT NULL,
  `STEP_ID` decimal(9,0) DEFAULT NULL,
  `ACTION_ID` decimal(9,0) DEFAULT NULL,
  `OWNER` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CALLER` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `wf_entryid` (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OS_CURRENTSTEP`
--

LOCK TABLES `OS_CURRENTSTEP` WRITE;
/*!40000 ALTER TABLE `OS_CURRENTSTEP` DISABLE KEYS */;
INSERT INTO `OS_CURRENTSTEP` VALUES (10004,10002,6,0,'','2016-02-16 15:06:47',NULL,NULL,'Done',NULL);
/*!40000 ALTER TABLE `OS_CURRENTSTEP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OS_CURRENTSTEP_PREV`
--

DROP TABLE IF EXISTS `OS_CURRENTSTEP_PREV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_CURRENTSTEP_PREV` (
  `ID` decimal(18,0) NOT NULL,
  `PREVIOUS_ID` decimal(18,0) NOT NULL,
  PRIMARY KEY (`ID`,`PREVIOUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OS_CURRENTSTEP_PREV`
--

LOCK TABLES `OS_CURRENTSTEP_PREV` WRITE;
/*!40000 ALTER TABLE `OS_CURRENTSTEP_PREV` DISABLE KEYS */;
INSERT INTO `OS_CURRENTSTEP_PREV` VALUES (10001,10000),(10004,10003);
/*!40000 ALTER TABLE `OS_CURRENTSTEP_PREV` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OS_HISTORYSTEP`
--

DROP TABLE IF EXISTS `OS_HISTORYSTEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_HISTORYSTEP` (
  `ID` decimal(18,0) NOT NULL,
  `ENTRY_ID` decimal(18,0) DEFAULT NULL,
  `STEP_ID` decimal(9,0) DEFAULT NULL,
  `ACTION_ID` decimal(9,0) DEFAULT NULL,
  `OWNER` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CALLER` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `historystep_entryid` (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OS_HISTORYSTEP`
--

LOCK TABLES `OS_HISTORYSTEP` WRITE;
/*!40000 ALTER TABLE `OS_HISTORYSTEP` DISABLE KEYS */;
INSERT INTO `OS_HISTORYSTEP` VALUES (10003,10002,1,21,'','2016-02-16 15:06:38',NULL,'2016-02-16 15:06:47','Not Done','jenkins');
/*!40000 ALTER TABLE `OS_HISTORYSTEP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OS_HISTORYSTEP_PREV`
--

DROP TABLE IF EXISTS `OS_HISTORYSTEP_PREV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_HISTORYSTEP_PREV` (
  `ID` decimal(18,0) NOT NULL,
  `PREVIOUS_ID` decimal(18,0) NOT NULL,
  PRIMARY KEY (`ID`,`PREVIOUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OS_HISTORYSTEP_PREV`
--

LOCK TABLES `OS_HISTORYSTEP_PREV` WRITE;
/*!40000 ALTER TABLE `OS_HISTORYSTEP_PREV` DISABLE KEYS */;
/*!40000 ALTER TABLE `OS_HISTORYSTEP_PREV` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OS_WFENTRY`
--

DROP TABLE IF EXISTS `OS_WFENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_WFENTRY` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `INITIALIZED` decimal(9,0) DEFAULT NULL,
  `STATE` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OS_WFENTRY`
--

LOCK TABLES `OS_WFENTRY` WRITE;
/*!40000 ALTER TABLE `OS_WFENTRY` DISABLE KEYS */;
INSERT INTO `OS_WFENTRY` VALUES (10002,'Software Simplified Workflow for Project DEMO',NULL,1);
/*!40000 ALTER TABLE `OS_WFENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEQUENCE_VALUE_ITEM`
--

DROP TABLE IF EXISTS `SEQUENCE_VALUE_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE_VALUE_ITEM` (
  `SEQ_NAME` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQ_ID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE_VALUE_ITEM`
--

LOCK TABLES `SEQUENCE_VALUE_ITEM` WRITE;
/*!40000 ALTER TABLE `SEQUENCE_VALUE_ITEM` DISABLE KEYS */;
INSERT INTO `SEQUENCE_VALUE_ITEM` VALUES ('Action',10100),('ApplicationUser',10100),('AuditChangedValue',10200),('AuditItem',10100),('AuditLog',10100),('Avatar',10500),('ChangeGroup',10100),('ChangeItem',10100),('ClusteredJob',10200),('ConfigurationContext',10200),('CustomField',10100),('CustomFieldOption',10100),('Directory',10100),('EntityProperty',10100),('EntityPropertyIndexDocument',10100),('EventType',10000),('Feature',10100),('FieldConfigScheme',10200),('FieldConfigSchemeIssueType',10300),('FieldConfiguration',10200),('FieldLayout',10100),('FieldLayoutItem',10200),('FieldScreen',10100),('FieldScreenLayoutItem',10300),('FieldScreenScheme',10100),('FieldScreenSchemeItem',10200),('FieldScreenTab',10200),('GadgetUserPreference',10100),('GenericConfiguration',10200),('GlobalPermissionEntry',10200),('Group',10110),('Issue',10100),('IssueLinkType',10300),('IssueType',10100),('IssueTypeScreenScheme',10100),('IssueTypeScreenSchemeEntity',10200),('LicenseRoleDefault',10100),('LicenseRoleGroup',10100),('ListenerConfig',10300),('ManagedConfigurationItem',10100),('Membership',10100),('Notification',10200),('NotificationScheme',10100),('OAuthConsumer',10100),('OSCurrentStep',10100),('OSPropertyEntry',10600),('OSWorkflowEntry',10100),('OptionConfiguration',10300),('PermissionScheme',10100),('PluginVersion',10200),('PortalPage',10100),('PortletConfiguration',10100),('Priority',10000),('ProductLicense',10100),('Project',10100),('ProjectKey',10100),('ProjectRole',10100),('ProjectRoleActor',10200),('Resolution',10100),('RunDetails',11200),('SchemePermissions',10500),('SearchRequest',10100),('ServiceConfig',10200),('SharePermissions',10200),('Status',10100),('TaskIdSequence',10100),('UpgradeHistory',10200),('UpgradeVersionHistory',10100),('User',10100),('UserAttribute',10100),('UserHistoryItem',10100),('Workflow',10200),('WorkflowScheme',10200),('WorkflowSchemeEntity',10200),('Worklog',10100);
/*!40000 ALTER TABLE `SEQUENCE_VALUE_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `ID` decimal(18,0) NOT NULL,
  `user_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_user_key` (`user_key`),
  UNIQUE KEY `uk_lower_user_name` (`lower_user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (10000,'suja','suja'),(10001,'user33','user33'),(10002,'msysdev1','msysdev1'),(10003,'user2','user2'),(10004,'jenkins','jenkins'),(10005,'user34','user34'),(10006,'user42','user42');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_changed_value`
--

DROP TABLE IF EXISTS `audit_changed_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_changed_value` (
  `ID` decimal(18,0) NOT NULL,
  `LOG_ID` decimal(18,0) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELTA_FROM` longtext COLLATE utf8_bin,
  `DELTA_TO` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `idx_changed_value_log_id` (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_changed_value`
--

LOCK TABLES `audit_changed_value` WRITE;
/*!40000 ALTER TABLE `audit_changed_value` DISABLE KEYS */;
INSERT INTO `audit_changed_value` VALUES (10000,10001,'Permission','','Create Shared Objects'),(10001,10001,'Group','','jira-software-users'),(10002,10002,'Permission','','Manage Group Filter Subscriptions'),(10003,10002,'Group','','jira-software-users'),(10004,10003,'Permission','','Browse Users'),(10005,10003,'Group','','jira-software-users'),(10006,10004,'Permission','','Bulk Change'),(10007,10004,'Group','','jira-software-users'),(10008,10005,'Name',NULL,'Flagged'),(10009,10005,'Description',NULL,'Allows to flag issues with impediments.'),(10010,10005,'Type',NULL,'Checkboxes'),(10011,10006,'Name',NULL,'Epic/Theme'),(10012,10006,'Description',NULL,'Field that will help you regroup issues under an Epic or under a theme.'),(10013,10006,'Type',NULL,'Labels'),(10014,10007,'Name',NULL,'Story Points'),(10015,10007,'Description',NULL,'Measurement of complexity and/or size of a requirement.'),(10016,10007,'Type',NULL,'Number Field'),(10017,10008,'Name',NULL,'Business Value'),(10018,10008,'Description',NULL,'Measurement of business value of a requirement.'),(10019,10008,'Type',NULL,'Number Field'),(10020,10009,'Organisation',NULL,'Evaluation license'),(10021,10009,'Date Purchased',NULL,'15/Feb/16'),(10022,10009,'License Type',NULL,'JIRA Software (Server): Evaluation'),(10023,10009,'Server ID',NULL,'BLNH-X2WS-2DX5-N33V'),(10024,10009,'Support Entitlement Number (SEN)',NULL,'SEN-L7302911'),(10025,10009,'User Limit',NULL,'Unlimited'),(10026,10009,'jira-software',NULL,'-1'),(10027,10010,'Username',NULL,'suja'),(10028,10010,'Full name',NULL,'suja'),(10029,10010,'Email',NULL,'sujauddinmullick@yahoo.in'),(10030,10010,'Active / Inactive',NULL,'Active'),(10031,10012,'Permission','','Create Shared Objects'),(10032,10012,'Group','','jira-administrators'),(10033,10013,'Permission','','Bulk Change'),(10034,10013,'Group','','jira-administrators'),(10035,10014,'Permission','','Browse Users'),(10036,10014,'Group','','jira-administrators'),(10037,10015,'Permission','','Manage Group Filter Subscriptions'),(10038,10015,'Group','','jira-administrators'),(10039,10017,'Name',NULL,'Rank'),(10040,10017,'Description',NULL,'Global rank field for JIRA Software use only.'),(10041,10017,'Type',NULL,'Global Rank'),(10042,10018,'Name',NULL,'Sprint'),(10043,10018,'Description',NULL,'JIRA Software sprint field'),(10044,10018,'Type',NULL,'JIRA Sprint Field'),(10045,10019,'Name',NULL,'Epic Link'),(10046,10019,'Description',NULL,'Choose an epic to assign this issue to.'),(10047,10019,'Type',NULL,'Epic Link Relationship'),(10048,10020,'Name',NULL,'Epic Status'),(10049,10020,'Description',NULL,'Epic Status field for JIRA Software use only.'),(10050,10020,'Type',NULL,'Status of Epic'),(10051,10021,'Name',NULL,'Epic Name'),(10052,10021,'Description',NULL,'Provide a short name to identify this epic.'),(10053,10021,'Type',NULL,'Name of Epic'),(10054,10022,'Name',NULL,'Epic Colour'),(10055,10022,'Description',NULL,'Epic Colour field for JIRA Software use only.'),(10056,10022,'Type',NULL,'Colour of Epic'),(10057,10024,'Name',NULL,'Software Simplified Workflow for Project DEMO'),(10058,10024,'Description',NULL,'Generated by JIRA Software version 7.0.11. This workflow is managed internally by JIRA Software. Do not manually modify this workflow.'),(10059,10025,'Name',NULL,'DEMO: Software Simplified Workflow Scheme'),(10060,10025,'Description',NULL,'Generated by JIRA Software version 7.0.11. This workflow scheme is managed internally by JIRA Software. Do not manually modify this workflow scheme.'),(10061,10027,'Name',NULL,'Default software scheme'),(10062,10027,'Description',NULL,'Default scheme for Software projects.'),(10063,10028,'Permission','','Browse Projects'),(10064,10028,'Type','','Application Role'),(10065,10029,'Permission','','Create Issues'),(10066,10029,'Type','','Application Role'),(10067,10030,'Permission','','Edit Issues'),(10068,10030,'Type','','Application Role'),(10069,10031,'Permission','','Assign Issues'),(10070,10031,'Type','','Application Role'),(10071,10032,'Permission','','Resolve Issues'),(10072,10032,'Type','','Application Role'),(10073,10033,'Permission','','Add Comments'),(10074,10033,'Type','','Application Role'),(10075,10034,'Permission','','Delete Issues'),(10076,10034,'Type','','Project Role'),(10077,10034,'Value','','Administrators'),(10078,10035,'Permission','','Assignable User'),(10079,10035,'Type','','Application Role'),(10080,10036,'Permission','','Close Issues'),(10081,10036,'Type','','Application Role'),(10082,10037,'Permission','','Create Attachments'),(10083,10037,'Type','','Application Role'),(10084,10038,'Permission','','Work On Issues'),(10085,10038,'Type','','Application Role'),(10086,10039,'Permission','','Link Issues'),(10087,10039,'Type','','Application Role'),(10088,10040,'Permission','','Administer Projects'),(10089,10040,'Type','','Project Role'),(10090,10040,'Value','','Administrators'),(10091,10041,'Permission','','Move Issues'),(10092,10041,'Type','','Application Role'),(10093,10042,'Permission','','Schedule Issues'),(10094,10042,'Type','','Application Role'),(10095,10043,'Permission','','Modify Reporter'),(10096,10043,'Type','','Project Role'),(10097,10043,'Value','','Administrators'),(10098,10044,'Permission','','View Voters and Watchers'),(10099,10044,'Type','','Application Role'),(10100,10045,'Permission','','Manage Watchers'),(10101,10045,'Type','','Project Role'),(10102,10045,'Value','','Administrators'),(10103,10046,'Permission','','Edit All Comments'),(10104,10046,'Type','','Project Role'),(10105,10046,'Value','','Administrators'),(10106,10047,'Permission','','Edit Own Comments'),(10107,10047,'Type','','Application Role'),(10108,10048,'Permission','','Delete All Comments'),(10109,10048,'Type','','Project Role'),(10110,10048,'Value','','Administrators'),(10111,10049,'Permission','','Delete Own Comments'),(10112,10049,'Type','','Application Role'),(10113,10050,'Permission','','Delete All Attachments'),(10114,10050,'Type','','Project Role'),(10115,10050,'Value','','Administrators'),(10116,10051,'Permission','','Delete Own Attachments'),(10117,10051,'Type','','Application Role'),(10118,10052,'Permission','','Edit Own Worklogs'),(10119,10052,'Type','','Application Role'),(10120,10053,'Permission','','Edit All Worklogs'),(10121,10053,'Type','','Project Role'),(10122,10053,'Value','','Administrators'),(10123,10054,'Permission','','Delete Own Worklogs'),(10124,10054,'Type','','Application Role'),(10125,10055,'Permission','','Delete All Worklogs'),(10126,10055,'Type','','Project Role'),(10127,10055,'Value','','Administrators'),(10128,10056,'Permission','','View Read-Only Workflow'),(10129,10056,'Type','','Application Role'),(10130,10057,'Permission','','Transition Issues'),(10131,10057,'Type','','Application Role'),(10132,10058,'Permission','','View Development Tools'),(10133,10058,'Type','','Application Role'),(10134,10061,'Name',NULL,'DEMO'),(10135,10061,'Key',NULL,'DEMO'),(10136,10061,'Description',NULL,''),(10137,10061,'URL',NULL,''),(10138,10061,'Project Lead',NULL,'suja'),(10139,10061,'Default Assignee',NULL,'Unassigned'),(10140,10062,'Username',NULL,'user2'),(10141,10062,'Full name',NULL,'user2'),(10142,10062,'Email',NULL,''),(10143,10062,'Active / Inactive',NULL,'Active'),(10144,10063,'Username',NULL,'jenkins'),(10145,10063,'Full name',NULL,'jenkins'),(10146,10063,'Email',NULL,''),(10147,10063,'Active / Inactive',NULL,'Active'),(10148,10064,'Username',NULL,'user34'),(10149,10064,'Full name',NULL,'user34'),(10150,10064,'Email',NULL,''),(10151,10064,'Active / Inactive',NULL,'Active'),(10152,10069,'Username',NULL,'user42'),(10153,10069,'Full name',NULL,'user42'),(10154,10069,'Email',NULL,''),(10155,10069,'Active / Inactive',NULL,'Active'),(10156,10083,'Name',NULL,'DEMO'),(10157,10083,'Key',NULL,'DEMO'),(10158,10083,'Description',NULL,''),(10159,10083,'URL',NULL,''),(10160,10083,'Project Lead',NULL,'user2'),(10161,10083,'Default Assignee',NULL,'Unassigned'),(10162,10095,'Name',NULL,'DEMO'),(10163,10095,'Key',NULL,'DEMO'),(10164,10095,'Description',NULL,''),(10165,10095,'URL',NULL,''),(10166,10095,'Project Lead',NULL,'jenkins'),(10167,10095,'Default Assignee',NULL,'Unassigned');
/*!40000 ALTER TABLE `audit_changed_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_item`
--

DROP TABLE IF EXISTS `audit_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_item` (
  `ID` decimal(18,0) NOT NULL,
  `LOG_ID` decimal(18,0) DEFAULT NULL,
  `OBJECT_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_PARENT_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_PARENT_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_audit_item_log_id2` (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_item`
--

LOCK TABLES `audit_item` WRITE;
/*!40000 ALTER TABLE `audit_item` DISABLE KEYS */;
INSERT INTO `audit_item` VALUES (10000,10011,'USER','suja','suja','1','JIRA Internal Directory'),(10001,10016,'USER','suja','suja','1','JIRA Internal Directory'),(10002,10026,'SCHEME','10100','DEMO: Software Simplified Workflow Scheme',NULL,NULL),(10003,10059,'SCHEME','0','Default Permission Scheme',NULL,NULL),(10004,10060,'SCHEME','10000','Default software scheme',NULL,NULL),(10005,10061,'USER','suja','suja','1','JIRA Internal Directory'),(10006,10071,'USER','user42','user42','10000','LDAP server'),(10007,10072,'USER','user2','user2','10000','LDAP server'),(10008,10073,'USER','user33','user33','10000','LDAP server'),(10009,10078,'USER','jenkins','jenkins','10000','LDAP server'),(10010,10080,'SCHEME','10100','DEMO: Software Simplified Workflow Scheme',NULL,NULL),(10011,10081,'SCHEME','0','Default Permission Scheme',NULL,NULL),(10012,10082,'SCHEME','10000','Default software scheme',NULL,NULL),(10013,10083,'USER','user2','user2','10000','LDAP server'),(10014,10084,'USER','suja','suja','1','JIRA Internal Directory'),(10015,10085,'USER','suja','suja','1','JIRA Internal Directory'),(10016,10089,'USER','user42','user42','10000','LDAP server'),(10017,10092,'SCHEME','10100','DEMO: Software Simplified Workflow Scheme',NULL,NULL),(10018,10093,'SCHEME','0','Default Permission Scheme',NULL,NULL),(10019,10094,'SCHEME','10000','Default software scheme',NULL,NULL),(10020,10095,'USER','jenkins','jenkins','10000','LDAP server'),(10021,10096,'USER','user2','user2','10000','LDAP server');
/*!40000 ALTER TABLE `audit_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_log` (
  `ID` decimal(18,0) NOT NULL,
  `REMOTE_ADDRESS` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `AUTHOR_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_PARENT_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_PARENT_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `AUTHOR_TYPE` decimal(9,0) DEFAULT NULL,
  `EVENT_SOURCE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LONG_DESCRIPTION` longtext COLLATE utf8_bin,
  `SEARCH_FIELD` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `idx_audit_log_created` (`CREATED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
INSERT INTO `audit_log` VALUES (10000,'172.30.36.128','2016-02-16 11:27:44',NULL,'Group created','group management','GROUP',NULL,'jira-software-users','1','JIRA Internal Directory',0,'',NULL,'','172.30.36.128 group created management jira-software-users jira internal directory'),(10001,'172.30.36.128','2016-02-16 11:27:44',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','172.30.36.128 global permission added permissions create shared objects jira-software-users'),(10002,'172.30.36.128','2016-02-16 11:27:44',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','172.30.36.128 global permission added permissions manage group filter subscriptions jira-software-users'),(10003,'172.30.36.128','2016-02-16 11:27:44',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','172.30.36.128 global permission added permissions browse users jira-software-users'),(10004,'172.30.36.128','2016-02-16 11:27:44',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','172.30.36.128 global permission added permissions bulk change jira-software-users'),(10005,'172.30.36.128','2016-02-16 11:27:44',NULL,'Custom field created','fields','CUSTOM_FIELD','customfield_10000','Flagged',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field created fields flagged allows to flag issues with impediments. checkboxes'),(10006,'172.30.36.128','2016-02-16 11:27:44',NULL,'Custom field created','fields','CUSTOM_FIELD','customfield_10001','Epic/Theme',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field created fields epic/theme that will help you regroup issues under an epic or a theme. labels'),(10007,'172.30.36.128','2016-02-16 11:27:44',NULL,'Custom field created','fields','CUSTOM_FIELD','customfield_10002','Story Points',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field created fields story points measurement of complexity and/or size a requirement. number'),(10008,'172.30.36.128','2016-02-16 11:27:44',NULL,'Custom field created','fields','CUSTOM_FIELD','customfield_10003','Business Value',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field created fields business value measurement of a requirement. number'),(10009,'172.30.36.128','2016-02-16 11:27:44',NULL,'New license added','system','LICENSE','0','SEN-L7302911','0','License SEN',0,'',NULL,'','172.30.36.128 new license added system sen-l7302911 sen evaluation 15/feb/16 jira software (server): blnh-x2ws-2dx5-n33v unlimited -1'),(10010,'172.30.36.128','2016-02-16 11:30:05',NULL,'User created','user management','USER','suja','suja','1','JIRA Internal Directory',0,'',NULL,'','172.30.36.128 user created management suja jira internal directory sujauddinmullick@yahoo.in active'),(10011,'172.30.36.128','2016-02-16 11:30:05',NULL,'User added to group','group management','GROUP',NULL,'jira-administrators','1','JIRA Internal Directory',0,'',NULL,'','172.30.36.128 user added to group management jira-administrators jira internal directory suja'),(10012,'172.30.36.128','2016-02-16 11:30:05',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','172.30.36.128 global permission added permissions create shared objects jira-administrators'),(10013,'172.30.36.128','2016-02-16 11:30:05',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','172.30.36.128 global permission added permissions bulk change jira-administrators'),(10014,'172.30.36.128','2016-02-16 11:30:05',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','172.30.36.128 global permission added permissions browse users jira-administrators'),(10015,'172.30.36.128','2016-02-16 11:30:05',NULL,'Global permission added','permissions','PERMISSIONS',NULL,'Global Permissions',NULL,NULL,0,'',NULL,'','172.30.36.128 global permission added permissions manage group filter subscriptions jira-administrators'),(10016,'172.30.36.128','2016-02-16 11:30:05',NULL,'User added to group','group management','GROUP',NULL,'jira-software-users','1','JIRA Internal Directory',0,'',NULL,'','172.30.36.128 user added to group management jira-software-users jira internal directory suja'),(10017,'172.30.36.128','2016-02-16 11:30:14',NULL,'Custom field created','fields','CUSTOM_FIELD','customfield_10004','Rank',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field created fields rank global for jira software use only.'),(10018,'172.30.36.128','2016-02-16 11:30:14',NULL,'Custom field created','fields','CUSTOM_FIELD','customfield_10005','Sprint',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field created fields sprint jira software'),(10019,'172.30.36.128','2016-02-16 11:30:14',NULL,'Custom field created','fields','CUSTOM_FIELD','customfield_10006','Epic Link',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field created fields epic link choose an to assign this issue to. relationship'),(10020,'172.30.36.128','2016-02-16 11:30:15',NULL,'Custom field created','fields','CUSTOM_FIELD','customfield_10007','Epic Status',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field created fields epic status for jira software use only. of'),(10021,'172.30.36.128','2016-02-16 11:30:15',NULL,'Custom field created','fields','CUSTOM_FIELD','customfield_10008','Epic Name',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field created fields epic name provide a short to identify this epic. of'),(10022,'172.30.36.128','2016-02-16 11:30:15',NULL,'Custom field created','fields','CUSTOM_FIELD','customfield_10009','Epic Colour',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field created fields epic colour for jira software use only. of'),(10023,'172.30.36.128','2016-02-16 11:30:20',NULL,'Custom field updated','fields','CUSTOM_FIELD','customfield_10006','Epic Link',NULL,NULL,0,'',NULL,'','172.30.36.128 custom field updated fields epic link'),(10024,'172.30.36.128','2016-02-16 11:30:47','suja','Workflow created','workflows','WORKFLOW','Software Simplified Workflow for Project DEMO','Software Simplified Workflow for Project DEMO',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 workflow created workflows software simplified for project demo generated by jira version 7.0.11. this is managed internally software. do not manually modify workflow.'),(10025,'172.30.36.128','2016-02-16 11:30:47','suja','Workflow scheme created','workflows','SCHEME','10100','DEMO: Software Simplified Workflow Scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 workflow scheme created workflows demo: software simplified generated by jira version 7.0.11. this is managed internally software. do not manually modify scheme.'),(10026,'172.30.36.128','2016-02-16 11:30:47','suja','Workflow scheme added to project','workflows','PROJECT','10000','DEMO',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 workflow scheme added to project workflows demo demo: software simplified'),(10027,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme created','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme created permissions default software for projects.'),(10028,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software browse projects application role'),(10029,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software create issues application role'),(10030,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software edit issues application role'),(10031,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software assign issues application role'),(10032,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software resolve issues application role'),(10033,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software add comments application role'),(10034,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software delete issues project role administrators'),(10035,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software assignable user application role'),(10036,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software close issues application role'),(10037,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software create attachments application role'),(10038,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software work on issues application role'),(10039,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software link issues application role'),(10040,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software administer projects project role administrators'),(10041,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software move issues application role'),(10042,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software schedule issues application role'),(10043,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software modify reporter project role administrators'),(10044,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software view voters and watchers application role'),(10045,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software manage watchers project role administrators'),(10046,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software edit all comments project role administrators'),(10047,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software edit own comments application role'),(10048,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software delete all comments project role administrators'),(10049,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software delete own comments application role'),(10050,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software delete all attachments project role administrators'),(10051,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software delete own attachments application role'),(10052,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software edit own worklogs application role'),(10053,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software edit all worklogs project role administrators'),(10054,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software delete own worklogs application role'),(10055,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software delete all worklogs project role administrators'),(10056,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software view read-only workflow application role'),(10057,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software transition issues application role'),(10058,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme updated','permissions','SCHEME','10000','Default software scheme',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme updated permissions default software view development tools application role'),(10059,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme removed from project','permissions','PROJECT','10000','DEMO',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme removed from project permissions demo default'),(10060,'172.30.36.128','2016-02-16 11:30:48','suja','Permission scheme added to project','permissions','PROJECT','10000','DEMO',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 permission scheme added to project permissions demo default software'),(10061,'172.30.36.128','2016-02-16 11:30:49','suja','Project created','projects','PROJECT','10000','DEMO',NULL,NULL,1,'',NULL,'','suja 172.30.36.128 project created projects demo jira internal directory unassigned'),(10062,NULL,'2016-02-16 12:01:24',NULL,'User created','user management','USER','user2','user2','10000','LDAP server',0,'',NULL,'','user created management user2 ldap server active'),(10063,NULL,'2016-02-16 12:01:24',NULL,'User created','user management','USER','jenkins','jenkins','10000','LDAP server',0,'',NULL,'','user created management jenkins ldap server active'),(10064,NULL,'2016-02-16 12:01:24',NULL,'User created','user management','USER','user34','user34','10000','LDAP server',0,'',NULL,'','user created management user34 ldap server active'),(10065,NULL,'2016-02-16 12:25:00',NULL,'Group created','group management','GROUP',NULL,'jenkins','10000','LDAP server',0,'',NULL,'','group created management jenkins ldap server'),(10066,NULL,'2016-02-16 12:25:00',NULL,'Group created','group management','GROUP',NULL,'user34','10000','LDAP server',0,'',NULL,'','group created management user34 ldap server'),(10067,NULL,'2016-02-16 12:25:00',NULL,'Group created','group management','GROUP',NULL,'msysdev1','10000','LDAP server',0,'',NULL,'','group created management msysdev1 ldap server'),(10068,NULL,'2016-02-16 12:25:00',NULL,'Group created','group management','GROUP',NULL,'user33','10000','LDAP server',0,'',NULL,'','group created management user33 ldap server'),(10069,NULL,'2016-02-16 14:36:20',NULL,'User created','user management','USER','user42','user42','10000','LDAP server',0,'',NULL,'','user created management user42 ldap server active'),(10070,'172.30.36.128','2016-02-16 14:39:27','suja','Group created','group management','GROUP',NULL,'group1','1','JIRA Internal Directory',1,'',NULL,'','suja 172.30.36.128 group created management group1 jira internal directory'),(10071,'172.30.36.128','2016-02-16 14:40:28','suja','User added to group','group management','GROUP',NULL,'jira-software-users','10000','LDAP server',1,'',NULL,'','suja 172.30.36.128 user added to group management jira-software-users ldap server user42'),(10072,'172.30.36.128','2016-02-16 14:45:37','suja','User added to group','group management','GROUP',NULL,'jira-administrators','10000','LDAP server',1,'',NULL,'','suja 172.30.36.128 user added to group management jira-administrators ldap server user2'),(10073,'172.30.36.128','2016-02-16 14:45:57','suja','User added to group','group management','GROUP',NULL,'jira-administrators','10000','LDAP server',1,'',NULL,'','suja 172.30.36.128 user added to group management jira-administrators ldap server user33'),(10074,'172.30.36.128','2016-02-16 14:56:47','user33','Group deleted','group management','GROUP',NULL,'group1','1','JIRA Internal Directory',1,'',NULL,'','user33 172.30.36.128 group deleted management group1 jira internal directory'),(10075,'172.30.36.128','2016-02-16 14:56:52','user33','Group deleted','group management','GROUP',NULL,'msysdev1','10000','LDAP server',1,'',NULL,'','user33 172.30.36.128 group deleted management msysdev1 ldap server'),(10076,'172.30.36.128','2016-02-16 14:56:56','user33','Group deleted','group management','GROUP',NULL,'user33','10000','LDAP server',1,'',NULL,'','user33 172.30.36.128 group deleted management ldap server'),(10077,'172.30.36.128','2016-02-16 14:57:00','user33','Group deleted','group management','GROUP',NULL,'user34','10000','LDAP server',1,'',NULL,'','user33 172.30.36.128 group deleted management user34 ldap server'),(10078,'172.30.36.128','2016-02-16 14:57:15','user33','User added to group','group management','GROUP',NULL,'jira-administrators','10000','LDAP server',1,'',NULL,'','user33 172.30.36.128 user added to group management jira-administrators ldap server jenkins'),(10079,'172.30.36.128','2016-02-16 15:01:39','user2','Project deleted','projects','PROJECT','10000','DEMO',NULL,NULL,1,'',NULL,'','user2 172.30.36.128 project deleted projects demo'),(10080,'172.30.36.128','2016-02-16 15:01:59','user2','Workflow scheme added to project','workflows','PROJECT','10001','DEMO',NULL,NULL,1,'',NULL,'','user2 172.30.36.128 workflow scheme added to project workflows demo demo: software simplified'),(10081,'172.30.36.128','2016-02-16 15:02:00','user2','Permission scheme removed from project','permissions','PROJECT','10001','DEMO',NULL,NULL,1,'',NULL,'','user2 172.30.36.128 permission scheme removed from project permissions demo default'),(10082,'172.30.36.128','2016-02-16 15:02:00','user2','Permission scheme added to project','permissions','PROJECT','10001','DEMO',NULL,NULL,1,'',NULL,'','user2 172.30.36.128 permission scheme added to project permissions demo default software'),(10083,'172.30.36.128','2016-02-16 15:02:00','user2','Project created','projects','PROJECT','10001','DEMO',NULL,NULL,1,'',NULL,'','user2 172.30.36.128 project created projects demo ldap server unassigned'),(10084,'172.30.36.128','2016-02-16 15:02:37','user2','User removed from group','group management','GROUP',NULL,'jira-administrators','1','JIRA Internal Directory',1,'',NULL,'','user2 172.30.36.128 user removed from group management jira-administrators jira internal directory suja'),(10085,'172.30.36.128','2016-02-16 15:02:37','user2','User removed from group','group management','GROUP',NULL,'jira-software-users','1','JIRA Internal Directory',1,'',NULL,'','user2 172.30.36.128 user removed from group management jira-software-users jira internal directory suja'),(10086,'172.30.36.128','2016-02-16 15:02:37','user2','User deleted','user management','USER','suja','suja','1','JIRA Internal Directory',1,'',NULL,'','user2 172.30.36.128 user deleted management suja jira internal directory'),(10087,'172.30.36.128','2016-02-16 15:03:17','user2','User deleted','user management','USER','msysdev1','msysdev1','10000','LDAP server',1,'',NULL,'','user2 172.30.36.128 user deleted management msysdev1 ldap server'),(10088,'172.30.36.128','2016-02-16 15:03:29','user2','User deleted','user management','USER','user34','user34','10000','LDAP server',1,'',NULL,'','user2 172.30.36.128 user deleted management user34 ldap server'),(10089,'172.30.36.128','2016-02-16 15:03:36','user2','User removed from group','group management','GROUP',NULL,'jira-software-users','10000','LDAP server',1,'',NULL,'','user2 172.30.36.128 user removed from group management jira-software-users ldap server user42'),(10090,'172.30.36.128','2016-02-16 15:03:36','user2','User deleted','user management','USER','user42','user42','10000','LDAP server',1,'',NULL,'','user2 172.30.36.128 user deleted management user42 ldap server'),(10091,'172.30.36.128','2016-02-16 15:04:37','user2','Project deleted','projects','PROJECT','10001','DEMO',NULL,NULL,1,'',NULL,'','user2 172.30.36.128 project deleted projects demo'),(10092,'172.30.36.128','2016-02-16 15:06:28','jenkins','Workflow scheme added to project','workflows','PROJECT','10002','DEMO',NULL,NULL,1,'',NULL,'','jenkins 172.30.36.128 workflow scheme added to project workflows demo demo: software simplified'),(10093,'172.30.36.128','2016-02-16 15:06:28','jenkins','Permission scheme removed from project','permissions','PROJECT','10002','DEMO',NULL,NULL,1,'',NULL,'','jenkins 172.30.36.128 permission scheme removed from project permissions demo default'),(10094,'172.30.36.128','2016-02-16 15:06:28','jenkins','Permission scheme added to project','permissions','PROJECT','10002','DEMO',NULL,NULL,1,'',NULL,'','jenkins 172.30.36.128 permission scheme added to project permissions demo default software'),(10095,'172.30.36.128','2016-02-16 15:06:28','jenkins','Project created','projects','PROJECT','10002','DEMO',NULL,NULL,1,'',NULL,'','jenkins 172.30.36.128 project created projects demo ldap server unassigned'),(10096,'172.30.36.128','2016-02-16 15:07:25','jenkins','User removed from group','group management','GROUP',NULL,'jira-administrators','10000','LDAP server',1,'',NULL,'','jenkins 172.30.36.128 user removed from group management jira-administrators ldap server user2'),(10097,'172.30.36.128','2016-02-16 15:07:25','jenkins','User deleted','user management','USER','user2','user2','10000','LDAP server',1,'',NULL,'','jenkins 172.30.36.128 user deleted management user2 ldap server'),(10098,NULL,'2016-02-16 15:37:18',NULL,'User deleted','user management','USER','user33','user33','10000','LDAP server',0,'',NULL,'','user deleted management user33 ldap server');
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avatar`
--

DROP TABLE IF EXISTS `avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar` (
  `ID` decimal(18,0) NOT NULL,
  `filename` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `contenttype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `avatartype` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `systemavatar` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `avatar_index` (`avatartype`,`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatar`
--

LOCK TABLES `avatar` WRITE;
/*!40000 ALTER TABLE `avatar` DISABLE KEYS */;
INSERT INTO `avatar` VALUES (10000,'codegeist.png','image/png','project',NULL,1),(10001,'bird.svg','image/svg+xml','project',NULL,1),(10002,'jm_black.png','image/png','project',NULL,1),(10003,'jm_brown.png','image/png','project',NULL,1),(10004,'jm_orange.png','image/png','project',NULL,1),(10005,'jm_red.png','image/png','project',NULL,1),(10006,'jm_white.png','image/png','project',NULL,1),(10007,'jm_yellow.png','image/png','project',NULL,1),(10008,'monster.png','image/png','project',NULL,1),(10009,'nature.svg','image/svg+xml','project',NULL,1),(10010,'koala.svg','image/svg+xml','project',NULL,1),(10011,'rocket.svg','image/svg+xml','project',NULL,1),(10100,'Avatar-1.png','image/png','user',NULL,1),(10101,'Avatar-2.png','image/png','user',NULL,1),(10102,'Avatar-3.png','image/png','user',NULL,1),(10103,'Avatar-4.png','image/png','user',NULL,1),(10104,'Avatar-5.png','image/png','user',NULL,1),(10105,'Avatar-6.png','image/png','user',NULL,1),(10106,'Avatar-7.png','image/png','user',NULL,1),(10107,'Avatar-8.png','image/png','user',NULL,1),(10108,'Avatar-9.png','image/png','user',NULL,1),(10109,'Avatar-10.png','image/png','user',NULL,1),(10110,'Avatar-11.png','image/png','user',NULL,1),(10111,'Avatar-12.png','image/png','user',NULL,1),(10112,'Avatar-13.png','image/png','user',NULL,1),(10113,'Avatar-14.png','image/png','user',NULL,1),(10114,'Avatar-15.png','image/png','user',NULL,1),(10115,'Avatar-16.png','image/png','user',NULL,1),(10116,'Avatar-17.png','image/png','user',NULL,1),(10117,'Avatar-18.png','image/png','user',NULL,1),(10118,'Avatar-19.png','image/png','user',NULL,1),(10119,'Avatar-20.png','image/png','user',NULL,1),(10120,'Avatar-21.png','image/png','user',NULL,1),(10121,'Avatar-22.png','image/png','user',NULL,1),(10122,'Avatar-default.svg','image/svg+xml','user',NULL,1),(10123,'Avatar-unknown.png','image/png','user',NULL,1),(10200,'cloud.svg','image/svg+xml','project',NULL,1),(10201,'spanner.svg','image/svg+xml','project',NULL,1),(10202,'cd.svg','image/svg+xml','project',NULL,1),(10203,'money.svg','image/svg+xml','project',NULL,1),(10204,'mouse-hand.svg','image/svg+xml','project',NULL,1),(10205,'yeti.svg','image/svg+xml','project',NULL,1),(10206,'power.svg','image/svg+xml','project',NULL,1),(10207,'refresh.svg','image/svg+xml','project',NULL,1),(10208,'phone.svg','image/svg+xml','project',NULL,1),(10209,'settings.svg','image/svg+xml','project',NULL,1),(10210,'storm.svg','image/svg+xml','project',NULL,1),(10211,'plane.svg','image/svg+xml','project',NULL,1),(10300,'genericissue.svg','image/svg+xml','issuetype',NULL,1),(10303,'bug.svg','image/svg+xml','issuetype',NULL,1),(10304,'defect.svg','image/svg+xml','issuetype',NULL,1),(10306,'documentation.svg','image/svg+xml','issuetype',NULL,1),(10307,'epic.svg','image/svg+xml','issuetype',NULL,1),(10308,'exclamation.svg','image/svg+xml','issuetype',NULL,1),(10309,'design_task.svg','image/svg+xml','issuetype',NULL,1),(10310,'improvement.svg','image/svg+xml','issuetype',NULL,1),(10311,'newfeature.svg','image/svg+xml','issuetype',NULL,1),(10312,'remove_feature.svg','image/svg+xml','issuetype',NULL,1),(10313,'requirement.svg','image/svg+xml','issuetype',NULL,1),(10314,'sales.svg','image/svg+xml','issuetype',NULL,1),(10315,'story.svg','image/svg+xml','issuetype',NULL,1),(10316,'subtask.svg','image/svg+xml','issuetype',NULL,1),(10318,'task.svg','image/svg+xml','issuetype',NULL,1),(10320,'question.svg','image/svg+xml','issuetype',NULL,1),(10321,'development_task.svg','image/svg+xml','issuetype',NULL,1),(10322,'feedback.svg','image/svg+xml','issuetype',NULL,1),(10323,'request_access.svg','image/svg+xml','issuetype',NULL,1),(10324,'default.svg','image/svg+xml','project',NULL,1),(10325,'code.svg','image/svg+xml','project',NULL,1),(10326,'coffee.svg','image/svg+xml','project',NULL,1),(10327,'design.svg','image/svg+xml','project',NULL,1),(10328,'drill.svg','image/svg+xml','project',NULL,1),(10329,'food.svg','image/svg+xml','project',NULL,1),(10330,'notes.svg','image/svg+xml','project',NULL,1),(10331,'red-flag.svg','image/svg+xml','project',NULL,1),(10332,'science.svg','image/svg+xml','project',NULL,1),(10333,'support.svg','image/svg+xml','project',NULL,1),(10334,'bull.svg','image/svg+xml','user',NULL,1),(10335,'cat.svg','image/svg+xml','user',NULL,1),(10336,'dog.svg','image/svg+xml','user',NULL,1),(10337,'female_1.svg','image/svg+xml','user',NULL,1),(10338,'female_2.svg','image/svg+xml','user',NULL,1),(10339,'female_3.svg','image/svg+xml','user',NULL,1),(10340,'female_4.svg','image/svg+xml','user',NULL,1),(10341,'ghost.svg','image/svg+xml','user',NULL,1),(10342,'male_1.svg','image/svg+xml','user',NULL,1),(10343,'male_2.svg','image/svg+xml','user',NULL,1),(10344,'male_3.svg','image/svg+xml','user',NULL,1),(10345,'male_4.svg','image/svg+xml','user',NULL,1),(10346,'male_5.svg','image/svg+xml','user',NULL,1),(10347,'male_6.svg','image/svg+xml','user',NULL,1),(10348,'male_8.svg','image/svg+xml','user',NULL,1),(10349,'owl.svg','image/svg+xml','user',NULL,1),(10350,'pirate.svg','image/svg+xml','user',NULL,1),(10351,'robot.svg','image/svg+xml','user',NULL,1),(10352,'vampire.svg','image/svg+xml','user',NULL,1);
/*!40000 ALTER TABLE `avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `ID` decimal(18,0) NOT NULL,
  `JQL` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boardproject`
--

DROP TABLE IF EXISTS `boardproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boardproject` (
  `BOARD_ID` decimal(18,0) NOT NULL,
  `PROJECT_ID` decimal(18,0) NOT NULL,
  PRIMARY KEY (`BOARD_ID`,`PROJECT_ID`),
  KEY `idx_board_project_ids` (`PROJECT_ID`),
  KEY `idx_board_board_ids` (`BOARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boardproject`
--

LOCK TABLES `boardproject` WRITE;
/*!40000 ALTER TABLE `boardproject` DISABLE KEYS */;
/*!40000 ALTER TABLE `boardproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changegroup`
--

DROP TABLE IF EXISTS `changegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changegroup` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `chggroup_issue` (`issueid`),
  KEY `chggroup_author_created` (`AUTHOR`,`CREATED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changegroup`
--

LOCK TABLES `changegroup` WRITE;
/*!40000 ALTER TABLE `changegroup` DISABLE KEYS */;
INSERT INTO `changegroup` VALUES (10003,10002,'jenkins','2016-02-16 15:06:47'),(10004,10002,'jenkins','2016-02-16 15:06:52');
/*!40000 ALTER TABLE `changegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changeitem`
--

DROP TABLE IF EXISTS `changeitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changeitem` (
  `ID` decimal(18,0) NOT NULL,
  `groupid` decimal(18,0) DEFAULT NULL,
  `FIELDTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIELD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OLDVALUE` longtext COLLATE utf8_bin,
  `OLDSTRING` longtext COLLATE utf8_bin,
  `NEWVALUE` longtext COLLATE utf8_bin,
  `NEWSTRING` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `chgitem_chggrp` (`groupid`),
  KEY `chgitem_field` (`FIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changeitem`
--

LOCK TABLES `changeitem` WRITE;
/*!40000 ALTER TABLE `changeitem` DISABLE KEYS */;
INSERT INTO `changeitem` VALUES (10005,10003,'jira','status','10000','To Do','3','In Progress'),(10006,10004,'jira','assignee',NULL,NULL,'jenkins','jenkins');
/*!40000 ALTER TABLE `changeitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clusteredjob`
--

DROP TABLE IF EXISTS `clusteredjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusteredjob` (
  `ID` decimal(18,0) NOT NULL,
  `JOB_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JOB_RUNNER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCHED_TYPE` char(1) COLLATE utf8_bin DEFAULT NULL,
  `INTERVAL_MILLIS` decimal(18,0) DEFAULT NULL,
  `FIRST_RUN` decimal(18,0) DEFAULT NULL,
  `CRON_EXPRESSION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_ZONE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `NEXT_RUN` decimal(18,0) DEFAULT NULL,
  `VERSION` decimal(18,0) DEFAULT NULL,
  `PARAMETERS` blob,
  PRIMARY KEY (`ID`),
  KEY `clusteredjob_jobid_idx` (`JOB_ID`),
  KEY `clusteredjob_jrk_idx` (`JOB_RUNNER_KEY`),
  KEY `clusteredjob_nextrun_idx` (`NEXT_RUN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clusteredjob`
--

LOCK TABLES `clusteredjob` WRITE;
/*!40000 ALTER TABLE `clusteredjob` DISABLE KEYS */;
INSERT INTO `clusteredjob` VALUES (10001,'com.atlassian.jira.service.JiraService:10002','com.atlassian.jira.service.DefaultServiceManager','C',NULL,NULL,'0 30 5 * * ?',NULL,1455667200000,1,'¨Ì\0sr\07com.google.common.collect.ImmutableBiMap$SerializedForm\0\0\0\0\0\0\0\0\0\0xr\05com.google.common.collect.ImmutableMap$SerializedForm\0\0\0\0\0\0\0\0\0[\0keyst\0[Ljava/lang/Object;[\0valuesq\0~\0xpur\0[Ljava.lang.Object;êŒXüs)l\0\0xp\0\0\0t\03com.atlassian.jira.service.ServiceManager:serviceIduq\0~\0\0\0\0sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\''),(10101,'data-provider-cleanup','com.atlassian.jira.plugin.devstatus.provider.DataProviderCleanupJob','I',1800000,1455602312032,NULL,NULL,1455620324543,11,NULL),(10102,'com.atlassian.jira.service.JiraService:10001','com.atlassian.jira.service.DefaultServiceManager','C',NULL,NULL,'0 25 11/12 * * ?',NULL,1455645300000,1,'¨Ì\0sr\07com.google.common.collect.ImmutableBiMap$SerializedForm\0\0\0\0\0\0\0\0\0\0xr\05com.google.common.collect.ImmutableMap$SerializedForm\0\0\0\0\0\0\0\0\0[\0keyst\0[Ljava/lang/Object;[\0valuesq\0~\0xpur\0[Ljava.lang.Object;êŒXüs)l\0\0xp\0\0\0t\03com.atlassian.jira.service.ServiceManager:serviceIduq\0~\0\0\0\0sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\''),(10104,'CompatibilityPluginScheduler.JobId.LocalPluginLicenseNotificationJob-job','CompatibilityPluginScheduler.JobRunnerKey.LocalPluginLicenseNotificationJob-job-handler','I',86400000,1455602411901,NULL,NULL,1455688811903,2,NULL),(10105,'CompatibilityPluginScheduler.JobId.RemotePluginLicenseNotificationJob-job','CompatibilityPluginScheduler.JobRunnerKey.RemotePluginLicenseNotificationJob-job-handler','I',86400000,1455681405972,NULL,NULL,1455681405972,1,NULL),(10106,'CompatibilityPluginScheduler.JobId.PluginRequestCheckJob-job','CompatibilityPluginScheduler.JobRunnerKey.PluginRequestCheckJob-job-handler','I',3600000,1455602411922,NULL,NULL,1455620411934,6,NULL),(10107,'CompatibilityPluginScheduler.JobId.PluginUpdateCheckJob-job','CompatibilityPluginScheduler.JobRunnerKey.PluginUpdateCheckJob-job-handler','I',86400000,1455652492400,NULL,NULL,1455652492400,1,NULL),(10108,'CompatibilityPluginScheduler.JobId.InstanceTopologyJob-job','CompatibilityPluginScheduler.JobRunnerKey.InstanceTopologyJob-job-handler','I',86400000,1455662207329,NULL,NULL,1455662207329,1,NULL),(10109,'CompatibilityPluginScheduler.JobId.LEXO_RANK_SCHEDULER_JOB','CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.greenhopper.service.lexorank.balance.LexoRankBalancePluginJob','I',60000,1455602417371,NULL,NULL,1455619217392,281,NULL),(10110,'CompatibilityPluginScheduler.JobId.com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler:job','CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler','I',3600000,1455603921080,NULL,NULL,1455621921080,6,NULL),(10111,'CompatibilityPluginScheduler.JobId.Service Provider Session Remover','CompatibilityPluginScheduler.JobRunnerKey.Service Provider Session Remover','I',28800000,1455631222630,NULL,NULL,1455631222630,1,NULL),(10122,'com.atlassian.jira.crowd.embedded.JiraDirectoryPollerManager.10000','com.atlassian.jira.crowd.embedded.JiraDirectoryPollerManager','I',3600000,1455613638502,NULL,NULL,1455620838502,3,'¨Ì\0sr\07com.google.common.collect.ImmutableBiMap$SerializedForm\0\0\0\0\0\0\0\0\0\0xr\05com.google.common.collect.ImmutableMap$SerializedForm\0\0\0\0\0\0\0\0\0[\0keyst\0[Ljava/lang/Object;[\0valuesq\0~\0xpur\0[Ljava.lang.Object;êŒXüs)l\0\0xp\0\0\0t\0DIRECTORY_IDuq\0~\0\0\0\0sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\'');
/*!40000 ALTER TABLE `clusteredjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clusterlockstatus`
--

DROP TABLE IF EXISTS `clusterlockstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusterlockstatus` (
  `ID` decimal(18,0) NOT NULL,
  `LOCK_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCKED_BY_NODE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `UPDATE_TIME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `cluster_lock_name_idx` (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clusterlockstatus`
--

LOCK TABLES `clusterlockstatus` WRITE;
/*!40000 ALTER TABLE `clusterlockstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `clusterlockstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clustermessage`
--

DROP TABLE IF EXISTS `clustermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clustermessage` (
  `ID` decimal(18,0) NOT NULL,
  `SOURCE_NODE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DESTINATION_NODE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CLAIMED_BY_NODE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `source_destination_node_idx` (`SOURCE_NODE`,`DESTINATION_NODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clustermessage`
--

LOCK TABLES `clustermessage` WRITE;
/*!40000 ALTER TABLE `clustermessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `clustermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clusternode`
--

DROP TABLE IF EXISTS `clusternode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusternode` (
  `NODE_ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `NODE_STATE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `TIMESTAMP` decimal(18,0) DEFAULT NULL,
  `IP` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CACHE_LISTENER_PORT` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clusternode`
--

LOCK TABLES `clusternode` WRITE;
/*!40000 ALTER TABLE `clusternode` DISABLE KEYS */;
/*!40000 ALTER TABLE `clusternode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clusternodeheartbeat`
--

DROP TABLE IF EXISTS `clusternodeheartbeat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusternodeheartbeat` (
  `NODE_ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `HEARTBEAT_TIME` decimal(18,0) DEFAULT NULL,
  `DATABASE_TIME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clusternodeheartbeat`
--

LOCK TABLES `clusternodeheartbeat` WRITE;
/*!40000 ALTER TABLE `clusternodeheartbeat` DISABLE KEYS */;
/*!40000 ALTER TABLE `clusternodeheartbeat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columnlayout`
--

DROP TABLE IF EXISTS `columnlayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columnlayout` (
  `ID` decimal(18,0) NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEARCHREQUEST` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cl_searchrequest` (`SEARCHREQUEST`),
  KEY `cl_username` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columnlayout`
--

LOCK TABLES `columnlayout` WRITE;
/*!40000 ALTER TABLE `columnlayout` DISABLE KEYS */;
/*!40000 ALTER TABLE `columnlayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columnlayoutitem`
--

DROP TABLE IF EXISTS `columnlayoutitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columnlayoutitem` (
  `ID` decimal(18,0) NOT NULL,
  `COLUMNLAYOUT` decimal(18,0) DEFAULT NULL,
  `FIELDIDENTIFIER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HORIZONTALPOSITION` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_cli_fieldidentifier` (`FIELDIDENTIFIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columnlayoutitem`
--

LOCK TABLES `columnlayoutitem` WRITE;
/*!40000 ALTER TABLE `columnlayoutitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `columnlayoutitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `cname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LEAD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEETYPE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_component_project` (`PROJECT`),
  KEY `idx_component_name` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurationcontext`
--

DROP TABLE IF EXISTS `configurationcontext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurationcontext` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECTCATEGORY` decimal(18,0) DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `customfield` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIELDCONFIGSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `confcontext` (`PROJECTCATEGORY`,`PROJECT`,`customfield`),
  KEY `confcontextprojectkey` (`PROJECT`,`customfield`),
  KEY `confcontextfieldconfigscheme` (`FIELDCONFIGSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurationcontext`
--

LOCK TABLES `configurationcontext` WRITE;
/*!40000 ALTER TABLE `configurationcontext` DISABLE KEYS */;
INSERT INTO `configurationcontext` VALUES (10000,NULL,NULL,'issuetype',10000),(10100,NULL,NULL,'customfield_10000',10100),(10101,NULL,NULL,'customfield_10001',10101),(10102,NULL,NULL,'customfield_10004',10102),(10103,NULL,NULL,'customfield_10005',10103),(10104,NULL,NULL,'customfield_10006',10104),(10106,NULL,NULL,'customfield_10003',10106),(10107,NULL,NULL,'customfield_10002',10107),(10108,NULL,NULL,'customfield_10007',10108),(10109,NULL,NULL,'customfield_10008',10109),(10110,NULL,NULL,'customfield_10009',10110),(10112,NULL,10002,'issuetype',10112);
/*!40000 ALTER TABLE `configurationcontext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfield`
--

DROP TABLE IF EXISTS `customfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfield` (
  `ID` decimal(18,0) NOT NULL,
  `CUSTOMFIELDTYPEKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOMFIELDSEARCHERKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cfname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `defaultvalue` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIELDTYPE` decimal(18,0) DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfield`
--

LOCK TABLES `customfield` WRITE;
/*!40000 ALTER TABLE `customfield` DISABLE KEYS */;
INSERT INTO `customfield` VALUES (10000,'com.atlassian.jira.plugin.system.customfieldtypes:multicheckboxes','com.atlassian.jira.plugin.system.customfieldtypes:multiselectsearcher','Flagged','Allows to flag issues with impediments.',NULL,NULL,NULL,NULL),(10001,'com.atlassian.jira.plugin.system.customfieldtypes:labels','com.atlassian.jira.plugin.system.customfieldtypes:labelsearcher','Epic/Theme','Field that will help you regroup issues under an Epic or under a theme.',NULL,NULL,NULL,NULL),(10002,'com.atlassian.jira.plugin.system.customfieldtypes:float','com.atlassian.jira.plugin.system.customfieldtypes:exactnumber','Story Points','Measurement of complexity and/or size of a requirement.',NULL,NULL,NULL,NULL),(10003,'com.atlassian.jira.plugin.system.customfieldtypes:float','com.atlassian.jira.plugin.system.customfieldtypes:exactnumber','Business Value','Measurement of business value of a requirement.',NULL,NULL,NULL,NULL),(10004,'com.pyxis.greenhopper.jira:gh-lexo-rank','com.pyxis.greenhopper.jira:gh-lexo-rank-searcher','Rank','Global rank field for JIRA Software use only.',NULL,NULL,NULL,NULL),(10005,'com.pyxis.greenhopper.jira:gh-sprint','com.pyxis.greenhopper.jira:gh-sprint-searcher','Sprint','JIRA Software sprint field',NULL,NULL,NULL,NULL),(10006,'com.pyxis.greenhopper.jira:gh-epic-link','com.pyxis.greenhopper.jira:gh-epic-link-searcher','Epic Link','Choose an epic to assign this issue to.',NULL,NULL,NULL,NULL),(10007,'com.pyxis.greenhopper.jira:gh-epic-status','com.pyxis.greenhopper.jira:gh-epic-status-searcher','Epic Status','Epic Status field for JIRA Software use only.',NULL,NULL,NULL,NULL),(10008,'com.pyxis.greenhopper.jira:gh-epic-label','com.pyxis.greenhopper.jira:gh-epic-label-searcher','Epic Name','Provide a short name to identify this epic.',NULL,NULL,NULL,NULL),(10009,'com.pyxis.greenhopper.jira:gh-epic-color','com.pyxis.greenhopper.jira:gh-epic-color-searcher','Epic Colour','Epic Colour field for JIRA Software use only.',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfieldoption`
--

DROP TABLE IF EXISTS `customfieldoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfieldoption` (
  `ID` decimal(18,0) NOT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  `CUSTOMFIELDCONFIG` decimal(18,0) DEFAULT NULL,
  `PARENTOPTIONID` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `customvalue` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `optiontype` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `disabled` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cf_cfoption` (`CUSTOMFIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfieldoption`
--

LOCK TABLES `customfieldoption` WRITE;
/*!40000 ALTER TABLE `customfieldoption` DISABLE KEYS */;
INSERT INTO `customfieldoption` VALUES (10000,10000,10100,NULL,0,'Impediment',NULL,'N'),(10001,10007,10108,NULL,0,'To Do',NULL,'N'),(10002,10007,10108,NULL,1,'In Progress',NULL,'N'),(10003,10007,10108,NULL,2,'Done',NULL,'N');
/*!40000 ALTER TABLE `customfieldoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfieldvalue`
--

DROP TABLE IF EXISTS `customfieldvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfieldvalue` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUE` decimal(18,0) DEFAULT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  `PARENTKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STRINGVALUE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NUMBERVALUE` decimal(18,6) DEFAULT NULL,
  `TEXTVALUE` longtext COLLATE utf8_bin,
  `DATEVALUE` datetime DEFAULT NULL,
  `VALUETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cfvalue_issue` (`ISSUE`,`CUSTOMFIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfieldvalue`
--

LOCK TABLES `customfieldvalue` WRITE;
/*!40000 ALTER TABLE `customfieldvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfieldvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_application`
--

DROP TABLE IF EXISTS `cwd_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_application` (
  `ID` decimal(18,0) NOT NULL,
  `application_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_application_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `application_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `credential` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_application_name` (`lower_application_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_application`
--

LOCK TABLES `cwd_application` WRITE;
/*!40000 ALTER TABLE `cwd_application` DISABLE KEYS */;
INSERT INTO `cwd_application` VALUES (1,'crowd-embedded','crowd-embedded','2013-02-28 11:57:51','2013-02-28 11:57:51',1,'','CROWD','X');
/*!40000 ALTER TABLE `cwd_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_application_address`
--

DROP TABLE IF EXISTS `cwd_application_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_application_address` (
  `application_id` decimal(18,0) NOT NULL,
  `remote_address` varchar(255) COLLATE utf8_bin NOT NULL,
  `encoded_address_binary` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remote_address_mask` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`application_id`,`remote_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_application_address`
--

LOCK TABLES `cwd_application_address` WRITE;
/*!40000 ALTER TABLE `cwd_application_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `cwd_application_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_directory`
--

DROP TABLE IF EXISTS `cwd_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_directory` (
  `ID` decimal(18,0) NOT NULL,
  `directory_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_directory_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `impl_class` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_impl_class` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `directory_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `directory_position` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `uk_directory_name` (`lower_directory_name`),
  KEY `idx_directory_active` (`active`),
  KEY `idx_directory_impl` (`lower_impl_class`),
  KEY `idx_directory_type` (`directory_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_directory`
--

LOCK TABLES `cwd_directory` WRITE;
/*!40000 ALTER TABLE `cwd_directory` DISABLE KEYS */;
INSERT INTO `cwd_directory` VALUES (1,'JIRA Internal Directory','jira internal directory','2013-02-28 11:57:51','2013-02-28 11:57:51',1,'JIRA default internal directory','com.atlassian.crowd.directory.InternalDirectory','com.atlassian.crowd.directory.internaldirectory','INTERNAL',0),(10000,'LDAP server','ldap server','2016-02-16 11:59:29','2016-02-16 15:37:18',1,NULL,'com.atlassian.crowd.directory.OpenLDAP','com.atlassian.crowd.directory.openldap','CONNECTOR',1);
/*!40000 ALTER TABLE `cwd_directory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_directory_attribute`
--

DROP TABLE IF EXISTS `cwd_directory_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_directory_attribute` (
  `directory_id` decimal(18,0) NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`directory_id`,`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_directory_attribute`
--

LOCK TABLES `cwd_directory_attribute` WRITE;
/*!40000 ALTER TABLE `cwd_directory_attribute` DISABLE KEYS */;
INSERT INTO `cwd_directory_attribute` VALUES (1,'user_encryption_method','atlassian-security'),(10000,'autoAddGroups',''),(10000,'com.atlassian.crowd.directory.sync.currentstartsynctime',NULL),(10000,'com.atlassian.crowd.directory.sync.issynchronising','false'),(10000,'com.atlassian.crowd.directory.sync.lastdurationms','79'),(10000,'com.atlassian.crowd.directory.sync.laststartsynctime','1455617238506'),(10000,'crowd.sync.incremental.enabled','true'),(10000,'directory.cache.synchronise.interval','3600'),(10000,'ldap.basedn','dc=msystechnologies,dc=local'),(10000,'ldap.connection.timeout','10000'),(10000,'ldap.external.id','entryUUID'),(10000,'ldap.group.description','description'),(10000,'ldap.group.dn',''),(10000,'ldap.group.filter','(objectClass=*)'),(10000,'ldap.group.name','cn'),(10000,'ldap.group.objectclass','posixGroup'),(10000,'ldap.group.usernames','cn'),(10000,'ldap.local.groups','false'),(10000,'ldap.nestedgroups.disabled','true'),(10000,'ldap.pagedresults','false'),(10000,'ldap.pagedresults.size','1000'),(10000,'ldap.password','mst12345'),(10000,'ldap.pool.initsize',NULL),(10000,'ldap.pool.maxsize',NULL),(10000,'ldap.pool.prefsize',NULL),(10000,'ldap.pool.timeout','0'),(10000,'ldap.propogate.changes','true'),(10000,'ldap.read.timeout','120000'),(10000,'ldap.referral','false'),(10000,'ldap.relaxed.dn.standardisation','true'),(10000,'ldap.roles.disabled','true'),(10000,'ldap.search.timelimit','60000'),(10000,'ldap.secure','false'),(10000,'ldap.url','ldap://172.30.36.128:1389'),(10000,'ldap.user.displayname','cn'),(10000,'ldap.user.dn',''),(10000,'ldap.user.email','mail'),(10000,'ldap.user.encryption','sha'),(10000,'ldap.user.filter','(&(objectclass=posixAccount)(uid=*))'),(10000,'ldap.user.firstname','cn'),(10000,'ldap.user.group','cn'),(10000,'ldap.user.lastname','cn'),(10000,'ldap.user.objectclass','account'),(10000,'ldap.user.password','userPassword'),(10000,'ldap.user.username','cn'),(10000,'ldap.user.username.rdn','cn'),(10000,'ldap.userdn','cn=root,dc=msystechnologies,dc=local'),(10000,'ldap.usermembership.use','true'),(10000,'ldap.usermembership.use.for.groups','false'),(10000,'localUserStatusEnabled','false');
/*!40000 ALTER TABLE `cwd_directory_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_directory_operation`
--

DROP TABLE IF EXISTS `cwd_directory_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_directory_operation` (
  `directory_id` decimal(18,0) NOT NULL,
  `operation_type` varchar(60) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`directory_id`,`operation_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_directory_operation`
--

LOCK TABLES `cwd_directory_operation` WRITE;
/*!40000 ALTER TABLE `cwd_directory_operation` DISABLE KEYS */;
INSERT INTO `cwd_directory_operation` VALUES (1,'CREATE_GROUP'),(1,'CREATE_ROLE'),(1,'CREATE_USER'),(1,'DELETE_GROUP'),(1,'DELETE_ROLE'),(1,'DELETE_USER'),(1,'UPDATE_GROUP'),(1,'UPDATE_GROUP_ATTRIBUTE'),(1,'UPDATE_ROLE'),(1,'UPDATE_ROLE_ATTRIBUTE'),(1,'UPDATE_USER'),(1,'UPDATE_USER_ATTRIBUTE'),(10000,'CREATE_GROUP'),(10000,'CREATE_ROLE'),(10000,'CREATE_USER'),(10000,'DELETE_GROUP'),(10000,'DELETE_ROLE'),(10000,'DELETE_USER'),(10000,'UPDATE_GROUP'),(10000,'UPDATE_GROUP_ATTRIBUTE'),(10000,'UPDATE_ROLE'),(10000,'UPDATE_ROLE_ATTRIBUTE'),(10000,'UPDATE_USER'),(10000,'UPDATE_USER_ATTRIBUTE');
/*!40000 ALTER TABLE `cwd_directory_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_group`
--

DROP TABLE IF EXISTS `cwd_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_group` (
  `ID` decimal(18,0) NOT NULL,
  `group_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_group_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `local` decimal(9,0) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `group_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_group_name_dir_id` (`lower_group_name`,`directory_id`),
  KEY `idx_group_active` (`lower_group_name`,`active`),
  KEY `idx_group_dir_id` (`directory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_group`
--

LOCK TABLES `cwd_group` WRITE;
/*!40000 ALTER TABLE `cwd_group` DISABLE KEYS */;
INSERT INTO `cwd_group` VALUES (10000,'jira-administrators','jira-administrators',1,0,'2013-02-28 11:57:51','2013-02-28 11:57:51','',NULL,'GROUP',1),(10010,'jira-software-users','jira-software-users',1,0,'2016-02-16 11:27:44','2016-02-16 11:27:44',NULL,NULL,'GROUP',1),(10015,'jira-software-users','jira-software-users',1,0,'2016-02-16 14:38:18','2016-02-16 14:38:18',NULL,NULL,'GROUP',10000),(10017,'jira-administrators','jira-administrators',1,0,'2016-02-16 14:45:05','2016-02-16 14:45:05',NULL,NULL,'GROUP',10000);
/*!40000 ALTER TABLE `cwd_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_group_attributes`
--

DROP TABLE IF EXISTS `cwd_group_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_group_attributes` (
  `ID` decimal(18,0) NOT NULL,
  `group_id` decimal(18,0) DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  `attribute_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `attribute_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_attribute_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_group_attr_name_lval` (`group_id`,`attribute_name`,`lower_attribute_value`),
  KEY `idx_group_attr_dir_name_lval` (`directory_id`,`attribute_name`,`lower_attribute_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_group_attributes`
--

LOCK TABLES `cwd_group_attributes` WRITE;
/*!40000 ALTER TABLE `cwd_group_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cwd_group_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_membership`
--

DROP TABLE IF EXISTS `cwd_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_membership` (
  `ID` decimal(18,0) NOT NULL,
  `parent_id` decimal(18,0) DEFAULT NULL,
  `child_id` decimal(18,0) DEFAULT NULL,
  `membership_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `group_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `parent_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_parent_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `child_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_child_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_mem_parent_child_type` (`parent_id`,`child_id`,`membership_type`),
  KEY `idx_mem_dir_parent_child` (`lower_parent_name`,`lower_child_name`,`membership_type`,`directory_id`),
  KEY `idx_mem_dir_parent` (`lower_parent_name`,`membership_type`,`directory_id`),
  KEY `idx_mem_dir_child` (`lower_child_name`,`membership_type`,`directory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_membership`
--

LOCK TABLES `cwd_membership` WRITE;
/*!40000 ALTER TABLE `cwd_membership` DISABLE KEYS */;
INSERT INTO `cwd_membership` VALUES (10005,10017,10004,'GROUP_USER',NULL,'jira-administrators','jira-administrators','jenkins','jenkins',10000),(10006,10017,10007,'GROUP_USER',NULL,'jira-administrators','jira-administrators','user33','user33',10000);
/*!40000 ALTER TABLE `cwd_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_user`
--

DROP TABLE IF EXISTS `cwd_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_user` (
  `ID` decimal(18,0) NOT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_first_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_last_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_display_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_email_address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREDENTIAL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `deleted_externally` decimal(9,0) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_user_name_dir_id` (`lower_user_name`,`directory_id`),
  KEY `uk_user_externalid_dir_id` (`EXTERNAL_ID`,`directory_id`),
  KEY `idx_first_name` (`lower_first_name`),
  KEY `idx_last_name` (`lower_last_name`),
  KEY `idx_display_name` (`lower_display_name`),
  KEY `idx_email_address` (`lower_email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_user`
--

LOCK TABLES `cwd_user` WRITE;
/*!40000 ALTER TABLE `cwd_user` DISABLE KEYS */;
INSERT INTO `cwd_user` VALUES (10004,10000,'jenkins','jenkins',1,'2016-02-16 12:01:24','2016-02-16 15:42:29','jenkins','jenkins','jenkins','jenkins','jenkins','jenkins','','','nopass',NULL,'2257e4ee-634c-1035-929f-85cccc3f5b1d'),(10007,10000,'user33','user33',1,'2016-02-16 15:50:54','2016-02-16 15:51:06','user33','user33','user33','user33','user33','user33','','','nopass',NULL,'525f0f32-68e2-1035-81f1-1fc79c364f6d'),(10008,10000,'msysdev1','msysdev1',1,'2016-02-16 15:52:45','2016-02-16 15:52:45','msysdev1','msysdev1','msysdev1','msysdev1','msysdev1','msysdev1','','','nopass',NULL,'74c4aec4-68e2-1035-81f2-1fc79c364f6d');
/*!40000 ALTER TABLE `cwd_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cwd_user_attributes`
--

DROP TABLE IF EXISTS `cwd_user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_user_attributes` (
  `ID` decimal(18,0) NOT NULL,
  `user_id` decimal(18,0) DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  `attribute_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `attribute_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_attribute_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_user_attr_dir_name_lval` (`directory_id`,`attribute_name`,`lower_attribute_value`),
  KEY `uk_user_attr_name_lval` (`user_id`,`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cwd_user_attributes`
--

LOCK TABLES `cwd_user_attributes` WRITE;
/*!40000 ALTER TABLE `cwd_user_attributes` DISABLE KEYS */;
INSERT INTO `cwd_user_attributes` VALUES (10028,10004,10000,'invalidPasswordAttempts','0','0'),(10029,10004,10000,'lastAuthenticated','1455617549173','1455617549173'),(10030,10004,10000,'login.lastFailedLoginMillis','1455614767484','1455614767484'),(10031,10004,10000,'login.currentFailedCount','0','0'),(10032,10004,10000,'login.totalFailedCount','1','1'),(10033,10004,10000,'login.lastLoginMillis','1455617549188','1455617549188'),(10034,10004,10000,'login.count','7','7'),(10041,10004,10000,'login.previousLoginMillis','1455617535779','1455617535779'),(10042,10007,10000,'invalidPasswordAttempts','0','0'),(10043,10007,10000,'lastAuthenticated','1455618066873','1455618066873'),(10044,10007,10000,'login.currentFailedCount','0','0'),(10045,10007,10000,'login.lastLoginMillis','1455618066878','1455618066878'),(10046,10007,10000,'login.count','2','2'),(10047,10007,10000,'login.previousLoginMillis','1455618054393','1455618054393'),(10048,10008,10000,'invalidPasswordAttempts','0','0'),(10049,10008,10000,'lastAuthenticated','1455618166016','1455618166016'),(10050,10008,10000,'login.lastFailedLoginMillis','1455618166020','1455618166020'),(10051,10008,10000,'login.currentFailedCount','1','1'),(10052,10008,10000,'login.totalFailedCount','1','1');
/*!40000 ALTER TABLE `cwd_user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deadletter`
--

DROP TABLE IF EXISTS `deadletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deadletter` (
  `ID` decimal(18,0) NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_SEEN` decimal(18,0) DEFAULT NULL,
  `MAIL_SERVER_ID` decimal(18,0) DEFAULT NULL,
  `FOLDER_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `deadletter_msg_server_folder` (`MESSAGE_ID`,`MAIL_SERVER_ID`,`FOLDER_NAME`),
  KEY `deadletter_lastSeen` (`LAST_SEEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deadletter`
--

LOCK TABLES `deadletter` WRITE;
/*!40000 ALTER TABLE `deadletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `deadletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draftworkflowscheme`
--

DROP TABLE IF EXISTS `draftworkflowscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draftworkflowscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `WORKFLOW_SCHEME_ID` decimal(18,0) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `LAST_MODIFIED_USER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `draft_workflow_scheme_parent` (`WORKFLOW_SCHEME_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draftworkflowscheme`
--

LOCK TABLES `draftworkflowscheme` WRITE;
/*!40000 ALTER TABLE `draftworkflowscheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `draftworkflowscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draftworkflowschemeentity`
--

DROP TABLE IF EXISTS `draftworkflowschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draftworkflowschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `WORKFLOW` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `draft_workflow_scheme` (`SCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draftworkflowschemeentity`
--

LOCK TABLES `draftworkflowschemeentity` WRITE;
/*!40000 ALTER TABLE `draftworkflowschemeentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `draftworkflowschemeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_property`
--

DROP TABLE IF EXISTS `entity_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_property` (
  `ID` decimal(18,0) NOT NULL,
  `ENTITY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_ID` decimal(18,0) DEFAULT NULL,
  `PROPERTY_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `json_value` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `entityproperty_entity` (`ENTITY_NAME`,`ENTITY_ID`),
  KEY `entityproperty_key` (`PROPERTY_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_property`
--

LOCK TABLES `entity_property` WRITE;
/*!40000 ALTER TABLE `entity_property` DISABLE KEYS */;
INSERT INTO `entity_property` VALUES (10002,'ProjectProperty',10002,'searchRequests','2016-02-16 15:06:28','2016-02-16 15:06:28','{\"ids\":[]}');
/*!40000 ALTER TABLE `entity_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_property_index_document`
--

DROP TABLE IF EXISTS `entity_property_index_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_property_index_document` (
  `ID` decimal(18,0) NOT NULL,
  `PLUGIN_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MODULE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `DOCUMENT` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `entpropindexdoc_module` (`PLUGIN_KEY`,`MODULE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_property_index_document`
--

LOCK TABLES `entity_property_index_document` WRITE;
/*!40000 ALTER TABLE `entity_property_index_document` DISABLE KEYS */;
INSERT INTO `entity_property_index_document` VALUES (10000,'com.atlassian.jira.plugins.jira-development-integration-plugin','jira-issue-fusion-jql','IssueProperty','2016-02-16 11:28:44','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<index-document-configuration entity-key=\"IssueProperty\"><key property-key=\"development\"><extract path=\"failingbuilds\" type=\"NUMBER\"/><extract path=\"openprs\" type=\"NUMBER\"/><extract path=\"prs\" type=\"NUMBER\"/><extract path=\"reviews\" type=\"NUMBER\"/><extract path=\"openreviews\" type=\"NUMBER\"/><extract path=\"commits\" type=\"NUMBER\"/></key></index-document-configuration>');
/*!40000 ALTER TABLE `entity_property_index_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_entities`
--

DROP TABLE IF EXISTS `external_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_entities` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `entitytype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ext_entity_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_entities`
--

LOCK TABLES `external_entities` WRITE;
/*!40000 ALTER TABLE `external_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externalgadget`
--

DROP TABLE IF EXISTS `externalgadget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `externalgadget` (
  `ID` decimal(18,0) NOT NULL,
  `GADGET_XML` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalgadget`
--

LOCK TABLES `externalgadget` WRITE;
/*!40000 ALTER TABLE `externalgadget` DISABLE KEYS */;
/*!40000 ALTER TABLE `externalgadget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favouriteassociations`
--

DROP TABLE IF EXISTS `favouriteassociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favouriteassociations` (
  `ID` decimal(18,0) NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `entitytype` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `entityid` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `favourite_index` (`USERNAME`,`entitytype`,`entityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favouriteassociations`
--

LOCK TABLES `favouriteassociations` WRITE;
/*!40000 ALTER TABLE `favouriteassociations` DISABLE KEYS */;
/*!40000 ALTER TABLE `favouriteassociations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature` (
  `ID` decimal(18,0) NOT NULL,
  `FEATURE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FEATURE_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `USER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `feature_id_userkey` (`ID`,`USER_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature`
--

LOCK TABLES `feature` WRITE;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
INSERT INTO `feature` VALUES (10000,'com.atlassian.jira.projects.ProjectCentricNavigation.Switch','site',''),(10001,'com.atlassian.jira.projects.issuenavigator','site','');
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldconfigscheme`
--

DROP TABLE IF EXISTS `fieldconfigscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldconfigscheme` (
  `ID` decimal(18,0) NOT NULL,
  `configname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `FIELDID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fcs_fieldid` (`FIELDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldconfigscheme`
--

LOCK TABLES `fieldconfigscheme` WRITE;
/*!40000 ALTER TABLE `fieldconfigscheme` DISABLE KEYS */;
INSERT INTO `fieldconfigscheme` VALUES (10000,'Default Issue Type Scheme','Default issue type scheme is the list of global issue types. All newly created issue types will automatically be added to this scheme.','issuetype',NULL),(10100,'Default Configuration Scheme for Flagged','Default configuration scheme generated by JIRA','customfield_10000',NULL),(10101,'Default Configuration Scheme for Epic/Theme','Default configuration scheme generated by JIRA','customfield_10001',NULL),(10102,'Default Configuration Scheme for Rank','Default configuration scheme generated by JIRA','customfield_10004',NULL),(10103,'Default Configuration Scheme for Sprint','Default configuration scheme generated by JIRA','customfield_10005',NULL),(10104,'Default Configuration Scheme for Epic Link','Default configuration scheme generated by JIRA','customfield_10006',NULL),(10105,'DEMO: Scrum Issue Type Scheme',NULL,'issuetype',NULL),(10106,'Default Configuration Scheme for Business Value','Default configuration scheme generated by JIRA','customfield_10003',NULL),(10107,'Default Configuration Scheme for Story Points','Default configuration scheme generated by JIRA','customfield_10002',NULL),(10108,'Default Configuration Scheme for Epic Status','Default configuration scheme generated by JIRA','customfield_10007',NULL),(10109,'Default Configuration Scheme for Epic Name','Default configuration scheme generated by JIRA','customfield_10008',NULL),(10110,'Default Configuration Scheme for Epic Colour','Default configuration scheme generated by JIRA','customfield_10009',NULL),(10111,'DEMO: Scrum Issue Type Scheme (1)',NULL,'issuetype',NULL),(10112,'DEMO: Scrum Issue Type Scheme (2)',NULL,'issuetype',NULL);
/*!40000 ALTER TABLE `fieldconfigscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldconfigschemeissuetype`
--

DROP TABLE IF EXISTS `fieldconfigschemeissuetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldconfigschemeissuetype` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIELDCONFIGSCHEME` decimal(18,0) DEFAULT NULL,
  `FIELDCONFIGURATION` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fcs_issuetype` (`ISSUETYPE`),
  KEY `fcs_scheme` (`FIELDCONFIGSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldconfigschemeissuetype`
--

LOCK TABLES `fieldconfigschemeissuetype` WRITE;
/*!40000 ALTER TABLE `fieldconfigschemeissuetype` DISABLE KEYS */;
INSERT INTO `fieldconfigschemeissuetype` VALUES (10200,NULL,10100,10100),(10201,NULL,10101,10101),(10202,NULL,10102,10102),(10203,NULL,10103,10103),(10204,NULL,10104,10104),(10206,NULL,10000,10000),(10209,'10000',10106,10106),(10210,'10001',10106,10106),(10211,'10000',10107,10107),(10212,'10001',10107,10107),(10213,'10000',10108,10108),(10214,'10000',10109,10109),(10215,'10000',10110,10110),(10216,NULL,10105,10105),(10219,NULL,10111,10111),(10222,NULL,10112,10112);
/*!40000 ALTER TABLE `fieldconfigschemeissuetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldconfiguration`
--

DROP TABLE IF EXISTS `fieldconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `configname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `FIELDID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fc_fieldid` (`FIELDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldconfiguration`
--

LOCK TABLES `fieldconfiguration` WRITE;
/*!40000 ALTER TABLE `fieldconfiguration` DISABLE KEYS */;
INSERT INTO `fieldconfiguration` VALUES (10000,'Default Configuration for Issue Type','Default configuration generated by JIRA','issuetype',NULL),(10100,'Default Configuration for Flagged','Default configuration generated by JIRA','customfield_10000',NULL),(10101,'Default Configuration for Epic/Theme','Default configuration generated by JIRA','customfield_10001',NULL),(10102,'Default Configuration for Rank','Default configuration generated by JIRA','customfield_10004',NULL),(10103,'Default Configuration for Sprint','Default configuration generated by JIRA','customfield_10005',NULL),(10104,'Default Configuration for Epic Link','Default configuration generated by JIRA','customfield_10006',NULL),(10105,'Default Configuration for Issue Type','Default configuration generated by JIRA','issuetype',NULL),(10106,'Default Configuration for Business Value','Default configuration generated by JIRA','customfield_10003',NULL),(10107,'Default Configuration for Story Points','Default configuration generated by JIRA','customfield_10002',NULL),(10108,'Default Configuration for Epic Status','Default configuration generated by JIRA','customfield_10007',NULL),(10109,'Default Configuration for Epic Name','Default configuration generated by JIRA','customfield_10008',NULL),(10110,'Default Configuration for Epic Colour','Default configuration generated by JIRA','customfield_10009',NULL),(10111,'Default Configuration for Issue Type','Default configuration generated by JIRA','issuetype',NULL),(10112,'Default Configuration for Issue Type','Default configuration generated by JIRA','issuetype',NULL);
/*!40000 ALTER TABLE `fieldconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayout`
--

DROP TABLE IF EXISTS `fieldlayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayout` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `layout_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAYOUTSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayout`
--

LOCK TABLES `fieldlayout` WRITE;
/*!40000 ALTER TABLE `fieldlayout` DISABLE KEYS */;
INSERT INTO `fieldlayout` VALUES (10000,'Default Field Configuration','The default field configuration','default',NULL);
/*!40000 ALTER TABLE `fieldlayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayoutitem`
--

DROP TABLE IF EXISTS `fieldlayoutitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutitem` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDLAYOUT` decimal(18,0) DEFAULT NULL,
  `FIELDIDENTIFIER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `VERTICALPOSITION` decimal(18,0) DEFAULT NULL,
  `ISHIDDEN` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `ISREQUIRED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `RENDERERTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_fli_fieldidentifier` (`FIELDIDENTIFIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutitem`
--

LOCK TABLES `fieldlayoutitem` WRITE;
/*!40000 ALTER TABLE `fieldlayoutitem` DISABLE KEYS */;
INSERT INTO `fieldlayoutitem` VALUES (10151,10000,'summary',NULL,NULL,'false','true','jira-text-renderer'),(10152,10000,'issuetype',NULL,NULL,'false','true','jira-text-renderer'),(10153,10000,'security',NULL,NULL,'false','false','jira-text-renderer'),(10154,10000,'priority',NULL,NULL,'false','false','jira-text-renderer'),(10155,10000,'duedate',NULL,NULL,'false','false','jira-text-renderer'),(10156,10000,'components',NULL,NULL,'false','false','frother-control-renderer'),(10157,10000,'versions',NULL,NULL,'false','false','frother-control-renderer'),(10158,10000,'fixVersions',NULL,NULL,'false','false','frother-control-renderer'),(10159,10000,'assignee',NULL,NULL,'false','false','jira-text-renderer'),(10160,10000,'reporter',NULL,NULL,'false','true','jira-text-renderer'),(10161,10000,'environment','For example operating system, software platform and/or hardware specifications (include as appropriate for the issue).',NULL,'false','false','atlassian-wiki-renderer'),(10162,10000,'description',NULL,NULL,'false','false','atlassian-wiki-renderer'),(10163,10000,'timetracking','An estimate of how much work remains until this issue will be resolved.<br>The format of this is \' *w *d *h *m \' (representing weeks, days, hours and minutes - where * can be any number)<br>Examples: 4d, 5h 30m, 60m and 3w.<br>',NULL,'false','false','jira-text-renderer'),(10164,10000,'resolution',NULL,NULL,'false','false','jira-text-renderer'),(10165,10000,'attachment',NULL,NULL,'false','false','jira-text-renderer'),(10166,10000,'comment',NULL,NULL,'false','false','atlassian-wiki-renderer'),(10167,10000,'labels',NULL,NULL,'false','false','jira-text-renderer'),(10168,10000,'worklog','Allows work to be logged whilst creating, editing or transitioning issues.',NULL,'false','false','atlassian-wiki-renderer'),(10169,10000,'issuelinks',NULL,NULL,'false','false','jira-text-renderer'),(10170,10000,'customfield_10000','Allows to flag issues with impediments.',NULL,'false','false','jira-text-renderer'),(10171,10000,'customfield_10001','Field that will help you regroup issues under an Epic or under a theme.',NULL,'false','false','jira-text-renderer'),(10172,10000,'customfield_10002','Measurement of complexity and/or size of a requirement.',NULL,'false','false','jira-text-renderer'),(10173,10000,'customfield_10003','Measurement of business value of a requirement.',NULL,'false','false','jira-text-renderer'),(10174,10000,'customfield_10005','JIRA Software sprint field',NULL,'false','false','jira-text-renderer'),(10175,10000,'customfield_10006','Choose an epic to assign this issue to.',NULL,'false','false','jira-text-renderer'),(10176,10000,'customfield_10007','Epic Status field for JIRA Software use only.',NULL,'false','false','jira-text-renderer'),(10177,10000,'customfield_10008','Provide a short name to identify this epic.',NULL,'false','true','jira-text-renderer'),(10178,10000,'customfield_10004','Global rank field for JIRA Software use only.',NULL,'false','false','jira-text-renderer'),(10179,10000,'customfield_10009','Epic Colour field for JIRA Software use only.',NULL,'false','false','jira-text-renderer');
/*!40000 ALTER TABLE `fieldlayoutitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayoutscheme`
--

DROP TABLE IF EXISTS `fieldlayoutscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutscheme`
--

LOCK TABLES `fieldlayoutscheme` WRITE;
/*!40000 ALTER TABLE `fieldlayoutscheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `fieldlayoutscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayoutschemeassociation`
--

DROP TABLE IF EXISTS `fieldlayoutschemeassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutschemeassociation` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `FIELDLAYOUTSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fl_scheme_assoc` (`PROJECT`,`ISSUETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutschemeassociation`
--

LOCK TABLES `fieldlayoutschemeassociation` WRITE;
/*!40000 ALTER TABLE `fieldlayoutschemeassociation` DISABLE KEYS */;
/*!40000 ALTER TABLE `fieldlayoutschemeassociation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayoutschemeentity`
--

DROP TABLE IF EXISTS `fieldlayoutschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIELDLAYOUT` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldlayout_scheme` (`SCHEME`),
  KEY `fieldlayout_layout` (`FIELDLAYOUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutschemeentity`
--

LOCK TABLES `fieldlayoutschemeentity` WRITE;
/*!40000 ALTER TABLE `fieldlayoutschemeentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `fieldlayoutschemeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldscreen`
--

DROP TABLE IF EXISTS `fieldscreen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreen` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldscreen`
--

LOCK TABLES `fieldscreen` WRITE;
/*!40000 ALTER TABLE `fieldscreen` DISABLE KEYS */;
INSERT INTO `fieldscreen` VALUES (1,'Default Screen','Allows to update all system fields.'),(2,'Workflow Screen','This screen is used in the workflow and enables you to assign issues'),(3,'Resolve Issue Screen','Allows to set resolution, change fix versions and assign an issue.'),(10000,'DEMO: Scrum Default Issue Screen',''),(10001,'DEMO: Scrum Bug Screen',''),(10002,'DEMO: Scrum Default Issue Screen (1)',''),(10003,'DEMO: Scrum Bug Screen (1)',''),(10004,'DEMO: Scrum Default Issue Screen (2)',''),(10005,'DEMO: Scrum Bug Screen (2)','');
/*!40000 ALTER TABLE `fieldscreen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldscreenlayoutitem`
--

DROP TABLE IF EXISTS `fieldscreenlayoutitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreenlayoutitem` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDIDENTIFIER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `FIELDSCREENTAB` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldscitem_tab` (`FIELDSCREENTAB`),
  KEY `fieldscreen_field` (`FIELDIDENTIFIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldscreenlayoutitem`
--

LOCK TABLES `fieldscreenlayoutitem` WRITE;
/*!40000 ALTER TABLE `fieldscreenlayoutitem` DISABLE KEYS */;
INSERT INTO `fieldscreenlayoutitem` VALUES (10000,'summary',0,10000),(10001,'issuetype',1,10000),(10002,'security',2,10000),(10003,'priority',3,10000),(10004,'duedate',4,10000),(10005,'components',5,10000),(10006,'versions',6,10000),(10007,'fixVersions',7,10000),(10008,'assignee',8,10000),(10009,'reporter',9,10000),(10010,'environment',10,10000),(10011,'description',11,10000),(10012,'timetracking',12,10000),(10013,'attachment',13,10000),(10014,'assignee',0,10001),(10015,'resolution',0,10002),(10016,'fixVersions',1,10002),(10017,'assignee',2,10002),(10018,'worklog',3,10002),(10100,'labels',14,10000),(10200,'summary',1,10100),(10201,'issuetype',2,10100),(10202,'reporter',3,10100),(10203,'components',4,10100),(10204,'description',5,10100),(10205,'fixVersions',6,10100),(10206,'priority',7,10100),(10207,'labels',8,10100),(10208,'security',9,10100),(10209,'attachment',10,10100),(10210,'issuelinks',11,10100),(10211,'assignee',12,10100),(10212,'summary',0,10101),(10213,'issuetype',1,10101),(10214,'reporter',2,10101),(10215,'components',3,10101),(10216,'description',4,10101),(10217,'fixVersions',5,10101),(10218,'priority',6,10101),(10219,'labels',7,10101),(10220,'security',8,10101),(10221,'environment',9,10101),(10222,'attachment',10,10101),(10223,'versions',11,10101),(10224,'issuelinks',12,10101),(10225,'assignee',13,10101),(10226,'customfield_10008',0,10100),(10227,'customfield_10006',13,10100),(10228,'customfield_10006',14,10101),(10229,'customfield_10005',14,10100),(10230,'customfield_10005',15,10101),(10231,'summary',1,10102),(10232,'issuetype',2,10102),(10233,'reporter',3,10102),(10234,'components',4,10102),(10235,'description',5,10102),(10236,'fixVersions',6,10102),(10237,'priority',7,10102),(10238,'labels',8,10102),(10239,'security',9,10102),(10240,'attachment',10,10102),(10241,'issuelinks',11,10102),(10242,'assignee',12,10102),(10243,'summary',0,10103),(10244,'issuetype',1,10103),(10245,'reporter',2,10103),(10246,'components',3,10103),(10247,'description',4,10103),(10248,'fixVersions',5,10103),(10249,'priority',6,10103),(10250,'labels',7,10103),(10251,'security',8,10103),(10252,'environment',9,10103),(10253,'attachment',10,10103),(10254,'versions',11,10103),(10255,'issuelinks',12,10103),(10256,'assignee',13,10103),(10257,'customfield_10008',0,10102),(10258,'customfield_10006',13,10102),(10259,'customfield_10006',14,10103),(10260,'customfield_10005',14,10102),(10261,'customfield_10005',15,10103),(10262,'summary',1,10104),(10263,'issuetype',2,10104),(10264,'reporter',3,10104),(10265,'components',4,10104),(10266,'description',5,10104),(10267,'fixVersions',6,10104),(10268,'priority',7,10104),(10269,'labels',8,10104),(10270,'security',9,10104),(10271,'attachment',10,10104),(10272,'issuelinks',11,10104),(10273,'assignee',12,10104),(10274,'summary',0,10105),(10275,'issuetype',1,10105),(10276,'reporter',2,10105),(10277,'components',3,10105),(10278,'description',4,10105),(10279,'fixVersions',5,10105),(10280,'priority',6,10105),(10281,'labels',7,10105),(10282,'security',8,10105),(10283,'environment',9,10105),(10284,'attachment',10,10105),(10285,'versions',11,10105),(10286,'issuelinks',12,10105),(10287,'assignee',13,10105),(10288,'customfield_10008',0,10104),(10289,'customfield_10006',13,10104),(10290,'customfield_10006',14,10105),(10291,'customfield_10005',14,10104),(10292,'customfield_10005',15,10105);
/*!40000 ALTER TABLE `fieldscreenlayoutitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldscreenscheme`
--

DROP TABLE IF EXISTS `fieldscreenscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreenscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldscreenscheme`
--

LOCK TABLES `fieldscreenscheme` WRITE;
/*!40000 ALTER TABLE `fieldscreenscheme` DISABLE KEYS */;
INSERT INTO `fieldscreenscheme` VALUES (1,'Default Screen Scheme','Default Screen Scheme'),(10000,'DEMO: Scrum Default Screen Scheme',''),(10001,'DEMO: Scrum Bug Screen Scheme',''),(10002,'DEMO: Scrum Default Screen Scheme (1)',''),(10003,'DEMO: Scrum Bug Screen Scheme (1)',''),(10004,'DEMO: Scrum Default Screen Scheme (2)',''),(10005,'DEMO: Scrum Bug Screen Scheme (2)','');
/*!40000 ALTER TABLE `fieldscreenscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldscreenschemeitem`
--

DROP TABLE IF EXISTS `fieldscreenschemeitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreenschemeitem` (
  `ID` decimal(18,0) NOT NULL,
  `OPERATION` decimal(18,0) DEFAULT NULL,
  `FIELDSCREEN` decimal(18,0) DEFAULT NULL,
  `FIELDSCREENSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `screenitem_scheme` (`FIELDSCREENSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldscreenschemeitem`
--

LOCK TABLES `fieldscreenschemeitem` WRITE;
/*!40000 ALTER TABLE `fieldscreenschemeitem` DISABLE KEYS */;
INSERT INTO `fieldscreenschemeitem` VALUES (10000,NULL,1,1),(10100,NULL,10000,10000),(10101,NULL,10001,10001),(10102,NULL,10002,10002),(10103,NULL,10003,10003),(10104,NULL,10004,10004),(10105,NULL,10005,10005);
/*!40000 ALTER TABLE `fieldscreenschemeitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldscreentab`
--

DROP TABLE IF EXISTS `fieldscreentab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreentab` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `FIELDSCREEN` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldscreen_tab` (`FIELDSCREEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldscreentab`
--

LOCK TABLES `fieldscreentab` WRITE;
/*!40000 ALTER TABLE `fieldscreentab` DISABLE KEYS */;
INSERT INTO `fieldscreentab` VALUES (10000,'Field Tab',NULL,0,1),(10001,'Field Tab',NULL,0,2),(10002,'Field Tab',NULL,0,3),(10100,'Field Tab',NULL,0,10000),(10101,'Field Tab',NULL,0,10001),(10102,'Field Tab',NULL,0,10002),(10103,'Field Tab',NULL,0,10003),(10104,'Field Tab',NULL,0,10004),(10105,'Field Tab',NULL,0,10005);
/*!40000 ALTER TABLE `fieldscreentab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileattachment`
--

DROP TABLE IF EXISTS `fileattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileattachment` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `MIMETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FILENAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `FILESIZE` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zip` decimal(9,0) DEFAULT NULL,
  `thumbnailable` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `attach_issue` (`issueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileattachment`
--

LOCK TABLES `fileattachment` WRITE;
/*!40000 ALTER TABLE `fileattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `fileattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtersubscription`
--

DROP TABLE IF EXISTS `filtersubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtersubscription` (
  `ID` decimal(18,0) NOT NULL,
  `FILTER_I_D` decimal(18,0) DEFAULT NULL,
  `USERNAME` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `groupname` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `LAST_RUN` datetime DEFAULT NULL,
  `EMAIL_ON_EMPTY` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `subscrpt_user` (`FILTER_I_D`,`USERNAME`),
  KEY `subscrptn_group` (`FILTER_I_D`,`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtersubscription`
--

LOCK TABLES `filtersubscription` WRITE;
/*!40000 ALTER TABLE `filtersubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `filtersubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgetuserpreference`
--

DROP TABLE IF EXISTS `gadgetuserpreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgetuserpreference` (
  `ID` decimal(18,0) NOT NULL,
  `PORTLETCONFIGURATION` decimal(18,0) DEFAULT NULL,
  `USERPREFKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USERPREFVALUE` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `userpref_portletconfiguration` (`PORTLETCONFIGURATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgetuserpreference`
--

LOCK TABLES `gadgetuserpreference` WRITE;
/*!40000 ALTER TABLE `gadgetuserpreference` DISABLE KEYS */;
INSERT INTO `gadgetuserpreference` VALUES (10000,10002,'isConfigured','true'),(10001,10003,'keys','__all_projects__'),(10002,10003,'isConfigured','true'),(10003,10003,'title','Your Company JIRA'),(10004,10003,'numofentries','5');
/*!40000 ALTER TABLE `gadgetuserpreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genericconfiguration`
--

DROP TABLE IF EXISTS `genericconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genericconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `DATATYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DATAKEY` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `XMLVALUE` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `type_key` (`DATATYPE`,`DATAKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genericconfiguration`
--

LOCK TABLES `genericconfiguration` WRITE;
/*!40000 ALTER TABLE `genericconfiguration` DISABLE KEYS */;
INSERT INTO `genericconfiguration` VALUES (10000,'DefaultValue','10000','<string>1</string>'),(10100,'DefaultValue','10105','<string>10001</string>'),(10101,'DefaultValue','10108','<long>10001</long>'),(10102,'DefaultValue','10111','<string>10001</string>'),(10103,'DefaultValue','10112','<string>10001</string>');
/*!40000 ALTER TABLE `genericconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globalpermissionentry`
--

DROP TABLE IF EXISTS `globalpermissionentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalpermissionentry` (
  `ID` decimal(18,0) NOT NULL,
  `PERMISSION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globalpermissionentry`
--

LOCK TABLES `globalpermissionentry` WRITE;
/*!40000 ALTER TABLE `globalpermissionentry` DISABLE KEYS */;
INSERT INTO `globalpermissionentry` VALUES (10000,'ADMINISTER','jira-administrators'),(10006,'SYSTEM_ADMIN','jira-administrators'),(10100,'CREATE_SHARED_OBJECTS','jira-software-users'),(10101,'MANAGE_GROUP_FILTER_SUBSCRIPTIONS','jira-software-users'),(10102,'USER_PICKER','jira-software-users'),(10103,'BULK_CHANGE','jira-software-users'),(10104,'CREATE_SHARED_OBJECTS','jira-administrators'),(10105,'BULK_CHANGE','jira-administrators'),(10106,'USER_PICKER','jira-administrators'),(10107,'MANAGE_GROUP_FILTER_SUBSCRIPTIONS','jira-administrators');
/*!40000 ALTER TABLE `globalpermissionentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupbase`
--

DROP TABLE IF EXISTS `groupbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupbase` (
  `ID` decimal(18,0) NOT NULL,
  `groupname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `osgroup_name` (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupbase`
--

LOCK TABLES `groupbase` WRITE;
/*!40000 ALTER TABLE `groupbase` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuelink`
--

DROP TABLE IF EXISTS `issuelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuelink` (
  `ID` decimal(18,0) NOT NULL,
  `LINKTYPE` decimal(18,0) DEFAULT NULL,
  `SOURCE` decimal(18,0) DEFAULT NULL,
  `DESTINATION` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `issuelink_src` (`SOURCE`),
  KEY `issuelink_dest` (`DESTINATION`),
  KEY `issuelink_type` (`LINKTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuelink`
--

LOCK TABLES `issuelink` WRITE;
/*!40000 ALTER TABLE `issuelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuelinktype`
--

DROP TABLE IF EXISTS `issuelinktype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuelinktype` (
  `ID` decimal(18,0) NOT NULL,
  `LINKNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `INWARD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OUTWARD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pstyle` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `linktypename` (`LINKNAME`),
  KEY `linktypestyle` (`pstyle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuelinktype`
--

LOCK TABLES `issuelinktype` WRITE;
/*!40000 ALTER TABLE `issuelinktype` DISABLE KEYS */;
INSERT INTO `issuelinktype` VALUES (10000,'Blocks','is blocked by','blocks',NULL),(10001,'Cloners','is cloned by','clones',NULL),(10002,'Duplicate','is duplicated by','duplicates',NULL),(10003,'Relates','relates to','relates to',NULL),(10100,'jira_subtask_link','jira_subtask_inward','jira_subtask_outward','jira_subtask'),(10200,'Epic-Story Link','has Epic','is Epic of','jira_gh_epic_story');
/*!40000 ALTER TABLE `issuelinktype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuesecurityscheme`
--

DROP TABLE IF EXISTS `issuesecurityscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuesecurityscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `DEFAULTLEVEL` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuesecurityscheme`
--

LOCK TABLES `issuesecurityscheme` WRITE;
/*!40000 ALTER TABLE `issuesecurityscheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuesecurityscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuestatus`
--

DROP TABLE IF EXISTS `issuestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuestatus` (
  `ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `ICONURL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUSCATEGORY` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuestatus`
--

LOCK TABLES `issuestatus` WRITE;
/*!40000 ALTER TABLE `issuestatus` DISABLE KEYS */;
INSERT INTO `issuestatus` VALUES ('1',1,'Open','The issue is open and ready for the assignee to start work on it.','/images/icons/statuses/open.png',2),('10000',7,'To Do','','/',2),('10001',8,'Done','','/',3),('3',3,'In Progress','This issue is being actively worked on at the moment by the assignee.','/images/icons/statuses/inprogress.png',4),('4',4,'Reopened','This issue was once resolved, but the resolution was deemed incorrect. From here issues are either marked assigned or resolved.','/images/icons/statuses/reopened.png',2),('5',5,'Resolved','A resolution has been taken, and it is awaiting verification by reporter. From here issues are either reopened, or are closed.','/images/icons/statuses/resolved.png',3),('6',6,'Closed','The issue is considered finished, the resolution is correct. Issues which are closed can be reopened.','/images/icons/statuses/closed.png',3);
/*!40000 ALTER TABLE `issuestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuetype`
--

DROP TABLE IF EXISTS `issuetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuetype` (
  `ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `pstyle` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `ICONURL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `AVATAR` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuetype`
--

LOCK TABLES `issuetype` WRITE;
/*!40000 ALTER TABLE `issuetype` DISABLE KEYS */;
INSERT INTO `issuetype` VALUES ('10000',1,'Epic',NULL,'Created by JIRA Software - do not edit or delete. Issue type for a big user story that needs to be broken down.','/images/icons/issuetypes/epic.svg',NULL),('10001',2,'Story',NULL,'Created by JIRA Software - do not edit or delete. Issue type for a user story.','/images/icons/issuetypes/story.svg',NULL),('10002',NULL,'Task','','A task that needs to be done.',NULL,10318),('10003',NULL,'Sub-task','jira_subtask','The sub-task of the issue',NULL,10316),('10004',NULL,'Bug','','A problem which impairs or prevents the functions of the product.',NULL,10303);
/*!40000 ALTER TABLE `issuetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuetypescreenscheme`
--

DROP TABLE IF EXISTS `issuetypescreenscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuetypescreenscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuetypescreenscheme`
--

LOCK TABLES `issuetypescreenscheme` WRITE;
/*!40000 ALTER TABLE `issuetypescreenscheme` DISABLE KEYS */;
INSERT INTO `issuetypescreenscheme` VALUES (1,'Default Issue Type Screen Scheme','The default issue type screen scheme'),(10000,'DEMO: Scrum Issue Type Screen Scheme',''),(10001,'DEMO: Scrum Issue Type Screen Scheme (1)',''),(10002,'DEMO: Scrum Issue Type Screen Scheme (2)','');
/*!40000 ALTER TABLE `issuetypescreenscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuetypescreenschemeentity`
--

DROP TABLE IF EXISTS `issuetypescreenschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuetypescreenschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `FIELDSCREENSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldscreen_scheme` (`FIELDSCREENSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuetypescreenschemeentity`
--

LOCK TABLES `issuetypescreenschemeentity` WRITE;
/*!40000 ALTER TABLE `issuetypescreenschemeentity` DISABLE KEYS */;
INSERT INTO `issuetypescreenschemeentity` VALUES (10000,NULL,1,1),(10100,NULL,10000,10000),(10101,'10004',10000,10001),(10102,NULL,10001,10002),(10103,'10004',10001,10003),(10104,NULL,10002,10004),(10105,'10004',10002,10005);
/*!40000 ALTER TABLE `issuetypescreenschemeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraaction`
--

DROP TABLE IF EXISTS `jiraaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraaction` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `actiontype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `actionlevel` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rolelevel` decimal(18,0) DEFAULT NULL,
  `actionbody` longtext COLLATE utf8_bin,
  `CREATED` datetime DEFAULT NULL,
  `UPDATEAUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `actionnum` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `action_author_created` (`AUTHOR`,`CREATED`),
  KEY `action_issue` (`issueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraaction`
--

LOCK TABLES `jiraaction` WRITE;
/*!40000 ALTER TABLE `jiraaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jiraaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiradraftworkflows`
--

DROP TABLE IF EXISTS `jiradraftworkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiradraftworkflows` (
  `ID` decimal(18,0) NOT NULL,
  `PARENTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTOR` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiradraftworkflows`
--

LOCK TABLES `jiradraftworkflows` WRITE;
/*!40000 ALTER TABLE `jiradraftworkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `jiradraftworkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraeventtype`
--

DROP TABLE IF EXISTS `jiraeventtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraeventtype` (
  `ID` decimal(18,0) NOT NULL,
  `TEMPLATE_ID` decimal(18,0) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `event_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraeventtype`
--

LOCK TABLES `jiraeventtype` WRITE;
/*!40000 ALTER TABLE `jiraeventtype` DISABLE KEYS */;
INSERT INTO `jiraeventtype` VALUES (1,NULL,'Issue Created','This is the \'issue created\' event.','jira.system.event.type'),(2,NULL,'Issue Updated','This is the \'issue updated\' event.','jira.system.event.type'),(3,NULL,'Issue Assigned','This is the \'issue assigned\' event.','jira.system.event.type'),(4,NULL,'Issue Resolved','This is the \'issue resolved\' event.','jira.system.event.type'),(5,NULL,'Issue Closed','This is the \'issue closed\' event.','jira.system.event.type'),(6,NULL,'Issue Commented','This is the \'issue commented\' event.','jira.system.event.type'),(7,NULL,'Issue Reopened','This is the \'issue reopened\' event.','jira.system.event.type'),(8,NULL,'Issue Deleted','This is the \'issue deleted\' event.','jira.system.event.type'),(9,NULL,'Issue Moved','This is the \'issue moved\' event.','jira.system.event.type'),(10,NULL,'Work Logged On Issue','This is the \'work logged on issue\' event.','jira.system.event.type'),(11,NULL,'Work Started On Issue','This is the \'work started on issue\' event.','jira.system.event.type'),(12,NULL,'Work Stopped On Issue','This is the \'work stopped on issue\' event.','jira.system.event.type'),(13,NULL,'Generic Event','This is the \'generic event\' event.','jira.system.event.type'),(14,NULL,'Issue Comment Edited','This is the \'issue comment edited\' event.','jira.system.event.type'),(15,NULL,'Issue Worklog Updated','This is the \'issue worklog updated\' event.','jira.system.event.type'),(16,NULL,'Issue Worklog Deleted','This is the \'issue worklog deleted\' event.','jira.system.event.type'),(17,NULL,'Issue Comment Deleted','This is the \'issue comment deleted\' event.','jira.system.event.type');
/*!40000 ALTER TABLE `jiraeventtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraissue`
--

DROP TABLE IF EXISTS `jiraissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraissue` (
  `ID` decimal(18,0) NOT NULL,
  `pkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issuenum` decimal(18,0) DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `REPORTER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` longtext COLLATE utf8_bin,
  `ENVIRONMENT` longtext COLLATE utf8_bin,
  `PRIORITY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RESOLUTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issuestatus` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `DUEDATE` datetime DEFAULT NULL,
  `RESOLUTIONDATE` datetime DEFAULT NULL,
  `VOTES` decimal(18,0) DEFAULT NULL,
  `WATCHES` decimal(18,0) DEFAULT NULL,
  `TIMEORIGINALESTIMATE` decimal(18,0) DEFAULT NULL,
  `TIMEESTIMATE` decimal(18,0) DEFAULT NULL,
  `TIMESPENT` decimal(18,0) DEFAULT NULL,
  `WORKFLOW_ID` decimal(18,0) DEFAULT NULL,
  `SECURITY` decimal(18,0) DEFAULT NULL,
  `FIXFOR` decimal(18,0) DEFAULT NULL,
  `COMPONENT` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `issue_proj_num` (`issuenum`,`PROJECT`),
  KEY `issue_proj_status` (`PROJECT`,`issuestatus`),
  KEY `issue_updated` (`UPDATED`),
  KEY `issue_assignee` (`ASSIGNEE`),
  KEY `issue_reporter` (`REPORTER`),
  KEY `issue_workflow` (`WORKFLOW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraissue`
--

LOCK TABLES `jiraissue` WRITE;
/*!40000 ALTER TABLE `jiraissue` DISABLE KEYS */;
INSERT INTO `jiraissue` VALUES (10002,NULL,1,10002,'jenkins','jenkins','jenkins','10002','demo issue1',NULL,NULL,'3',NULL,'3','2016-02-16 15:06:38','2016-02-16 15:06:52',NULL,NULL,0,1,NULL,NULL,NULL,10002,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jiraissue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraperms`
--

DROP TABLE IF EXISTS `jiraperms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraperms` (
  `ID` decimal(18,0) NOT NULL,
  `permtype` decimal(18,0) DEFAULT NULL,
  `projectid` decimal(18,0) DEFAULT NULL,
  `groupname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraperms`
--

LOCK TABLES `jiraperms` WRITE;
/*!40000 ALTER TABLE `jiraperms` DISABLE KEYS */;
/*!40000 ALTER TABLE `jiraperms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiraworkflows`
--

DROP TABLE IF EXISTS `jiraworkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraworkflows` (
  `ID` decimal(18,0) NOT NULL,
  `workflowname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creatorname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTOR` longtext COLLATE utf8_bin,
  `ISLOCKED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraworkflows`
--

LOCK TABLES `jiraworkflows` WRITE;
/*!40000 ALTER TABLE `jiraworkflows` DISABLE KEYS */;
INSERT INTO `jiraworkflows` VALUES (10000,'classic default workflow',NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE workflow PUBLIC \"-//OpenSymphony Group//DTD OSWorkflow 2.8//EN\" \"http://www.opensymphony.com/osworkflow/workflow_2_8.dtd\">\n<workflow>\n  <meta name=\"jira.description\">The classic JIRA default workflow</meta>\n  <initial-actions>\n    <action id=\"1\" name=\"Create Issue\">\n      <meta name=\"opsbar-sequence\">0</meta>\n      <meta name=\"jira.i18n.title\">common.forms.create</meta>\n      <validators>\n        <validator name=\"\" type=\"class\">\n          <arg name=\"class.name\">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n          <arg name=\"permission\">Create Issue</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status=\"Finished\" status=\"Open\" step=\"1\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name=\"eventTypeId\">1</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <common-actions>\n    <action id=\"2\" name=\"Close Issue\" view=\"resolveissue\">\n      <meta name=\"opsbar-sequence\">60</meta>\n      <meta name=\"jira.i18n.submit\">closeissue.close</meta>\n      <meta name=\"jira.i18n.description\">closeissue.desc</meta>\n      <meta name=\"jira.i18n.title\">closeissue.title</meta>\n      <restrict-to>\n        <conditions type=\"AND\">\n          <condition type=\"class\">\n            <arg name=\"class.name\">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name=\"permission\">Resolve Issue</arg>\n          </condition>\n          <condition type=\"class\">\n            <arg name=\"class.name\">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name=\"permission\">Close Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status=\"Finished\" status=\"Closed\" step=\"6\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name=\"eventTypeId\">5</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id=\"3\" name=\"Reopen Issue\" view=\"commentassign\">\n      <meta name=\"opsbar-sequence\">80</meta>\n      <meta name=\"jira.i18n.submit\">issue.operations.reopen.issue</meta>\n      <meta name=\"jira.i18n.description\">issue.operations.reopen.description</meta>\n      <meta name=\"jira.i18n.title\">issue.operations.reopen.issue</meta>\n      <restrict-to>\n        <conditions>\n          <condition type=\"class\">\n            <arg name=\"class.name\">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name=\"permission\">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status=\"Finished\" status=\"Reopened\" step=\"5\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name=\"field.value\"></arg>\n              <arg name=\"field.name\">resolution</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name=\"eventTypeId\">7</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id=\"4\" name=\"Start Progress\">\n      <meta name=\"opsbar-sequence\">20</meta>\n      <meta name=\"jira.i18n.title\">startprogress.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type=\"class\">\n            <arg name=\"class.name\">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status=\"Finished\" status=\"Underway\" step=\"3\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name=\"field.value\"></arg>\n              <arg name=\"field.name\">resolution</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name=\"eventTypeId\">11</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id=\"5\" name=\"Resolve Issue\" view=\"resolveissue\">\n      <meta name=\"opsbar-sequence\">40</meta>\n      <meta name=\"jira.i18n.submit\">resolveissue.resolve</meta>\n      <meta name=\"jira.i18n.description\">resolveissue.desc.line1</meta>\n      <meta name=\"jira.i18n.title\">resolveissue.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type=\"class\">\n            <arg name=\"class.name\">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name=\"permission\">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status=\"Finished\" status=\"Resolved\" step=\"4\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name=\"eventTypeId\">4</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </common-actions>\n  <steps>\n    <step id=\"1\" name=\"Open\">\n      <meta name=\"jira.status.id\">1</meta>\n      <actions>\n<common-action id=\"4\" />\n<common-action id=\"5\" />\n<common-action id=\"2\" />\n      </actions>\n    </step>\n    <step id=\"3\" name=\"In Progress\">\n      <meta name=\"jira.status.id\">3</meta>\n      <actions>\n<common-action id=\"5\" />\n<common-action id=\"2\" />\n        <action id=\"301\" name=\"Stop Progress\">\n          <meta name=\"opsbar-sequence\">20</meta>\n          <meta name=\"jira.i18n.title\">stopprogress.title</meta>\n          <restrict-to>\n            <conditions>\n              <condition type=\"class\">\n                <arg name=\"class.name\">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status=\"Finished\" status=\"Assigned\" step=\"1\">\n              <post-functions>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                  <arg name=\"field.value\"></arg>\n                  <arg name=\"field.name\">resolution</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name=\"eventTypeId\">12</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id=\"4\" name=\"Resolved\">\n      <meta name=\"jira.status.id\">5</meta>\n      <actions>\n<common-action id=\"3\" />\n        <action id=\"701\" name=\"Close Issue\" view=\"commentassign\">\n          <meta name=\"opsbar-sequence\">60</meta>\n          <meta name=\"jira.i18n.submit\">closeissue.close</meta>\n          <meta name=\"jira.i18n.description\">closeissue.desc</meta>\n          <meta name=\"jira.i18n.title\">closeissue.title</meta>\n          <meta name=\"jira.description\">Closing an issue indicates there is no more work to be done on it, and it has been verified as complete.</meta>\n          <restrict-to>\n            <conditions>\n              <condition type=\"class\">\n                <arg name=\"class.name\">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n                <arg name=\"permission\">Close Issue</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status=\"Finished\" status=\"Closed\" step=\"6\">\n              <post-functions>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type=\"class\">\n                  <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name=\"eventTypeId\">5</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id=\"5\" name=\"Reopened\">\n      <meta name=\"jira.status.id\">4</meta>\n      <actions>\n<common-action id=\"5\" />\n<common-action id=\"2\" />\n<common-action id=\"4\" />\n      </actions>\n    </step>\n    <step id=\"6\" name=\"Closed\">\n      <meta name=\"jira.status.id\">6</meta>\n      <meta name=\"jira.issue.editable\">false</meta>\n      <actions>\n<common-action id=\"3\" />\n      </actions>\n    </step>\n  </steps>\n</workflow>\n',NULL),(10100,'Software Simplified Workflow for Project DEMO',NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE workflow PUBLIC \"-//OpenSymphony Group//DTD OSWorkflow 2.8//EN\" \"http://www.opensymphony.com/osworkflow/workflow_2_8.dtd\">\n<workflow>\n  <meta name=\"jira.description\">Generated by JIRA Software version 7.0.11. This workflow is managed internally by JIRA Software. Do not manually modify this workflow.</meta>\n  <meta name=\"jira.update.author.key\">suja</meta>\n  <meta name=\"jira.updated.date\">1455602447705</meta>\n  <meta name=\"jira.update.author.name\">admin</meta>\n  <meta name=\"gh.version\">7.0.11</meta>\n  <initial-actions>\n    <action id=\"1\" name=\"Create\">\n      <meta name=\"jira.i18n.title\">common.forms.create</meta>\n      <validators>\n        <validator name=\"\" type=\"class\">\n          <arg name=\"permission\">Create Issue</arg>\n          <arg name=\"class.name\">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status=\"null\" status=\"To Do\" step=\"1\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"eventTypeId\">1</arg>\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <global-actions>\n    <action id=\"11\" name=\"To Do\">\n      <meta name=\"jira.description\"></meta>\n      <meta name=\"jira.i18n.title\">gh.workflow.preset.todo</meta>\n      <results>\n        <unconditional-result old-status=\"Not Done\" status=\"Done\" step=\"1\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"field.name\">resolution</arg>\n              <arg name=\"field.value\"></arg>\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"eventTypeId\">13</arg>\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id=\"21\" name=\"In Progress\">\n      <meta name=\"jira.description\"></meta>\n      <meta name=\"jira.i18n.title\">gh.workflow.preset.inprogress</meta>\n      <results>\n        <unconditional-result old-status=\"Not Done\" status=\"Done\" step=\"6\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"field.name\">resolution</arg>\n              <arg name=\"field.value\"></arg>\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"eventTypeId\">13</arg>\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id=\"31\" name=\"Done\">\n      <meta name=\"jira.description\"></meta>\n      <meta name=\"jira.i18n.title\">gh.workflow.preset.done</meta>\n      <results>\n        <unconditional-result old-status=\"Not Done\" status=\"Done\" step=\"11\">\n          <post-functions>\n            <function type=\"class\">\n              <arg name=\"field.name\">resolution</arg>\n              <arg name=\"field.value\">10000</arg>\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type=\"class\">\n              <arg name=\"eventTypeId\">13</arg>\n              <arg name=\"class.name\">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </global-actions>\n  <steps>\n    <step id=\"1\" name=\"To Do\">\n      <meta name=\"jira.status.id\">10000</meta>\n    </step>\n    <step id=\"6\" name=\"In Progress\">\n      <meta name=\"jira.status.id\">3</meta>\n    </step>\n    <step id=\"11\" name=\"Done\">\n      <meta name=\"jira.status.id\">10001</meta>\n    </step>\n  </steps>\n</workflow>\n',NULL);
/*!40000 ALTER TABLE `jiraworkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `label` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDID` decimal(18,0) DEFAULT NULL,
  `ISSUE` decimal(18,0) DEFAULT NULL,
  `LABEL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `label_fieldissue` (`ISSUE`,`FIELDID`),
  KEY `label_fieldissuelabel` (`ISSUE`,`FIELDID`,`LABEL`),
  KEY `label_label` (`LABEL`),
  KEY `label_issue` (`ISSUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenserolesdefault`
--

DROP TABLE IF EXISTS `licenserolesdefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenserolesdefault` (
  `ID` decimal(18,0) NOT NULL,
  `LICENSE_ROLE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `licenseroledefault_index` (`LICENSE_ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenserolesdefault`
--

LOCK TABLES `licenserolesdefault` WRITE;
/*!40000 ALTER TABLE `licenserolesdefault` DISABLE KEYS */;
INSERT INTO `licenserolesdefault` VALUES (10000,'jira-software');
/*!40000 ALTER TABLE `licenserolesdefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenserolesgroup`
--

DROP TABLE IF EXISTS `licenserolesgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenserolesgroup` (
  `ID` decimal(18,0) NOT NULL,
  `LICENSE_ROLE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PRIMARY_GROUP` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `licenserolegroup_index` (`LICENSE_ROLE_NAME`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenserolesgroup`
--

LOCK TABLES `licenserolesgroup` WRITE;
/*!40000 ALTER TABLE `licenserolesgroup` DISABLE KEYS */;
INSERT INTO `licenserolesgroup` VALUES (10000,'jira-software','jira-software-users','Y'),(10001,'jira-software','jira-administrators','N');
/*!40000 ALTER TABLE `licenserolesgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listenerconfig`
--

DROP TABLE IF EXISTS `listenerconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listenerconfig` (
  `ID` decimal(18,0) NOT NULL,
  `CLAZZ` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `listenername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listenerconfig`
--

LOCK TABLES `listenerconfig` WRITE;
/*!40000 ALTER TABLE `listenerconfig` DISABLE KEYS */;
INSERT INTO `listenerconfig` VALUES (10000,'com.atlassian.jira.event.listeners.mail.MailListener','Mail Listener'),(10001,'com.atlassian.jira.event.listeners.history.IssueAssignHistoryListener','Issue Assignment Listener'),(10002,'com.atlassian.jira.event.listeners.search.IssueIndexListener','Issue Index Listener'),(10200,'com.atlassian.jira.event.listeners.search.IssueIndexListener','Issue Index Listener');
/*!40000 ALTER TABLE `listenerconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailserver`
--

DROP TABLE IF EXISTS `mailserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailserver` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `mailfrom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PREFIX` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `smtp_port` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `protocol` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `server_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `SERVERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JNDILOCATION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mailusername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mailpassword` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ISTLSREQUIRED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `TIMEOUT` decimal(18,0) DEFAULT NULL,
  `socks_port` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `socks_host` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailserver`
--

LOCK TABLES `mailserver` WRITE;
/*!40000 ALTER TABLE `mailserver` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managedconfigurationitem`
--

DROP TABLE IF EXISTS `managedconfigurationitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managedconfigurationitem` (
  `ID` decimal(18,0) NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ITEM_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MANAGED` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ACCESS_LEVEL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SOURCE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `managedconfigitem_id_type_idx` (`ITEM_ID`,`ITEM_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managedconfigurationitem`
--

LOCK TABLES `managedconfigurationitem` WRITE;
/*!40000 ALTER TABLE `managedconfigurationitem` DISABLE KEYS */;
INSERT INTO `managedconfigurationitem` VALUES (10000,'customfield_10004','CUSTOM_FIELD','true','LOCKED','com.pyxis.greenhopper.jira:reference-select-locked','gh.customfield.locked.desc'),(10001,'customfield_10005','CUSTOM_FIELD','true','LOCKED','com.pyxis.greenhopper.jira:reference-select-locked','gh.customfield.locked.desc'),(10002,'customfield_10006','CUSTOM_FIELD','true','LOCKED','com.pyxis.greenhopper.jira:reference-select-locked','gh.customfield.locked.desc'),(10003,'customfield_10007','CUSTOM_FIELD','true','LOCKED','com.pyxis.greenhopper.jira:reference-select-locked','gh.customfield.locked.desc'),(10004,'customfield_10008','CUSTOM_FIELD','true','LOCKED','com.pyxis.greenhopper.jira:reference-select-locked','gh.customfield.locked.desc'),(10005,'customfield_10009','CUSTOM_FIELD','true','LOCKED','com.pyxis.greenhopper.jira:reference-select-locked','gh.customfield.locked.desc');
/*!40000 ALTER TABLE `managedconfigurationitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membershipbase`
--

DROP TABLE IF EXISTS `membershipbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membershipbase` (
  `ID` decimal(18,0) NOT NULL,
  `USER_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `mshipbase_user` (`USER_NAME`),
  KEY `mshipbase_group` (`GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membershipbase`
--

LOCK TABLES `membershipbase` WRITE;
/*!40000 ALTER TABLE `membershipbase` DISABLE KEYS */;
/*!40000 ALTER TABLE `membershipbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moved_issue_key`
--

DROP TABLE IF EXISTS `moved_issue_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moved_issue_key` (
  `ID` decimal(18,0) NOT NULL,
  `OLD_ISSUE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ISSUE_ID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_old_issue_key` (`OLD_ISSUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moved_issue_key`
--

LOCK TABLES `moved_issue_key` WRITE;
/*!40000 ALTER TABLE `moved_issue_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `moved_issue_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodeassociation`
--

DROP TABLE IF EXISTS `nodeassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodeassociation` (
  `SOURCE_NODE_ID` decimal(18,0) NOT NULL,
  `SOURCE_NODE_ENTITY` varchar(60) COLLATE utf8_bin NOT NULL,
  `SINK_NODE_ID` decimal(18,0) NOT NULL,
  `SINK_NODE_ENTITY` varchar(60) COLLATE utf8_bin NOT NULL,
  `ASSOCIATION_TYPE` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`SOURCE_NODE_ID`,`SOURCE_NODE_ENTITY`,`SINK_NODE_ID`,`SINK_NODE_ENTITY`,`ASSOCIATION_TYPE`),
  KEY `node_source` (`SOURCE_NODE_ID`,`SOURCE_NODE_ENTITY`),
  KEY `node_sink` (`SINK_NODE_ID`,`SINK_NODE_ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodeassociation`
--

LOCK TABLES `nodeassociation` WRITE;
/*!40000 ALTER TABLE `nodeassociation` DISABLE KEYS */;
INSERT INTO `nodeassociation` VALUES (10002,'Project',10000,'NotificationScheme','ProjectScheme',NULL),(10002,'Project',10000,'PermissionScheme','ProjectScheme',NULL),(10002,'Project',10002,'IssueTypeScreenScheme','ProjectScheme',NULL),(10002,'Project',10100,'WorkflowScheme','ProjectScheme',NULL);
/*!40000 ALTER TABLE `nodeassociation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodeindexcounter`
--

DROP TABLE IF EXISTS `nodeindexcounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodeindexcounter` (
  `ID` decimal(18,0) NOT NULL,
  `NODE_ID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `SENDING_NODE_ID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `INDEX_OPERATION_ID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `node_id_idx` (`NODE_ID`,`SENDING_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodeindexcounter`
--

LOCK TABLES `nodeindexcounter` WRITE;
/*!40000 ALTER TABLE `nodeindexcounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodeindexcounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `EVENT` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `EVENT_TYPE_ID` decimal(18,0) DEFAULT NULL,
  `TEMPLATE_ID` decimal(18,0) DEFAULT NULL,
  `notif_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `notif_parameter` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ntfctn_scheme` (`SCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (10000,10000,NULL,1,NULL,'Current_Assignee',NULL),(10001,10000,NULL,1,NULL,'Current_Reporter',NULL),(10002,10000,NULL,1,NULL,'All_Watchers',NULL),(10003,10000,NULL,2,NULL,'Current_Assignee',NULL),(10004,10000,NULL,2,NULL,'Current_Reporter',NULL),(10005,10000,NULL,2,NULL,'All_Watchers',NULL),(10006,10000,NULL,3,NULL,'Current_Assignee',NULL),(10007,10000,NULL,3,NULL,'Current_Reporter',NULL),(10008,10000,NULL,3,NULL,'All_Watchers',NULL),(10009,10000,NULL,4,NULL,'Current_Assignee',NULL),(10010,10000,NULL,4,NULL,'Current_Reporter',NULL),(10011,10000,NULL,4,NULL,'All_Watchers',NULL),(10012,10000,NULL,5,NULL,'Current_Assignee',NULL),(10013,10000,NULL,5,NULL,'Current_Reporter',NULL),(10014,10000,NULL,5,NULL,'All_Watchers',NULL),(10015,10000,NULL,6,NULL,'Current_Assignee',NULL),(10016,10000,NULL,6,NULL,'Current_Reporter',NULL),(10017,10000,NULL,6,NULL,'All_Watchers',NULL),(10018,10000,NULL,7,NULL,'Current_Assignee',NULL),(10019,10000,NULL,7,NULL,'Current_Reporter',NULL),(10020,10000,NULL,7,NULL,'All_Watchers',NULL),(10021,10000,NULL,8,NULL,'Current_Assignee',NULL),(10022,10000,NULL,8,NULL,'Current_Reporter',NULL),(10023,10000,NULL,8,NULL,'All_Watchers',NULL),(10024,10000,NULL,9,NULL,'Current_Assignee',NULL),(10025,10000,NULL,9,NULL,'Current_Reporter',NULL),(10026,10000,NULL,9,NULL,'All_Watchers',NULL),(10027,10000,NULL,10,NULL,'Current_Assignee',NULL),(10028,10000,NULL,10,NULL,'Current_Reporter',NULL),(10029,10000,NULL,10,NULL,'All_Watchers',NULL),(10030,10000,NULL,11,NULL,'Current_Assignee',NULL),(10031,10000,NULL,11,NULL,'Current_Reporter',NULL),(10032,10000,NULL,11,NULL,'All_Watchers',NULL),(10033,10000,NULL,12,NULL,'Current_Assignee',NULL),(10034,10000,NULL,12,NULL,'Current_Reporter',NULL),(10035,10000,NULL,12,NULL,'All_Watchers',NULL),(10036,10000,NULL,13,NULL,'Current_Assignee',NULL),(10037,10000,NULL,13,NULL,'Current_Reporter',NULL),(10038,10000,NULL,13,NULL,'All_Watchers',NULL),(10100,10000,NULL,14,NULL,'Current_Assignee',NULL),(10101,10000,NULL,14,NULL,'Current_Reporter',NULL),(10102,10000,NULL,14,NULL,'All_Watchers',NULL),(10103,10000,NULL,15,NULL,'Current_Assignee',NULL),(10104,10000,NULL,15,NULL,'Current_Reporter',NULL),(10105,10000,NULL,15,NULL,'All_Watchers',NULL),(10106,10000,NULL,16,NULL,'Current_Assignee',NULL),(10107,10000,NULL,16,NULL,'Current_Reporter',NULL),(10108,10000,NULL,16,NULL,'All_Watchers',NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationinstance`
--

DROP TABLE IF EXISTS `notificationinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationinstance` (
  `ID` decimal(18,0) NOT NULL,
  `notificationtype` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `SOURCE` decimal(18,0) DEFAULT NULL,
  `emailaddress` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGEID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `notif_source` (`SOURCE`),
  KEY `notif_messageid` (`MESSAGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationinstance`
--

LOCK TABLES `notificationinstance` WRITE;
/*!40000 ALTER TABLE `notificationinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificationinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationscheme`
--

DROP TABLE IF EXISTS `notificationscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationscheme`
--

LOCK TABLES `notificationscheme` WRITE;
/*!40000 ALTER TABLE `notificationscheme` DISABLE KEYS */;
INSERT INTO `notificationscheme` VALUES (10000,'Default Notification Scheme',NULL);
/*!40000 ALTER TABLE `notificationscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauthconsumer`
--

DROP TABLE IF EXISTS `oauthconsumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthconsumer` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `consumername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `consumerservice` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PUBLIC_KEY` text COLLATE utf8_bin,
  `PRIVATE_KEY` text COLLATE utf8_bin,
  `DESCRIPTION` text COLLATE utf8_bin,
  `CALLBACK` text COLLATE utf8_bin,
  `SIGNATURE_METHOD` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `SHARED_SECRET` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_consumer_index` (`CONSUMER_KEY`),
  UNIQUE KEY `oauth_consumer_service_index` (`consumerservice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauthconsumer`
--

LOCK TABLES `oauthconsumer` WRITE;
/*!40000 ALTER TABLE `oauthconsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthconsumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauthconsumertoken`
--

DROP TABLE IF EXISTS `oauthconsumertoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthconsumertoken` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `TOKEN_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_SECRET` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_consumer_token_key_index` (`TOKEN_KEY`),
  KEY `oauth_consumer_token_index` (`TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauthconsumertoken`
--

LOCK TABLES `oauthconsumertoken` WRITE;
/*!40000 ALTER TABLE `oauthconsumertoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthconsumertoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauthspconsumer`
--

DROP TABLE IF EXISTS `oauthspconsumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthspconsumer` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `consumername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PUBLIC_KEY` text COLLATE utf8_bin,
  `DESCRIPTION` text COLLATE utf8_bin,
  `CALLBACK` text COLLATE utf8_bin,
  `TWO_L_O_ALLOWED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTING_TWO_L_O_USER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TWO_L_O_IMPERSONATION_ALLOWED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `THREE_L_O_ALLOWED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_sp_consumer_index` (`CONSUMER_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauthspconsumer`
--

LOCK TABLES `oauthspconsumer` WRITE;
/*!40000 ALTER TABLE `oauthspconsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthspconsumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauthsptoken`
--

DROP TABLE IF EXISTS `oauthsptoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthsptoken` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_SECRET` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TTL` decimal(18,0) DEFAULT NULL,
  `spauth` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK` text COLLATE utf8_bin,
  `spverifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `spversion` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `SESSION_HANDLE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SESSION_CREATION_TIME` datetime DEFAULT NULL,
  `SESSION_LAST_RENEWAL_TIME` datetime DEFAULT NULL,
  `SESSION_TIME_TO_LIVE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_sp_token_index` (`TOKEN`),
  KEY `oauth_sp_consumer_key_index` (`CONSUMER_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauthsptoken`
--

LOCK TABLES `oauthsptoken` WRITE;
/*!40000 ALTER TABLE `oauthsptoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthsptoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optionconfiguration`
--

DROP TABLE IF EXISTS `optionconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optionconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `OPTIONID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `FIELDCONFIG` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldid_optionid` (`FIELDID`,`OPTIONID`),
  KEY `fieldid_fieldconf` (`FIELDID`,`FIELDCONFIG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optionconfiguration`
--

LOCK TABLES `optionconfiguration` WRITE;
/*!40000 ALTER TABLE `optionconfiguration` DISABLE KEYS */;
INSERT INTO `optionconfiguration` VALUES (10201,'issuetype','10000',10000,0),(10202,'issuetype','10001',10000,1),(10207,'issuetype','10002',10105,0),(10208,'issuetype','10003',10105,1),(10209,'issuetype','10001',10105,2),(10210,'issuetype','10004',10105,3),(10211,'issuetype','10000',10105,4),(10216,'issuetype','10002',10111,0),(10217,'issuetype','10003',10111,1),(10218,'issuetype','10001',10111,2),(10219,'issuetype','10004',10111,3),(10220,'issuetype','10000',10111,4),(10225,'issuetype','10002',10112,0),(10226,'issuetype','10003',10112,1),(10227,'issuetype','10001',10112,2),(10228,'issuetype','10004',10112,3),(10229,'issuetype','10000',10112,4);
/*!40000 ALTER TABLE `optionconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionscheme`
--

DROP TABLE IF EXISTS `permissionscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionscheme`
--

LOCK TABLES `permissionscheme` WRITE;
/*!40000 ALTER TABLE `permissionscheme` DISABLE KEYS */;
INSERT INTO `permissionscheme` VALUES (0,'Default Permission Scheme','This is the default Permission Scheme. Any new projects that are created will be assigned this scheme.'),(10000,'Default software scheme','Default scheme for Software projects.');
/*!40000 ALTER TABLE `permissionscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluginstate`
--

DROP TABLE IF EXISTS `pluginstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginstate` (
  `pluginkey` varchar(255) COLLATE utf8_bin NOT NULL,
  `pluginenabled` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`pluginkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluginstate`
--

LOCK TABLES `pluginstate` WRITE;
/*!40000 ALTER TABLE `pluginstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluginstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluginversion`
--

DROP TABLE IF EXISTS `pluginversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginversion` (
  `ID` decimal(18,0) NOT NULL,
  `pluginname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pluginkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pluginversion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluginversion`
--

LOCK TABLES `pluginversion` WRITE;
/*!40000 ALTER TABLE `pluginversion` DISABLE KEYS */;
INSERT INTO `pluginversion` VALUES (10000,'ActiveObjects Plugin - OSGi Bundle','com.atlassian.activeobjects.activeobjects-plugin','1.1.5','2016-02-16 11:28:37'),(10001,'Atlassian Template Renderer API','com.atlassian.templaterenderer.api','2.0.0','2016-02-16 11:28:37'),(10002,'Atlassian Template Renderer Velocity 1.6 Plugin','com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin','2.0.0','2016-02-16 11:28:37'),(10003,'Atlassian REST - Module Types','com.atlassian.plugins.rest.atlassian-rest-module','3.0.8','2016-02-16 11:28:37'),(10004,'Atlassian - Administration - Quick Search - JIRA','com.atlassian.administration.atlassian-admin-quicksearch-jira','2.2.2','2016-02-16 11:28:37'),(10005,'Analytics Client Plugin','com.atlassian.analytics.analytics-client','4.3.8-hashfix','2016-02-16 11:28:37'),(10006,'Analytics Whitelist Plugin','com.atlassian.analytics.analytics-whitelist','3.37','2016-02-16 11:28:37'),(10007,'JSON Library','com.atlassian.bundles.json-20070829.0.0.1','20070829.0.0.1','2016-02-16 11:28:37'),(10008,'Atlassian OAuth Consumer SPI','com.atlassian.oauth.atlassian-oauth-consumer-spi','2.0.2','2016-02-16 11:28:37'),(10009,'Atlassian OAuth Service Provider SPI','com.atlassian.oauth.atlassian-oauth-service-provider-spi','2.0.2','2016-02-16 11:28:37'),(10010,'Applinks - Plugin - Core','com.atlassian.applinks.applinks-plugin','5.0.5','2016-02-16 11:28:38'),(10011,'Applinks - Plugin - Basic Authentication','com.atlassian.applinks.applinks-basicauth-plugin','5.0.5','2016-02-16 11:28:38'),(10012,'Applinks - Plugin - CORS','com.atlassian.applinks.applinks-cors-plugin','5.0.5','2016-02-16 11:28:38'),(10013,'Atlassian JIRA - Plugins - OAuth Consumer SPI','com.atlassian.jira.oauth.consumer','7.0.10','2016-02-16 11:28:38'),(10014,'Applinks - Plugin - OAuth','com.atlassian.applinks.applinks-oauth-plugin','5.0.5','2016-02-16 11:28:38'),(10015,'Applinks - Plugin - Trusted Apps','com.atlassian.applinks.applinks-trustedapps-plugin','5.0.5','2016-02-16 11:28:38'),(10016,'atlassian-failure-cache-plugin','com.atlassian.atlassian-failure-cache-plugin','0.15','2016-02-16 11:28:38'),(10017,'Atlassian UI Plugin','com.atlassian.auiplugin','5.7.31','2016-02-16 11:28:38'),(10018,'ICU4J','com.atlassian.bundles.icu4j-3.8.0.1','3.8.0.1','2016-02-16 11:28:38'),(10019,'Neko HTML','com.atlassian.bundles.nekohtml-1.9.12.1','1.9.12.1','2016-02-16 11:28:38'),(10020,'Atlassian Embedded Crowd - Administration Plugin','com.atlassian.crowd.embedded.admin','2.0.0-m4','2016-02-16 11:28:38'),(10021,'Gadget Dashboard Plugin','com.atlassian.gadgets.dashboard','3.11.6','2016-02-16 11:28:38'),(10022,'ROME, RSS and atOM utilitiEs for Java','rome.rome-1.0','1.0','2016-02-16 11:28:38'),(10023,'Gadget Directory Plugin','com.atlassian.gadgets.directory','3.11.6','2016-02-16 11:28:38'),(10024,'Embedded Gadgets Plugin','com.atlassian.gadgets.embedded','3.11.6','2016-02-16 11:28:38'),(10025,'Atlassian Gadgets OAuth Service Provider Plugin','com.atlassian.gadgets.oauth.serviceprovider','3.11.6','2016-02-16 11:28:38'),(10026,'Opensocial Plugin','com.atlassian.gadgets.opensocial','3.11.6','2016-02-16 11:28:38'),(10027,'Gadget Spec Publisher Plugin','com.atlassian.gadgets.publisher','3.11.6','2016-02-16 11:28:38'),(10028,'Atlassian HealthCheck Common Module','com.atlassian.healthcheck.atlassian-healthcheck','3.0.1','2016-02-16 11:28:38'),(10029,'Atlassian HTTP Client, Apache HTTP components impl','com.atlassian.httpclient.atlassian-httpclient-plugin','0.22.3','2016-02-16 11:28:38'),(10030,'Atlassian JIRA - Plugins - Pluggable Avatar Support','com.atlassian.jira.jira-pluggable-avatar-support','7.0.10','2016-02-16 11:28:38'),(10031,'Atlassian JIRA - Plugins - REST Plugin','com.atlassian.jira.rest','7.0.10','2016-02-16 11:28:38'),(10032,'JIRA Workflow Designer Plugin','com.atlassian.jira.plugins.jira-workflow-designer','7.0.5','2016-02-16 11:28:38'),(10033,'JIRA Workflow Sharing Plugin','com.atlassian.jira.plugins.workflow.sharing.jira-workflow-sharing-plugin','2.0.2','2016-02-16 11:28:38'),(10034,'Project Templates Plugin','com.atlassian.jira.project-templates-plugin','5.1.6','2016-02-16 11:28:38'),(10035,'Atlassian JIRA - Plugins - View Issue Panels','com.atlassian.jira.jira-view-issue-plugin','7.0.10','2016-02-16 11:28:38'),(10036,'Atlassian Navigation Links Plugin','com.atlassian.plugins.atlassian-nav-links-plugin','4.2.4','2016-02-16 11:28:39'),(10037,'Universal Plugin Manager - Role-Based Licensing Implementation Plugin','com.atlassian.upm.role-based-licensing-plugin','2.20.3','2016-02-16 11:28:39'),(10038,'Atlassian Universal Plugin Manager Plugin','com.atlassian.upm.atlassian-universal-plugin-manager-plugin','2.20.3','2016-02-16 11:28:39'),(10039,'Atlassian JIRA - Plugins - Common AppLinks Based Issue Link Plugin','com.atlassian.jira.jira-issue-link-applinks-common-plugin','7.0.10','2016-02-16 11:28:39'),(10040,'Atlassian JIRA - Plugins - Confluence Link','com.atlassian.jira.jira-issue-link-confluence-plugin','7.0.10','2016-02-16 11:28:39'),(10041,'scala-2.10-provider-plugin','com.atlassian.scala.plugins.scala-2.10-provider-plugin','0.9','2016-02-16 11:28:39'),(10042,'jackson-module-scala-2.10-provider','com.atlassian.scala.plugins.jackson-module-scala-2.10-provider-plugin','0.5','2016-02-16 11:28:39'),(10043,'jira-inline-issue-create-plugin','com.atlassian.jira.plugins.inline-create.jira-inline-issue-create-plugin','1.1.5','2016-02-16 11:28:39'),(10044,'Streams API','com.atlassian.streams.streams-api','6.0.9','2016-02-16 11:28:39'),(10045,'Streams SPI','com.atlassian.streams.streams-spi','6.0.9','2016-02-16 11:28:39'),(10046,'JIRA Projects Plugin','com.atlassian.jira.jira-projects-plugin','3.2.4','2016-02-16 11:28:39'),(10047,'Remote Link Aggregator Plugin','com.atlassian.plugins.remote-link-aggregator-plugin','2.0.14','2016-02-16 11:28:39'),(10048,'JIRA Agile','com.pyxis.greenhopper.jira','7.0.11','2016-02-16 11:28:39'),(10049,'jira-importers-plugin','com.atlassian.jira.plugins.jira-importers-plugin','7.1.1','2016-02-16 11:28:40'),(10050,'JIRA Core Project Templates Plugin','com.atlassian.jira-core-project-templates','5.1.6','2016-02-16 11:28:40'),(10051,'JIRA Issue Collector Plugin','com.atlassian.jira.collector.plugin.jira-issue-collector-plugin','2.0.8','2016-02-16 11:28:40'),(10052,'JIRA iCalendar Plugin','com.atlassian.jira.extra.jira-ical-feed','1.4.5','2016-02-16 11:28:40'),(10053,'Atlassian Whitelist API Plugin','com.atlassian.plugins.atlassian-whitelist-api-plugin','1.18','2016-02-16 11:28:40'),(10054,'Atlassian JIRA - Plugins - Gadgets Plugin','com.atlassian.jira.gadgets','7.0.10','2016-02-16 11:28:40'),(10055,'Atlassian JIRA - Plugins - ActiveObjects SPI','com.atlassian.jira.jira-activeobjects-spi-plugin','7.0.10','2016-02-16 11:28:40'),(10056,'Atlassian JIRA - Plugins - Admin Navigation Component','com.atlassian.jira.jira-admin-navigation-plugin','7.0.10','2016-02-16 11:28:40'),(10057,'Atlassian JIRA - Plugins - Analytics whitelist','com.atlassian.jira.jira-analytics-whitelist-plugin','7.0.10','2016-02-16 11:28:40'),(10058,'Atlassian JIRA - Plugins - Application Properties','com.atlassian.jira.jira-application-properties-plugin','7.0.10','2016-02-16 11:28:40'),(10059,'Atlassian JIRA - Plugins - Avatar Plugin','com.atlassian.jira.jira-avatar-plugin','7.0.10','2016-02-16 11:28:40'),(10060,'JIRA Base URL Plugin','com.atlassian.jira.jira-baseurl-plugin','2.0','2016-02-16 11:28:40'),(10061,'Atlassian JIRA - Plugins - Header Plugin','com.atlassian.jira.jira-header-plugin','7.0.10','2016-02-16 11:28:40'),(10062,'Atlassian JIRA - Plugins - Invite User','com.atlassian.jira.jira-invite-user-plugin','2.0.13','2016-02-16 11:28:40'),(10063,'Atlassian JIRA - Plugins - Remote JIRA Link','com.atlassian.jira.jira-issue-link-remote-jira-plugin','7.0.10','2016-02-16 11:28:40'),(10064,'Atlassian JIRA - Plugins - Issue Web Link','com.atlassian.jira.jira-issue-link-web-plugin','7.0.10','2016-02-16 11:28:40'),(10065,'jira-issue-nav-components','com.atlassian.jira.jira-issue-nav-components','7.1.1','2016-02-16 11:28:40'),(10066,'Atlassian JIRA - Plugins - Issue Search','com.atlassian.jira.jira-issue-nav-plugin','7.1.1','2016-02-16 11:28:40'),(10067,'English (United Kingdom) Language Pack','com.atlassian.jira.jira-languages.en_UK','7.0.10','2016-02-16 11:28:40'),(10068,'English (United States) Language Pack','com.atlassian.jira.jira-languages.en_US','7.0.10','2016-02-16 11:28:40'),(10069,'Atlassian LESS Transformer Plugin','com.atlassian.plugins.less-transformer-plugin','3.0.1','2016-02-16 11:28:40'),(10070,'Atlassian JIRA - Plugins - LESS integration','com.atlassian.jira.jira-less-integration','7.0.10','2016-02-16 11:28:40'),(10071,'Atlassian JIRA - Plugins - Mail Plugin','com.atlassian.jira.jira-mail-plugin','8.0.28','2016-02-16 11:28:40'),(10072,'JIRA Monitoring Plugin','com.atlassian.jira.jira-monitoring-plugin','05.7.0','2016-02-16 11:28:40'),(10073,'Atlassian JIRA - Plugins - My JIRA Home','com.atlassian.jira.jira-my-home-plugin','7.0.10','2016-02-16 11:28:40'),(10074,'Atlassian JIRA - Plugins - Onboarding','com.atlassian.jira.jira-onboarding-assets-plugin','7.0.10','2016-02-16 11:28:40'),(10075,'Atlassian JIRA - Plugins - Post setup announcements plugin','com.atlassian.jira.jira-postsetup-announcements-plugin','7.0.10','2016-02-16 11:28:40'),(10076,'JIRA Project Config Plugin','com.atlassian.jira.jira-project-config-plugin','8.1.31','2016-02-16 11:28:40'),(10077,'Issue Navigator for JIRA Projects','com.atlassian.jira.jira-projects-issue-navigator','3.2.4','2016-02-16 11:28:40'),(10078,'Atlassian JIRA - Plugins - Quick Edit Plugin','com.atlassian.jira.jira-quick-edit-plugin','3.0.18','2016-02-16 11:28:41'),(10079,'Atlassian JIRA - Plugins - Share Content Component','com.atlassian.jira.jira-share-plugin','7.0.10','2016-02-16 11:28:41'),(10080,'JIRA for Software Plugin','com.atlassian.jira.plugins.jira-software-plugin','1.32','2016-02-16 11:28:41'),(10081,'Atlassian JIRA - Plugins - Transition Trigger Plugin','com.atlassian.jira.plugins.jira-transition-triggers-plugin','3.1.7-D20151001T030118','2016-02-16 11:28:41'),(10082,'JIRA Bamboo Plugin','com.atlassian.jira.plugin.ext.bamboo','7.3.34-D20151001T024454','2016-02-16 11:28:41'),(10083,'JIRA DVCS Connector Plugin','com.atlassian.jira.plugins.jira-bitbucket-connector-plugin','3.3.16-D20151002T054424','2016-02-16 11:28:41'),(10084,'Atlassian Remote Event Common Plugin','com.atlassian.plugins.atlassian-remote-event-common-plugin','1.0.5','2016-02-16 11:28:41'),(10085,'Atlassian JIRA - Plugins - Development Integration Plugin','com.atlassian.jira.plugins.jira-development-integration-plugin','3.3.15-D20151029T091531','2016-02-16 11:28:41'),(10086,'FishEye Plugin','com.atlassian.jirafisheyeplugin','7.0.13-D20151002T052328','2016-02-16 11:28:41'),(10087,'JIRA Software Monitor Plugin','com.atlassian.jira.plugins.jira-software-monitor-plugin','0.1.0-D20150923T085539','2016-02-16 11:28:41'),(10088,'JIRA Software Application','com.atlassian.jira.jira-software-application','7.0.10','2016-02-16 11:28:41'),(10089,'Atlassian JIRA - Plugins - Closure Template Renderer','com.atlassian.jira.jira-soy-plugin','7.0.10','2016-02-16 11:28:41'),(10090,'JIRA Time Zone Detection plugin','com.atlassian.jira.jira-tzdetect-plugin','2.2','2016-02-16 11:28:41'),(10091,'Atlassian JIRA - Plugins - User Profile Plugin','com.atlassian.jira.jira-user-profile-plugin','3.0.4','2016-02-16 11:28:42'),(10092,'Atlassian JIRA - Plugins - Look And Feel Logo Upload Plugin','com.atlassian.jira.lookandfeel','7.0.10','2016-02-16 11:28:42'),(10093,'JIRA Mobile','com.atlassian.jira.mobile','3.0.5','2016-02-16 11:28:42'),(10094,'Atlassian JIRA - Plugins - OAuth Service Provider SPI','com.atlassian.jira.oauth.serviceprovider','7.0.10','2016-02-16 11:28:42'),(10095,'Comment Panel Plugin','com.atlassian.jira.plugin.system.comment-panel','1.0','2016-02-16 11:28:42'),(10096,'Custom Field Types & Searchers','com.atlassian.jira.plugin.system.customfieldtypes','1.0','2016-02-16 11:28:42'),(10097,'Issue Operations Plugin','com.atlassian.jira.plugin.system.issueoperations','1.0','2016-02-16 11:28:42'),(10098,'Issue Tab Panels Plugin','com.atlassian.jira.plugin.system.issuetabpanels','1.0','2016-02-16 11:28:42'),(10099,'Renderer Plugin','com.atlassian.jira.plugin.system.jirarenderers','1.0','2016-02-16 11:28:42'),(10100,'Project Role Actors Plugin','com.atlassian.jira.plugin.system.projectroleactors','1.0','2016-02-16 11:28:42'),(10101,'Wiki Renderer Macros Plugin','com.atlassian.jira.plugin.system.renderers.wiki.macros','1.0','2016-02-16 11:28:42'),(10102,'Reports Plugin','com.atlassian.jira.plugin.system.reports','1.0','2016-02-16 11:28:42'),(10103,'Workflow Plugin','com.atlassian.jira.plugin.system.workflow','1.0','2016-02-16 11:28:42'),(10104,'JIRA Workflow Transition Tabs','com.atlassian.jira.plugin.system.workfloweditor.transition.tabs','1.0','2016-02-16 11:28:42'),(10105,'Content Link Resolvers Plugin','com.atlassian.jira.plugin.wiki.contentlinkresolvers','1.0','2016-02-16 11:28:42'),(10106,'Renderer Component Factories Plugin','com.atlassian.jira.plugin.wiki.renderercomponentfactories','1.0','2016-02-16 11:28:42'),(10107,'Atlassian JIRA - Admin Helper Plugin','com.atlassian.jira.plugins.jira-admin-helper-plugin','3.0.5','2016-02-16 11:28:42'),(10108,'JIRA Auditing Plugin','com.atlassian.jira.plugins.jira-auditing-plugin','1.6.17','2016-02-16 11:28:42'),(10109,'JIRA browser metrics integration plugin','com.atlassian.jira.plugins.jira-browser-metrics','1.3.0','2016-02-16 11:28:42'),(10110,'JIRA Drag and Drop Attachment Plugin','com.atlassian.jira.plugins.jira-dnd-attachment-plugin','4.1.12','2016-02-16 11:28:42'),(10111,'Support Healthcheck Plugin','com.atlassian.support.healthcheck.support-healthcheck-plugin','1.0.2','2016-02-16 11:28:42'),(10112,'Atlassian JIRA - Plugins - Healthcheck Plugin','com.atlassian.jira.plugins.jira-healthcheck-plugin','2.0.3','2016-02-16 11:28:42'),(10113,'Asana Importers Plugin for JIM','com.atlassian.jira.plugins.jira-importers-asana-plugin','1.0.3','2016-02-16 11:28:42'),(10114,'Bitbucket Importer Plugin for JIM','com.atlassian.jira.plugins.jira-importers-bitbucket-plugin','1.0.15','2016-02-16 11:28:42'),(10115,'JIRA GitHub Issue Importer','com.atlassian.jira.plugins.jira-importers-github-plugin','2.0.10','2016-02-16 11:28:42'),(10116,'Redmine Importers Plugin for JIM','com.atlassian.jira.plugins.jira-importers-redmine-plugin','2.1.5','2016-02-16 11:28:42'),(10117,'jira-importers-trello-plugin','com.atlassian.jira.plugins.jira-importers-trello-plugin','1.5.1','2016-02-16 11:28:42'),(10118,'JIRA Password Policy Plugin','com.atlassian.jira.plugins.jira-password-policy-plugin','2.0.2','2016-02-16 11:28:42'),(10119,'wiki-editor','com.atlassian.jira.plugins.jira-wiki-editor','1.8.1','2016-02-16 11:28:42'),(10120,'Atlassian WebHooks Plugin','com.atlassian.webhooks.atlassian-webhooks-plugin','3.1.0','2016-02-16 11:28:42'),(10121,'JIRA WebHooks Plugin','com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin','2.0.8','2016-02-16 11:28:42'),(10122,'Wallboard Plugin','com.atlassian.jirawallboard.atlassian-wallboard-plugin','2.1.4','2016-02-16 11:28:42'),(10123,'Atlassian Bot Session Killer','com.atlassian.labs.atlassian-bot-killer','1.7.9','2016-02-16 11:28:42'),(10124,'Atlassian Hipchat Integration Plugin Core','com.atlassian.plugins.base-hipchat-integration-plugin-api','7.3.2','2016-02-16 11:28:43'),(10125,'Atlassian Hipchat Integration Plugin','com.atlassian.plugins.base-hipchat-integration-plugin','7.3.2','2016-02-16 11:28:43'),(10126,'Project Creation Capability Product REST Plugin','com.atlassian.plugins.atlassian-project-creation-plugin','2.0.2','2016-02-16 11:28:43'),(10127,'HipChat for JIRA','com.atlassian.labs.hipchat.hipchat-for-jira-plugin','7.3.2','2016-02-16 11:28:43'),(10128,'Workbox - Common Plugin','com.atlassian.mywork.mywork-common-plugin','3.0.0-pluginsfour002','2016-02-16 11:28:43'),(10129,'Workbox - JIRA Provider Plugin','com.atlassian.mywork.mywork-jira-provider-plugin','3.0.0-pluginsfour002','2016-02-16 11:28:43'),(10130,'Atlassian OAuth Admin Plugin','com.atlassian.oauth.admin','2.0.2','2016-02-16 11:28:43'),(10131,'Atlassian OAuth Consumer Plugin','com.atlassian.oauth.consumer','2.0.2','2016-02-16 11:28:43'),(10132,'Atlassian OAuth Service Provider Plugin','com.atlassian.oauth.serviceprovider','2.0.2','2016-02-16 11:28:43'),(10133,'Atlassian Plugins - JavaScript libraries','com.atlassian.plugin.jslibs','0.5.0','2016-02-16 11:28:43'),(10134,'Atlassian Awareness Capability','com.atlassian.plugins.atlassian-awareness-capability','0.0.6','2016-02-16 11:28:43'),(10135,'Atlassian Plugins - Web Resources - Implementation Plugin','com.atlassian.plugins.atlassian-plugins-webresource-plugin','3.3.4','2016-02-16 11:28:43'),(10136,'Atlassian Plugins - Web Resources REST','com.atlassian.plugins.atlassian-plugins-webresource-rest','3.3.4','2016-02-16 11:28:43'),(10137,'Atlassian Remote Event Consumer Plugin','com.atlassian.plugins.atlassian-remote-event-consumer-plugin','1.0.5','2016-02-16 11:28:43'),(10138,'Atlassian Whitelist UI Plugin','com.atlassian.plugins.atlassian-whitelist-ui-plugin','1.18','2016-02-16 11:28:43'),(10139,'Atlassian Plugins - Avatar Plugin','com.atlassian.plugins.avatar','1.3.2','2016-02-16 11:28:43'),(10140,'Atlassian browser metrics plugin','com.atlassian.plugins.browser.metrics.browser-metrics-plugin','1.64','2016-02-16 11:28:43'),(10141,'jira-help-tips','com.atlassian.plugins.helptips.jira-help-tips','1.0.3','2016-02-16 11:28:43'),(10142,'Issue Status Plugin','com.atlassian.plugins.issue-status-plugin','1.1.7','2016-02-16 11:28:43'),(10143,'Attach Image for JIRA','com.atlassian.plugins.jira-html5-attach-images','4.0.0','2016-02-16 11:28:43'),(10144,'Project Creation Plugin SPI for JIRA','com.atlassian.plugins.jira-project-creation','2.0.2','2016-02-16 11:28:43'),(10145,'JIRA Remote Link Aggregator Plugin','com.atlassian.plugins.jira-remote-link-aggregator-plugin','2.0.14','2016-02-16 11:28:43'),(10146,'jquery','com.atlassian.plugins.jquery','1.7.2','2016-02-16 11:28:43'),(10147,'Pocketknife Feature Flags Plugin','com.atlassian.pocketknife.featureflags-plugin','0.5.3','2016-02-16 11:28:43'),(10148,'Atlassian Pretty URLs Plugin','com.atlassian.prettyurls.atlassian-pretty-urls-plugin','2.0.0','2016-02-16 11:28:43'),(10149,'Atlassian JIRA - Plugins - SAL Plugin','com.atlassian.sal.jira','7.0.10','2016-02-16 11:28:43'),(10150,'scala-2.11-provider-plugin','com.atlassian.scala.plugins.scala-2.11-provider-plugin','0.10','2016-02-16 11:28:43'),(10151,'Atlassian Soy - Plugin','com.atlassian.soy.soy-template-plugin','4.1.3','2016-02-16 11:28:43'),(10152,'Streams Plugin','com.atlassian.streams','6.0.9','2016-02-16 11:28:43'),(10153,'Streams Inline Actions Plugin','com.atlassian.streams.actions','6.0.9','2016-02-16 11:28:43'),(10154,'Streams Core Plugin','com.atlassian.streams.core','6.0.9','2016-02-16 11:28:43'),(10155,'JIRA Streams Inline Actions Plugin','com.atlassian.streams.jira.inlineactions','6.0.9','2016-02-16 11:28:43'),(10156,'JIRA Activity Stream Plugin','com.atlassian.streams.streams-jira-plugin','6.0.9','2016-02-16 11:28:43'),(10157,'Streams Third Party Provider Plugin','com.atlassian.streams.streams-thirdparty-plugin','6.0.9','2016-02-16 11:28:43'),(10158,'Support Tools Plugin','com.atlassian.support.stp','3.5.38','2016-02-16 11:28:43'),(10159,'Atlassian Application Manager plugin','com.atlassian.upm.upm-application-plugin','2.20.3','2016-02-16 11:28:43'),(10160,'ROME: RSS/Atom syndication and publishing tools','com.springsource.com.sun.syndication-0.9.0','0.9.0','2016-02-16 11:28:43'),(10161,'JDOM DOM Processor','com.springsource.org.jdom-1.0.0','1.0.0','2016-02-16 11:28:43'),(10162,'Crowd REST API','crowd-rest-application-management','1.0','2016-02-16 11:28:43'),(10163,'Crowd REST API','crowd-rest-plugin','1.0','2016-02-16 11:28:43'),(10164,'Crowd System Password Encoders','crowd.system.passwordencoders','1.0','2016-02-16 11:28:43'),(10165,'JIRA Footer','jira.footer','1.0','2016-02-16 11:28:44'),(10166,'Help Paths Plugin','jira.help.paths','1.0','2016-02-16 11:28:44'),(10167,'Issue Views Plugin','jira.issueviews','1.0','2016-02-16 11:28:44'),(10168,'JQL Functions','jira.jql.function','1.0','2016-02-16 11:28:44'),(10169,'Keyboard Shortcuts Plugin','jira.keyboard.shortcuts','1.0','2016-02-16 11:28:44'),(10170,'JIRA Attachment Archive File Processors','jira.system.attachment.processors','1.0','2016-02-16 11:28:44'),(10171,'JIRA Global Permissions','jira.system.global.permissions','1.0','2016-02-16 11:28:44'),(10172,'JIRA Project Permissions','jira.system.project.permissions','1.0','2016-02-16 11:28:44'),(10173,'Top Navigation Bar','jira.top.navigation.bar','1.0','2016-02-16 11:28:44'),(10174,'JIRA Usage Hints','jira.usage.hints','1.0','2016-02-16 11:28:44'),(10175,'User Format','jira.user.format','1.0','2016-02-16 11:28:44'),(10176,'User Profile Panels','jira.user.profile.panels','1.0','2016-02-16 11:28:44'),(10177,'Admin Menu Sections','jira.webfragments.admin','1.0','2016-02-16 11:28:44'),(10178,'Browse Project Operations Sections','jira.webfragments.browse.project.links','1.0','2016-02-16 11:28:44'),(10179,'Preset Filters Sections','jira.webfragments.preset.filters','1.0','2016-02-16 11:28:44'),(10180,'User Navigation Bar Sections','jira.webfragments.user.navigation.bar','1.0','2016-02-16 11:28:44'),(10181,'User Profile Links','jira.webfragments.user.profile.links','1.0','2016-02-16 11:28:44'),(10182,'View Project Operations Sections','jira.webfragments.view.project.operations','1.0','2016-02-16 11:28:44'),(10183,'Web Panel Plugin','jira.webpanels','1.0','2016-02-16 11:28:44'),(10184,'Web Resources Plugin','jira.webresources','1.0','2016-02-16 11:28:44'),(10185,'Apache HttpClient OSGi bundle','org.apache.httpcomponents.httpclient-4.2.5','4.2.5','2016-02-16 11:28:44'),(10186,'Apache HttpCore OSGi bundle','org.apache.httpcomponents.httpcore-4.2.4','4.2.4','2016-02-16 11:28:44'),(10187,'JIRA Core German (Germany) Language Pack','tac.jira core.languages.de_DE','7.0.0-v2r18-2015-10-15','2016-02-16 11:28:44'),(10188,'JIRA Core Spanish (Spain) Language Pack','tac.jira core.languages.es_ES','7.0.0-v2r15-2015-10-28','2016-02-16 11:28:44'),(10189,'JIRA Core French (France) Language Pack','tac.jira core.languages.fr_FR','7.0.0-v2r38-2015-10-15','2016-02-16 11:28:44'),(10190,'JIRA Core Japanese (Japan) Language Pack','tac.jira core.languages.ja_JP','7.0.0-v2r11-2015-10-15','2016-02-16 11:28:44');
/*!40000 ALTER TABLE `pluginversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portalpage`
--

DROP TABLE IF EXISTS `portalpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portalpage` (
  `ID` decimal(18,0) NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PAGENAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `FAV_COUNT` decimal(18,0) DEFAULT NULL,
  `LAYOUT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ppversion` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ppage_username` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portalpage`
--

LOCK TABLES `portalpage` WRITE;
/*!40000 ALTER TABLE `portalpage` DISABLE KEYS */;
INSERT INTO `portalpage` VALUES (10000,NULL,'System Dashboard',NULL,0,0,'AA',0);
/*!40000 ALTER TABLE `portalpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portletconfiguration`
--

DROP TABLE IF EXISTS `portletconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `PORTALPAGE` decimal(18,0) DEFAULT NULL,
  `PORTLET_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `COLUMN_NUMBER` decimal(9,0) DEFAULT NULL,
  `positionseq` decimal(9,0) DEFAULT NULL,
  `GADGET_XML` text COLLATE utf8_bin,
  `COLOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DASHBOARD_MODULE_COMPLETE_KEY` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portletconfiguration`
--

LOCK TABLES `portletconfiguration` WRITE;
/*!40000 ALTER TABLE `portletconfiguration` DISABLE KEYS */;
INSERT INTO `portletconfiguration` VALUES (10000,10000,NULL,0,0,NULL,NULL,'com.atlassian.jira.gadgets:introduction-dashboard-item'),(10002,10000,NULL,1,0,'rest/gadgets/1.0/g/com.atlassian.jira.gadgets:assigned-to-me-gadget/gadgets/assigned-to-me-gadget.xml',NULL,NULL),(10003,10000,NULL,1,1,'rest/gadgets/1.0/g/com.atlassian.streams.streams-jira-plugin:activitystream-gadget/gadgets/activitystream-gadget.xml',NULL,NULL);
/*!40000 ALTER TABLE `portletconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priority` (
  `ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `ICONURL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUS_COLOR` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES ('1',1,'Highest','This problem will block progress.','/images/icons/priorities/highest.png','#d04437'),('2',2,'High','Serious problem that could block progress.','/images/icons/priorities/high.png','#f15C75'),('3',3,'Medium','Has the potential to affect progress.','/images/icons/priorities/medium.png','#f79232'),('4',4,'Low','Minor problem or easily worked around.','/images/icons/priorities/low.png','#707070'),('5',5,'Lowest','Trivial problem with little or no impact on progress.','/images/icons/priorities/lowest.png','#999999');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlicense`
--

DROP TABLE IF EXISTS `productlicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlicense` (
  `ID` decimal(18,0) NOT NULL,
  `LICENSE` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlicense`
--

LOCK TABLES `productlicense` WRITE;
/*!40000 ALTER TABLE `productlicense` DISABLE KEYS */;
INSERT INTO `productlicense` VALUES (10000,'AAABdQ0ODAoPeNp9UUtvgkAQvvMrNumlPUAEYpuabFILNKVBNGCth15WGHUtLmR2sfXfF4RGrY/bzszO95qbQS7IC8yI2SWW3es+9GyTOPGYWB3zXlsggFjmRQFoBDwBIcFLueK5oF449qJR5MeeFpbrGeBw/i4BJdVNbcWRGSfdUYnJkklwmQJaw+sdS69IWuDxtoCQrYE6w8HAixy/H/yNvJ+C4/Zgz673nFwolihvwHhGZbliZZpysS6zjCdfT1u2zHODCy0G3AD6Ln0Owld9an3EuuVOu3po25NGaYF5WibKqAtd5nP1zRCMCppvgCosofl2OYAzMZ1zUwkVCgQTyQVHV9ScpNnyVL4C3429UA8e7I71aJpaVdCjxhXYWDFUgHTOMgnaEBdMcMkafxuWlbsnyRouzUHYNf5fsJ1PKmn1pnUUCFSesUAu2yxdkAnyYsfx5kd9ErdiyG1zqrvPHtmTN+ovHeNczIfkh3t7zKb+BdZuBXAwLAIUS8K/ERAGdWeguQjJVo2maDWiMyICFF6FE3CJB/YR7y+Mry7/pV47BcnkX02i6');
/*!40000 ALTER TABLE `productlicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `ID` decimal(18,0) NOT NULL,
  `pname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LEAD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `pkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pcounter` decimal(18,0) DEFAULT NULL,
  `ASSIGNEETYPE` decimal(18,0) DEFAULT NULL,
  `AVATAR` decimal(18,0) DEFAULT NULL,
  `ORIGINALKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECTTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_project_key` (`pkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (10002,'DEMO','','jenkins','','DEMO',1,3,10011,'DEMO','software');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_key`
--

DROP TABLE IF EXISTS `project_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_key` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECT_ID` decimal(18,0) DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_all_project_keys` (`PROJECT_KEY`),
  KEY `idx_all_project_ids` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_key`
--

LOCK TABLES `project_key` WRITE;
/*!40000 ALTER TABLE `project_key` DISABLE KEYS */;
INSERT INTO `project_key` VALUES (10002,10002,'DEMO');
/*!40000 ALTER TABLE `project_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectcategory`
--

DROP TABLE IF EXISTS `projectcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectcategory` (
  `ID` decimal(18,0) NOT NULL,
  `cname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `idx_project_category_name` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectcategory`
--

LOCK TABLES `projectcategory` WRITE;
/*!40000 ALTER TABLE `projectcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectrole`
--

DROP TABLE IF EXISTS `projectrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectrole` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectrole`
--

LOCK TABLES `projectrole` WRITE;
/*!40000 ALTER TABLE `projectrole` DISABLE KEYS */;
INSERT INTO `projectrole` VALUES (10002,'Administrators','A project role that represents administrators in a project');
/*!40000 ALTER TABLE `projectrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectroleactor`
--

DROP TABLE IF EXISTS `projectroleactor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectroleactor` (
  `ID` decimal(18,0) NOT NULL,
  `PID` decimal(18,0) DEFAULT NULL,
  `PROJECTROLEID` decimal(18,0) DEFAULT NULL,
  `ROLETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROLETYPEPARAMETER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `role_player_idx` (`PROJECTROLEID`,`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectroleactor`
--

LOCK TABLES `projectroleactor` WRITE;
/*!40000 ALTER TABLE `projectroleactor` DISABLE KEYS */;
INSERT INTO `projectroleactor` VALUES (10002,NULL,10002,'atlassian-group-role-actor','jira-administrators'),(10102,10002,10002,'atlassian-group-role-actor','jira-administrators');
/*!40000 ALTER TABLE `projectroleactor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectversion`
--

DROP TABLE IF EXISTS `projectversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectversion` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `vname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `RELEASED` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ARCHIVED` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `RELEASEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_version_project` (`PROJECT`),
  KEY `idx_version_sequence` (`SEQUENCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectversion`
--

LOCK TABLES `projectversion` WRITE;
/*!40000 ALTER TABLE `projectversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertydata`
--

DROP TABLE IF EXISTS `propertydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertydata` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertydata`
--

LOCK TABLES `propertydata` WRITE;
/*!40000 ALTER TABLE `propertydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `propertydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertydate`
--

DROP TABLE IF EXISTS `propertydate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertydate` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertydate`
--

LOCK TABLES `propertydate` WRITE;
/*!40000 ALTER TABLE `propertydate` DISABLE KEYS */;
INSERT INTO `propertydate` VALUES (10247,'2016-02-16 11:30:19');
/*!40000 ALTER TABLE `propertydate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertydecimal`
--

DROP TABLE IF EXISTS `propertydecimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertydecimal` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertydecimal`
--

LOCK TABLES `propertydecimal` WRITE;
/*!40000 ALTER TABLE `propertydecimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `propertydecimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertyentry`
--

DROP TABLE IF EXISTS `propertyentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertyentry` (
  `ID` decimal(18,0) NOT NULL,
  `ENTITY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_ID` decimal(18,0) DEFAULT NULL,
  `PROPERTY_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `propertytype` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `osproperty_all` (`ENTITY_ID`),
  KEY `osproperty_entityName` (`ENTITY_NAME`),
  KEY `osproperty_propertyKey` (`PROPERTY_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertyentry`
--

LOCK TABLES `propertyentry` WRITE;
/*!40000 ALTER TABLE `propertyentry` DISABLE KEYS */;
INSERT INTO `propertyentry` VALUES (1,'jira.properties',1,'jira.version.patched',5),(2,'jira.properties',1,'jira.avatar.issuetype.subtask.default.id',5),(3,'jira.properties',1,'jira.avatar.default.id',5),(4,'jira.properties',1,'jira.avatar.issuetype.default.id',5),(5,'jira.properties',1,'jira.avatar.user.default.id',5),(6,'jira.properties',1,'jira.avatar.user.anonymous.id',5),(7,'jira.properties',1,'jira.scheme.default.issue.type',5),(9,'jira.properties',1,'jira.whitelist.disabled',1),(10,'jira.properties',1,'jira.whitelist.rules',6),(11,'jira.properties',1,'jira.option.timetracking',1),(12,'jira.properties',1,'jira.timetracking.estimates.legacy.behaviour',1),(13,'jira.properties',1,'jira.version',5),(14,'jira.properties',1,'jira.downgrade.minimum.version',5),(15,'jira.properties',1,'jira.option.allowunassigned',1),(16,'jira.properties',1,'jira.path.index.use.default.directory',1),(21,'com.atlassian.jira.plugins.jira-workflow-designer',1,'jira.workflow.layout:8a6044147cf2c19c02d099279cfbfd47',6),(22,'jira.properties',1,'jira.onboarding.app_user.id.threshold',5),(23,'jira.properties',1,'post.migration.page.displayed',1),(10104,'jira.properties',1,'jira.webresource.superbatch.flushcounter',5),(10105,'jira.properties',1,'jira.i18n.language.index',5),(10107,'jira.properties',1,'jira.sid.key',5),(10201,'jira.properties',1,'jira.webresource.flushcounter',5),(10202,'jira.properties',1,'jira.mail.send.disabled',1),(10203,'jira.properties',1,'mailsetting.jira.mail.send.disabled.modifiedBy',5),(10204,'jira.properties',1,'mailsetting.jira.mail.send.disabled.modifiedDate',5),(10206,'jira.properties',1,'webwork.i18n.encoding',5),(10207,'jira.properties',1,'jira.title',5),(10209,'jira.properties',1,'dvcs.connector.bitbucket.url',5),(10210,'jira.properties',1,'dvcs.connector.github.url',5),(10214,'jira.properties',1,'AO_E8B6CC_#',5),(10215,'jira.properties',1,'AO_4AEACD_#',5),(10216,'jira.properties',1,'AO_550953_#',5),(10217,'jira.properties',1,'jira.baseurl',5),(10218,'jira.properties',1,'jira.mode',5),(10219,'jira.properties',1,'jira.path.attachments',5),(10220,'jira.properties',1,'jira.path.attachments.use.default.directory',1),(10221,'jira.properties',1,'jira.option.allowattachments',1),(10222,'ServiceConfig',10001,'USE_DEFAULT_DIRECTORY',5),(10223,'jira.properties',1,'jira.path.backup',5),(10224,'GreenHopper',1,'SCRUM_DEFAULT_TEMPLATE_CONFIGURATION',6),(10225,'jira.properties',1,'org.apache.shindig.common.crypto.BlobCrypter:key',5),(10226,'BambooServerProperties',1,'bamboo.config.version',2),(10227,'GreenHopper.Run.History',1,'lastRunVersion',6),(10228,'GreenHopper.Run.History',2,'2016-02-16T11:28:35.658+05:30',6),(10229,'jira.properties',1,'com.atlassian.jira.util.index.IndexingCounterManagerImpl.counterValue',3),(10230,'jira.properties',1,'jira.setup',5),(10231,'jira.properties',1,'jira.option.user.externalmanagement',1),(10232,'jira.properties',1,'jira.option.voting',1),(10233,'jira.properties',1,'jira.option.watching',1),(10234,'jira.properties',1,'jira.option.issuelinking',1),(10235,'jira.properties',1,'jira.option.emailvisible',5),(10236,'jira.properties',1,'jira.option.allowsubtasks',1),(10244,'GreenHopper.properties',1,'GreenHopper.LexoRank.Default.customfield.id',3),(10245,'GreenHopper.properties',1,'GreenHopper.Sprint.Default.customfield.id',3),(10246,'admin.message.manager',1,'user',5),(10247,'admin.message.manager',1,'time',7),(10248,'com.atlassian.jira.user.flag.FlagDismissalServiceImpl',1,'com.atlassian.jira.flag.resets',6),(10249,'admin.message.manager',1,'task',5),(10250,'GreenHopper.properties',1,'GreenHopper.Sprint.Index.Check.Necessary',5),(10251,'GreenHopper.properties',1,'GreenHopper.EpicLink.Default.customfield.id',3),(10252,'GreenHopper.properties',1,'GreenHopper.EpicStatus.Default.customfield.id',3),(10253,'GreenHopper.properties',1,'GreenHopper.EpicLabel.Default.customfield.id',3),(10254,'GreenHopper.properties',1,'GreenHopper.EpicColor.Default.customfield.id',3),(10255,'GreenHopper.properties',1,'GreenHopper.JIRA60.Version.Migration',1),(10256,'GreenHopper.properties',1,'JIRA.Software.Simplified.Workflow.Upgraded',1),(10257,'GreenHopper.properties',1,'GreenHopper.Epic.Default.linktype.id',3),(10258,'jira.properties',1,'com.atlassian.streams.InlineActivityStream:loaded.from.jira.projects',5),(10259,'jira.properties',1,'com.atlassian.analytics.client.configuration..analytics_enabled',5),(10261,'jira.properties',1,'com.atlassian.sal.jira:build',5),(10263,'jira.properties',1,'com.atlassian.plugins.atlassian-whitelist-api-plugin:whitelist.enabled',5),(10264,'jira.properties',1,'com.atlassian.plugins.atlassian-whitelist-api-plugin:build',5),(10265,'jira.properties',1,'com.atlassian.jira.gadgets:build',5),(10266,'jira.properties',1,'com.atlassian.jira.plugins.jira-bitbucket-connector-plugin:build',5),(10275,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:18.436+05:30',6),(10276,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:18.438+05:30',6),(10277,'GreenHopper.properties',1,'GreenHopper.Upgrade.Latest.Upgraded.Version',3),(10279,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:18.446+05:30',6),(10285,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.533+05:30',6),(10287,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.561+05:30',6),(10288,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.574+05:30',6),(10290,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.598+05:30',6),(10291,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.602+05:30',6),(10293,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.611+05:30',6),(10294,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.615+05:30',6),(10296,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.622+05:30',6),(10297,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.634+05:30',6),(10299,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.644+05:30',6),(10300,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.647+05:30',6),(10302,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.667+05:30',6),(10303,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.678+05:30',6),(10305,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.687+05:30',6),(10306,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.689+05:30',6),(10308,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.709+05:30',6),(10309,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.724+05:30',6),(10311,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.742+05:30',6),(10312,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.751+05:30',6),(10314,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.760+05:30',6),(10315,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.762+05:30',6),(10317,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.778+05:30',6),(10318,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.783+05:30',6),(10320,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.803+05:30',6),(10321,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.811+05:30',6),(10323,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.851+05:30',6),(10324,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.872+05:30',6),(10326,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.887+05:30',6),(10327,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.899+05:30',6),(10329,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.908+05:30',6),(10330,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.942+05:30',6),(10332,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:19.976+05:30',6),(10333,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:19.991+05:30',6),(10335,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:20.000+05:30',6),(10336,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:20.004+05:30',6),(10338,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:20.016+05:30',6),(10339,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:20.029+05:30',6),(10341,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:20.050+05:30',6),(10342,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:20.073+05:30',6),(10344,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:20.143+05:30',6),(10345,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:20.451+05:30',6),(10347,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:20.480+05:30',6),(10348,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:20.489+05:30',6),(10350,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:20.540+05:30',6),(10351,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:20.543+05:30',6),(10353,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:20.553+05:30',6),(10354,'jira.properties',1,'com.atlassian.upm:notifications:notification-edition.mismatch',5),(10355,'jira.properties',1,'com.atlassian.upm:notifications:notification-evaluation.expired',5),(10356,'jira.properties',1,'com.atlassian.upm:notifications:notification-evaluation.nearlyexpired',5),(10357,'jira.properties',1,'com.atlassian.upm:notifications:notification-maintenance.expired',5),(10358,'jira.properties',1,'com.atlassian.upm:notifications:notification-maintenance.nearlyexpired',5),(10359,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:20.968+05:30',6),(10361,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.024+05:30',6),(10362,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.030+05:30',6),(10364,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.122+05:30',6),(10365,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.138+05:30',6),(10367,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.146+05:30',6),(10368,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.222+05:30',6),(10370,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.279+05:30',6),(10371,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.307+05:30',6),(10373,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.335+05:30',6),(10374,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.349+05:30',6),(10376,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.356+05:30',6),(10377,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.360+05:30',6),(10379,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.368+05:30',6),(10380,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.384+05:30',6),(10382,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.423+05:30',6),(10383,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.454+05:30',6),(10385,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.562+05:30',6),(10386,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.582+05:30',6),(10388,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.681+05:30',6),(10389,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.710+05:30',6),(10391,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.721+05:30',6),(10392,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.724+05:30',6),(10394,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.763+05:30',6),(10395,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.765+05:30',6),(10397,'GreenHopper.UpgradeHistory',1,'2016-02-16T11:30:21.788+05:30',6),(10398,'GreenHopper.UpgradeHistory',2,'2016-02-16T11:30:21.790+05:30',6),(10399,'jira.properties',1,'com.pyxis.greenhopper.jira:build',5),(10401,'jira.properties',1,'com.atlassian.crowd.embedded.admin:build',5),(10402,'jira.properties',1,'com.atlassian.labs.hipchat.hipchat-for-jira-plugin:build',5),(10403,'jira.properties',1,'com.atlassian.jira.plugin.ext.bamboo:build',5),(10405,'jira.properties',1,'com.atlassian.jira.jira-mail-plugin:build',5),(10406,'jira.properties',1,'com.atlassian.jira.plugins.jira-workflow-designer:build',5),(10407,'jira.properties',1,'com.atlassian.plugins.custom_apps.hasCustomOrder',5),(10408,'jira.properties',1,'com.atlassian.plugins.atlassian-nav-links-plugin:build',5),(10411,'jira.properties',1,'com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin:build',5),(10412,'jira.properties',1,'com.atlassian.jira.lookandfeel:isDefaultFavicon',5),(10413,'jira.properties',1,'com.atlassian.jira.lookandfeel:usingCustomFavicon',5),(10414,'jira.properties',1,'com.atlassian.jira.lookandfeel:customDefaultFaviconURL',5),(10415,'jira.properties',1,'com.atlassian.jira.lookandfeel:customDefaultFaviconHiresURL',5),(10416,'jira.properties',1,'com.atlassian.jira.lookandfeel:faviconWidth',5),(10417,'jira.properties',1,'com.atlassian.jira.lookandfeel:faviconHeight',5),(10418,'jira.properties',1,'jira.lf.favicon.url',5),(10419,'jira.properties',1,'jira.lf.favicon.hires.url',5),(10420,'jira.properties',1,'com.atlassian.jira.lookandfeel:build',5),(10422,'jira.properties',1,'com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3',5),(10424,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-plugin.request',5),(10426,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-evaluation.expired',5),(10427,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-evaluation.nearlyexpired',5),(10428,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-edition.mismatch',5),(10429,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-maintenance.expired',5),(10430,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-maintenance.nearlyexpired',5),(10431,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-new.licenses',5),(10432,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-updated.licenses',5),(10433,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-auto.updated.plugin',5),(10434,'jira.properties',1,'com.atlassian.upm:notifications:dismissal-auto.updated.upm',5),(10435,'jira.properties',1,'com.atlassian.upm.request.PluginSettingsPluginRequestStore:requests:requests_v2',5),(10439,'jira.properties',1,'com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build',5),(10440,'jira.properties',1,'com.atlassian.jirawallboard.atlassian-wallboard-plugin:build',5),(10441,'jira.properties',1,'com.atlassian.support.stp:build',5),(10442,'jira.properties',1,'com.atlassian.jira.project-templates-plugin:build',5),(10443,'jira.properties',1,'jira-header-plugin.studio-tab-migration-complete',5),(10444,'jira.properties',1,'com.atlassian.analytics.client.configuration..policy_acknowledged',5),(10445,'fisheye-jira-plugin.properties',1,'FISH-375-fixed',5),(10446,'fisheye-jira-plugin.properties',1,'fisheye.ual.migration.complete',5),(10447,'fisheye-jira-plugin.properties',1,'fisheye.ual.crucible.enabled.property.fix.complete',5),(10448,'ApplicationUser',10000,'jira.onboarding.first.use.flow.started',5),(10449,'jira.properties',1,'com.atlassian.jira.onboarding.postsetup.AppPropertiesPostSetupAnnouncementStore.all',6),(10450,'jira.properties',1,'com.atlassian.upm:notifications:notification-update',5),(10451,'ApplicationUser',10000,'jira.onboarding.first.use.flow.current.sequence',5),(10452,'jira.properties',1,'com.pyxis.greenhopper.jira:default.permission.scheme.id',5),(10453,'ApplicationUser',10000,'jira.onboarding.first.use.flow.completed',1),(10454,'ApplicationUser',10000,'GH.RapidViewSelected',1),(10455,'ApplicationUser',10000,'newsletter.signup.first.view',3),(10456,'user.format.mapping',1,'profileLink',5),(10457,'ApplicationUser',10000,'last-visited-item.10000',5),(10458,'ApplicationUser',10000,'jira.quick.edit.show.welcome.screen',1),(10459,'ApplicationUser',10000,'jira.quick.create.use',1),(10460,'ApplicationUser',10000,'jira.quick.create.fields',6),(10461,'GreenHopper',10000,'CONFIGURATION',6),(10462,'Project',10000,'firstIssueCreated',1),(10463,'user.format.mapping',1,'avatarFullNameHover',5),(10464,'user.format.mapping',1,'fullName',5),(10465,'ApplicationUser',10000,'jira.user.suppressedTips.add.new.users',1),(10466,'ApplicationUser',10000,'com.atlassian.jira.flag.dismissals',6),(10467,'ApplicationUser',10000,'jira.onboarding.first.use.flow.resolved',1),(10471,'ApplicationUser',10006,'jira.onboarding.first.use.flow.started',5),(10472,'ApplicationUser',10006,'jira.onboarding.first.use.flow.current.sequence',5),(10473,'ApplicationUser',10006,'jira.onboarding.first.use.flow.completed',1),(10474,'ApplicationUser',10006,'newsletter.signup.first.view',3),(10475,'ApplicationUser',10006,'GH.RapidViewSelected',1),(10476,'ApplicationUser',10006,'last-visited-item.10000',5),(10477,'user.format.mapping',1,'profileLinkActionHeader',5),(10478,'ApplicationUser',10001,'com.atlassian.jira.flag.dismissals',6),(10479,'ApplicationUser',10001,'jira.onboarding.first.use.flow.started',5),(10480,'ApplicationUser',10001,'jira.onboarding.first.use.flow.current.sequence',5),(10481,'ApplicationUser',10001,'jira.onboarding.first.use.flow.completed',1),(10482,'ApplicationUser',10001,'newsletter.signup.first.view',3),(10483,'ApplicationUser',10001,'GH.RapidViewSelected',1),(10484,'ApplicationUser',10001,'last-visited-item.10000',5),(10485,'ApplicationUser',10001,'jira.onboarding.first.use.flow.resolved',1),(10486,'ApplicationUser',10001,'jira.user.suppressedTips.add.new.users',1),(10487,'ApplicationUser',10004,'com.atlassian.jira.flag.dismissals',6),(10488,'ApplicationUser',10004,'jira.onboarding.first.use.flow.started',5),(10489,'ApplicationUser',10004,'jira.onboarding.first.use.flow.current.sequence',5),(10490,'ApplicationUser',10004,'jira.onboarding.first.use.flow.completed',1),(10491,'ApplicationUser',10004,'newsletter.signup.first.view',3),(10492,'ApplicationUser',10004,'GH.RapidViewSelected',1),(10493,'ApplicationUser',10004,'last-visited-item.10000',5),(10494,'ApplicationUser',10003,'com.atlassian.jira.flag.dismissals',6),(10495,'ApplicationUser',10003,'jira.onboarding.first.use.flow.started',5),(10496,'ApplicationUser',10003,'jira.onboarding.first.use.flow.current.sequence',5),(10497,'ApplicationUser',10003,'jira.onboarding.first.use.flow.completed',1),(10498,'ApplicationUser',10003,'newsletter.signup.first.view',3),(10499,'ApplicationUser',10003,'jira.user.suppressedTips.add.new.users',1),(10500,'user.format.mapping',1,'profileLinkWithAvatar',5),(10501,'ApplicationUser',10003,'GH.RapidViewSelected',1),(10502,'ApplicationUser',10003,'last-visited-item.10001',5),(10503,'ApplicationUser',10003,'jira.quick.edit.show.welcome.screen',1),(10504,'ApplicationUser',10003,'jira.quick.create.use',1),(10505,'ApplicationUser',10003,'jira.quick.create.fields',6),(10506,'GreenHopper',10001,'CONFIGURATION',6),(10507,'Project',10001,'firstIssueCreated',1),(10508,'ApplicationUser',10004,'jira.onboarding.first.use.flow.resolved',1),(10509,'ApplicationUser',10004,'last-visited-item.10002',5),(10510,'ApplicationUser',10004,'jira.quick.edit.show.welcome.screen',1),(10511,'ApplicationUser',10004,'jira.quick.create.use',1),(10512,'ApplicationUser',10004,'jira.quick.create.fields',6),(10513,'GreenHopper',10002,'CONFIGURATION',6),(10514,'Project',10002,'firstIssueCreated',1),(10515,'ApplicationUser',10004,'jira.user.suppressedTips.add.new.users',1),(10516,'jira.properties',1,'com.atlassian.upm:notifications:notification-plugin.request',5);
/*!40000 ALTER TABLE `propertyentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertynumber`
--

DROP TABLE IF EXISTS `propertynumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertynumber` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertynumber`
--

LOCK TABLES `propertynumber` WRITE;
/*!40000 ALTER TABLE `propertynumber` DISABLE KEYS */;
INSERT INTO `propertynumber` VALUES (9,0),(11,1),(12,0),(15,1),(16,1),(23,1),(10202,0),(10220,1),(10221,1),(10226,22),(10229,0),(10231,0),(10232,1),(10233,1),(10234,1),(10236,1),(10244,10004),(10245,10005),(10251,10006),(10252,10007),(10253,10008),(10254,10009),(10255,1),(10256,1),(10257,10200),(10277,50),(10453,1),(10454,1),(10455,1455602451157),(10458,1),(10459,0),(10462,1),(10465,1),(10467,1),(10473,1),(10474,1455613880645),(10475,1),(10481,1),(10482,1455614213269),(10483,1),(10485,1),(10486,1),(10490,1),(10491,1455614866048),(10492,1),(10497,1),(10498,1455614985427),(10499,1),(10501,1),(10503,1),(10504,0),(10507,1),(10508,1),(10510,1),(10511,0),(10514,1),(10515,1);
/*!40000 ALTER TABLE `propertynumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertystring`
--

DROP TABLE IF EXISTS `propertystring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertystring` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertystring`
--

LOCK TABLES `propertystring` WRITE;
/*!40000 ALTER TABLE `propertystring` DISABLE KEYS */;
INSERT INTO `propertystring` VALUES (1,'70120'),(2,'10316'),(3,'10011'),(4,'10300'),(5,'10122'),(6,'10123'),(7,'10000'),(13,'7.0.10'),(14,'6.4.12'),(22,'0'),(10104,'3'),(10105,'english-moderate-stemming'),(10107,'BLNH-X2WS-2DX5-N33V'),(10201,'b6b48b2829824b869586ac216d119363'),(10203,''),(10204,'1455602171710'),(10206,'UTF-8'),(10207,'Your Company JIRA'),(10209,'https://bitbucket.org'),(10210,'https://github.com'),(10214,'15'),(10215,'1'),(10216,'1'),(10217,'http://172.30.36.169:8090'),(10218,'public'),(10219,'/var/atlassian/application-data/jira/data/attachments'),(10222,'true'),(10223,'/var/atlassian/application-data/jira/export'),(10225,'Jsues7HmCqdN2yAgd/VKZghqeQUutC30AHsoyFJdvMg='),(10230,'true'),(10235,'show'),(10246,''),(10249,'GreenHopper Epic Label Field Indexing'),(10250,'true'),(10258,'true'),(10259,'true'),(10261,'2'),(10263,'true'),(10264,'4'),(10265,'1'),(10266,'2'),(10354,'#java.util.List\n'),(10355,'#java.util.List\n'),(10356,'#java.util.List\n'),(10357,'#java.util.List\n'),(10358,'#java.util.List\n'),(10399,'50'),(10401,'3'),(10402,'1'),(10403,'1'),(10405,'2'),(10406,'1'),(10407,'false'),(10408,'1'),(10411,'3'),(10412,'false'),(10413,'false'),(10414,'/favicon.ico'),(10415,'/images/64jira.png'),(10416,'64'),(10417,'64'),(10418,'/favicon.ico'),(10419,'/images/64jira.png'),(10420,'1'),(10422,'#java.util.List\n'),(10424,'#java.util.List\n'),(10426,'#java.util.List\n'),(10427,'#java.util.List\n'),(10428,'#java.util.List\n'),(10429,'#java.util.List\n'),(10430,'#java.util.List\n'),(10431,'#java.util.List\n'),(10432,'#java.util.List\n'),(10433,'#java.util.List\n'),(10434,'#java.util.List\n'),(10435,'#java.util.List\n'),(10439,'5'),(10440,'6086'),(10441,'1'),(10442,'2001'),(10443,'migrated'),(10444,'true'),(10445,'1'),(10446,'1'),(10447,'1'),(10448,'agileFirstUseFlow'),(10450,'#java.util.List\ncom.atlassian.labs.hipchat.hipchat-for-jira-plugin\ncom.atlassian.jira.plugins.jira-healthcheck-plugin'),(10451,'createProject'),(10452,'10000'),(10456,'jira.user.format:profile-link-user-format'),(10457,'com.pyxis.greenhopper.jira:project-sidebar-plan-scrum'),(10463,'jira.user.format:avatar-and-full-name-with-hover-format'),(10464,'jira.user.format:full-name-user-format'),(10471,'agileFirstUseFlow'),(10472,'nextStep'),(10476,'com.pyxis.greenhopper.jira:project-sidebar-plan-scrum'),(10477,'jira.user.format:profile-link-action-header-user-format'),(10479,'agileFirstUseFlow'),(10480,'nextStep'),(10484,'com.pyxis.greenhopper.jira:project-sidebar-plan-scrum'),(10488,'agileFirstUseFlow'),(10489,'nextStep'),(10493,'com.pyxis.greenhopper.jira:project-sidebar-plan-scrum'),(10495,'agileFirstUseFlow'),(10496,'nextStep'),(10500,'jira.user.format:profile-link-with-avatar'),(10502,'com.pyxis.greenhopper.jira:project-sidebar-plan-scrum'),(10509,'com.pyxis.greenhopper.jira:project-sidebar-plan-scrum'),(10516,'#java.util.List\n');
/*!40000 ALTER TABLE `propertystring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertytext`
--

DROP TABLE IF EXISTS `propertytext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertytext` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertytext`
--

LOCK TABLES `propertytext` WRITE;
/*!40000 ALTER TABLE `propertytext` DISABLE KEYS */;
INSERT INTO `propertytext` VALUES (10,'http://www.atlassian.com/*\n'),(21,'{\n    \"edgeMap\": {\n        \"1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA\": {\n            \"actionId\": 5,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1806.5,\n                    \"y\": 434.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1801.0,\n                    \"y\": 115.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1801.0,\n                \"y\": 115.0\n            },\n            \"endStepId\": 4,\n            \"id\": \"1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA\",\n            \"label\": \"Resolve Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1776.85,\n                \"y\": 355.25\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1806.5,\n                \"y\": 434.0\n            },\n            \"startStepId\": 5\n        },\n        \"3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230\": {\n            \"actionId\": 2,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1469.5,\n                    \"y\": 113.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1614.0,\n                    \"y\": 226.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1614.0,\n                \"y\": 226.0\n            },\n            \"endStepId\": 6,\n            \"id\": \"3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230\",\n            \"label\": \"Close Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1492.25,\n                \"y\": 154.25\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1469.5,\n                \"y\": 113.0\n            },\n            \"startStepId\": 1\n        },\n        \"483797F1-1BF4-5E0F-86C6-4D19CE6023A2\": {\n            \"actionId\": 5,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1469.5,\n                    \"y\": 113.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1763.0,\n                    \"y\": 113.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1763.0,\n                \"y\": 113.0\n            },\n            \"endStepId\": 4,\n            \"id\": \"483797F1-1BF4-5E0F-86C6-4D19CE6023A2\",\n            \"label\": \"Resolve Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1551.0,\n                \"y\": 104.0\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1469.5,\n                \"y\": 113.0\n            },\n            \"startStepId\": 1\n        },\n        \"517D7F32-20FB-309E-8639-4D19CE2ACB54\": {\n            \"actionId\": 5,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1434.0,\n                    \"y\": 435.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1435.0,\n                    \"y\": 490.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1947.0,\n                    \"y\": 494.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1950.0,\n                    \"y\": 118.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1763.0,\n                    \"y\": 113.0\n                }\n            ],\n            \"controlPoints\": [\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1435.0,\n                    \"y\": 490.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1947.0,\n                    \"y\": 494.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1950.0,\n                    \"y\": 118.0\n                }\n            ],\n            \"endNodeId\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1763.0,\n                \"y\": 113.0\n            },\n            \"endStepId\": 4,\n            \"id\": \"517D7F32-20FB-309E-8639-4D19CE2ACB54\",\n            \"label\": \"Resolve Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1631.25,\n                \"y\": 479.5\n            },\n            \"lineType\": \"poly\",\n            \"startNodeId\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1434.0,\n                \"y\": 435.0\n            },\n            \"startStepId\": 3\n        },\n        \"58BD4605-5FB9-84EA-6952-4D19CE7B454B\": {\n            \"actionId\": 1,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1470.0,\n                    \"y\": 16.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1469.5,\n                    \"y\": 113.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1469.5,\n                \"y\": 113.0\n            },\n            \"endStepId\": 1,\n            \"id\": \"58BD4605-5FB9-84EA-6952-4D19CE7B454B\",\n            \"label\": \"Create Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1475.5,\n                \"y\": 48.5\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"15174530-AE75-04E0-1D9D-4D19CD200835\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1470.0,\n                \"y\": 16.0\n            },\n            \"startStepId\": 1\n        },\n        \"92D3DEFD-13AC-06A7-E5D8-4D19CE537791\": {\n            \"actionId\": 4,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1439.5,\n                    \"y\": 116.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1393.0,\n                    \"y\": 116.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1390.0,\n                    \"y\": 434.0\n                }\n            ],\n            \"controlPoints\": [\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1393.0,\n                    \"y\": 116.0\n                }\n            ],\n            \"endNodeId\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1390.0,\n                \"y\": 434.0\n            },\n            \"endStepId\": 3,\n            \"id\": \"92D3DEFD-13AC-06A7-E5D8-4D19CE537791\",\n            \"label\": \"Start Progress\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1323.65,\n                \"y\": 193.75\n            },\n            \"lineType\": \"poly\",\n            \"startNodeId\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1439.5,\n                \"y\": 116.0\n            },\n            \"startStepId\": 1\n        },\n        \"C049EE11-C5BB-F93B-36C3-4D19CDF12B8F\": {\n            \"actionId\": 3,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1677.0,\n                    \"y\": 227.0\n                },\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1767.05,\n                    \"y\": 230.05\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1773.5,\n                    \"y\": 425.0\n                }\n            ],\n            \"controlPoints\": [\n                {\n                    \"positiveController\": {\n                        \"positiveController\": null,\n                        \"x\": 0.0,\n                        \"y\": 0.0\n                    },\n                    \"x\": 1767.05,\n                    \"y\": 230.05\n                }\n            ],\n            \"endNodeId\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1773.5,\n                \"y\": 425.0\n            },\n            \"endStepId\": 5,\n            \"id\": \"C049EE11-C5BB-F93B-36C3-4D19CDF12B8F\",\n            \"label\": \"Reopen Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1703.85,\n                \"y\": 218.5\n            },\n            \"lineType\": \"poly\",\n            \"startNodeId\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1677.0,\n                \"y\": 227.0\n            },\n            \"startStepId\": 6\n        },\n        \"C9EA1792-2332-8B56-A04D-4D19CD725367\": {\n            \"actionId\": 301,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1465.0,\n                    \"y\": 436.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1469.5,\n                    \"y\": 113.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1469.5,\n                \"y\": 113.0\n            },\n            \"endStepId\": 1,\n            \"id\": \"C9EA1792-2332-8B56-A04D-4D19CD725367\",\n            \"label\": \"Stop Progress\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1407.8,\n                \"y\": 308.5\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1465.0,\n                \"y\": 436.0\n            },\n            \"startStepId\": 3\n        },\n        \"CAF37138-6321-E03A-8E41-4D19CDD7DC78\": {\n            \"actionId\": 2,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1764.5,\n                    \"y\": 430.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1614.0,\n                    \"y\": 226.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1614.0,\n                \"y\": 226.0\n            },\n            \"endStepId\": 6,\n            \"id\": \"CAF37138-6321-E03A-8E41-4D19CDD7DC78\",\n            \"label\": \"Close Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1677.65,\n                \"y\": 365.0\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1764.5,\n                \"y\": 430.0\n            },\n            \"startStepId\": 5\n        },\n        \"E1F8462A-8B0A-87EA-4F70-4D19CE423C83\": {\n            \"actionId\": 2,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1488.0,\n                    \"y\": 430.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1614.0,\n                    \"y\": 226.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1614.0,\n                \"y\": 226.0\n            },\n            \"endStepId\": 6,\n            \"id\": \"E1F8462A-8B0A-87EA-4F70-4D19CE423C83\",\n            \"label\": \"Close Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1492.0,\n                \"y\": 345.0\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1488.0,\n                \"y\": 430.0\n            },\n            \"startStepId\": 3\n        },\n        \"E27D8EB8-8E49-430B-8FCB-4D19CE127171\": {\n            \"actionId\": 3,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1840.0,\n                    \"y\": 130.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1846.5,\n                    \"y\": 428.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1846.5,\n                \"y\": 428.0\n            },\n            \"endStepId\": 5,\n            \"id\": \"E27D8EB8-8E49-430B-8FCB-4D19CE127171\",\n            \"label\": \"Reopen Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1814.05,\n                \"y\": 169.5\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1840.0,\n                \"y\": 130.0\n            },\n            \"startStepId\": 4\n        },\n        \"F79E742D-A9E4-0124-D7D4-4D19CDE48C9C\": {\n            \"actionId\": 4,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1806.5,\n                    \"y\": 434.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1434.0,\n                    \"y\": 435.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1434.0,\n                \"y\": 435.0\n            },\n            \"endStepId\": 3,\n            \"id\": \"F79E742D-A9E4-0124-D7D4-4D19CDE48C9C\",\n            \"label\": \"Start Progress\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1607.25,\n                \"y\": 423.5\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1806.5,\n                \"y\": 434.0\n            },\n            \"startStepId\": 5\n        },\n        \"FD6BA267-475B-70B3-8AA4-4D19CE00BCD1\": {\n            \"actionId\": 701,\n            \"allPoints\": [\n                {\n                    \"positiveController\": null,\n                    \"x\": 1763.0,\n                    \"y\": 113.0\n                },\n                {\n                    \"positiveController\": null,\n                    \"x\": 1614.0,\n                    \"y\": 226.0\n                }\n            ],\n            \"controlPoints\": [],\n            \"endNodeId\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"endPoint\": {\n                \"positiveController\": null,\n                \"x\": 1614.0,\n                \"y\": 226.0\n            },\n            \"endStepId\": 6,\n            \"id\": \"FD6BA267-475B-70B3-8AA4-4D19CE00BCD1\",\n            \"label\": \"Close Issue\",\n            \"labelPoint\": {\n                \"positiveController\": null,\n                \"x\": 1635.75,\n                \"y\": 152.25\n            },\n            \"lineType\": \"straight\",\n            \"startNodeId\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"startPoint\": {\n                \"positiveController\": null,\n                \"x\": 1763.0,\n                \"y\": 113.0\n            },\n            \"startStepId\": 4\n        }\n    },\n    \"nodeMap\": {\n        \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\": {\n            \"id\": \"0740FFFA-2AA1-C90A-38ED-4D19CD61899B\",\n            \"inLinkIds\": [\n                \"F79E742D-A9E4-0124-D7D4-4D19CDE48C9C\",\n                \"92D3DEFD-13AC-06A7-E5D8-4D19CE537791\"\n            ],\n            \"isInitialAction\": false,\n            \"label\": \"In Progress\",\n            \"outLinkIds\": [\n                \"C9EA1792-2332-8B56-A04D-4D19CD725367\",\n                \"517D7F32-20FB-309E-8639-4D19CE2ACB54\",\n                \"E1F8462A-8B0A-87EA-4F70-4D19CE423C83\"\n            ],\n            \"rect\": {\n                \"height\": 45.0,\n                \"positiveController\": null,\n                \"width\": 146.0,\n                \"x\": 1373.0,\n                \"y\": 419.0\n            },\n            \"stepId\": 3\n        },\n        \"15174530-AE75-04E0-1D9D-4D19CD200835\": {\n            \"id\": \"15174530-AE75-04E0-1D9D-4D19CD200835\",\n            \"inLinkIds\": [],\n            \"isInitialAction\": true,\n            \"label\": \"Create Issue\",\n            \"outLinkIds\": [\n                \"58BD4605-5FB9-84EA-6952-4D19CE7B454B\"\n            ],\n            \"rect\": {\n                \"height\": 45.0,\n                \"positiveController\": null,\n                \"width\": 157.0,\n                \"x\": 1405.0,\n                \"y\": 0.0\n            },\n            \"stepId\": 1\n        },\n        \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\": {\n            \"id\": \"1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34\",\n            \"inLinkIds\": [\n                \"CAF37138-6321-E03A-8E41-4D19CDD7DC78\",\n                \"E1F8462A-8B0A-87EA-4F70-4D19CE423C83\",\n                \"FD6BA267-475B-70B3-8AA4-4D19CE00BCD1\",\n                \"3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230\"\n            ],\n            \"isInitialAction\": false,\n            \"label\": \"Closed\",\n            \"outLinkIds\": [\n                \"C049EE11-C5BB-F93B-36C3-4D19CDF12B8F\"\n            ],\n            \"rect\": {\n                \"height\": 45.0,\n                \"positiveController\": null,\n                \"width\": 120.0,\n                \"x\": 1569.0,\n                \"y\": 210.0\n            },\n            \"stepId\": 6\n        },\n        \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\": {\n            \"id\": \"6DA64EEB-08FE-2870-C90C-4D19CDA2F72D\",\n            \"inLinkIds\": [\n                \"517D7F32-20FB-309E-8639-4D19CE2ACB54\",\n                \"1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA\",\n                \"483797F1-1BF4-5E0F-86C6-4D19CE6023A2\"\n            ],\n            \"isInitialAction\": false,\n            \"label\": \"Resolved\",\n            \"outLinkIds\": [\n                \"FD6BA267-475B-70B3-8AA4-4D19CE00BCD1\",\n                \"E27D8EB8-8E49-430B-8FCB-4D19CE127171\"\n            ],\n            \"rect\": {\n                \"height\": 44.0,\n                \"positiveController\": null,\n                \"width\": 137.0,\n                \"x\": 1709.0,\n                \"y\": 97.0\n            },\n            \"stepId\": 4\n        },\n        \"778534F4-7595-88B6-45E1-4D19CD518712\": {\n            \"id\": \"778534F4-7595-88B6-45E1-4D19CD518712\",\n            \"inLinkIds\": [\n                \"C9EA1792-2332-8B56-A04D-4D19CD725367\",\n                \"58BD4605-5FB9-84EA-6952-4D19CE7B454B\"\n            ],\n            \"isInitialAction\": false,\n            \"label\": \"Open\",\n            \"outLinkIds\": [\n                \"92D3DEFD-13AC-06A7-E5D8-4D19CE537791\",\n                \"483797F1-1BF4-5E0F-86C6-4D19CE6023A2\",\n                \"3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230\"\n            ],\n            \"rect\": {\n                \"height\": 45.0,\n                \"positiveController\": null,\n                \"width\": 106.0,\n                \"x\": 1429.5,\n                \"y\": 97.0\n            },\n            \"stepId\": 1\n        },\n        \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\": {\n            \"id\": \"A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB\",\n            \"inLinkIds\": [\n                \"E27D8EB8-8E49-430B-8FCB-4D19CE127171\",\n                \"C049EE11-C5BB-F93B-36C3-4D19CDF12B8F\"\n            ],\n            \"isInitialAction\": false,\n            \"label\": \"Reopened\",\n            \"outLinkIds\": [\n                \"1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA\",\n                \"CAF37138-6321-E03A-8E41-4D19CDD7DC78\",\n                \"F79E742D-A9E4-0124-D7D4-4D19CDE48C9C\"\n            ],\n            \"rect\": {\n                \"height\": 45.0,\n                \"positiveController\": null,\n                \"width\": 142.0,\n                \"x\": 1749.5,\n                \"y\": 418.0\n            },\n            \"stepId\": 5\n        }\n    },\n    \"rootIds\": [\n        \"15174530-AE75-04E0-1D9D-4D19CD200835\"\n    ],\n    \"width\": 1136\n}\n'),(10224,'<map>\n  <entry>\n    <string>gh.issue.flaggingfield</string>\n    <string>customfield_10000</string>\n  </entry>\n  <entry>\n    <string>gh.issue.labelfield</string>\n    <string>customfield_10001</string>\n  </entry>\n  <entry>\n    <string>gh.issue.story</string>\n    <string>10001</string>\n  </entry>\n  <entry>\n    <string>gh.issue.storypoints</string>\n    <string>customfield_10002</string>\n  </entry>\n  <entry>\n    <string>gh.issue.businessvalues</string>\n    <string>customfield_10003</string>\n  </entry>\n  <entry>\n    <string>gh.issue.epic</string>\n    <string>10000</string>\n  </entry>\n</map>'),(10227,'<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:28:35.628+05:30</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2016-01-20T04:47:24.285+05:30</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10228,'<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:28:35.628+05:30</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2016-01-20T04:47:24.285+05:30</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10248,'{\"com.atlassian.jira.reindex.required\":1455602419988}'),(10275,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:18.435+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>12</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10276,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:18.438+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>12</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10279,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:18.446+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>13</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10285,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1041</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.533+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>13</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10287,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.561+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>14</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10288,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.574+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>14</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10290,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.598+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>15</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10291,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.602+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>15</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10293,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.611+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>16</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10294,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>2</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.615+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>16</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10296,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.622+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>17</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10297,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>3</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.634+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>17</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10299,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.644+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>18</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10300,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.647+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>18</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10302,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.667+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>19</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10303,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>8</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.678+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>19</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10305,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.687+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>20</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10306,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.689+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>20</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10308,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.709+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>21</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10309,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.723+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>21</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10311,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.742+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>22</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10312,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.751+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>22</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10314,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.760+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>23</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10315,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.762+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>23</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10317,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.778+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>24</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10318,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.783+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>24</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10320,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.803+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>25</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10321,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>4</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.811+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>25</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10323,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.851+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>26</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10324,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>17</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.872+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>26</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10326,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.887+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>27</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10327,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>9</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.899+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>27</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10329,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.907+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>29</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10330,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>7</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.942+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>29</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10332,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.976+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>30</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10333,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>7</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:19.991+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>30</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10335,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.000+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>31</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10336,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.004+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>31</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10338,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.016+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>32</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10339,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>10</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.029+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>32</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10341,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.049+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>33</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10342,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>11</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.073+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>33</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10344,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.143+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>34</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10345,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>269</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.451+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>34</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10347,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.480+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>35</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10348,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>7</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.489+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>35</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10350,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.540+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>36</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10351,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.543+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>36</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10353,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.553+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>37</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10359,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>413</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:20.968+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>37</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10361,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.024+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>38</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10362,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.030+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>38</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10364,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.122+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>39</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10365,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.138+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>39</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10367,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.146+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>40</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10368,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>74</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.222+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>40</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10370,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.279+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>41</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10371,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>26</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.307+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>41</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10373,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.335+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>42</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10374,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.349+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>42</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10376,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.356+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>43</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10377,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>3</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.360+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>43</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10379,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.368+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>44</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10380,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>14</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.384+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>44</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10382,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.423+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>45</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10383,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>6</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.454+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>45</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10385,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.561+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>46</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10386,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>5</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.582+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>46</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10388,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.681+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>47</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10389,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>14</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.710+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>47</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10391,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.720+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>48</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10392,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.724+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>48</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10394,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.763+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>49</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10395,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.765+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>49</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10397,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.788+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>50</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10398,'<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.0.11</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-02-16T11:30:21.790+05:30</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>50</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>63b8de25536543e7</string>\n  </entry>\n</map>'),(10449,'app.properties.setup=FULLFILLED;create.user.mail.properties.setup=ANNOUNCED;database.setup=AWAITS;mail.properties.setup=ANNOUNCE'),(10460,'summary,description,priority,versions,components'),(10461,'<map>\n  <entry>\n    <string>BASE_CONFIGURATION</string>\n    <string>GH</string>\n  </entry>\n</map>'),(10466,'{\"com.atlassian.jira.reindex.required\":1455602536880}'),(10478,'{\"com.atlassian.jira.reindex.required\":1455614511979}'),(10487,'{\"com.atlassian.jira.reindex.required\":1455615438307}'),(10494,'{\"com.atlassian.jira.reindex.required\":1455614996761}'),(10505,'summary,description,priority,versions,components'),(10506,'<map>\n  <entry>\n    <string>BASE_CONFIGURATION</string>\n    <string>GH</string>\n  </entry>\n</map>'),(10512,'summary,description,priority,versions,components'),(10513,'<map>\n  <entry>\n    <string>BASE_CONFIGURATION</string>\n    <string>GH</string>\n  </entry>\n</map>');
/*!40000 ALTER TABLE `propertytext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `ID` decimal(18,0) DEFAULT NULL,
  `CALENDAR_NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `CALENDAR` text COLLATE utf8_bin,
  PRIMARY KEY (`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `ID` decimal(18,0) NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `cronExperssion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_fired_triggers` (
  `ID` decimal(18,0) DEFAULT NULL,
  `ENTRY_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `TRIGGER_LISTENER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIRED_TIME` datetime DEFAULT NULL,
  `TRIGGER_STATE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_details` (
  `ID` decimal(18,0) NOT NULL,
  `JOB_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JOB_GROUP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLASS_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_DURABLE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `JOB_DATA` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_listeners`
--

DROP TABLE IF EXISTS `qrtz_job_listeners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_listeners` (
  `ID` decimal(18,0) NOT NULL,
  `JOB` decimal(18,0) DEFAULT NULL,
  `JOB_LISTENER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_listeners`
--

LOCK TABLES `qrtz_job_listeners` WRITE;
/*!40000 ALTER TABLE `qrtz_job_listeners` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_listeners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simple_triggers` (
  `ID` decimal(18,0) NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `REPEAT_COUNT` decimal(9,0) DEFAULT NULL,
  `REPEAT_INTERVAL` decimal(18,0) DEFAULT NULL,
  `TIMES_TRIGGERED` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_trigger_listeners`
--

DROP TABLE IF EXISTS `qrtz_trigger_listeners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_trigger_listeners` (
  `ID` decimal(18,0) NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `TRIGGER_LISTENER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_trigger_listeners`
--

LOCK TABLES `qrtz_trigger_listeners` WRITE;
/*!40000 ALTER TABLE `qrtz_trigger_listeners` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_trigger_listeners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_triggers` (
  `ID` decimal(18,0) NOT NULL,
  `TRIGGER_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JOB` decimal(18,0) DEFAULT NULL,
  `NEXT_FIRE` datetime DEFAULT NULL,
  `TRIGGER_STATE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `CALENDAR_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MISFIRE_INSTR` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reindex_component`
--

DROP TABLE IF EXISTS `reindex_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reindex_component` (
  `ID` decimal(18,0) NOT NULL,
  `REQUEST_ID` decimal(18,0) DEFAULT NULL,
  `AFFECTED_INDEX` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_reindex_component_req_id` (`REQUEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reindex_component`
--

LOCK TABLES `reindex_component` WRITE;
/*!40000 ALTER TABLE `reindex_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `reindex_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reindex_request`
--

DROP TABLE IF EXISTS `reindex_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reindex_request` (
  `ID` decimal(18,0) NOT NULL,
  `TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `REQUEST_TIME` datetime DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `COMPLETION_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_NODE_ID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `QUERY` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reindex_request`
--

LOCK TABLES `reindex_request` WRITE;
/*!40000 ALTER TABLE `reindex_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `reindex_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remembermetoken`
--

DROP TABLE IF EXISTS `remembermetoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remembermetoken` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `remembermetoken_username_index` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remembermetoken`
--

LOCK TABLES `remembermetoken` WRITE;
/*!40000 ALTER TABLE `remembermetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `remembermetoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remotelink`
--

DROP TABLE IF EXISTS `remotelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remotelink` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUEID` decimal(18,0) DEFAULT NULL,
  `GLOBALID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUMMARY` text COLLATE utf8_bin,
  `URL` text COLLATE utf8_bin,
  `ICONURL` text COLLATE utf8_bin,
  `ICONTITLE` text COLLATE utf8_bin,
  `RELATIONSHIP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RESOLVED` char(1) COLLATE utf8_bin DEFAULT NULL,
  `STATUSNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUSDESCRIPTION` text COLLATE utf8_bin,
  `STATUSICONURL` text COLLATE utf8_bin,
  `STATUSICONTITLE` text COLLATE utf8_bin,
  `STATUSICONLINK` text COLLATE utf8_bin,
  `STATUSCATEGORYKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUSCATEGORYCOLORNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `APPLICATIONTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `APPLICATIONNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `remotelink_issueid` (`ISSUEID`,`GLOBALID`),
  KEY `remotelink_globalid` (`GLOBALID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remotelink`
--

LOCK TABLES `remotelink` WRITE;
/*!40000 ALTER TABLE `remotelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `remotelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replicatedindexoperation`
--

DROP TABLE IF EXISTS `replicatedindexoperation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replicatedindexoperation` (
  `ID` decimal(18,0) NOT NULL,
  `INDEX_TIME` datetime DEFAULT NULL,
  `NODE_ID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `AFFECTED_INDEX` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `AFFECTED_IDS` longtext COLLATE utf8_bin,
  `OPERATION` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `FILENAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `node_operation_idx` (`NODE_ID`,`AFFECTED_INDEX`,`OPERATION`,`INDEX_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replicatedindexoperation`
--

LOCK TABLES `replicatedindexoperation` WRITE;
/*!40000 ALTER TABLE `replicatedindexoperation` DISABLE KEYS */;
/*!40000 ALTER TABLE `replicatedindexoperation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolution`
--

DROP TABLE IF EXISTS `resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolution` (
  `ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `ICONURL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolution`
--

LOCK TABLES `resolution` WRITE;
/*!40000 ALTER TABLE `resolution` DISABLE KEYS */;
INSERT INTO `resolution` VALUES ('10000',1,'Done','Work has been completed on this issue.',NULL),('10001',2,'Won\'t Do','This issue won\'t be actioned.',NULL),('10002',3,'Duplicate','The problem is a duplicate of an existing issue.',NULL),('10003',4,'Cannot Reproduce','All attempts at reproducing this issue failed, or not enough information was available to reproduce the issue. Reading the code produces no clues as to why this behavior would occur. If more information appears later, please reopen the issue.',NULL);
/*!40000 ALTER TABLE `resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rundetails`
--

DROP TABLE IF EXISTS `rundetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rundetails` (
  `ID` decimal(18,0) NOT NULL,
  `JOB_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `RUN_DURATION` decimal(18,0) DEFAULT NULL,
  `RUN_OUTCOME` char(1) COLLATE utf8_bin DEFAULT NULL,
  `INFO_MESSAGE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `rundetails_jobid_idx` (`JOB_ID`),
  KEY `rundetails_starttime_idx` (`START_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rundetails`
--

LOCK TABLES `rundetails` WRITE;
/*!40000 ALTER TABLE `rundetails` DISABLE KEYS */;
INSERT INTO `rundetails` VALUES (10002,'com.atlassian.jira.service.JiraService:10001','2016-02-16 11:26:38',987,'S',''),(10005,'com.atlassian.jira.user.UserHistoryDatabaseCompactor','2016-02-16 11:28:44',1,'S',''),(10010,'CompatibilityPluginScheduler.JobId.BundledUpdateCheckJob-job','2016-02-16 11:30:11',8,'S',''),(10012,'CompatibilityPluginScheduler.JobId.LocalPluginLicenseNotificationJob-job','2016-02-16 11:30:11',211,'S',''),(10032,'com.atlassian.jira.plugins.software.monitor.ApplicationPluginsEnablerJobRunner','2016-02-16 11:34:41',14,'S',''),(10239,'com.atlassian.jira.crowd.embedded.JiraDirectoryPollerManager.10000','2016-02-16 12:25:00',453,'S','Directory \'LDAP server\' synchronised in 420 milliseconds.'),(10244,'com.atlassian.jira.cache.monitor.CacheStatisticsMonitor','2016-02-16 12:26:16',0,'S',''),(10633,'9138b352-4213-407f-be6e-70c046f964f2','2016-02-16 13:59:31',100,'F','OperationFailedException: org.springframework.ldap.UncategorizedLdapException: Unable to find the username of the principal.\nUncategorizedLdapException: Unable to find the username of the principal.'),(10663,'b232c768-4f53-49d4-9c50-8c46c1e6b2a3','2016-02-16 14:07:13',57,'F','OperationFailedException: org.springframework.ldap.UncategorizedLdapException: Unable to find the username of the principal.\nUncategorizedLdapException: Unable to find the username of the principal.'),(10787,'1a803e9e-91a3-4b79-8a5d-a2a10b2da912','2016-02-16 14:36:20',166,'F','OperationFailedException: org.springframework.ldap.UncategorizedLdapException: Unable to find the groupname of the principal.\nUncategorizedLdapException: Unable to find the groupname of the principal.'),(10857,'5d17f5cb-580d-4013-b8e2-1c9230ad45e1','2016-02-16 14:53:37',175,'F','OperationFailedException: org.springframework.ldap.UncategorizedLdapException: Unable to find the groupname of the principal.\nUncategorizedLdapException: Unable to find the groupname of the principal.'),(11006,'CompatibilityPluginScheduler.JobId.PluginRequestCheckJob-job','2016-02-16 15:30:11',5,'S',''),(11010,'JiraPluginScheduler:com.atlassian.jira.plugins.workflow.sharing.file.FileCleaningJob','2016-02-16 15:30:22',2,'S',''),(11039,'com.atlassian.jira.crowd.embedded.JiraDirectoryPollerManager.10000','2016-02-16 15:37:18',101,'F','OperationFailedException: org.springframework.ldap.UncategorizedLdapException: Unable to find the groupname of the principal.\nUncategorizedLdapException: Unable to find the groupname of the principal.'),(11112,'CompatibilityPluginScheduler.JobId.com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler:job','2016-02-16 15:55:21',2,'S',''),(11125,'data-provider-cleanup','2016-02-16 15:58:44',2,'S',''),(11167,'CompatibilityPluginScheduler.JobId.LEXO_RANK_SCHEDULER_JOB','2016-02-16 16:09:17',2,'S',''),(11168,'JiraPluginScheduler:LEXO_RANK_STATS_COLLECTOR_JOB','2016-02-16 16:09:17',0,'S',''),(11169,'JiraPluginScheduler:com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateServiceImpl:job','2016-02-16 16:09:18',0,'S',''),(11170,'com.atlassian.jira.service.JiraService:10000','2016-02-16 16:10:00',0,'S','');
/*!40000 ALTER TABLE `rundetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schemeissuesecurities`
--

DROP TABLE IF EXISTS `schemeissuesecurities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schemeissuesecurities` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `SECURITY` decimal(18,0) DEFAULT NULL,
  `sec_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sec_parameter` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `sec_scheme` (`SCHEME`),
  KEY `sec_security` (`SECURITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schemeissuesecurities`
--

LOCK TABLES `schemeissuesecurities` WRITE;
/*!40000 ALTER TABLE `schemeissuesecurities` DISABLE KEYS */;
/*!40000 ALTER TABLE `schemeissuesecurities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schemeissuesecuritylevels`
--

DROP TABLE IF EXISTS `schemeissuesecuritylevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schemeissuesecuritylevels` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schemeissuesecuritylevels`
--

LOCK TABLES `schemeissuesecuritylevels` WRITE;
/*!40000 ALTER TABLE `schemeissuesecuritylevels` DISABLE KEYS */;
/*!40000 ALTER TABLE `schemeissuesecuritylevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schemepermissions`
--

DROP TABLE IF EXISTS `schemepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schemepermissions` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `PERMISSION` decimal(18,0) DEFAULT NULL,
  `perm_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `perm_parameter` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PERMISSION_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `prmssn_scheme` (`SCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schemepermissions`
--

LOCK TABLES `schemepermissions` WRITE;
/*!40000 ALTER TABLE `schemepermissions` DISABLE KEYS */;
INSERT INTO `schemepermissions` VALUES (10000,NULL,0,'group','jira-administrators',NULL),(10004,0,23,'projectrole','10002','ADMINISTER_PROJECTS'),(10005,0,10,'applicationRole','','BROWSE_PROJECTS'),(10006,0,11,'applicationRole','','CREATE_ISSUES'),(10007,0,15,'applicationRole','','ADD_COMMENTS'),(10008,0,19,'applicationRole','','CREATE_ATTACHMENTS'),(10009,0,13,'applicationRole','','ASSIGN_ISSUES'),(10010,0,17,'applicationRole','','ASSIGNABLE_USER'),(10011,0,14,'applicationRole','','RESOLVE_ISSUES'),(10012,0,21,'applicationRole','','LINK_ISSUES'),(10013,0,12,'applicationRole','','EDIT_ISSUES'),(10014,0,16,'projectrole','10002','DELETE_ISSUES'),(10015,0,18,'applicationRole','','CLOSE_ISSUES'),(10016,0,25,'applicationRole','','MOVE_ISSUES'),(10017,0,28,'applicationRole','','SCHEDULE_ISSUES'),(10018,0,30,'projectrole','10002','MODIFY_REPORTER'),(10019,0,20,'applicationRole','','WORK_ON_ISSUES'),(10020,0,43,'projectrole','10002','DELETE_ALL_WORKLOGS'),(10021,0,42,'applicationRole','','DELETE_OWN_WORKLOGS'),(10022,0,41,'projectrole','10002','EDIT_ALL_WORKLOGS'),(10023,0,40,'applicationRole','','EDIT_OWN_WORKLOGS'),(10024,0,31,'applicationRole','','VIEW_VOTERS_AND_WATCHERS'),(10025,0,32,'projectrole','10002','MANAGE_WATCHERS'),(10026,0,34,'projectrole','10002','EDIT_ALL_COMMENTS'),(10027,0,35,'applicationRole','','EDIT_OWN_COMMENTS'),(10028,0,36,'projectrole','10002','DELETE_ALL_COMMENTS'),(10029,0,37,'applicationRole','','DELETE_OWN_COMMENTS'),(10030,0,38,'projectrole','10002','DELETE_ALL_ATTACHMENTS'),(10031,0,39,'applicationRole','','DELETE_OWN_ATTACHMENTS'),(10033,0,29,'applicationRole','','VIEW_DEV_TOOLS'),(10101,NULL,44,'group','jira-administrators',NULL),(10200,0,45,'applicationRole','','VIEW_READONLY_WORKFLOW'),(10300,0,46,'applicationRole','','TRANSITION_ISSUES'),(10400,10000,NULL,'applicationRole',NULL,'BROWSE_PROJECTS'),(10401,10000,NULL,'applicationRole',NULL,'CREATE_ISSUES'),(10402,10000,NULL,'applicationRole',NULL,'EDIT_ISSUES'),(10403,10000,NULL,'applicationRole',NULL,'ASSIGN_ISSUES'),(10404,10000,NULL,'applicationRole',NULL,'RESOLVE_ISSUES'),(10405,10000,NULL,'applicationRole',NULL,'ADD_COMMENTS'),(10406,10000,NULL,'projectrole','10002','DELETE_ISSUES'),(10407,10000,NULL,'applicationRole',NULL,'ASSIGNABLE_USER'),(10408,10000,NULL,'applicationRole',NULL,'CLOSE_ISSUES'),(10409,10000,NULL,'applicationRole',NULL,'CREATE_ATTACHMENTS'),(10410,10000,NULL,'applicationRole',NULL,'WORK_ON_ISSUES'),(10411,10000,NULL,'applicationRole',NULL,'LINK_ISSUES'),(10412,10000,NULL,'projectrole','10002','ADMINISTER_PROJECTS'),(10413,10000,NULL,'applicationRole',NULL,'MOVE_ISSUES'),(10414,10000,NULL,'applicationRole',NULL,'SCHEDULE_ISSUES'),(10415,10000,NULL,'projectrole','10002','MODIFY_REPORTER'),(10416,10000,NULL,'applicationRole',NULL,'VIEW_VOTERS_AND_WATCHERS'),(10417,10000,NULL,'projectrole','10002','MANAGE_WATCHERS'),(10418,10000,NULL,'projectrole','10002','EDIT_ALL_COMMENTS'),(10419,10000,NULL,'applicationRole',NULL,'EDIT_OWN_COMMENTS'),(10420,10000,NULL,'projectrole','10002','DELETE_ALL_COMMENTS'),(10421,10000,NULL,'applicationRole',NULL,'DELETE_OWN_COMMENTS'),(10422,10000,NULL,'projectrole','10002','DELETE_ALL_ATTACHMENTS'),(10423,10000,NULL,'applicationRole',NULL,'DELETE_OWN_ATTACHMENTS'),(10424,10000,NULL,'applicationRole',NULL,'EDIT_OWN_WORKLOGS'),(10425,10000,NULL,'projectrole','10002','EDIT_ALL_WORKLOGS'),(10426,10000,NULL,'applicationRole',NULL,'DELETE_OWN_WORKLOGS'),(10427,10000,NULL,'projectrole','10002','DELETE_ALL_WORKLOGS'),(10428,10000,NULL,'applicationRole',NULL,'VIEW_READONLY_WORKFLOW'),(10429,10000,NULL,'applicationRole',NULL,'TRANSITION_ISSUES'),(10430,10000,NULL,'applicationRole',NULL,'VIEW_DEV_TOOLS');
/*!40000 ALTER TABLE `schemepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchrequest`
--

DROP TABLE IF EXISTS `searchrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchrequest` (
  `ID` decimal(18,0) NOT NULL,
  `filtername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `authorname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `groupname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `projectid` decimal(18,0) DEFAULT NULL,
  `reqcontent` longtext COLLATE utf8_bin,
  `FAV_COUNT` decimal(18,0) DEFAULT NULL,
  `filtername_lower` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `sr_author` (`authorname`),
  KEY `searchrequest_filternameLower` (`filtername_lower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchrequest`
--

LOCK TABLES `searchrequest` WRITE;
/*!40000 ALTER TABLE `searchrequest` DISABLE KEYS */;
INSERT INTO `searchrequest` VALUES (10002,'Filter for DEMO board','jenkins',NULL,'jenkins',NULL,NULL,'project = DEMO ORDER BY Rank ASC',0,'filter for demo board');
/*!40000 ALTER TABLE `searchrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceconfig`
--

DROP TABLE IF EXISTS `serviceconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceconfig` (
  `ID` decimal(18,0) NOT NULL,
  `delaytime` decimal(18,0) DEFAULT NULL,
  `CLAZZ` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `servicename` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CRON_EXPRESSION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceconfig`
--

LOCK TABLES `serviceconfig` WRITE;
/*!40000 ALTER TABLE `serviceconfig` DISABLE KEYS */;
INSERT INTO `serviceconfig` VALUES (10000,60000,'com.atlassian.jira.service.services.mail.MailQueueService','Mail Queue Service','0 * * * * ?'),(10001,43200000,'com.atlassian.jira.service.services.export.ExportService','Backup Service','0 25 11/12 * * ?'),(10002,86400000,'com.atlassian.jira.service.services.auditing.AuditLogCleaningService','Audit log cleaning service','0 30 5 * * ?');
/*!40000 ALTER TABLE `serviceconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharepermissions`
--

DROP TABLE IF EXISTS `sharepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sharepermissions` (
  `ID` decimal(18,0) NOT NULL,
  `entityid` decimal(18,0) DEFAULT NULL,
  `entitytype` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `sharetype` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `PARAM1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARAM2` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `share_index` (`entityid`,`entitytype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharepermissions`
--

LOCK TABLES `sharepermissions` WRITE;
/*!40000 ALTER TABLE `sharepermissions` DISABLE KEYS */;
INSERT INTO `sharepermissions` VALUES (10000,10000,'PortalPage','global',NULL,NULL),(10102,10002,'SearchRequest','project','10002',NULL);
/*!40000 ALTER TABLE `sharepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackback_ping`
--

DROP TABLE IF EXISTS `trackback_ping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackback_ping` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUE` decimal(18,0) DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BLOGNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCERPT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackback_ping`
--

LOCK TABLES `trackback_ping` WRITE;
/*!40000 ALTER TABLE `trackback_ping` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackback_ping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trustedapp`
--

DROP TABLE IF EXISTS `trustedapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trustedapp` (
  `ID` decimal(18,0) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PUBLIC_KEY` text COLLATE utf8_bin,
  `IP_MATCH` text COLLATE utf8_bin,
  `URL_MATCH` text COLLATE utf8_bin,
  `TIMEOUT` decimal(18,0) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `trustedapp_id` (`APPLICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trustedapp`
--

LOCK TABLES `trustedapp` WRITE;
/*!40000 ALTER TABLE `trustedapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `trustedapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgradehistory`
--

DROP TABLE IF EXISTS `upgradehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgradehistory` (
  `ID` decimal(18,0) DEFAULT NULL,
  `UPGRADECLASS` varchar(255) COLLATE utf8_bin NOT NULL,
  `TARGETBUILD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOWNGRADETASKREQUIRED` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`UPGRADECLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgradehistory`
--

LOCK TABLES `upgradehistory` WRITE;
/*!40000 ALTER TABLE `upgradehistory` DISABLE KEYS */;
INSERT INTO `upgradehistory` VALUES (10000,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70100','70100','complete','Y'),(10100,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70101','70101','complete','N'),(10101,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70102','70102','complete','N'),(10102,'com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70109','70109','complete','N');
/*!40000 ALTER TABLE `upgradehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgradeversionhistory`
--

DROP TABLE IF EXISTS `upgradeversionhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgradeversionhistory` (
  `ID` decimal(18,0) DEFAULT NULL,
  `TIMEPERFORMED` datetime DEFAULT NULL,
  `TARGETBUILD` varchar(255) COLLATE utf8_bin NOT NULL,
  `TARGETVERSION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TARGETBUILD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgradeversionhistory`
--

LOCK TABLES `upgradeversionhistory` WRITE;
/*!40000 ALTER TABLE `upgradeversionhistory` DISABLE KEYS */;
INSERT INTO `upgradeversionhistory` VALUES (10000,'2016-02-16 11:26:11','70120','7.0.10');
/*!40000 ALTER TABLE `upgradeversionhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userassociation`
--

DROP TABLE IF EXISTS `userassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userassociation` (
  `SOURCE_NAME` varchar(60) COLLATE utf8_bin NOT NULL,
  `SINK_NODE_ID` decimal(18,0) NOT NULL,
  `SINK_NODE_ENTITY` varchar(60) COLLATE utf8_bin NOT NULL,
  `ASSOCIATION_TYPE` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(9,0) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`SOURCE_NAME`,`SINK_NODE_ID`,`SINK_NODE_ENTITY`,`ASSOCIATION_TYPE`),
  KEY `user_source` (`SOURCE_NAME`),
  KEY `user_sink` (`SINK_NODE_ID`,`SINK_NODE_ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userassociation`
--

LOCK TABLES `userassociation` WRITE;
/*!40000 ALTER TABLE `userassociation` DISABLE KEYS */;
INSERT INTO `userassociation` VALUES ('jenkins',10002,'Issue','WatchIssue',NULL,'2016-02-16 15:06:38');
/*!40000 ALTER TABLE `userassociation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userbase`
--

DROP TABLE IF EXISTS `userbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userbase` (
  `ID` decimal(18,0) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_HASH` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `osuser_name` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userbase`
--

LOCK TABLES `userbase` WRITE;
/*!40000 ALTER TABLE `userbase` DISABLE KEYS */;
/*!40000 ALTER TABLE `userbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userhistoryitem`
--

DROP TABLE IF EXISTS `userhistoryitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userhistoryitem` (
  `ID` decimal(18,0) NOT NULL,
  `entitytype` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `entityid` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastviewed` decimal(18,0) DEFAULT NULL,
  `data` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uh_type_user_entity` (`entitytype`,`USERNAME`,`entityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userhistoryitem`
--

LOCK TABLES `userhistoryitem` WRITE;
/*!40000 ALTER TABLE `userhistoryitem` DISABLE KEYS */;
INSERT INTO `userhistoryitem` VALUES (10009,'Project','10000','user33',1455614217178,NULL),(10010,'RapidView','1','user33',1455614217447,'DEMO board'),(10011,'Dashboard','10000','user33',1455618054460,NULL),(10012,'Project','10000','jenkins',1455614886876,NULL),(10013,'RapidView','1','jenkins',1455614869410,'DEMO board'),(10014,'Issue','10000','jenkins',1455614886651,NULL),(10019,'Dashboard','10000','jenkins',1455617535888,NULL),(10020,'Project','10002','jenkins',1455615412159,NULL),(10021,'RapidView','3','jenkins',1455615389893,'DEMO board'),(10022,'Issue','10002','jenkins',1455615412159,NULL),(10023,'Assignee','jenkins','jenkins',1455615412068,NULL),(10024,'UsedUser','jenkins','jenkins',1455615412068,NULL),(10025,'Assignee','jenkins','user33',1455618091252,NULL);
/*!40000 ALTER TABLE `userhistoryitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpickerfilter`
--

DROP TABLE IF EXISTS `userpickerfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpickerfilter` (
  `ID` decimal(18,0) NOT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  `CUSTOMFIELDCONFIG` decimal(18,0) DEFAULT NULL,
  `enabled` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `upf_customfield` (`CUSTOMFIELD`),
  KEY `upf_fieldconfigid` (`CUSTOMFIELDCONFIG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpickerfilter`
--

LOCK TABLES `userpickerfilter` WRITE;
/*!40000 ALTER TABLE `userpickerfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpickerfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpickerfiltergroup`
--

DROP TABLE IF EXISTS `userpickerfiltergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpickerfiltergroup` (
  `ID` decimal(18,0) NOT NULL,
  `USERPICKERFILTER` decimal(18,0) DEFAULT NULL,
  `groupname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cf_userpickerfiltergroup` (`USERPICKERFILTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpickerfiltergroup`
--

LOCK TABLES `userpickerfiltergroup` WRITE;
/*!40000 ALTER TABLE `userpickerfiltergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpickerfiltergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpickerfilterrole`
--

DROP TABLE IF EXISTS `userpickerfilterrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpickerfilterrole` (
  `ID` decimal(18,0) NOT NULL,
  `USERPICKERFILTER` decimal(18,0) DEFAULT NULL,
  `PROJECTROLEID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cf_userpickerfilterrole` (`USERPICKERFILTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpickerfilterrole`
--

LOCK TABLES `userpickerfilterrole` WRITE;
/*!40000 ALTER TABLE `userpickerfilterrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpickerfilterrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versioncontrol`
--

DROP TABLE IF EXISTS `versioncontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versioncontrol` (
  `ID` decimal(18,0) NOT NULL,
  `vcsname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vcsdescription` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vcstype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versioncontrol`
--

LOCK TABLES `versioncontrol` WRITE;
/*!40000 ALTER TABLE `versioncontrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `versioncontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votehistory`
--

DROP TABLE IF EXISTS `votehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votehistory` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `VOTES` decimal(18,0) DEFAULT NULL,
  `TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `votehistory_issue_index` (`issueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votehistory`
--

LOCK TABLES `votehistory` WRITE;
/*!40000 ALTER TABLE `votehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `votehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowscheme`
--

DROP TABLE IF EXISTS `workflowscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowscheme`
--

LOCK TABLES `workflowscheme` WRITE;
/*!40000 ALTER TABLE `workflowscheme` DISABLE KEYS */;
INSERT INTO `workflowscheme` VALUES (10000,'classic','classic'),(10100,'DEMO: Software Simplified Workflow Scheme','Generated by JIRA Software version 7.0.11. This workflow scheme is managed internally by JIRA Software. Do not manually modify this workflow scheme.');
/*!40000 ALTER TABLE `workflowscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowschemeentity`
--

DROP TABLE IF EXISTS `workflowschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `WORKFLOW` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `workflow_scheme` (`SCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowschemeentity`
--

LOCK TABLES `workflowschemeentity` WRITE;
/*!40000 ALTER TABLE `workflowschemeentity` DISABLE KEYS */;
INSERT INTO `workflowschemeentity` VALUES (10000,10000,'classic default workflow','0'),(10100,10100,'Software Simplified Workflow for Project DEMO','0');
/*!40000 ALTER TABLE `workflowschemeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worklog`
--

DROP TABLE IF EXISTS `worklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worklog` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `grouplevel` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rolelevel` decimal(18,0) DEFAULT NULL,
  `worklogbody` longtext COLLATE utf8_bin,
  `CREATED` datetime DEFAULT NULL,
  `UPDATEAUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `timeworked` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `worklog_issue` (`issueid`),
  KEY `worklog_author` (`AUTHOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worklog`
--

LOCK TABLES `worklog` WRITE;
/*!40000 ALTER TABLE `worklog` DISABLE KEYS */;
/*!40000 ALTER TABLE `worklog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-16 16:10:08
