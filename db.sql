/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7n2hl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7n2hl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7n2hl`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7n2hl/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm7n2hl/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm7n2hl/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `danchexinxi` */

DROP TABLE IF EXISTS `danchexinxi`;

CREATE TABLE `danchexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danchebianhao` varchar(200) DEFAULT NULL COMMENT '单车编号',
  `suoshuquyu` varchar(200) DEFAULT NULL COMMENT '所属区域',
  `tingfangweizhi` varchar(200) DEFAULT NULL COMMENT '停放位置',
  `xiaoshijiage` int(11) NOT NULL COMMENT '小时价格',
  `danchetupian` varchar(200) DEFAULT NULL COMMENT '单车图片',
  `yajin` int(11) DEFAULT NULL COMMENT '押金',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `danchebianhao` (`danchebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272991134 DEFAULT CHARSET=utf8 COMMENT='单车信息';

/*Data for the table `danchexinxi` */

insert  into `danchexinxi`(`id`,`addtime`,`danchebianhao`,`suoshuquyu`,`tingfangweizhi`,`xiaoshijiage`,`danchetupian`,`yajin`,`beizhu`) values (21,'2021-03-09 11:00:08','单车编号1','所属区域1','停放位置1',1,'http://localhost:8080/ssm7n2hl/upload/danchexinxi_danchetupian1.jpg',1,'备注1'),(22,'2021-03-09 11:00:08','单车编号2','所属区域2','停放位置2',2,'http://localhost:8080/ssm7n2hl/upload/danchexinxi_danchetupian2.jpg',2,'备注2'),(23,'2021-03-09 11:00:08','单车编号3','所属区域3','停放位置3',3,'http://localhost:8080/ssm7n2hl/upload/danchexinxi_danchetupian3.jpg',3,'备注3'),(24,'2021-03-09 11:00:08','单车编号4','所属区域4','停放位置4',4,'http://localhost:8080/ssm7n2hl/upload/danchexinxi_danchetupian4.jpg',4,'备注4'),(25,'2021-03-09 11:00:08','单车编号5','所属区域5','停放位置5',5,'http://localhost:8080/ssm7n2hl/upload/danchexinxi_danchetupian5.jpg',5,'备注5'),(26,'2021-03-09 11:00:08','单车编号6','所属区域6','停放位置6',6,'http://localhost:8080/ssm7n2hl/upload/danchexinxi_danchetupian6.jpg',6,'备注6'),(1615272991133,'2021-03-09 14:56:30','001','区域位置3','xxx停车位',10,'http://localhost:8080/ssm7n2hl/upload/1615272985476.jpg',100,'无');

/*Table structure for table `haichedingdan` */

DROP TABLE IF EXISTS `haichedingdan`;

CREATE TABLE `haichedingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zulinbianhao` varchar(200) DEFAULT NULL COMMENT '租赁编号',
  `danchebianhao` varchar(200) DEFAULT NULL COMMENT '单车编号',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `zulinfeiyong` varchar(200) DEFAULT NULL COMMENT '租赁费用',
  `zulinshijian` varchar(200) DEFAULT NULL COMMENT '租赁时间',
  `haicheshijian` datetime NOT NULL COMMENT '还车时间',
  `guihaiweizhi` varchar(200) DEFAULT NULL COMMENT '归还位置',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615273128797 DEFAULT CHARSET=utf8 COMMENT='还车订单';

/*Data for the table `haichedingdan` */

