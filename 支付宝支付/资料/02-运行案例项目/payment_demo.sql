/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.28-log : Database - payment_demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`payment_demo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `payment_demo`;

/*Table structure for table `t_order_info` */

CREATE TABLE `t_order_info` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `title` varchar(256) DEFAULT NULL COMMENT '订单标题',
  `order_no` varchar(50) DEFAULT NULL COMMENT '商户订单编号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `product_id` bigint(20) DEFAULT NULL COMMENT '支付产品id',
  `total_fee` int(11) DEFAULT NULL COMMENT '订单金额(分)',
  `code_url` varchar(50) DEFAULT NULL COMMENT '订单二维码连接',
  `order_status` varchar(10) DEFAULT NULL COMMENT '订单状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_order_info` */

insert  into `t_order_info`(`id`,`title`,`order_no`,`user_id`,`product_id`,`total_fee`,`code_url`,`order_status`,`create_time`,`update_time`) values (57,'UI课程','ORDER_20211214184634520',NULL,4,1,'weixin://wxpay/bizpayurl?pr=V5WM2wWzz','已退款','2021-12-14 18:46:34','2021-12-14 18:48:31');
insert  into `t_order_info`(`id`,`title`,`order_no`,`user_id`,`product_id`,`total_fee`,`code_url`,`order_status`,`create_time`,`update_time`) values (58,'Java课程','ORDER_20211214214049802',NULL,1,1,'weixin://wxpay/bizpayurl?pr=C0l6GOezz','超时已关闭','2021-12-14 21:40:49','2021-12-14 21:42:00');
insert  into `t_order_info`(`id`,`title`,`order_no`,`user_id`,`product_id`,`total_fee`,`code_url`,`order_status`,`create_time`,`update_time`) values (64,'前端课程','ORDER_20211214222026123',NULL,1,1,'weixin://wxpay/bizpayurl?pr=YZR0EHCzz','支付成功','2021-12-14 22:20:26','2021-12-15 01:26:46');
insert  into `t_order_info`(`id`,`title`,`order_no`,`user_id`,`product_id`,`total_fee`,`code_url`,`order_status`,`create_time`,`update_time`) values (65,'大数据课程','ORDER_20211214232430509',NULL,1,1,'weixin://wxpay/bizpayurl?pr=DgOtpmTzz','超时已关闭','2021-12-14 23:24:30','2021-12-15 01:27:06');
insert  into `t_order_info`(`id`,`title`,`order_no`,`user_id`,`product_id`,`total_fee`,`code_url`,`order_status`,`create_time`,`update_time`) values (66,'UI课程','ORDER_20211214233855296',NULL,1,1,'weixin://wxpay/bizpayurl?pr=uSSMv5vzz','支付成功','2021-12-14 23:38:55','2021-12-15 01:26:46');

/*Table structure for table `t_payment_info` */

CREATE TABLE `t_payment_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付记录id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '商户订单编号',
  `transaction_id` varchar(50) DEFAULT NULL COMMENT '支付系统交易编号',
  `payment_type` varchar(20) DEFAULT NULL COMMENT '支付类型',
  `trade_type` varchar(20) DEFAULT NULL COMMENT '交易类型',
  `trade_state` varchar(50) DEFAULT NULL COMMENT '交易状态',
  `payer_total` int(11) DEFAULT NULL COMMENT '支付金额(分)',
  `content` text COMMENT '通知参数',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_payment_info` */

