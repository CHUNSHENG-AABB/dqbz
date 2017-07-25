DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBERID` int(11) DEFAULT NULL COMMENT '会员ID',
  `COVER` varchar(255) DEFAULT NULL COMMENT '活动封面图片',
  `TITLE` varchar(50) DEFAULT '' COMMENT '标题',
  `INTRODUCTION` varchar(140) DEFAULT NULL COMMENT '简介',
  `CONTENT` longtext COMMENT '活动详细内容',
  `BEGIN_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '开始时间',
  `END_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '结束时间',
  `INPUT_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `INPUT_USER` varchar(50) DEFAULT '' COMMENT '创建人',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_USER` varchar(50) DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='活动';

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(50) DEFAULT '' COMMENT '文章类型（1、文明祭祀 2、殡葬传统，3.文化常识 4、行业条理，5.行为规范，6.从去世到安葬，7.基本丧葬费，8.选择性消费， 9.指定服务点）',
  `TITLE` varchar(50) DEFAULT '' COMMENT '标题',
  `INTRODUCTION` longtext COMMENT '简介',
  `INPUT_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `INPUT_USER` varchar(50) DEFAULT '' COMMENT '创建人',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_USER` varchar(50) DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章';

-- ----------------------------
-- Table structure for association
-- ----------------------------
DROP TABLE IF EXISTS `association`;
CREATE TABLE `association` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT '' COMMENT '协会名称',
  `TYPE` varchar(20) DEFAULT NULL COMMENT '类型：1.简介，2.章程',
  `CONTENT` longtext COMMENT '内容',
  `INPUT_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `INPUT_USER` varchar(50) DEFAULT '' COMMENT '创建人',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_USER` varchar(50) DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='协会';

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(50) DEFAULT '' COMMENT '标题',
  `CONTENT` longtext COMMENT '内容',
  `BEGIN_TIME` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `END_TIME` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `INPUT_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `INPUT_USER` varchar(50) DEFAULT '' COMMENT '创建人',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_USER` varchar(50) DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻';

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT '' COMMENT '会员名称',
  `COVER` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `TYPE` varchar(50) DEFAULT '' COMMENT '会员类型（1、个人 2、单位）',
  `INTRODUCTION` varchar(140) DEFAULT NULL COMMENT '简介',
  `CONTENT` longtext COMMENT '详细介绍',
  `CONTACT` text COMMENT '联系方式',
  `INPUT_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `INPUT_USER` varchar(50) DEFAULT '' COMMENT '创建人',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_USER` varchar(50) DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员单位';

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBERID` int(11) DEFAULT NULL COMMENT '会员ID',
  `TYPE` varchar(50) DEFAULT NULL COMMENT '类型：1. 历届会议，2.通知公告',
  `TITLE` varchar(50) DEFAULT '' COMMENT '标题',
  `CONTENT` longtext COMMENT '内容',
  `INPUT_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `INPUT_USER` varchar(50) DEFAULT '' COMMENT '创建人',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_USER` varchar(50) DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻';

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBER_ID` int(11) DEFAULT NULL COMMENT '会员ID',
  `NAME` varchar(50) DEFAULT '' COMMENT '产品名称',
  `COVER` varchar(255) DEFAULT '' COMMENT '封面图片',
  `PRICE` varchar(50) DEFAULT '' COMMENT '产品价格',
  `INTRODUCTION` longtext COMMENT '产品简介',
  `INPUT_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `INPUT_USER` varchar(50) DEFAULT '' COMMENT '创建人',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_USER` varchar(50) DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='产品服务';

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBERID` int(11) DEFAULT NULL COMMENT '会员ID',
  `TYPE` varchar(50) DEFAULT NULL COMMENT '类型：1. 图片， 2.视频',
  `purpose` varchar(50) DEFAULT NULL,
  `TITLE` varchar(50) DEFAULT '' COMMENT '标题',
  `INTRODUCTION` longtext COMMENT '简介',
  `url` varchar(500) DEFAULT '' COMMENT 'URL',
  `INPUT_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `INPUT_USER` varchar(50) DEFAULT '' COMMENT '创建人',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_USER` varchar(50) DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资源';

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBER_ID` int(11) DEFAULT NULL COMMENT '会员ID',
  `NAME` varchar(50) DEFAULT '' COMMENT '产品名称',
  `CONTEXT` longtext COMMENT '产品简介',
  `INPUT_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `INPUT_USER` varchar(50) DEFAULT '' COMMENT '创建人',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_USER` varchar(50) DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='产品服务';
SET FOREIGN_KEY_CHECKS=1;