insert  into `haichedingdan`(`id`,`addtime`,`zulinbianhao`,`danchebianhao`,`yajin`,`zulinfeiyong`,`zulinshijian`,`haicheshijian`,`guihaiweizhi`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`sfsh`,`shhf`) values (51,'2021-03-09 11:00:08','租赁编号1','单车编号1','押金1','租赁费用1','租赁时间1','2021-03-09 11:00:08','归还位置1','用户账号1','用户姓名1','用户手机1','是',''),(52,'2021-03-09 11:00:08','租赁编号2','单车编号2','押金2','租赁费用2','租赁时间2','2021-03-09 11:00:08','归还位置2','用户账号2','用户姓名2','用户手机2','是',''),(53,'2021-03-09 11:00:08','租赁编号3','单车编号3','押金3','租赁费用3','租赁时间3','2021-03-09 11:00:08','归还位置3','用户账号3','用户姓名3','用户手机3','是',''),(54,'2021-03-09 11:00:08','租赁编号4','单车编号4','押金4','租赁费用4','租赁时间4','2021-03-09 11:00:08','归还位置4','用户账号4','用户姓名4','用户手机4','是',''),(55,'2021-03-09 11:00:08','租赁编号5','单车编号5','押金5','租赁费用5','租赁时间5','2021-03-09 11:00:08','归还位置5','用户账号5','用户姓名5','用户手机5','是',''),(56,'2021-03-09 11:00:08','租赁编号6','单车编号6','押金6','租赁费用6','租赁时间6','2021-03-09 11:00:08','归还位置6','用户账号6','用户姓名6','用户手机6','是',''),(1615273128796,'2021-03-09 14:58:47','20213914573238299329','单车编号3','3','30','2021-03-10 00:00:00','2021-03-20 00:00:00','xxx停车位','1','xxx用户','12345678910','是','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='高校资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-03-09 11:00:09','标题1','简介1','http://localhost:8080/ssm7n2hl/upload/news_picture1.jpg','<h1>内容1</h1><p>asdasdas</p>'),(82,'2021-03-09 11:00:09','标题2','简介2','http://localhost:8080/ssm7n2hl/upload/news_picture2.jpg','内容2'),(83,'2021-03-09 11:00:09','标题3','简介3','http://localhost:8080/ssm7n2hl/upload/news_picture3.jpg','内容3'),(84,'2021-03-09 11:00:09','标题4','简介4','http://localhost:8080/ssm7n2hl/upload/news_picture4.jpg','内容4'),(85,'2021-03-09 11:00:09','标题5','简介5','http://localhost:8080/ssm7n2hl/upload/news_picture5.jpg','内容5'),(86,'2021-03-09 11:00:09','标题6','简介6','http://localhost:8080/ssm7n2hl/upload/news_picture6.jpg','内容6');

/*Table structure for table `quyuxinxi` */

DROP TABLE IF EXISTS `quyuxinxi`;

CREATE TABLE `quyuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tingfangcheliang` varchar(200) DEFAULT NULL COMMENT '停放车辆',
  `quyuweizhi` varchar(200) DEFAULT NULL COMMENT '区域位置',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='区域信息';

/*Data for the table `quyuxinxi` */

insert  into `quyuxinxi`(`id`,`addtime`,`tingfangcheliang`,`quyuweizhi`,`beizhu`) values (31,'2021-03-09 11:00:08','停放车辆1','区域位置1','备注1'),(32,'2021-03-09 11:00:08','停放车辆2','区域位置2','备注2'),(33,'2021-03-09 11:00:08','停放车辆3','区域位置3','备注3'),(34,'2021-03-09 11:00:08','停放车辆4','区域位置4','备注4'),(35,'2021-03-09 11:00:08','停放车辆5','区域位置5','备注5'),(36,'2021-03-09 11:00:08','停放车辆6','区域位置6','备注6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','du1tt5vsa7csmxtkvvt3ey5tj7sdwhqi','2021-03-09 14:55:55','2021-03-09 15:59:00'),(2,1615273044899,'1','yonghu','用户','w7is7xmcd5wi9p1i45yntqrye066k4n0','2021-03-09 14:57:29','2021-03-09 16:00:08');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-09 11:00:09');

/*Table structure for table `xinxitongji` */

DROP TABLE IF EXISTS `xinxitongji`;

CREATE TABLE `xinxitongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nianyue` varchar(200) DEFAULT NULL COMMENT '年月',
  `baoyouyajin` int(11) DEFAULT NULL COMMENT '保有押金',
  `cheliangshuliang` int(11) DEFAULT NULL COMMENT '车辆数量',
  `zaikucheliang` int(11) DEFAULT NULL COMMENT '在库车辆',
  `weihufeiyong` int(11) DEFAULT NULL COMMENT '维护费用',
  `zujinliushui` int(11) DEFAULT NULL COMMENT '租金流水',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615273185127 DEFAULT CHARSET=utf8 COMMENT='信息统计';

/*Data for the table `xinxitongji` */

insert  into `xinxitongji`(`id`,`addtime`,`nianyue`,`baoyouyajin`,`cheliangshuliang`,`zaikucheliang`,`weihufeiyong`,`zujinliushui`,`beizhu`) values (71,'2021-03-09 11:00:08','2021-2',1,1,1,1,1,'备注1'),(72,'2021-03-09 11:00:08','年月2',2,2,2,2,2,'备注2'),(73,'2021-03-09 11:00:08','年月3',3,3,3,3,3,'备注3'),(74,'2021-03-09 11:00:08','年月4',4,4,4,4,4,'备注4'),(75,'2021-03-09 11:00:08','年月5',5,5,5,5,5,'备注5'),(76,'2021-03-09 11:00:08','年月6',6,6,6,6,6,'备注6'),(1615273185126,'2021-03-09 14:59:44','2021-1',100,10,10,1000,10,'');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615273044900 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`nianling`,`touxiang`,`yonghushouji`) values (11,'2021-03-09 11:00:08','用户1','123456','用户姓名1','男',1,'http://localhost:8080/ssm7n2hl/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-03-09 11:00:08','用户2','123456','用户姓名2','男',2,'http://localhost:8080/ssm7n2hl/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-03-09 11:00:08','用户3','123456','用户姓名3','男',3,'http://localhost:8080/ssm7n2hl/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-03-09 11:00:08','用户4','123456','用户姓名4','男',4,'http://localhost:8080/ssm7n2hl/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-03-09 11:00:08','用户5','123456','用户姓名5','男',5,'http://localhost:8080/ssm7n2hl/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-03-09 11:00:08','用户6','123456','用户姓名6','男',6,'http://localhost:8080/ssm7n2hl/upload/yonghu_touxiang6.jpg','13823888886'),(1615273044899,'2021-03-09 14:57:24','1','1','xxx用户','男',22,'http://localhost:8080/ssm7n2hl/upload/1615273074010.jpg','12345678910');

