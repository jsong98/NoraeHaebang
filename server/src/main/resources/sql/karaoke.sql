-- MySQL dump 10.13  Distrib 5.7.35, for Win64 (x86_64)
--
-- Host: localhost    Database: testuser
-- ------------------------------------------------------
-- Server version	5.7.35-log

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `room_id` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `roomId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (29,'3 님 4 입장!!','3','3','2024-02-01T16:30:14.528157500','ENTER',NULL),(30,'3 님 4 입장!!','4','3','2024-02-01T16:30:14.528157500','ENTER',NULL),(31,'3 님 4 입장!!','4','3','2024-02-01T16:30:15.962965100','ENTER',NULL),(32,'3 님 4 입장!!','4','3','2024-02-01T16:40:09.860988600','ENTER',NULL),(33,'3 님 4 입장!!','4','3','2024-02-01T16:40:21.227516600','ENTER',NULL),(34,'반갑다 ㅋ','4','3','2024-02-01T16:57:56.472380','TALK',NULL),(35,'반갑다 ㅋ','4','3','2024-02-02T09:15:36.222096800','TALK',NULL),(36,'반갑다 ㅋ','4','3','2024-02-02T09:15:37.066109200','TALK',NULL),(37,'반갑다 ㅋ','4','3','2024-02-02T09:15:37.448845900','TALK',NULL),(38,'반갑다 ㅋ','4','3','2024-02-02T09:15:37.950735300','TALK',NULL),(39,'반갑다 ㅋ','4','3','2024-02-02T09:20:59.434344200','TALK',NULL),(40,'반갑다 ㅋ','4','3','2024-02-02T09:21:00.163115100','TALK',NULL),(41,'반갑다 ㅋ','4','3','2024-02-02T09:21:00.614529800','TALK',NULL),(42,'반갑다 ㅋ','4','3','2024-02-02T09:31:07.345622200','TALK',NULL),(43,'반갑다 ㅋ','4','3','2024-02-02T09:31:07.928306400','TALK',NULL),(44,'반갑다 ㅋ','4','3','2024-02-02T09:31:08.381306200','TALK',NULL),(45,'반갑다 ㅋ','5','3','2024-02-02T09:31:17.645457700','TALK',NULL),(46,'반갑다 ㅋ','5','3','2024-02-02T09:31:18.162669','TALK',NULL),(47,'반갑다 ㅋ','5','3','2024-02-02T09:31:18.632105','TALK',NULL),(48,'반갑다 ㅋ','5','3','2024-02-02T10:03:43.340980100','TALK',NULL),(49,'반갑다 ㅋ','5','3','2024-02-02T10:03:43.974097200','TALK',NULL),(50,'반갑다 ㅋ','5','3','2024-02-02T10:03:44.635416400','TALK',NULL),(51,'반갑다 ㅋ','5','3','2024-02-02T10:03:55.868821100','TALK',NULL),(52,'반갑다 ㅋ','5','3','2024-02-02T10:03:56.432379','TALK',NULL),(53,'반갑다 ㅋ','5','3','2024-02-02T10:03:56.678867800','TALK',NULL),(54,'User1 님 1방 입장!!','1','1','2024-02-02T13:12:15.625887300','ENTER',NULL),(55,'하이!!','1','1','2024-02-02T13:13:49.246745','TALK',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_room`
--

DROP TABLE IF EXISTS `chat_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_room` (
  `room_pk` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) DEFAULT NULL,
  `user_count` bigint(20) NOT NULL,
  `roomName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_room`
--