insert  into `t_payment_info`(`id`,`order_no`,`transaction_id`,`payment_type`,`trade_type`,`trade_state`,`payer_total`,`content`,`create_time`,`update_time`) values (29,'ORDER_20211214130546776','4200001335202112149645887495','微信','NATIVE','SUCCESS',1,'{\"amount\":{\"currency\":\"CNY\",\"payer_currency\":\"CNY\",\"payer_total\":1,\"total\":1},\"appid\":\"wx74862e0dfcf69954\",\"attach\":\"\",\"bank_type\":\"OTHERS\",\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20211214130546776\",\"payer\":{\"openid\":\"oHwsHuEpuA7tEM4GPGtBiKpjAcqM\"},\"promotion_detail\":[],\"success_time\":\"2021-12-14T13:06:16+08:00\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"transaction_id\":\"4200001335202112149645887495\"}','2021-12-14 13:07:11','2021-12-14 13:07:11');
insert  into `t_payment_info`(`id`,`order_no`,`transaction_id`,`payment_type`,`trade_type`,`trade_state`,`payer_total`,`content`,`create_time`,`update_time`) values (30,'ORDER_20211214144311039','4200001345202112143715320866','微信','NATIVE','SUCCESS',1,'{\"amount\":{\"currency\":\"CNY\",\"payer_currency\":\"CNY\",\"payer_total\":1,\"total\":1},\"appid\":\"wx74862e0dfcf69954\",\"attach\":\"\",\"bank_type\":\"OTHERS\",\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20211214144311039\",\"payer\":{\"openid\":\"oHwsHuEpuA7tEM4GPGtBiKpjAcqM\"},\"promotion_detail\":[],\"success_time\":\"2021-12-14T14:43:26+08:00\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"transaction_id\":\"4200001345202112143715320866\"}','2021-12-14 14:44:30','2021-12-14 14:44:30');
insert  into `t_payment_info`(`id`,`order_no`,`transaction_id`,`payment_type`,`trade_type`,`trade_state`,`payer_total`,`content`,`create_time`,`update_time`) values (31,'ORDER_20211214152230866','4200001302202112148505782534','微信','NATIVE','SUCCESS',1,'{\"amount\":{\"currency\":\"CNY\",\"payer_currency\":\"CNY\",\"payer_total\":1,\"total\":1},\"appid\":\"wx74862e0dfcf69954\",\"attach\":\"\",\"bank_type\":\"OTHERS\",\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20211214152230866\",\"payer\":{\"openid\":\"oHwsHuEpuA7tEM4GPGtBiKpjAcqM\"},\"promotion_detail\":[],\"success_time\":\"2021-12-14T15:22:48+08:00\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"transaction_id\":\"4200001302202112148505782534\"}','2021-12-14 15:24:00','2021-12-14 15:24:00');
insert  into `t_payment_info`(`id`,`order_no`,`transaction_id`,`payment_type`,`trade_type`,`trade_state`,`payer_total`,`content`,`create_time`,`update_time`) values (33,'ORDER_20211214184634520','4200001184202112147549577350','微信','NATIVE','SUCCESS',1,'{\"mchid\":\"1558950191\",\"appid\":\"wx74862e0dfcf69954\",\"out_trade_no\":\"ORDER_20211214184634520\",\"transaction_id\":\"4200001184202112147549577350\",\"trade_type\":\"NATIVE\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"bank_type\":\"OTHERS\",\"attach\":\"\",\"success_time\":\"2021-12-14T18:46:55+08:00\",\"payer\":{\"openid\":\"oHwsHuEpuA7tEM4GPGtBiKpjAcqM\"},\"amount\":{\"total\":1,\"payer_total\":1,\"currency\":\"CNY\",\"payer_currency\":\"CNY\"}}','2021-12-14 18:46:59','2021-12-14 18:46:59');
insert  into `t_payment_info`(`id`,`order_no`,`transaction_id`,`payment_type`,`trade_type`,`trade_state`,`payer_total`,`content`,`create_time`,`update_time`) values (34,'ORDER_20211214233855296','4200001302202112148087910775','微信','NATIVE','SUCCESS',1,'{\"amount\":{\"currency\":\"CNY\",\"payer_currency\":\"CNY\",\"payer_total\":1,\"total\":1},\"appid\":\"wx74862e0dfcf69954\",\"attach\":\"\",\"bank_type\":\"OTHERS\",\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20211214233855296\",\"payer\":{\"openid\":\"oHwsHuEpuA7tEM4GPGtBiKpjAcqM\"},\"promotion_detail\":[],\"success_time\":\"2021-12-14T23:39:37+08:00\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"transaction_id\":\"4200001302202112148087910775\"}','2021-12-14 23:40:00','2021-12-14 23:40:00');

/*Table structure for table `t_product` */

CREATE TABLE `t_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `title` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `price` int(11) DEFAULT NULL COMMENT '价格（分）',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_product` */

insert  into `t_product`(`id`,`title`,`price`,`create_time`,`update_time`) values (1,'Java课程',1,'2021-12-08 00:51:26','2021-12-10 00:21:37');
insert  into `t_product`(`id`,`title`,`price`,`create_time`,`update_time`) values (2,'大数据课程',1,'2021-12-08 00:51:26','2021-12-10 00:21:38');
insert  into `t_product`(`id`,`title`,`price`,`create_time`,`update_time`) values (3,'前端课程',1,'2021-12-08 00:51:26','2021-12-10 00:21:39');
insert  into `t_product`(`id`,`title`,`price`,`create_time`,`update_time`) values (4,'UI课程',1,'2021-12-08 00:51:26','2021-12-10 00:21:39');

/*Table structure for table `t_refund_info` */