/*Table structure for table `zulindingdan` */

DROP TABLE IF EXISTS `zulindingdan`;

CREATE TABLE `zulindingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zulinbianhao` varchar(200) DEFAULT NULL COMMENT '租赁编号',
  `danchebianhao` varchar(200) DEFAULT NULL COMMENT '单车编号',
  `tingfangweizhi` varchar(200) DEFAULT NULL COMMENT '停放位置',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `xiaoshijiage` varchar(200) DEFAULT NULL COMMENT '小时价格',
  `zulinshizhang` int(11) NOT NULL COMMENT '租赁时长',
  `zulinfeiyong` varchar(200) DEFAULT NULL COMMENT '租赁费用',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `zulinshijian` datetime DEFAULT NULL COMMENT '租赁时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zulinbianhao` (`zulinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615273062340 DEFAULT CHARSET=utf8 COMMENT='租赁订单';

/*Data for the table `zulindingdan` */

insert  into `zulindingdan`(`id`,`addtime`,`zulinbianhao`,`danchebianhao`,`tingfangweizhi`,`yajin`,`xiaoshijiage`,`zulinshizhang`,`zulinfeiyong`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`zulinshijian`,`sfsh`,`shhf`) values (41,'2021-03-09 11:00:08','租赁编号1','单车编号1','停放位置1','押金1','小时价格1',1,'租赁费用1','用户账号1','用户姓名1','用户手机1','2021-03-09 11:00:08','是',''),(42,'2021-03-09 11:00:08','租赁编号2','单车编号2','停放位置2','押金2','小时价格2',2,'租赁费用2','用户账号2','用户姓名2','用户手机2','2021-03-09 11:00:08','是',''),(43,'2021-03-09 11:00:08','租赁编号3','单车编号3','停放位置3','押金3','小时价格3',3,'租赁费用3','用户账号3','用户姓名3','用户手机3','2021-03-09 11:00:08','是',''),(44,'2021-03-09 11:00:08','租赁编号4','单车编号4','停放位置4','押金4','小时价格4',4,'租赁费用4','用户账号4','用户姓名4','用户手机4','2021-03-09 11:00:08','是',''),(45,'2021-03-09 11:00:08','租赁编号5','单车编号5','停放位置5','押金5','小时价格5',5,'租赁费用5','用户账号5','用户姓名5','用户手机5','2021-03-09 11:00:08','是',''),(46,'2021-03-09 11:00:08','租赁编号6','单车编号6','停放位置6','押金6','小时价格6',6,'租赁费用6','用户账号6','用户姓名6','用户手机6','2021-03-09 11:00:08','是',''),(1615273062339,'2021-03-09 14:57:41','20213914573238299329','单车编号3','停放位置3','3','3',10,'30','1','xxx用户','12345678910','2021-03-10 00:00:00','是','11111111111');

