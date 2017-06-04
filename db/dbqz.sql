CREATE TABLE `association` (
`ID`  int(11) NOT NULL AUTO_INCREMENT ,
`NAME`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '协会名称' ,
`INTRODUCTION`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介' ,
`INPUT_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间' ,
`INPUT_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人' ,
`UPDATE_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间' ,
`UPDATE_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新人' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='协会'
AUTO_INCREMENT=1
ROW_FORMAT=DYNAMIC
;



CREATE TABLE `member` (
`ID`  int(11) NOT NULL AUTO_INCREMENT ,
`NAME`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员名称' ,
`TYPE`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员类型（1、个人 2、单位）' ,
`INTRODUCTION`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介' ,
`INPUT_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间' ,
`INPUT_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人' ,
`UPDATE_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间' ,
`UPDATE_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新人' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='会员单位'
AUTO_INCREMENT=1
ROW_FORMAT=DYNAMIC
;


CREATE TABLE `product` (
`ID`  int(11) NOT NULL AUTO_INCREMENT ,
`MEMBER_ID`  int(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员ID' ,
`NAME`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '产品名称' ,
`TYPE`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '产品类型（1、产品 2、服务）' ,
`PRICE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '产品价格' ,
`INTRODUCTION`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '产品简介' ,
`INPUT_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间' ,
`INPUT_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人' ,
`UPDATE_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间' ,
`UPDATE_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新人' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='产品服务'
AUTO_INCREMENT=1
ROW_FORMAT=DYNAMIC
;


CREATE TABLE `news` (
`ID`  int(11) NOT NULL AUTO_INCREMENT ,
`TITLE`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标题' ,
`CONTENT`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容' ,
`INPUT_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间' ,
`INPUT_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人' ,
`UPDATE_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间' ,
`UPDATE_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新人' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='新闻'
AUTO_INCREMENT=1
ROW_FORMAT=DYNAMIC
;


CREATE TABLE `article` (
`ID`  int(11) NOT NULL AUTO_INCREMENT ,
`TYPE`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '文章类型（1、绿色殡葬 2、殡葬传统文化 3、行业管理）' ,
`TITLE`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标题' ,
`INTRODUCTION`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介' ,
`INPUT_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间' ,
`INPUT_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人' ,
`UPDATE_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间' ,
`UPDATE_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新人' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='文章'
AUTO_INCREMENT=1
ROW_FORMAT=DYNAMIC
;



CREATE TABLE `event` (
`ID`  int(11) NOT NULL AUTO_INCREMENT ,
`TITLE`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标题' ,
`CONTENT`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容' ,
`BEGIN_TIME`  varchar(50) NULL DEFAULT NULL COMMENT '创建时间' ,
`END_TIME`  varchar(50) NULL DEFAULT NULL COMMENT '创建时间' ,
`INPUT_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间' ,
`INPUT_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人' ,
`UPDATE_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间' ,
`UPDATE_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新人' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='新闻'
AUTO_INCREMENT=1
ROW_FORMAT=DYNAMIC
;


CREATE TABLE `event` (
`ID`  int(11) NOT NULL AUTO_INCREMENT ,
`TITLE`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标题' ,
`CONTENT`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容' ,
`BEGIN_TIME`  varchar(50) NULL DEFAULT NULL COMMENT '创建时间' ,
`END_TIME`  varchar(50) NULL DEFAULT NULL COMMENT '创建时间' ,
`INPUT_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间' ,
`INPUT_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人' ,
`UPDATE_TIME`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间' ,
`UPDATE_USER`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新人' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='新闻'
AUTO_INCREMENT=1
ROW_FORMAT=DYNAMIC
;