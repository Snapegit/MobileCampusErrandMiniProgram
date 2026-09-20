-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl86342287
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl86342287`
--

/*!40000 DROP DATABASE IF EXISTS `cl86342287`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl86342287` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl86342287`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问内容',
  `reply` longtext COMMENT '回复内容',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712029877473 DEFAULT CHARSET=utf8 COMMENT='客服投诉';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (41,'2024-04-02 03:11:58',1,'提问内容1','回复内容1',1,1),(42,'2024-04-02 03:11:58',2,'提问内容2','回复内容2',2,2),(43,'2024-04-02 03:11:58',3,'提问内容3','回复内容3',3,3),(44,'2024-04-02 03:11:58',4,'提问内容4','回复内容4',4,4),(45,'2024-04-02 03:11:58',5,'提问内容5','回复内容5',5,5),(46,'2024-04-02 03:11:58',6,'提问内容6','回复内容6',6,6),(1712029447421,'2024-04-02 03:44:07',NULL,'导入分工会尽快11',NULL,0,1712029337214),(1712029783292,'2024-04-02 03:49:43',1,NULL,'是地方工会尽快123',0,1712029337214),(1712029877472,'2024-04-02 03:51:17',NULL,'地方工会尽快了反弹过后就看1212',NULL,1,1712029337214);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/1712029700282.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jieshourenwu`
--

DROP TABLE IF EXISTS `jieshourenwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jieshourenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `renwumingcheng` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `qujiandifang` varchar(200) DEFAULT NULL COMMENT '取件地方',
  `songdadifang` varchar(200) DEFAULT NULL COMMENT '送达地方',
  `baochou` double DEFAULT NULL COMMENT '报酬',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `jieshoushijian` datetime DEFAULT NULL COMMENT '接受时间',
  `jiedanrenzhanghao` varchar(200) DEFAULT NULL COMMENT '接单人账号',
  `jiedanrenxingming` varchar(200) DEFAULT NULL COMMENT '接单人姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1712029505867 DEFAULT CHARSET=utf8 COMMENT='接受任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jieshourenwu`
--