/*Table structure for table `zulinfeiyong` */

DROP TABLE IF EXISTS `zulinfeiyong`;

CREATE TABLE `zulinfeiyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zulinbianhao` varchar(200) DEFAULT NULL COMMENT '租赁编号',
  `danchebianhao` varchar(200) DEFAULT NULL COMMENT '单车编号',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `shifouchaoshi` varchar(200) DEFAULT NULL COMMENT '是否超时',
  `zulinfeiyong` varchar(200) DEFAULT NULL COMMENT '租赁费用',
  `chaoshifeiyong` varchar(200) DEFAULT NULL COMMENT '超时费用',
  `zongfeiyong` varchar(200) DEFAULT NULL COMMENT '总费用',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `guihaishijian` datetime DEFAULT NULL COMMENT '归还时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615273166308 DEFAULT CHARSET=utf8 COMMENT='租赁费用';

/*Data for the table `zulinfeiyong` */

insert  into `zulinfeiyong`(`id`,`addtime`,`zulinbianhao`,`danchebianhao`,`yajin`,`shifouchaoshi`,`zulinfeiyong`,`chaoshifeiyong`,`zongfeiyong`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`guihaishijian`,`ispay`) values (61,'2021-03-09 11:00:08','租赁编号1','单车编号1','押金1','否','租赁费用1','超时费用1','总费用1','用户账号1','用户姓名1','用户手机1','2021-03-09 11:00:08','未支付'),(62,'2021-03-09 11:00:08','租赁编号2','单车编号2','押金2','否','租赁费用2','超时费用2','总费用2','用户账号2','用户姓名2','用户手机2','2021-03-09 11:00:08','未支付'),(63,'2021-03-09 11:00:08','租赁编号3','单车编号3','押金3','否','租赁费用3','超时费用3','总费用3','用户账号3','用户姓名3','用户手机3','2021-03-09 11:00:08','未支付'),(64,'2021-03-09 11:00:08','租赁编号4','单车编号4','押金4','否','租赁费用4','超时费用4','总费用4','用户账号4','用户姓名4','用户手机4','2021-03-09 11:00:08','未支付'),(65,'2021-03-09 11:00:08','租赁编号5','单车编号5','押金5','否','租赁费用5','超时费用5','总费用5','用户账号5','用户姓名5','用户手机5','2021-03-09 11:00:08','未支付'),(66,'2021-03-09 11:00:08','租赁编号6','单车编号6','押金6','否','租赁费用6','超时费用6','总费用6','用户账号6','用户姓名6','用户手机6','2021-03-09 11:00:08','未支付'),(1615273166307,'2021-03-09 14:59:25','20213914573238299329','单车编号3','3','否','30','0','30','1','xxx用户','12345678910','2021-03-11 00:00:00','已支付');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