CREATE TABLE `t_refund_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '退款单id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '商户订单编号',
  `refund_no` varchar(50) DEFAULT NULL COMMENT '商户退款单编号',
  `refund_id` varchar(50) DEFAULT NULL COMMENT '支付系统退款单号',
  `total_fee` int(11) DEFAULT NULL COMMENT '原订单金额(分)',
  `refund` int(11) DEFAULT NULL COMMENT '退款金额(分)',
  `reason` varchar(50) DEFAULT NULL COMMENT '退款原因',
  `refund_status` varchar(10) DEFAULT NULL COMMENT '退款状态',
  `content_return` text COMMENT '申请退款返回参数',
  `content_notify` text COMMENT '退款结果通知参数',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_refund_info` */

insert  into `t_refund_info`(`id`,`order_no`,`refund_no`,`refund_id`,`total_fee`,`refund`,`reason`,`refund_status`,`content_return`,`content_notify`,`create_time`,`update_time`) values (2,'ORDER_20211214152230866','REFUND_20211214152433011','50301400132021121415361072383',1,1,'不喜欢','SUCCESS','{\"amount\":{\"currency\":\"CNY\",\"discount_refund\":0,\"from\":[],\"payer_refund\":1,\"payer_total\":1,\"refund\":1,\"settlement_refund\":1,\"settlement_total\":1,\"total\":1},\"channel\":\"ORIGINAL\",\"create_time\":\"2021-12-14T15:24:36+08:00\",\"funds_account\":\"AVAILABLE\",\"out_refund_no\":\"REFUND_20211214152433011\",\"out_trade_no\":\"ORDER_20211214152230866\",\"promotion_detail\":[],\"refund_id\":\"50301400132021121415361072383\",\"status\":\"SUCCESS\",\"success_time\":\"2021-12-14T15:24:43+08:00\",\"transaction_id\":\"4200001302202112148505782534\",\"user_received_account\":\"支付用户零钱\"}',NULL,'2021-12-14 15:24:33','2021-12-14 17:07:30');
insert  into `t_refund_info`(`id`,`order_no`,`refund_no`,`refund_id`,`total_fee`,`refund`,`reason`,`refund_status`,`content_return`,`content_notify`,`create_time`,`update_time`) values (3,'ORDER_20211214130546776','REFUND_20211214171113826','50301400132021121415370407561',1,1,'不喜欢','SUCCESS','{\"amount\":{\"currency\":\"CNY\",\"discount_refund\":0,\"from\":[],\"payer_refund\":1,\"payer_total\":1,\"refund\":1,\"settlement_refund\":1,\"settlement_total\":1,\"total\":1},\"channel\":\"ORIGINAL\",\"create_time\":\"2021-12-14T17:11:15+08:00\",\"funds_account\":\"AVAILABLE\",\"out_refund_no\":\"REFUND_20211214171113826\",\"out_trade_no\":\"ORDER_20211214130546776\",\"promotion_detail\":[],\"refund_id\":\"50301400132021121415370407561\",\"status\":\"SUCCESS\",\"success_time\":\"2021-12-14T17:11:22+08:00\",\"transaction_id\":\"4200001335202112149645887495\",\"user_received_account\":\"支付用户零钱\"}',NULL,'2021-12-14 17:11:13','2021-12-14 17:19:30');
insert  into `t_refund_info`(`id`,`order_no`,`refund_no`,`refund_id`,`total_fee`,`refund`,`reason`,`refund_status`,`content_return`,`content_notify`,`create_time`,`update_time`) values (5,'ORDER_20211214184634520','REFUND_20211214184815124','50301000072021121415364123490',1,1,'不喜欢','SUCCESS','{\"amount\":{\"currency\":\"CNY\",\"discount_refund\":0,\"from\":[],\"payer_refund\":1,\"payer_total\":1,\"refund\":1,\"settlement_refund\":1,\"settlement_total\":1,\"total\":1},\"channel\":\"ORIGINAL\",\"create_time\":\"2021-12-14T18:48:18+08:00\",\"funds_account\":\"AVAILABLE\",\"out_refund_no\":\"REFUND_20211214184815124\",\"out_trade_no\":\"ORDER_20211214184634520\",\"promotion_detail\":[],\"refund_id\":\"50301000072021121415364123490\",\"status\":\"PROCESSING\",\"transaction_id\":\"4200001184202112147549577350\",\"user_received_account\":\"支付用户零钱\"}','{\"mchid\":\"1558950191\",\"out_trade_no\":\"ORDER_20211214184634520\",\"transaction_id\":\"4200001184202112147549577350\",\"out_refund_no\":\"REFUND_20211214184815124\",\"refund_id\":\"50301000072021121415364123490\",\"refund_status\":\"SUCCESS\",\"success_time\":\"2021-12-14T18:48:25+08:00\",\"amount\":{\"total\":1,\"refund\":1,\"payer_total\":1,\"payer_refund\":1},\"user_received_account\":\"支付用户零钱\"}','2021-12-14 18:48:15','2021-12-14 18:48:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