LOCK TABLES `jieshourenwu` WRITE;
/*!40000 ALTER TABLE `jieshourenwu` DISABLE KEYS */;
INSERT INTO `jieshourenwu` VALUES (71,'2024-04-02 03:11:58','1111111111','任务名称1','取件地方1','送达地方1',1,'账号1','姓名1','19819881111','已完成','2024-04-02 11:11:58','接单人账号1','接单人姓名1','19819881111','未支付'),(72,'2024-04-02 03:11:58','2222222222','任务名称2','取件地方2','送达地方2',2,'账号2','姓名2','19819881112','已完成','2024-04-02 11:11:58','接单人账号2','接单人姓名2','19819881112','未支付'),(73,'2024-04-02 03:11:58','3333333333','任务名称3','取件地方3','送达地方3',3,'账号3','姓名3','19819881113','已完成','2024-04-02 11:11:58','接单人账号3','接单人姓名3','19819881113','未支付'),(74,'2024-04-02 03:11:58','4444444444','任务名称4','取件地方4','送达地方4',4,'账号4','姓名4','19819881114','已完成','2024-04-02 11:11:58','接单人账号4','接单人姓名4','19819881114','未支付'),(75,'2024-04-02 03:11:58','5555555555','任务名称5','取件地方5','送达地方5',5,'账号5','姓名5','19819881115','已完成','2024-04-02 11:11:58','接单人账号5','接单人姓名5','19819881115','未支付'),(76,'2024-04-02 03:11:58','6666666666','任务名称6','取件地方6','送达地方6',6,'账号6','姓名6','19819881116','已完成','2024-04-02 11:11:58','接单人账号6','接单人姓名6','19819881116','未支付'),(1712029505866,'2024-04-02 03:45:05','1712029497894','非托管银行','对方过后1','对方过后3',5,'11','依依','13823813811','已取消','2024-04-02 11:44:57','33','笑笑','13823813833','已支付');
/*!40000 ALTER TABLE `jieshourenwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-04-02 03:11:59','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"接受任务\",\"menuJump\":\"列表\",\"tableName\":\"jieshourenwu\"}],\"fontClass\":\"icon-common31\",\"menu\":\"接受任务管理\",\"unicode\":\"&#xee48;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common34\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xee85;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user3\",\"menu\":\"用户管理\",\"unicode\":\"&#xef99;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"取消订单\",\"menuJump\":\"列表\",\"tableName\":\"quxiaodingdan\"}],\"fontClass\":\"icon-common36\",\"menu\":\"取消订单管理\",\"unicode\":\"&#xee9f;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"校园资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common32\",\"menu\":\"校园资讯管理\",\"unicode\":\"&#xee66;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"跑腿任务\",\"menuJump\":\"列表\",\"tableName\":\"paotuirenwu\"}],\"fontClass\":\"icon-common40\",\"menu\":\"跑腿任务管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"客服投诉\",\"menuJump\":\"列表\",\"tableName\":\"chat\"}],\"fontClass\":\"icon-common48\",\"menu\":\"客服投诉管理\",\"unicode\":\"&#xef65;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\"],\"menu\":\"校园资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"校园资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"接受\"],\"menu\":\"跑腿任务\",\"menuJump\":\"列表\",\"tableName\":\"paotuirenwu\"}],\"menu\":\"跑腿任务管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"支付\",\"取消\"],\"menu\":\"接受任务\",\"menuJump\":\"列表\",\"tableName\":\"jieshourenwu\"}],\"fontClass\":\"icon-common31\",\"menu\":\"接受任务管理\",\"unicode\":\"&#xee48;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"取消订单\",\"menuJump\":\"列表\",\"tableName\":\"quxiaodingdan\"}],\"fontClass\":\"icon-common36\",\"menu\":\"取消订单管理\",\"unicode\":\"&#xee9f;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"跑腿任务\",\"menuJump\":\"列表\",\"tableName\":\"paotuirenwu\"}],\"fontClass\":\"icon-common40\",\"menu\":\"跑腿任务管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\"],\"menu\":\"客服投诉\",\"menuJump\":\"列表\",\"tableName\":\"chat\"}],\"fontClass\":\"icon-common48\",\"menu\":\"客服投诉管理\",\"unicode\":\"&#xef65;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\"],\"menu\":\"校园资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"校园资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"接受\"],\"menu\":\"跑腿任务\",\"menuJump\":\"列表\",\"tableName\":\"paotuirenwu\"}],\"menu\":\"跑腿任务管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='校园资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2024-04-02 03:11:58','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(34,'2024-04-02 03:11:58','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(35,'2024-04-02 03:11:58','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(36,'2024-04-02 03:11:58','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paotuirenwu`
--

DROP TABLE IF EXISTS `paotuirenwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paotuirenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwumingcheng` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `fengmian` longtext COMMENT '封面',
  `qujiandifang` varchar(200) DEFAULT NULL COMMENT '取件地方',
  `songdadifang` varchar(200) DEFAULT NULL COMMENT '送达地方',
  `xuqiushijian` datetime DEFAULT NULL COMMENT '需求时间',
  `baochou` double DEFAULT NULL COMMENT '报酬',
  `renwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '任务状态',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712029430881 DEFAULT CHARSET=utf8 COMMENT='跑腿任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paotuirenwu`
--

LOCK TABLES `paotuirenwu` WRITE;
/*!40000 ALTER TABLE `paotuirenwu` DISABLE KEYS */;
INSERT INTO `paotuirenwu` VALUES (61,'2024-04-02 03:11:58','任务名称1','file/paotuirenwuFengmian1.jpg,file/paotuirenwuFengmian2.jpg,file/paotuirenwuFengmian3.jpg','取件地方1','送达地方1','2024-04-02 11:11:58',1,'已接单','2024-04-02 11:11:58','账号1','姓名1','19819881111'),(62,'2024-04-02 03:11:58','任务名称2','file/paotuirenwuFengmian2.jpg,file/paotuirenwuFengmian3.jpg,file/paotuirenwuFengmian4.jpg','取件地方2','送达地方2','2024-04-02 11:11:58',2,'已接单','2024-04-02 11:11:58','账号2','姓名2','19819881112'),(63,'2024-04-02 03:11:58','任务名称3','file/paotuirenwuFengmian3.jpg,file/paotuirenwuFengmian4.jpg,file/paotuirenwuFengmian5.jpg','取件地方3','送达地方3','2024-04-02 11:11:58',3,'已接单','2024-04-02 11:11:58','账号3','姓名3','19819881113'),(64,'2024-04-02 03:11:58','任务名称4','file/paotuirenwuFengmian4.jpg,file/paotuirenwuFengmian5.jpg,file/paotuirenwuFengmian6.jpg','取件地方4','送达地方4','2024-04-02 11:11:58',4,'已接单','2024-04-02 11:11:58','账号4','姓名4','19819881114'),(65,'2024-04-02 03:11:58','任务名称5','file/paotuirenwuFengmian5.jpg,file/paotuirenwuFengmian6.jpg,file/paotuirenwuFengmian7.jpg','取件地方5','送达地方5','2024-04-02 11:11:58',5,'已接单','2024-04-02 11:11:58','账号5','姓名5','19819881115'),(66,'2024-04-02 03:11:58','任务名称6','file/paotuirenwuFengmian6.jpg,file/paotuirenwuFengmian7.jpg,file/paotuirenwuFengmian8.jpg','取件地方6','送达地方6','2024-04-02 11:11:58',6,'已接单','2024-04-02 11:11:58','账号6','姓名6','19819881116'),(1712029430880,'2024-04-02 03:43:50','非托管银行','file/1712029399062.jpg','对方过后1','对方过后3','2024-04-02 12:30:37',5,'已接单','2024-04-02 11:42:37','11','依依','13823813811');
/*!40000 ALTER TABLE `paotuirenwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quxiaodingdan`
--

DROP TABLE IF EXISTS `quxiaodingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quxiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `renwumingcheng` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `qujiandifang` varchar(200) NOT NULL COMMENT '取件地方',
  `baochou` double NOT NULL COMMENT '报酬',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712029594676 DEFAULT CHARSET=utf8 COMMENT='取消订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quxiaodingdan`
--

LOCK TABLES `quxiaodingdan` WRITE;
/*!40000 ALTER TABLE `quxiaodingdan` DISABLE KEYS */;
INSERT INTO `quxiaodingdan` VALUES (81,'2024-04-02 03:11:58','订单编号1','任务名称1','取件地方1',1,'取消原因1','2024-04-02 11:11:58','账号1','姓名1','是',''),(82,'2024-04-02 03:11:58','订单编号2','任务名称2','取件地方2',2,'取消原因2','2024-04-02 11:11:58','账号2','姓名2','是',''),(83,'2024-04-02 03:11:59','订单编号3','任务名称3','取件地方3',3,'取消原因3','2024-04-02 11:11:59','账号3','姓名3','是',''),(84,'2024-04-02 03:11:59','订单编号4','任务名称4','取件地方4',4,'取消原因4','2024-04-02 11:11:59','账号4','姓名4','是',''),(85,'2024-04-02 03:11:59','订单编号5','任务名称5','取件地方5',5,'取消原因5','2024-04-02 11:11:59','账号5','姓名5','是',''),(86,'2024-04-02 03:11:59','订单编号6','任务名称6','取件地方6',6,'取消原因6','2024-04-02 11:11:59','账号6','姓名6','是',''),(1712029594675,'2024-04-02 03:46:34','1712029497894','非托管银行','对方过后1',5,'地方工会尽快123','2024-04-02 11:46:24','11','依依','是','取消成功');
/*!40000 ALTER TABLE `quxiaodingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1712029337214,'11','yonghu','用户','bijfhv602v1pw77rgi0sbedn6m097811','2024-04-02 03:42:21','2024-04-02 04:50:53'),(2,1712029480485,'33','yonghu','用户','nrcdm01hyfccbramcer1da169penulc0','2024-04-02 03:44:44','2024-04-02 04:51:31'),(3,1,'admin','users','管理员','af7sqtnyub9f3kgbonbdiz6duwyfzhw5','2024-04-02 03:47:44','2024-04-02 04:47:55');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-04-02 03:11:59','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1712029480486 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (51,'2024-04-02 03:11:58','账号1','姓名1','123456','file/yonghuTouxiang1.jpg','男','19819881111'),(52,'2024-04-02 03:11:58','账号2','姓名2','123456','file/yonghuTouxiang2.jpg','男','19819881112'),(53,'2024-04-02 03:11:58','账号3','姓名3','123456','file/yonghuTouxiang3.jpg','男','19819881113'),(54,'2024-04-02 03:11:58','账号4','姓名4','123456','file/yonghuTouxiang4.jpg','男','19819881114'),(55,'2024-04-02 03:11:58','账号5','姓名5','123456','file/yonghuTouxiang5.jpg','女','19819881115'),(56,'2024-04-02 03:11:58','账号6','姓名6','123456','file/yonghuTouxiang6.jpg','男','19819881116'),(1712029337214,'2024-04-02 03:42:17','11','依依','11','file/1712029327260.jpeg','女','13823813811'),(1712029480485,'2024-04-02 03:44:40','33','笑笑','33','file/1712029472416.jpg','女','13823813833');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02 19:01:15