LOCK TABLES `chat_room` WRITE;
/*!40000 ALTER TABLE `chat_room` DISABLE KEYS */;
INSERT INTO `chat_room` VALUES (1,'gd',0,NULL),(2,'gd',0,NULL),(3,'gd',0,NULL),(4,'gd',0,NULL),(5,'gd',0,NULL);
/*!40000 ALTER TABLE `chat_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `feed_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `parent_comment_id` int(11) DEFAULT NULL,
  `root_comment_id` int(11) DEFAULT NULL,
  `user_pk` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `idx_feed_id` (`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed`
--

DROP TABLE IF EXISTS `feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `total_point` int(11) DEFAULT NULL,
  `user_pk` int(11) DEFAULT NULL,
  `video_length` int(11) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed`
--

LOCK TABLES `feed` WRITE;
/*!40000 ALTER TABLE `feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_stats`
--

DROP TABLE IF EXISTS `feed_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_stats` (
  `feed_id` int(11) NOT NULL,
  `like_count` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_stats`
--

LOCK TABLES `feed_stats` WRITE;
/*!40000 ALTER TABLE `feed_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `FRIEND_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `fromUserPk` bigint(20) NOT NULL,
  `status` char(1) NOT NULL,
  `toUserPk` bigint(20) NOT NULL,
  PRIMARY KEY (`FRIEND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hit_stat`
--

DROP TABLE IF EXISTS `hit_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hit_stat` (
  `feed_id` int(11) NOT NULL,
  `hit_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hit_stat`
--

LOCK TABLES `hit_stat` WRITE;
/*!40000 ALTER TABLE `hit_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `hit_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hits`
--

DROP TABLE IF EXISTS `hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hits` (
  `hit_id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_pk` int(11) DEFAULT NULL,
  PRIMARY KEY (`hit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hits`
--

LOCK TABLES `hits` WRITE;
/*!40000 ALTER TABLE `hits` DISABLE KEYS */;
/*!40000 ALTER TABLE `hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_stats`
--

DROP TABLE IF EXISTS `like_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `like_stats` (
  `feed_id` int(11) NOT NULL,
  `like_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_stats`
--

LOCK TABLES `like_stats` WRITE;
/*!40000 ALTER TABLE `like_stats` DISABLE KEYS */;
INSERT INTO `like_stats` VALUES (1,1),(3,1),(4,1);
/*!40000 ALTER TABLE `like_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_id` int(11) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_pk` int(11) DEFAULT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,4,_binary '','2024-02-14 03:39:37',2),(2,3,_binary '','2024-02-14 03:39:37',2),(3,1,_binary '','2024-02-14 03:39:37',22);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `fromUser` int(11) NOT NULL,
  `info` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `toUser` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pointlog`
--

DROP TABLE IF EXISTS `pointlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pointlog` (
  `pointLogId` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `fromUser` int(11) DEFAULT NULL,
  `toUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`pointLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pointlog`
--

LOCK TABLES `pointlog` WRITE;
/*!40000 ALTER TABLE `pointlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `pointlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pointmemo`
--

DROP TABLE IF EXISTS `pointmemo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pointmemo` (
  `pointMemoId` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `lastTime` datetime(6) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `userPK` int(11) DEFAULT NULL,
  PRIMARY KEY (`pointMemoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pointmemo`
--

LOCK TABLES `pointmemo` WRITE;
/*!40000 ALTER TABLE `pointmemo` DISABLE KEYS */;
/*!40000 ALTER TABLE `pointmemo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refresh_token` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `expired_at` datetime(6) DEFAULT NULL,
  `token_value` varchar(255) DEFAULT NULL,
  `user_pk` int(11) DEFAULT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_token`
--

LOCK TABLES `refresh_token` WRITE;
/*!40000 ALTER TABLE `refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sing_log`
--

DROP TABLE IF EXISTS `sing_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sing_log` (
  `sing_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `sing_mode` varchar(2) DEFAULT NULL,
  `sing_score` int(11) DEFAULT NULL,
  `sing_status` varchar(2) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `user_pk` int(11) DEFAULT NULL,
  PRIMARY KEY (`sing_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sing_log`
--

LOCK TABLES `sing_log` WRITE;
/*!40000 ALTER TABLE `sing_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sing_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `singer` varchar(255) DEFAULT NULL,
  `test` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_info`
--

DROP TABLE IF EXISTS `song_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_info` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_cover` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `mml_data` varchar(255) DEFAULT NULL,
  `song_url` varchar(255) DEFAULT NULL,
  `prelude` int(11) DEFAULT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_info`
--

LOCK TABLES `song_info` WRITE;
/*!40000 ALTER TABLE `song_info` DISABLE KEYS */;
INSERT INTO `song_info` (song_id, author, length, mml_data, prelude, song_url)
VALUES (
	51,
    '신동우',
    220,
    "t70 o3 l8
   <b-'후'>
   g4'회'r4b-'하'a-16'고	'g16'있'&gf'어'&
   fd'요
 '&d4r4.<g'우'>
   g4'리	'r4a-'다'g16'투'f16'던	'&fe-'그	'
   >cc'날
 '&c4r4.<b-'괜'
   >c4'한	'rc'자'd'존'<b-'심	'g'때'a-16'문'b-16'에
 '&
   b-4r>d-'끝'c'내'<g'자'f'고	'g16'말'a-16'을
 '&
   a-4r4a-'해'b-16'버'>c16'린'&c<b-'거'&
   b-f'야
 '&f4r4.<b-'금'>
 
   g4'방	'r4b-'볼	'a-16'줄	'g16'알'&gf'았'&
   fd'어
 '&d4r2
   g4'날	'r4a-'찾'g16'길	'f16'바'&fe-'랬'
   >cc'어
 '&c4r4.<b-'허'
   >c4'나	'rc'며'd'칠'<b-'이	'g'지'a-16'나'b-16'도
 '&
   b-4r>d-'아'c'무	'<g'소'f'식'g'조'
   b-'차	'a-rg16'없'f16f4'어
 'r4
 
   r e-'항'f'상	'e-16'내'f16'게
 '&fe- r. <b-16'너'>
   a-'무	'g'잘'f'해'e-'줘'&e-<b-'서
 '&b-4>
   r4 l16f'쉽'gf'게	'f'생'& l8 f f'각'g'했'a-16'나'a-16'봐
 '&
   a-g&g4r2
   r e-'이'f'젠	'e-16'알'f16'아
 '&fe- r. <b-16'내	'>
   g'고'b-'집	'b-'때'>c'문'&c<g'에
 '&g4
   b-'힘'a-'들'g'었'a-'던	'&a-4 >g'너'g'를
 '&
   gf&f2r4
 
   <b-'이	'>l16e-'바'e-'보'&e-8f'야
 'f'진'&f8g'짜	'g'아'&g<b-b-'니'>c'야
 '&
   c<b-8.&b-4r2
   l8>c'아'e-'직'e-'도	'f16'나'e-16'를
 '&e-4r a-'그'&
   a-g'렇'f16'게	'e-16e-'몰'&e-<b-'라
 '&b-4
 
   >c'너'<b16'를	'>c16'가'&ce-'진	'f.'사'e-16e-4'랑
 '
   <b-'나'a16'밖'b-16'엔	'&b->d'없'f.'는'e-16e-4'데
 '
   r2c'제'd16'발	'e-16'나'&e-16f.'를
 '
   g.'떠'f16f4'나'e-.'가'd16d.'지'e-16e-2'마
 'r2r1
 
   r< e-'언'f'제'e-16'라'f16'도
 '&fe- r. <b-16'내	'>
   a-'편'g'이	'f'돼'e-'준	'&e-<b-'너
 '&b-4>
   r4 l16f'고'gf'마'f'운	'& l8 f f'줄	'g'모'a-16'르'a-16'고
 '&
   a-g&g4r2
   r e-'철'f'없'e-16'이	'f16'나
 '&fe- r. r16
   g'멋'b-'대'b-'로	'>c'한'&c<g'거
 '&g4
   b-'용'a-'서'g'할	'a-'수	'&a-4 >g'없'g'니
 '&
   gf&f2r4
 
   <b-'이	'>l16e-'바'e-'보'&e-8f'야
 'f'진'&f8g'짜	'g'아'&g<b-b-'니'>c'야
 '&
   c<b-8.&b-4r2
   l8>c'아'e-'직'e-'도	'f16'나'e-16'를
 '&e-4r a-'그'&
   a-g'렇'f16'게	'e-16e-'몰'&e-<b-'라
 '&b-4
 
   >c'너'<b-16'를	'>c16'가'&ce-'진	'f.'사'e-16e-4'랑
 '
   <b-'나'a-16'밖'b-16'엔	'&b->d'없'f.'는'e-16e-4'데
 '
   r2c'제'd16'발	'e-16'떠'&e-f'나'
 
   g4'가'a-'지'f'마
 '&f4r4
   <b-'너	'>e-16'하'e-16'나'&e- f16'만
 'f16'사'&fg16'랑'g16'하'&g16<b-16b-16'는'>c16'데
 '&
   c16<b-.&b-4r2
   >c'이'e-'대'e-'로	'f16'나'e-16'를
 '&e-4r a-'두'&
   l16a-gg'고	'f f'가'e-e-'지'g'마
 '&gf+g8&g4
   l8 c'나'<b16'를	'>c16'버'&cd'리'f.'지'e-16e-4'마
 '
   <b-'그'a16'냥	'b-16'날	'&b-16>b-'안'a-16 a-'아'g16g16'줘
 '&g4
   r2 c'다'd16'시	'e-16'사'&e-16f.'랑'
   g.'하'f16 f4'게
 'e-.'돌'd16 d4'아'
   f'와
 'e-&e-4",
    13200,
    'https://a705.s3.ap-northeast-2.amazonaws.com/izif6b7b-3504-4ef4-ae79-3063301967d0.mp3'
), (
52,
    '안익태',
    62,
    "t68 o3 l4
   d'동'g.'해'f+8'물'e'과	' g'백'd'두'c-'산'd'이
 ' g'마'a8'르'b8'고	'b+.'닳'b8'도' a2'록
 '.r
   >d.'하'c8'느'<b'님'a'이	' g'보'f+8'우'e8d'하'c-'사
 ' d'우'g'리'a8'나'a8'라	'b'만' g2.'세
 'r
   f+.'무'g8a'궁'f+'화	' b.'삼'>c8d'천'<b'리
 ' a'화'g'려'f+'강'g a2.'산
 'r
   >d.'대'c8'한'<b'사'a'람	' g'대'f+8'한'e8d'으'c-'로
 ' d'길'g'이'a8'보'a8'전'b'하'g2.'세'r",
    0,
    'https://a705.s3.ap-northeast-2.amazonaws.com/anthem.mp3'
), (
68,
    '윤우현',
    95,
    "t72 l8 o3
   g#'너	'b'없'b'는	'g#16'지'>c#.'금'<b'도
 '&b.>d#16'눈'
   e.'부'd#16'신	'c#'하'<g#16'늘'>c#16&'과
 'c#4r4
   <g#'눈'b'부'b'시'b16'게	'>c#16'웃'&c#<b'는	'g#'사'f#16'람'g#16'들
 '&g#2r2
 
   g#'나'b'의	'b'헤'g#16'어'>c#16'짐'&c#<b'을
 '&b.>d#16'모'
   e'르'd#'는	'c#'세'<g#16'상'>c#16'은
 '&c#4r4
   <g#'슬'b16'프'b16'도'&bb'록
 '>c#'그'<b'대'g#'로'f#16'인'g#16'데
 '&g#2r2
 
   r4>c#'시'e'간'd#'마'd#16'저	'e16'데'&ef#'려'
   <b'가'g#'지
 'b'못'b16'하'>c#16'게	'&c#4r4
   c#16'나'e16'만'e'은	' e'널
 'e16'보'd#16'내'&d#e'지	'd#'못'<b'했'
   b16'나'>c#16<b'봐
 '&b2r4
   r4>c#'가'e'시'd#'처'd#16'럼	'e16'깊'&ef#'게
 '
   g#'박'g#16'힌	'f#16 f#'기'g#16'억'g#16'은
 'e4<r4
 
   a'아'a16'파'a16'도	'&a4 b'아'b16'픈	'b16'줄
 '&b16g#'모'b16'르'>c#2'고
 '<r2
 
   b.'그'b16'대	'>e16'기'f#16'억'g#'이
 '&g#4r4
   <b#.'지'b#16'난	'>e16'사'f#16'랑'g#'이
 '&g#4rf#'내	'
   f#'안'e'을	'&e d#16'파'e16'고'f#'드'e'는
 'rf#'가'
   g#4'시'&g#16f#16f#16'가	'e16'되'f#4'어
 '<r4
 
   b.'제'b16'발	'>e16'가'f#16'라'g#'고
 '&g#4r4
   <b#.'아'b#16'주	'>e16'가'f#16'라'g#'고
 '&g#4rf#'애'
   f#'써'e16e16'도	'&e d#16'나'e16'를
 'f#'괴'e'롭'd#'히'd#16'는'd#16'데'e2.r4",
    15050,
    'https://a705.s3.ap-northeast-2.amazonaws.com/buzz.mp3'
);
/*!40000 ALTER TABLE `song_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_pk` int(11) NOT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `profile_img_url` varchar(255) DEFAULT NULL,
  `role` char(1) DEFAULT NULL,
  `user_key` binary(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(2,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(3,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(4,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(5,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(6,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(7,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(8,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(9,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(10,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(11,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(12,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(13,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(14,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(15,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(16,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(17,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(18,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(19,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(20,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(21,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(22,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(23,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(24,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(25,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(26,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(27,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(28,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(29,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(30,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(31,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(32,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(33,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(34,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(35,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(36,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(37,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(38,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(39,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(40,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(41,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(42,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(43,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(44,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(45,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(46,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(47,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(48,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(49,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(50,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(51,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(52,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(53,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(54,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(55,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(56,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(57,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(58,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(59,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(60,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(61,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(62,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(63,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(64,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(65,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(66,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(67,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(68,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(69,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(70,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(71,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(72,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(73,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(74,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(75,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(76,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(77,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(78,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(79,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(80,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(81,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(82,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(83,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(84,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(85,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(86,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(87,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(88,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(89,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(90,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(91,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(92,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(93,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(94,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(95,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(96,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(97,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(98,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(99,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(100,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(101,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(102,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(103,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(104,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(105,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(106,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(107,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(108,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(109,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(110,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(111,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(112,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(113,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(114,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(115,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(116,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(117,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(118,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(119,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(120,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(121,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(122,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(123,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(124,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(125,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(126,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(127,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(128,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(129,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(130,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(131,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(132,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(133,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(134,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(135,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(136,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(137,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(138,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(139,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(140,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(141,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(142,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(143,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(144,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(145,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(146,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(147,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(148,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(149,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(150,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(151,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(152,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(153,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(154,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(155,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(156,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(157,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(158,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(159,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(160,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(161,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(162,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(163,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(164,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(165,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(166,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(167,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(168,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(169,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(170,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(171,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(172,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(173,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(174,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(175,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(176,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(177,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(178,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(179,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(180,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(181,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(182,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(183,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(184,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(185,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(186,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(187,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(188,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(189,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(190,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(191,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(192,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(193,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(194,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(195,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(196,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(197,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(198,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(199,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(200,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(201,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(202,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(203,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(204,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(205,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(206,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(207,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(208,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(209,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(210,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(211,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(212,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(213,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(214,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(215,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(216,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(217,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(218,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(219,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(220,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(221,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(222,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(223,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(224,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(225,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(226,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(227,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(228,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(229,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(230,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(231,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(232,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(233,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(234,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(235,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(236,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(237,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(238,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(239,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(240,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(241,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(242,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(243,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(244,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(245,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(246,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(247,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(248,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(249,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(250,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(251,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(252,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(253,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(254,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(255,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(256,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(257,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(258,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(259,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(260,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(261,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(262,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(263,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(264,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(265,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(266,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(267,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(268,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(269,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(270,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(271,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(272,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(273,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(274,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(275,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(276,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(277,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(278,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(279,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(280,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(281,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(282,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(283,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(284,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(285,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(286,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(287,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(288,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(289,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(290,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(291,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(292,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(293,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(294,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(295,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(296,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(297,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(298,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(299,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(300,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(301,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(302,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(303,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(304,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(305,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(306,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(307,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(308,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(309,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(310,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(311,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(312,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(313,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(314,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(315,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(316,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(317,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(318,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(319,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(320,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(321,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(322,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(323,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(324,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(325,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(326,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(327,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(328,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(329,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(330,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(331,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(332,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(333,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(334,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(335,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(336,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(337,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(338,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(339,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(340,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(341,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(342,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(343,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(344,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(345,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(346,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(347,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(348,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(349,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(350,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(351,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(352,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(353,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(354,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(355,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(356,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(357,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(358,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(359,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(360,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(361,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(362,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(363,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(364,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(365,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(366,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(367,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(368,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(369,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(370,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(371,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(372,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(373,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(374,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(375,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(376,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(377,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(378,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(379,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(380,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(381,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(382,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(383,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(384,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(385,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(386,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(387,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(388,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(389,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(390,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(391,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(392,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(393,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(394,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(395,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(396,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(397,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(398,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(399,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(400,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(401,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(402,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(403,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(404,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(405,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(406,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(407,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(408,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(409,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(410,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(411,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(412,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(413,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(414,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(415,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(416,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(417,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(418,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(419,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(420,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(421,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(422,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(423,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(424,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(425,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(426,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(427,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(428,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(429,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(430,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(431,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(432,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(433,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(434,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(435,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(436,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(437,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(438,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(439,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(440,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(441,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(442,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(443,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(444,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(445,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(446,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(447,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(448,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(449,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(450,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(451,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(452,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(453,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(454,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(455,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(456,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(457,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(458,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(459,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(460,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(461,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(462,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(463,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(464,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(465,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(466,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(467,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(468,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(469,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(470,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(471,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(472,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(473,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(474,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(475,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(476,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(477,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(478,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(479,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(480,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(481,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(482,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(483,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(484,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(485,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(486,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(487,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(488,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(489,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(490,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(491,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(492,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(493,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(494,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(495,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(496,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(497,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(498,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(499,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(500,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(501,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(502,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(503,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(504,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(505,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(506,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(507,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(508,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(509,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(510,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(511,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(512,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(513,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(514,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(515,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(516,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(517,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(518,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(519,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(520,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(521,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(522,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(523,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(524,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(525,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(526,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(527,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(528,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(529,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(530,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(531,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(532,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(533,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(534,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(535,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(536,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(537,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(538,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(539,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(540,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(541,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(542,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(543,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(544,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(545,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(546,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(547,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(548,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(549,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(550,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(551,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(552,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(553,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(554,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(555,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(556,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(557,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(558,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(559,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(560,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(561,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(562,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(563,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(564,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(565,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(566,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(567,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(568,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(569,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(570,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(571,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(572,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(573,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(574,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(575,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(576,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(577,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(578,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(579,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(580,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(581,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(582,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(583,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(584,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(585,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(586,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(587,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(588,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(589,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(590,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(591,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(592,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(593,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(594,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(595,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(596,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(597,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(598,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(599,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(600,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(601,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(602,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(603,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(604,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(605,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(606,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(607,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(608,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(609,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(610,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(611,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(612,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(613,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(614,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(615,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(616,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(617,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(618,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(619,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(620,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(621,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(622,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(623,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(624,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(625,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(626,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(627,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(628,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(629,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(630,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(631,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(632,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(633,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(634,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(635,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(636,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(637,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(638,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(639,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(640,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(641,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(642,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(643,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(644,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(645,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(646,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(647,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(648,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(649,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(650,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(651,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(652,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(653,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(654,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(655,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(656,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(657,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(658,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(659,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(660,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(661,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(662,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(663,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(664,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(665,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(666,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(667,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(668,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(669,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(670,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(671,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(672,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(673,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(674,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(675,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(676,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(677,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(678,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(679,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(680,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(681,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(682,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(683,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(684,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(685,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(686,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(687,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(688,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(689,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(690,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(691,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(692,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(693,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(694,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(695,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(696,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(697,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(698,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(699,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(700,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(701,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(702,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(703,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(704,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(705,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(706,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(707,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(708,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(709,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(710,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(711,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(712,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(713,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(714,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(715,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(716,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(717,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(718,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(719,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(720,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(721,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(722,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(723,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(724,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(725,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(726,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(727,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(728,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(729,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(730,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(731,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(732,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(733,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(734,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(735,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(736,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(737,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(738,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(739,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(740,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(741,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(742,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(743,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(744,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(745,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(746,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(747,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(748,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(749,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(750,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(751,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(752,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(753,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(754,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(755,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(756,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(757,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(758,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(759,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(760,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(761,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(762,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(763,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(764,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(765,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(766,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(767,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(768,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(769,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(770,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(771,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(772,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(773,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(774,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(775,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(776,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(777,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(778,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(779,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(780,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(781,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(782,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(783,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(784,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(785,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(786,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(787,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(788,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(789,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(790,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(791,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(792,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(793,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(794,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(795,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(796,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(797,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(798,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(799,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(800,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(801,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(802,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(803,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(804,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(805,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(806,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(807,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(808,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(809,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(810,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(811,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(812,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(813,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(814,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(815,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(816,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(817,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(818,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(819,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(820,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(821,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(822,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(823,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(824,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(825,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(826,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(827,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(828,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(829,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(830,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(831,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(832,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(833,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(834,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(835,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(836,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(837,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(838,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(839,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(840,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(841,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(842,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(843,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(844,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(845,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(846,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(847,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(848,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(849,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(850,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(851,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(852,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(853,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(854,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(855,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(856,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(857,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(858,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(859,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(860,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(861,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(862,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(863,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(864,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(865,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(866,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(867,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(868,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(869,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(870,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(871,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(872,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(873,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(874,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(875,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(876,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(877,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(878,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(879,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(880,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(881,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(882,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(883,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(884,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(885,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(886,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(887,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(888,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(889,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(890,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(891,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(892,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(893,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(894,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(895,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(896,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(897,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(898,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(899,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(900,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(901,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(902,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(903,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(904,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(905,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(906,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(907,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(908,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(909,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(910,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(911,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(912,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(913,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(914,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(915,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(916,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(917,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(918,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(919,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(920,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(921,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(922,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(923,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(924,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(925,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(926,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(927,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(928,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(929,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(930,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(931,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(932,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(933,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(934,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(935,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(936,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(937,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(938,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(939,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(940,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(941,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(942,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(943,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(944,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(945,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(946,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(947,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(948,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(949,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(950,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(951,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(952,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(953,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(954,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(955,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(956,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(957,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(958,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(959,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(960,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(961,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(962,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(963,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(964,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(965,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(966,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(967,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(968,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(969,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(970,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(971,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(972,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(973,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(974,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(975,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(976,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(977,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(978,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(979,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(980,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(981,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(982,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(983,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(984,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(985,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(986,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(987,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(988,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(989,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(990,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(991,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(992,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(993,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(994,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(995,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(996,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(997,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(998,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(999,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1000,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1001,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1002,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1003,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1004,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1005,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1006,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1007,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1008,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1009,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1010,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1011,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1012,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1013,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1014,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1015,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1016,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1017,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1018,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1019,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1020,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1021,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1022,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1023,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1024,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1025,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1026,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1027,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1028,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1029,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1030,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1031,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1032,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1033,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1034,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1035,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1036,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1037,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1038,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1039,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1040,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1041,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1042,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1043,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1044,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1045,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1046,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1047,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1048,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1049,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1050,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1051,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1052,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1053,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1054,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1055,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1056,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1057,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1058,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1059,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1060,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1061,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1062,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1063,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1064,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1065,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1066,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1067,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1068,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1069,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1070,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1071,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1072,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1073,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1074,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1075,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1076,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1077,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1078,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1079,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1080,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1081,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1082,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1083,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1084,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1085,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1086,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1087,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1088,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1089,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1090,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1091,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1092,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1093,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1094,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1095,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1096,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1097,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1098,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1099,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1100,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1101,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1102,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1103,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1104,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1105,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1106,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1107,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1108,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1109,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1110,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1111,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1112,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1113,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1114,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1115,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1116,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1117,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1118,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1119,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1120,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1121,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1122,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1123,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1124,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1125,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1126,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1127,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1128,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1129,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1130,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL),(1131,'MxFkoafwAP9E@gmail.com','suwKyZkT8AQn',0,NULL,NULL,NULL,NULL,NULL),(1132,'1uYollwSR2Oa@gmail.com','0xqc3zQtu9C1',0,NULL,NULL,NULL,NULL,NULL),(1133,'9QqVz28m0VTf@gmail.com','R9H0Uu9h1t6S',0,NULL,NULL,NULL,NULL,NULL),(1134,'W29rylVlqhWO@gmail.com','HzKvmj4Rrxsk',0,NULL,NULL,NULL,NULL,NULL),(1135,'EmDIJf2L1hyh@gmail.com','4shgnV3LCeOl',0,NULL,NULL,NULL,NULL,NULL),(1136,'O1uAknnsuGGW@gmail.com','BpVQugnopT95',0,NULL,NULL,NULL,NULL,NULL),(1137,'7k3oW6kOfexO@gmail.com','l9CPFm6RBHRy',0,NULL,NULL,NULL,NULL,NULL),(1138,'0DlsYr9NvmYc@gmail.com','FLJaMZPrFQBB',0,NULL,NULL,NULL,NULL,NULL),(1139,'FnDTYw52Bgie@gmail.com','urBN53nvUkep',0,NULL,NULL,NULL,NULL,NULL),(1140,'Ov1d0C0Zi5CJ@gmail.com','UyQG6p2wzQi9',0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth` (
  `user_pk` int(11) NOT NULL AUTO_INCREMENT,
  `status` char(1) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_key_mapping`
--

DROP TABLE IF EXISTS `user_key_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_key_mapping` (
  `user_pk` int(11) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  PRIMARY KEY (`user_pk`,`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_key_mapping`
--

LOCK TABLES `user_key_mapping` WRITE;
/*!40000 ALTER TABLE `user_key_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_key_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pk_mapping`
--

DROP TABLE IF EXISTS `user_pk_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_pk_mapping` (
  `user_id` varchar(255) NOT NULL,
  `user_pk` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pk_mapping`
--

LOCK TABLES `user_pk_mapping` WRITE;
/*!40000 ALTER TABLE `user_pk_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_pk_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_refreshtoken`
--

DROP TABLE IF EXISTS `user_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_refreshtoken` (
  `user_user_pk` int(11) NOT NULL,
  `refreshToken_token_id` int(11) NOT NULL,
  UNIQUE KEY `UK_gco817p2pyln563bkeiclelhb` (`refreshToken_token_id`),
  CONSTRAINT `FK65202d95mbcwrk85fu2pkp0vq` FOREIGN KEY (`refreshToken_token_id`) REFERENCES `refresh_token` (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_refreshtoken`
--

LOCK TABLES `user_refreshtoken` WRITE;
/*!40000 ALTER TABLE `user_refreshtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_chats`
--

DROP TABLE IF EXISTS `users_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_chats` (
  `users_chats_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `room_pk` bigint(20) NOT NULL,
  `user_pk` bigint(20) NOT NULL,
  `roomPk` bigint(20) NOT NULL,
  `status` char(1) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `userPk` bigint(20) NOT NULL,
  `userUuid` binary(255) DEFAULT NULL,
  PRIMARY KEY (`users_chats_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_chats`
--

LOCK TABLES `users_chats` WRITE;
/*!40000 ALTER TABLE `users_chats` DISABLE KEYS */;
INSERT INTO `users_chats` VALUES (1,1,1,0,'',NULL,0,NULL),(2,1,2,0,'',NULL,0,NULL),(3,2,1,0,'',NULL,0,NULL),(4,2,2,0,'',NULL,0,NULL),(5,3,1,0,'',NULL,0,NULL),(6,3,2,0,'',NULL,0,NULL),(7,4,1,0,'',NULL,0,NULL),(8,4,2,0,'',NULL,0,NULL),(9,5,1,0,'',NULL,0,NULL),(10,5,2,0,'',NULL,0,NULL);
/*!40000 ALTER TABLE `users_chats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 12:15:35
