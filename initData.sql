/*
Navicat MySQL Data Transfer

Source Server         : ttt
Source Server Version : 80027
Source Host           : localhost:3306
Source Database       : project02_test001

Target Server Type    : MYSQL
Target Server Version : 80027
File Encoding         : 65001

Date: 2022-11-17 16:33:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add consumer', '7', 'add_consumer');
INSERT INTO `auth_permission` VALUES ('26', 'Can change consumer', '7', 'change_consumer');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete consumer', '7', 'delete_consumer');
INSERT INTO `auth_permission` VALUES ('28', 'Can view consumer', '7', 'view_consumer');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 试题', '8', 'add_question');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 试题', '8', 'change_question');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 试题', '8', 'delete_question');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 试题', '8', 'view_question');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 选择题', '9', 'add_choice');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 选择题', '9', 'change_choice');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 选择题', '9', 'delete_choice');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 选择题', '9', 'view_choice');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 判断题', '10', 'add_trueorfalse');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 判断题', '10', 'change_trueorfalse');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 判断题', '10', 'delete_trueorfalse');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 判断题', '10', 'view_trueorfalse');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 试卷_试题', '11', 'add_testpaperquestion');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 试卷_试题', '11', 'change_testpaperquestion');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 试卷_试题', '11', 'delete_testpaperquestion');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 试卷_试题', '11', 'view_testpaperquestion');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 填空题', '12', 'add_gapfill');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 填空题', '12', 'change_gapfill');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 填空题', '12', 'delete_gapfill');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 填空题', '12', 'view_gapfill');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 试卷', '13', 'add_testpaper');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 试卷', '13', 'change_testpaper');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 试卷', '13', 'delete_testpaper');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 试卷', '13', 'view_testpaper');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 用户订阅', '14', 'add_consumer_testpaper_first');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 用户订阅', '14', 'change_consumer_testpaper_first');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 用户订阅', '14', 'delete_consumer_testpaper_first');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 用户订阅', '14', 'view_consumer_testpaper_first');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 用户答题情况', '15', 'add_consumer_answer_status');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 用户答题情况', '15', 'change_consumer_answer_status');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 用户答题情况', '15', 'delete_consumer_answer_status');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 用户答题情况', '15', 'view_consumer_answer_status');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$390000$lKfBi0sujK1dNMNgruSFp7$BehcP1FaAy6WyoRcra89AVzf/+gxiCVQXE/cEguSOOg=', '2022-11-15 11:00:53.465615', '1', 'admin', '', '', '1348757279@qq.com', '1', '1', '2022-09-27 09:38:32.127873');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$390000$TMFJu7h4fRFaP6qCoZyqbi$K2MX2y0DG4IWQruTg0plERwTrhe/VNAS1SXYhQFbRRo=', '2022-11-15 09:46:59.759176', '1', 'root1', '', '', '1348757279@qq.com', '1', '1', '2022-10-23 07:31:04.304140');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for collecttestpaper_choice
-- ----------------------------
DROP TABLE IF EXISTS `collecttestpaper_choice`;
CREATE TABLE `collecttestpaper_choice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `choice1` varchar(80) DEFAULT NULL,
  `choice2` varchar(80) DEFAULT NULL,
  `choice3` varchar(80) DEFAULT NULL,
  `choice4` varchar(80) DEFAULT NULL,
  `standard_answer` varchar(255) DEFAULT NULL,
  `question_id_id` bigint NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CollectTestpaper_cho_question_id_id_aa7a1ddf_fk_CollectTe` (`question_id_id`),
  CONSTRAINT `CollectTestpaper_cho_question_id_id_aa7a1ddf_fk_CollectTe` FOREIGN KEY (`question_id_id`) REFERENCES `collecttestpaper_question` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collecttestpaper_choice
-- ----------------------------
INSERT INTO `collecttestpaper_choice` VALUES ('51', '三层模式之间的两种映射     ', '模式与内模式 ', '模式与外模式               ', '三层模式 ', 'A', '153', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('52', '多对多      ', '一对一       ', '多对一       ', '一对多', 'C', '154', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('53', '对文件进行预处理         ', '尽早执行选择运算', '执行笛卡儿积运算         ', '投影运算 ', 'D', '155', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('54', '丢失更新                       ', '数据独立性会提高 \n    ', '非法用户的使用              ', '增加数据冗余度 ', 'A', '156', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('55', 'AE       ', 'BE       ', 'CE       ', 'DE', 'B', '157', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('56', '第一范式       ', '第二范式       ', '第三范式       ', 'BC范式', 'C', '158', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('57', '部门编号       ', '姓名       ', '职工号       ', '职工号和姓名', 'B', '159', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('58', '400        ', '10000        ', '30000       ', '90000', 'A', '160', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('59', '并发控制       ', '完整性控制       ', '一致性控制      ', '安全性控制', 'C', '161', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('60', '数据库文件     ', '索引文件       ', '日志文件       ', '备注文件', 'D', '162', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('61', '三层模式之间的两种映射     ', '模式与内模式 ', '模式与外模式               ', '三层模式 ', 'A', '153', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('62', '多对多      ', '一对一       ', '多对一       ', '一对多', 'C', '154', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('63', '对文件进行预处理         ', '尽早执行选择运算', '执行笛卡儿积运算         ', '投影运算 ', 'D', '155', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('64', '丢失更新                       ', '数据独立性会提高 \n    ', '非法用户的使用              ', '增加数据冗余度 ', 'A', '156', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('65', 'AE       ', 'BE       ', 'CE       ', 'DE', 'B', '157', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('66', '第一范式       ', '第二范式       ', '第三范式       ', 'BC范式', 'C', '158', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('67', '部门编号       ', '姓名       ', '职工号       ', '职工号和姓名', 'B', '159', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('68', '400        ', '10000        ', '30000       ', '90000', 'A', '160', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('69', '并发控制       ', '完整性控制       ', '一致性控制      ', '安全性控制', 'C', '161', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('70', '数据库文件     ', '索引文件       ', '日志文件       ', '备注文件', 'D', '162', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('71', '三层模式之间的两种映射     ', '模式与内模式 ', '模式与外模式               ', '三层模式 ', 'A', '153', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('72', '多对多      ', '一对一       ', '多对一       ', '一对多', 'C', '154', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('73', '对文件进行预处理         ', '尽早执行选择运算', '执行笛卡儿积运算         ', '投影运算 ', 'D', '155', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('74', '丢失更新                       ', '数据独立性会提高 \n    ', '非法用户的使用              ', '增加数据冗余度 ', 'A', '156', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('75', 'AE       ', 'BE       ', 'CE       ', 'DE', 'B', '157', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('76', '第一范式       ', '第二范式       ', '第三范式       ', 'BC范式', 'C', '158', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('77', '部门编号       ', '姓名       ', '职工号       ', '职工号和姓名', 'B', '159', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('78', '400        ', '10000        ', '30000       ', '90000', 'A', '160', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('79', '并发控制       ', '完整性控制       ', '一致性控制      ', '安全性控制', 'C', '161', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('80', '数据库文件     ', '索引文件       ', '日志文件       ', '备注文件', 'D', '162', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('81', '三层模式之间的两种映射     ', '模式与内模式 ', '模式与外模式               ', '三层模式 ', 'A', '153', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('82', '多对多      ', '一对一       ', '多对一       ', '一对多', 'C', '154', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('83', '对文件进行预处理         ', '尽早执行选择运算', '执行笛卡儿积运算         ', '投影运算 ', 'D', '155', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('84', '丢失更新                       ', '数据独立性会提高 \n    ', '非法用户的使用              ', '增加数据冗余度 ', 'A', '156', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('85', 'AE       ', 'BE       ', 'CE       ', 'DE', 'B', '157', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('86', '第一范式       ', '第二范式       ', '第三范式       ', 'BC范式', 'C', '158', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('87', '部门编号       ', '姓名       ', '职工号       ', '职工号和姓名', 'B', '159', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('88', '400        ', '10000        ', '30000       ', '90000', 'A', '160', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('89', '并发控制       ', '完整性控制       ', '一致性控制      ', '安全性控制', 'C', '161', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('90', '数据库文件     ', '索引文件       ', '日志文件       ', '备注文件', 'D', '162', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('91', '三层模式之间的两种映射     ', '模式与内模式 ', '模式与外模式               ', '三层模式 ', 'A', '153', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('92', '多对多      ', '一对一       ', '多对一       ', '一对多', 'C', '154', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('93', '对文件进行预处理         ', '尽早执行选择运算', '执行笛卡儿积运算         ', '投影运算 ', 'D', '155', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('94', '丢失更新                       ', '数据独立性会提高 \n    ', '非法用户的使用              ', '增加数据冗余度 ', 'A', '156', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('95', 'AE       ', 'BE       ', 'CE       ', 'DE', 'B', '157', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('96', '第一范式       ', '第二范式       ', '第三范式       ', 'BC范式', 'C', '158', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('97', '部门编号       ', '姓名       ', '职工号       ', '职工号和姓名', 'B', '159', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('98', '400        ', '10000        ', '30000       ', '90000', 'A', '160', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('99', '并发控制       ', '完整性控制       ', '一致性控制      ', '安全性控制', 'C', '161', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('100', '数据库文件     ', '索引文件       ', '日志文件       ', '备注文件', 'D', '162', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('101', '三层模式之间的两种映射     ', '模式与内模式 ', '模式与外模式               ', '三层模式 ', 'A', '153', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('102', '多对多      ', '一对一       ', '多对一       ', '一对多', 'C', '154', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('103', '对文件进行预处理         ', '尽早执行选择运算', '执行笛卡儿积运算         ', '投影运算 ', 'D', '155', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('104', '丢失更新                       ', '数据独立性会提高 \n    ', '非法用户的使用              ', '增加数据冗余度 ', 'A', '156', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('105', 'AE       ', 'BE       ', 'CE       ', 'DE', 'B', '157', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('106', '第一范式       ', '第二范式       ', '第三范式       ', 'BC范式', 'C', '158', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('107', '部门编号       ', '姓名       ', '职工号       ', '职工号和姓名', 'B', '159', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('108', '400        ', '10000        ', '30000       ', '90000', 'A', '160', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('109', '并发控制       ', '完整性控制       ', '一致性控制      ', '安全性控制', 'C', '161', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('110', '数据库文件     ', '索引文件       ', '日志文件       ', '备注文件', 'D', '162', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('111', '三层模式之间的两种映射     ', '模式与内模式 ', '模式与外模式               ', '三层模式 ', 'A', '153', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('112', '多对多      ', '一对一       ', '多对一       ', '一对多', 'C', '154', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('113', '对文件进行预处理         ', '尽早执行选择运算', '执行笛卡儿积运算         ', '投影运算 ', 'D', '155', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('114', '丢失更新                       ', '数据独立性会提高 \n    ', '非法用户的使用              ', '增加数据冗余度 ', 'A', '156', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('115', 'AE       ', 'BE       ', 'CE       ', 'DE', 'B', '157', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('116', '第一范式       ', '第二范式       ', '第三范式       ', 'BC范式', 'C', '158', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('117', '部门编号       ', '姓名       ', '职工号       ', '职工号和姓名', 'B', '159', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('118', '400        ', '10000        ', '30000       ', '90000', 'A', '160', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('119', '并发控制       ', '完整性控制       ', '一致性控制      ', '安全性控制', 'C', '161', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('120', '数据库文件     ', '索引文件       ', '日志文件       ', '备注文件', 'D', '162', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('121', '三层模式之间的两种映射     ', '模式与内模式 ', '模式与外模式               ', '三层模式 ', 'A', '153', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('122', '多对多      ', '一对一       ', '多对一       ', '一对多', 'C', '154', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('123', '对文件进行预处理         ', '尽早执行选择运算', '执行笛卡儿积运算         ', '投影运算 ', 'D', '155', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('124', '丢失更新                       ', '数据独立性会提高 \n    ', '非法用户的使用              ', '增加数据冗余度 ', 'A', '156', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('125', 'AE       ', 'BE       ', 'CE       ', 'DE', 'B', '157', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('126', '第一范式       ', '第二范式       ', '第三范式       ', 'BC范式', 'C', '158', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('127', '部门编号       ', '姓名       ', '职工号       ', '职工号和姓名', 'B', '159', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('128', '400        ', '10000        ', '30000       ', '90000', 'A', '160', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('129', '并发控制       ', '完整性控制       ', '一致性控制      ', '安全性控制', 'C', '161', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('130', '数据库文件     ', '索引文件       ', '日志文件       ', '备注文件', 'D', '162', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('131', '三层模式之间的两种映射     ', '模式与内模式 ', '模式与外模式               ', '三层模式 ', 'A', '153', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('132', '多对多      ', '一对一       ', '多对一       ', '一对多', 'C', '154', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('133', '对文件进行预处理         ', '尽早执行选择运算', '执行笛卡儿积运算         ', '投影运算 ', 'D', '155', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('134', '丢失更新                       ', '数据独立性会提高 \n    ', '非法用户的使用              ', '增加数据冗余度 ', 'A', '156', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('135', 'AE       ', 'BE       ', 'CE       ', 'DE', 'B', '157', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('136', '第一范式       ', '第二范式       ', '第三范式       ', 'BC范式', 'C', '158', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('137', '部门编号       ', '姓名       ', '职工号       ', '职工号和姓名', 'B', '159', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('138', '400        ', '10000        ', '30000       ', '90000', 'A', '160', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('139', '并发控制       ', '完整性控制       ', '一致性控制      ', '安全性控制', 'C', '161', '2');
INSERT INTO `collecttestpaper_choice` VALUES ('140', '数据库文件     ', '索引文件       ', '日志文件       ', '备注文件', 'D', '162', '2');

-- ----------------------------
-- Table structure for collecttestpaper_gapfill
-- ----------------------------
DROP TABLE IF EXISTS `collecttestpaper_gapfill`;
CREATE TABLE `collecttestpaper_gapfill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `standard_answer` varchar(255) DEFAULT NULL,
  `question_id_id` bigint NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CollectTestpaper_gap_question_id_id_06ed89bb_fk_CollectTe` (`question_id_id`),
  CONSTRAINT `CollectTestpaper_gap_question_id_id_06ed89bb_fk_CollectTe` FOREIGN KEY (`question_id_id`) REFERENCES `collecttestpaper_question` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collecttestpaper_gapfill
-- ----------------------------
INSERT INTO `collecttestpaper_gapfill` VALUES ('16', '答案1', '150', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('17', '答案2', '151', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('18', '答案3', '152', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('19', '答案1', '150', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('20', '答案2', '151', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('21', '答案3', '152', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('22', '答案1', '150', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('23', '答案2', '151', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('24', '答案3', '152', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('25', '答案1', '150', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('26', '答案2', '151', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('27', '答案3', '152', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('28', '答案1', '150', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('29', '答案2、答案4', '151', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('30', '答案3', '152', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('31', '答案1', '150', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('32', '答案2、答案4', '151', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('33', '答案3', '152', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('34', '答案1', '150', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('35', '答案2、答案4', '151', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('36', '答案3', '152', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('37', '答案1', '150', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('38', '答案2、答案4', '151', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('39', '答案3', '152', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('40', '答案1', '150', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('41', '答案2、答案4', '151', '3');
INSERT INTO `collecttestpaper_gapfill` VALUES ('42', '答案3', '152', '3');

-- ----------------------------
-- Table structure for collecttestpaper_question
-- ----------------------------
DROP TABLE IF EXISTS `collecttestpaper_question`;
CREATE TABLE `collecttestpaper_question` (
  `question_id` bigint NOT NULL AUTO_INCREMENT,
  `stems` longtext,
  `level` int DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collecttestpaper_question
-- ----------------------------
INSERT INTO `collecttestpaper_question` VALUES ('136', '层次数据库的典型代表是DBTG。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('137', '关系必须有唯一的候选码。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('138', '数据的完整性指数据库中数据的全面性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('139', '自然连接要求两个关系中相等的分量必须是单个属性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('140', '在关系数据库中，不同关系之间的联系是通过指针实现的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('141', 'QBE是一种元组演算语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('142', '事务是并发控制的基本单位。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('143', '一个用户程序可以启用多个子模式。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('144', '关系代数中的笛卡尔积，并，差，选取，投影运算是独立的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('145', 'SQL语言是介于关系代数和关系演算之间的语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('146', '“授权”是数据库系统中采用的完整性措施之一。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('147', 'IMS是网状模型DBMS的典型代表。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('148', '数据库管理系统DBMS是操作系统的一部分。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('149', '已有算法能把一个关系模式分解为BCNF模式集，且能保证分解具有函数依赖保持的性质。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('150', '如果关系模式设计的不好，会存在插入异常、删除异常、冗余大等弊病，因此必须对关系进行（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('151', '在关系A（S，SN，D）和B（D，CN，NM）中A的主键是S，B的主键是D，则D在A中称为（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('152', '数据库的（）是指数据库中的数据必须始终满足数据库的语义约束。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('153', '要保证数据库的数据独立性，需要修改的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('154', '一辆汽车由多种零部件组成，且相同的零部件可适用于不同型号的汽车，则汽车实体和零部件实体之间的联系类型是（）。 ', '1');
INSERT INTO `collecttestpaper_question` VALUES ('155', '关系代数表达式的优化策略中，首先要做的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('156', '数据库的并发操作可能带来的问题包括（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('157', '已知关系模式R(A，B，C，D，E)，其上的函数依赖集合F={A→B，E→A，CE→D}，该关系模式的候选键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('158', '设有关系模式R(A,B,C,D)，其上的函数依赖集合F＝{B→A,BC→D}，R最高是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('159', '现有如下关系：职工（职工号，姓名，性别，职务）；部门（部门编号，部门名称，职工号，姓名，部门地址，电话），其中，部门关系中的外部键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('160', '设关系R和S的元组个数分别为100和300，关系T是R与S的笛卡尔积，则T的元组个数是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('161', 'SQL语言中，用GRANT／REVOKE语句实现数据库的（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('162', '用于数据库恢复的重要文件是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('163', '层次数据库的典型代表是DBTG。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('164', '关系必须有唯一的候选码。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('165', '数据的完整性指数据库中数据的全面性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('166', '自然连接要求两个关系中相等的分量必须是单个属性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('167', '在关系数据库中，不同关系之间的联系是通过指针实现的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('168', 'QBE是一种元组演算语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('169', '事务是并发控制的基本单位。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('170', '一个用户程序可以启用多个子模式。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('171', '关系代数中的笛卡尔积，并，差，选取，投影运算是独立的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('172', 'SQL语言是介于关系代数和关系演算之间的语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('173', '“授权”是数据库系统中采用的完整性措施之一。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('174', 'IMS是网状模型DBMS的典型代表。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('175', '数据库管理系统DBMS是操作系统的一部分。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('176', '已有算法能把一个关系模式分解为BCNF模式集，且能保证分解具有函数依赖保持的性质。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('177', '如果关系模式设计的不好，会存在插入异常、删除异常、冗余大等弊病，因此必须对关系进行（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('178', '在关系A（S，SN，D）和B（D，CN，NM）中A的主键是S，B的主键是D，则D在A中称为（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('179', '数据库的（）是指数据库中的数据必须始终满足数据库的语义约束。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('180', '要保证数据库的数据独立性，需要修改的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('181', '一辆汽车由多种零部件组成，且相同的零部件可适用于不同型号的汽车，则汽车实体和零部件实体之间的联系类型是（）。 ', '1');
INSERT INTO `collecttestpaper_question` VALUES ('182', '关系代数表达式的优化策略中，首先要做的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('183', '数据库的并发操作可能带来的问题包括（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('184', '已知关系模式R(A，B，C，D，E)，其上的函数依赖集合F={A→B，E→A，CE→D}，该关系模式的候选键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('185', '设有关系模式R(A,B,C,D)，其上的函数依赖集合F＝{B→A,BC→D}，R最高是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('186', '现有如下关系：职工（职工号，姓名，性别，职务）；部门（部门编号，部门名称，职工号，姓名，部门地址，电话），其中，部门关系中的外部键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('187', '设关系R和S的元组个数分别为100和300，关系T是R与S的笛卡尔积，则T的元组个数是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('188', 'SQL语言中，用GRANT／REVOKE语句实现数据库的（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('189', '用于数据库恢复的重要文件是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('190', '层次数据库的典型代表是DBTG。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('191', '关系必须有唯一的候选码。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('192', '数据的完整性指数据库中数据的全面性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('193', '自然连接要求两个关系中相等的分量必须是单个属性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('194', '在关系数据库中，不同关系之间的联系是通过指针实现的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('195', 'QBE是一种元组演算语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('196', '事务是并发控制的基本单位。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('197', '一个用户程序可以启用多个子模式。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('198', '关系代数中的笛卡尔积，并，差，选取，投影运算是独立的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('199', 'SQL语言是介于关系代数和关系演算之间的语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('200', '“授权”是数据库系统中采用的完整性措施之一。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('201', 'IMS是网状模型DBMS的典型代表。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('202', '数据库管理系统DBMS是操作系统的一部分。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('203', '已有算法能把一个关系模式分解为BCNF模式集，且能保证分解具有函数依赖保持的性质。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('204', '如果关系模式设计的不好，会存在插入异常、删除异常、冗余大等弊病，因此必须对关系进行（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('205', '在关系A（S，SN，D）和B（D，CN，NM）中A的主键是S，B的主键是D，则D在A中称为（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('206', '数据库的（）是指数据库中的数据必须始终满足数据库的语义约束。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('207', '要保证数据库的数据独立性，需要修改的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('208', '一辆汽车由多种零部件组成，且相同的零部件可适用于不同型号的汽车，则汽车实体和零部件实体之间的联系类型是（）。 ', '1');
INSERT INTO `collecttestpaper_question` VALUES ('209', '关系代数表达式的优化策略中，首先要做的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('210', '数据库的并发操作可能带来的问题包括（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('211', '已知关系模式R(A，B，C，D，E)，其上的函数依赖集合F={A→B，E→A，CE→D}，该关系模式的候选键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('212', '设有关系模式R(A,B,C,D)，其上的函数依赖集合F＝{B→A,BC→D}，R最高是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('213', '现有如下关系：职工（职工号，姓名，性别，职务）；部门（部门编号，部门名称，职工号，姓名，部门地址，电话），其中，部门关系中的外部键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('214', '设关系R和S的元组个数分别为100和300，关系T是R与S的笛卡尔积，则T的元组个数是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('215', 'SQL语言中，用GRANT／REVOKE语句实现数据库的（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('216', '用于数据库恢复的重要文件是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('217', '层次数据库的典型代表是DBTG。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('218', '关系必须有唯一的候选码。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('219', '数据的完整性指数据库中数据的全面性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('220', '自然连接要求两个关系中相等的分量必须是单个属性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('221', '在关系数据库中，不同关系之间的联系是通过指针实现的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('222', 'QBE是一种元组演算语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('223', '事务是并发控制的基本单位。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('224', '一个用户程序可以启用多个子模式。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('225', '关系代数中的笛卡尔积，并，差，选取，投影运算是独立的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('226', 'SQL语言是介于关系代数和关系演算之间的语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('227', '“授权”是数据库系统中采用的完整性措施之一。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('228', 'IMS是网状模型DBMS的典型代表。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('229', '数据库管理系统DBMS是操作系统的一部分。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('230', '已有算法能把一个关系模式分解为BCNF模式集，且能保证分解具有函数依赖保持的性质。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('231', '如果关系模式设计的不好，会存在插入异常、删除异常、冗余大等弊病，因此必须对关系进行（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('232', '在关系A（S，SN，D）和B（D，CN，NM）中A的主键是S，B的主键是D，则D在A中称为（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('233', '数据库的（）是指数据库中的数据必须始终满足数据库的语义约束。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('234', '要保证数据库的数据独立性，需要修改的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('235', '一辆汽车由多种零部件组成，且相同的零部件可适用于不同型号的汽车，则汽车实体和零部件实体之间的联系类型是（）。 ', '1');
INSERT INTO `collecttestpaper_question` VALUES ('236', '关系代数表达式的优化策略中，首先要做的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('237', '数据库的并发操作可能带来的问题包括（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('238', '已知关系模式R(A，B，C，D，E)，其上的函数依赖集合F={A→B，E→A，CE→D}，该关系模式的候选键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('239', '设有关系模式R(A,B,C,D)，其上的函数依赖集合F＝{B→A,BC→D}，R最高是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('240', '现有如下关系：职工（职工号，姓名，性别，职务）；部门（部门编号，部门名称，职工号，姓名，部门地址，电话），其中，部门关系中的外部键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('241', '设关系R和S的元组个数分别为100和300，关系T是R与S的笛卡尔积，则T的元组个数是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('242', 'SQL语言中，用GRANT／REVOKE语句实现数据库的（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('243', '用于数据库恢复的重要文件是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('244', '层次数据库的典型代表是DBTG。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('245', '关系必须有唯一的候选码。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('246', '数据的完整性指数据库中数据的全面性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('247', '自然连接要求两个关系中相等的分量必须是单个属性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('248', '在关系数据库中，不同关系之间的联系是通过指针实现的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('249', 'QBE是一种元组演算语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('250', '事务是并发控制的基本单位。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('251', '一个用户程序可以启用多个子模式。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('252', '关系代数中的笛卡尔积，并，差，选取，投影运算是独立的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('253', 'SQL语言是介于关系代数和关系演算之间的语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('254', '“授权”是数据库系统中采用的完整性措施之一。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('255', 'IMS是网状模型DBMS的典型代表。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('256', '数据库管理系统DBMS是操作系统的一部分。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('257', '已有算法能把一个关系模式分解为BCNF模式集，且能保证分解具有函数依赖保持的性质。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('258', '如果关系模式设计的不好，会存在插入异常、删除异常、冗余大等弊病，因此必须对关系进行（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('259', '在关系A（S，SN，D）和B（D，CN，NM）中A的主键是S，B的主键是D，则D在A中称为（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('260', '数据库的（）是指数据库中的数据必须始终满足数据库的语义约束。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('261', '要保证数据库的数据独立性，需要修改的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('262', '一辆汽车由多种零部件组成，且相同的零部件可适用于不同型号的汽车，则汽车实体和零部件实体之间的联系类型是（）。 ', '1');
INSERT INTO `collecttestpaper_question` VALUES ('263', '关系代数表达式的优化策略中，首先要做的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('264', '数据库的并发操作可能带来的问题包括（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('265', '已知关系模式R(A，B，C，D，E)，其上的函数依赖集合F={A→B，E→A，CE→D}，该关系模式的候选键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('266', '设有关系模式R(A,B,C,D)，其上的函数依赖集合F＝{B→A,BC→D}，R最高是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('267', '现有如下关系：职工（职工号，姓名，性别，职务）；部门（部门编号，部门名称，职工号，姓名，部门地址，电话），其中，部门关系中的外部键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('268', '设关系R和S的元组个数分别为100和300，关系T是R与S的笛卡尔积，则T的元组个数是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('269', 'SQL语言中，用GRANT／REVOKE语句实现数据库的（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('270', '用于数据库恢复的重要文件是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('271', '层次数据库的典型代表是DBTG。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('272', '关系必须有唯一的候选码。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('273', '数据的完整性指数据库中数据的全面性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('274', '自然连接要求两个关系中相等的分量必须是单个属性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('275', '在关系数据库中，不同关系之间的联系是通过指针实现的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('276', 'QBE是一种元组演算语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('277', '事务是并发控制的基本单位。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('278', '一个用户程序可以启用多个子模式。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('279', '关系代数中的笛卡尔积，并，差，选取，投影运算是独立的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('280', 'SQL语言是介于关系代数和关系演算之间的语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('281', '“授权”是数据库系统中采用的完整性措施之一。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('282', 'IMS是网状模型DBMS的典型代表。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('283', '数据库管理系统DBMS是操作系统的一部分。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('284', '已有算法能把一个关系模式分解为BCNF模式集，且能保证分解具有函数依赖保持的性质。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('285', '如果关系模式设计的不好，会存在插入异常、删除异常、冗余大等弊病，因此必须对关系进行（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('286', '在关系A（S，SN，D）和B（D，CN，NM）中A的主键是S，B的主键是D，则D在A中称为（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('287', '数据库的（）是指数据库中的数据必须始终满足数据库的语义约束。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('288', '要保证数据库的数据独立性，需要修改的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('289', '一辆汽车由多种零部件组成，且相同的零部件可适用于不同型号的汽车，则汽车实体和零部件实体之间的联系类型是（）。 ', '1');
INSERT INTO `collecttestpaper_question` VALUES ('290', '关系代数表达式的优化策略中，首先要做的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('291', '数据库的并发操作可能带来的问题包括（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('292', '已知关系模式R(A，B，C，D，E)，其上的函数依赖集合F={A→B，E→A，CE→D}，该关系模式的候选键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('293', '设有关系模式R(A,B,C,D)，其上的函数依赖集合F＝{B→A,BC→D}，R最高是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('294', '现有如下关系：职工（职工号，姓名，性别，职务）；部门（部门编号，部门名称，职工号，姓名，部门地址，电话），其中，部门关系中的外部键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('295', '设关系R和S的元组个数分别为100和300，关系T是R与S的笛卡尔积，则T的元组个数是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('296', 'SQL语言中，用GRANT／REVOKE语句实现数据库的（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('297', '用于数据库恢复的重要文件是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('298', '层次数据库的典型代表是DBTG。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('299', '关系必须有唯一的候选码。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('300', '数据的完整性指数据库中数据的全面性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('301', '自然连接要求两个关系中相等的分量必须是单个属性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('302', '在关系数据库中，不同关系之间的联系是通过指针实现的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('303', 'QBE是一种元组演算语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('304', '事务是并发控制的基本单位。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('305', '一个用户程序可以启用多个子模式。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('306', '关系代数中的笛卡尔积，并，差，选取，投影运算是独立的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('307', 'SQL语言是介于关系代数和关系演算之间的语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('308', '“授权”是数据库系统中采用的完整性措施之一。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('309', 'IMS是网状模型DBMS的典型代表。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('310', '数据库管理系统DBMS是操作系统的一部分。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('311', '已有算法能把一个关系模式分解为BCNF模式集，且能保证分解具有函数依赖保持的性质。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('312', '如果关系模式设计的不好，会存在插入异常、删除异常、冗余大等弊病，因此必须对关系进行（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('313', '在关系A（S，SN，D）和B（D，CN，NM）中A的主键是S，B的主键是D，则D在A中称为（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('314', '数据库的（）是指数据库中的数据必须始终满足数据库的语义约束。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('315', '要保证数据库的数据独立性，需要修改的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('316', '一辆汽车由多种零部件组成，且相同的零部件可适用于不同型号的汽车，则汽车实体和零部件实体之间的联系类型是（）。 ', '1');
INSERT INTO `collecttestpaper_question` VALUES ('317', '关系代数表达式的优化策略中，首先要做的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('318', '数据库的并发操作可能带来的问题包括（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('319', '已知关系模式R(A，B，C，D，E)，其上的函数依赖集合F={A→B，E→A，CE→D}，该关系模式的候选键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('320', '设有关系模式R(A,B,C,D)，其上的函数依赖集合F＝{B→A,BC→D}，R最高是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('321', '现有如下关系：职工（职工号，姓名，性别，职务）；部门（部门编号，部门名称，职工号，姓名，部门地址，电话），其中，部门关系中的外部键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('322', '设关系R和S的元组个数分别为100和300，关系T是R与S的笛卡尔积，则T的元组个数是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('323', 'SQL语言中，用GRANT／REVOKE语句实现数据库的（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('324', '用于数据库恢复的重要文件是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('325', '层次数据库的典型代表是DBTG。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('326', '关系必须有唯一的候选码。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('327', '数据的完整性指数据库中数据的全面性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('328', '自然连接要求两个关系中相等的分量必须是单个属性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('329', '在关系数据库中，不同关系之间的联系是通过指针实现的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('330', 'QBE是一种元组演算语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('331', '事务是并发控制的基本单位。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('332', '一个用户程序可以启用多个子模式。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('333', '关系代数中的笛卡尔积，并，差，选取，投影运算是独立的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('334', 'SQL语言是介于关系代数和关系演算之间的语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('335', '“授权”是数据库系统中采用的完整性措施之一。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('336', 'IMS是网状模型DBMS的典型代表。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('337', '数据库管理系统DBMS是操作系统的一部分。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('338', '已有算法能把一个关系模式分解为BCNF模式集，且能保证分解具有函数依赖保持的性质。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('339', '如果关系模式设计的不好，会存在插入异常、删除异常、冗余大等弊病，因此必须对关系进行（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('340', '在关系A（S，SN，D）和B（D，CN，NM）中A的主键是S，B的主键是D，则D在A中称为（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('341', '数据库的（）是指数据库中的数据必须始终满足数据库的语义约束。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('342', '要保证数据库的数据独立性，需要修改的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('343', '一辆汽车由多种零部件组成，且相同的零部件可适用于不同型号的汽车，则汽车实体和零部件实体之间的联系类型是（）。 ', '1');
INSERT INTO `collecttestpaper_question` VALUES ('344', '关系代数表达式的优化策略中，首先要做的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('345', '数据库的并发操作可能带来的问题包括（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('346', '已知关系模式R(A，B，C，D，E)，其上的函数依赖集合F={A→B，E→A，CE→D}，该关系模式的候选键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('347', '设有关系模式R(A,B,C,D)，其上的函数依赖集合F＝{B→A,BC→D}，R最高是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('348', '现有如下关系：职工（职工号，姓名，性别，职务）；部门（部门编号，部门名称，职工号，姓名，部门地址，电话），其中，部门关系中的外部键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('349', '设关系R和S的元组个数分别为100和300，关系T是R与S的笛卡尔积，则T的元组个数是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('350', 'SQL语言中，用GRANT／REVOKE语句实现数据库的（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('351', '用于数据库恢复的重要文件是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('352', '层次数据库的典型代表是DBTG。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('353', '关系必须有唯一的候选码。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('354', '数据的完整性指数据库中数据的全面性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('355', '自然连接要求两个关系中相等的分量必须是单个属性。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('356', '在关系数据库中，不同关系之间的联系是通过指针实现的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('357', 'QBE是一种元组演算语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('358', '事务是并发控制的基本单位。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('359', '一个用户程序可以启用多个子模式。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('360', '关系代数中的笛卡尔积，并，差，选取，投影运算是独立的。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('361', 'SQL语言是介于关系代数和关系演算之间的语言。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('362', '“授权”是数据库系统中采用的完整性措施之一。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('363', 'IMS是网状模型DBMS的典型代表。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('364', '数据库管理系统DBMS是操作系统的一部分。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('365', '已有算法能把一个关系模式分解为BCNF模式集，且能保证分解具有函数依赖保持的性质。（       ）', '2');
INSERT INTO `collecttestpaper_question` VALUES ('366', '如果关系模式设计的不好，会存在插入异常、删除异常、冗余大等弊病，因此必须对关系进行（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('367', '在关系A（S，SN，D）和B（D，CN，NM）中A的主键是S，B的主键是D，则D在A中称为（）。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('368', '数据库的（）是指数据库中的数据必须始终满足数据库的语义约束。', '3');
INSERT INTO `collecttestpaper_question` VALUES ('369', '要保证数据库的数据独立性，需要修改的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('370', '一辆汽车由多种零部件组成，且相同的零部件可适用于不同型号的汽车，则汽车实体和零部件实体之间的联系类型是（）。 ', '1');
INSERT INTO `collecttestpaper_question` VALUES ('371', '关系代数表达式的优化策略中，首先要做的是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('372', '数据库的并发操作可能带来的问题包括（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('373', '已知关系模式R(A，B，C，D，E)，其上的函数依赖集合F={A→B，E→A，CE→D}，该关系模式的候选键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('374', '设有关系模式R(A,B,C,D)，其上的函数依赖集合F＝{B→A,BC→D}，R最高是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('375', '现有如下关系：职工（职工号，姓名，性别，职务）；部门（部门编号，部门名称，职工号，姓名，部门地址，电话），其中，部门关系中的外部键是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('376', '设关系R和S的元组个数分别为100和300，关系T是R与S的笛卡尔积，则T的元组个数是（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('377', 'SQL语言中，用GRANT／REVOKE语句实现数据库的（）。', '1');
INSERT INTO `collecttestpaper_question` VALUES ('378', '用于数据库恢复的重要文件是（）。', '1');

-- ----------------------------
-- Table structure for collecttestpaper_testpaper
-- ----------------------------
DROP TABLE IF EXISTS `collecttestpaper_testpaper`;
CREATE TABLE `collecttestpaper_testpaper` (
  `testpaper_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `apply_time` date DEFAULT NULL,
  `hard` int DEFAULT NULL,
  `intro` longtext,
  PRIMARY KEY (`testpaper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collecttestpaper_testpaper
-- ----------------------------
INSERT INTO `collecttestpaper_testpaper` VALUES ('7', '2022年数据库综合测试卷（一）', '2022-11-17', '3', '这是一张狠不错的试卷');
INSERT INTO `collecttestpaper_testpaper` VALUES ('9', '2022年Java期中测试卷（一）', '2022-11-09', '2', '“影之实力者”既不是主人公，也不是终极大BOSS，而是平日里彻底隐藏自己的实力、在暗中介入事件并施展自身实力的存在。憧憬着“影之实');
INSERT INTO `collecttestpaper_testpaper` VALUES ('10', '2022年Python期末测试卷（一）', '2022-11-12', '1', '“影之实力者”既不是主人公，也不是终极大BOSS，而是平日里彻底隐藏自己的实力、在暗中介入事件并施展自身实力的存在。憧憬着“影之实');
INSERT INTO `collecttestpaper_testpaper` VALUES ('11', '2022年数据结构期中测试卷（一）', '2022-12-02', '0', '“影之实力者”既不是主人公，也不是终极大BOSS，而是平日里彻底隐藏自己的实力、在暗中介入事件并施展自身实力的存在。憧憬着“影之实');
INSERT INTO `collecttestpaper_testpaper` VALUES ('12', '2021年数据结构期中测试卷（二）', '2021-12-16', '4', '');
INSERT INTO `collecttestpaper_testpaper` VALUES ('13', '2020年数据结构期中测试卷（二）', '2022-11-11', '0', '');
INSERT INTO `collecttestpaper_testpaper` VALUES ('14', '2019年数据结构期中测试卷（二）', '2019-05-08', '2', '');
INSERT INTO `collecttestpaper_testpaper` VALUES ('15', '2011年数据结构期中测试卷（二）', '2011-07-14', '2', '这是2011年的试卷');

-- ----------------------------
-- Table structure for collecttestpaper_testpaperquestion
-- ----------------------------
DROP TABLE IF EXISTS `collecttestpaper_testpaperquestion`;
CREATE TABLE `collecttestpaper_testpaperquestion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id_id` bigint NOT NULL,
  `testpaper_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CollectTestpaper_tes_question_id_id_3e6d2375_fk_CollectTe` (`question_id_id`),
  KEY `CollectTestpaper_tes_testpaper_id_id_d2c1f2a7_fk_CollectTe` (`testpaper_id_id`),
  CONSTRAINT `CollectTestpaper_tes_question_id_id_3e6d2375_fk_CollectTe` FOREIGN KEY (`question_id_id`) REFERENCES `collecttestpaper_question` (`question_id`),
  CONSTRAINT `CollectTestpaper_tes_testpaper_id_id_d2c1f2a7_fk_CollectTe` FOREIGN KEY (`testpaper_id_id`) REFERENCES `collecttestpaper_testpaper` (`testpaper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collecttestpaper_testpaperquestion
-- ----------------------------
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('136', '136', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('137', '137', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('138', '138', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('139', '139', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('140', '140', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('141', '141', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('142', '142', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('143', '143', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('144', '144', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('145', '145', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('146', '146', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('147', '147', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('148', '148', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('149', '149', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('150', '150', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('151', '151', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('152', '152', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('153', '153', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('154', '154', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('155', '155', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('156', '156', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('157', '157', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('158', '158', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('159', '159', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('160', '160', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('161', '161', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('162', '162', '7');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('163', '136', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('164', '137', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('165', '138', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('166', '139', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('167', '140', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('168', '141', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('169', '142', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('170', '143', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('171', '144', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('172', '145', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('173', '146', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('174', '147', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('175', '148', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('176', '149', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('177', '150', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('178', '151', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('179', '152', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('180', '153', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('181', '154', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('182', '155', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('183', '156', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('184', '157', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('185', '158', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('186', '159', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('187', '160', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('188', '161', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('189', '162', '9');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('190', '136', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('191', '137', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('192', '138', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('193', '139', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('194', '140', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('195', '141', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('196', '142', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('197', '143', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('198', '144', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('199', '145', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('200', '146', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('201', '147', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('202', '148', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('203', '149', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('204', '150', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('205', '151', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('206', '152', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('207', '153', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('208', '154', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('209', '155', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('210', '156', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('211', '157', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('212', '158', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('213', '159', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('214', '160', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('215', '161', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('216', '162', '10');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('217', '136', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('218', '137', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('219', '138', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('220', '139', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('221', '140', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('222', '141', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('223', '142', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('224', '143', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('225', '144', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('226', '145', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('227', '146', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('228', '147', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('229', '148', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('230', '149', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('231', '150', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('232', '151', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('233', '152', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('234', '153', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('235', '154', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('236', '155', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('237', '156', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('238', '157', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('239', '158', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('240', '159', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('241', '160', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('242', '161', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('243', '162', '11');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('244', '136', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('245', '137', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('246', '138', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('247', '139', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('248', '140', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('249', '141', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('250', '142', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('251', '143', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('252', '144', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('253', '145', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('254', '146', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('255', '147', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('256', '148', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('257', '149', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('258', '150', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('259', '151', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('260', '152', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('261', '153', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('262', '154', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('263', '155', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('264', '156', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('265', '157', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('266', '158', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('267', '159', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('268', '160', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('269', '161', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('270', '162', '12');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('271', '136', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('272', '137', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('273', '138', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('274', '139', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('275', '140', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('276', '141', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('277', '142', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('278', '143', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('279', '144', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('280', '145', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('281', '146', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('282', '147', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('283', '148', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('284', '149', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('285', '150', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('286', '151', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('287', '152', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('288', '153', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('289', '154', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('290', '155', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('291', '156', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('292', '157', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('293', '158', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('294', '159', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('295', '160', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('296', '161', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('297', '162', '13');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('298', '136', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('299', '137', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('300', '138', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('301', '139', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('302', '140', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('303', '141', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('304', '142', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('305', '143', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('306', '144', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('307', '145', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('308', '146', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('309', '147', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('310', '148', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('311', '149', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('312', '150', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('313', '151', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('314', '152', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('315', '153', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('316', '154', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('317', '155', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('318', '156', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('319', '157', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('320', '158', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('321', '159', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('322', '160', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('323', '161', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('324', '162', '14');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('325', '136', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('326', '137', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('327', '138', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('328', '139', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('329', '140', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('330', '141', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('331', '142', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('332', '143', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('333', '144', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('334', '145', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('335', '146', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('336', '147', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('337', '148', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('338', '149', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('339', '150', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('340', '151', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('341', '152', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('342', '153', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('343', '154', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('344', '155', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('345', '156', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('346', '157', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('347', '158', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('348', '159', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('349', '160', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('350', '161', '15');
INSERT INTO `collecttestpaper_testpaperquestion` VALUES ('351', '162', '15');

-- ----------------------------
-- Table structure for collecttestpaper_trueorfalse
-- ----------------------------
DROP TABLE IF EXISTS `collecttestpaper_trueorfalse`;
CREATE TABLE `collecttestpaper_trueorfalse` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `standard_answer` varchar(255) DEFAULT NULL,
  `question_id_id` bigint NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CollectTestpaper_tru_question_id_id_64499914_fk_CollectTe` (`question_id_id`),
  CONSTRAINT `CollectTestpaper_tru_question_id_id_64499914_fk_CollectTe` FOREIGN KEY (`question_id_id`) REFERENCES `collecttestpaper_question` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of collecttestpaper_trueorfalse
-- ----------------------------
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('71', 'T', '136', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('72', 'F', '137', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('73', 'T', '138', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('74', 'F', '139', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('75', 'T', '140', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('76', 'T', '141', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('77', 'T', '142', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('78', 'T', '143', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('79', 'T', '144', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('80', 'F', '145', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('81', 'F', '146', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('82', 'F', '147', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('83', 'T', '148', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('84', 'T', '149', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('85', 'T', '136', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('86', 'F', '137', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('87', 'T', '138', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('88', 'F', '139', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('89', 'T', '140', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('90', 'T', '141', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('91', 'T', '142', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('92', 'T', '143', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('93', 'T', '144', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('94', 'F', '145', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('95', 'F', '146', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('96', 'F', '147', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('97', 'T', '148', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('98', 'T', '149', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('99', 'T', '136', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('100', 'F', '137', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('101', 'T', '138', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('102', 'F', '139', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('103', 'T', '140', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('104', 'T', '141', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('105', 'T', '142', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('106', 'T', '143', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('107', 'T', '144', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('108', 'F', '145', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('109', 'F', '146', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('110', 'F', '147', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('111', 'T', '148', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('112', 'T', '149', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('113', 'T', '136', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('114', 'F', '137', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('115', 'T', '138', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('116', 'F', '139', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('117', 'T', '140', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('118', 'T', '141', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('119', 'T', '142', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('120', 'T', '143', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('121', 'T', '144', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('122', 'F', '145', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('123', 'F', '146', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('124', 'F', '147', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('125', 'T', '148', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('126', 'T', '149', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('127', 'T', '136', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('128', 'F', '137', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('129', 'T', '138', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('130', 'F', '139', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('131', 'T', '140', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('132', 'T', '141', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('133', 'T', '142', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('134', 'T', '143', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('135', 'T', '144', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('136', 'F', '145', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('137', 'F', '146', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('138', 'F', '147', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('139', 'T', '148', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('140', 'T', '149', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('141', 'T', '136', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('142', 'F', '137', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('143', 'T', '138', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('144', 'F', '139', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('145', 'T', '140', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('146', 'T', '141', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('147', 'T', '142', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('148', 'T', '143', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('149', 'T', '144', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('150', 'F', '145', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('151', 'F', '146', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('152', 'F', '147', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('153', 'T', '148', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('154', 'T', '149', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('155', 'T', '136', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('156', 'F', '137', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('157', 'T', '138', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('158', 'F', '139', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('159', 'T', '140', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('160', 'T', '141', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('161', 'T', '142', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('162', 'T', '143', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('163', 'T', '144', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('164', 'F', '145', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('165', 'F', '146', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('166', 'F', '147', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('167', 'T', '148', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('168', 'T', '149', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('169', 'T', '136', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('170', 'F', '137', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('171', 'T', '138', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('172', 'F', '139', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('173', 'T', '140', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('174', 'T', '141', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('175', 'T', '142', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('176', 'T', '143', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('177', 'T', '144', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('178', 'F', '145', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('179', 'F', '146', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('180', 'F', '147', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('181', 'T', '148', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('182', 'T', '149', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('183', 'T', '136', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('184', 'F', '137', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('185', 'T', '138', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('186', 'F', '139', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('187', 'T', '140', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('188', 'T', '141', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('189', 'T', '142', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('190', 'T', '143', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('191', 'T', '144', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('192', 'F', '145', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('193', 'F', '146', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('194', 'F', '147', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('195', 'T', '148', '1');
INSERT INTO `collecttestpaper_trueorfalse` VALUES ('196', 'T', '149', '1');

-- ----------------------------
-- Table structure for consumer_consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer_consumer`;
CREATE TABLE `consumer_consumer` (
  `consumer_id` bigint NOT NULL AUTO_INCREMENT,
  `consumer_account` varchar(40) DEFAULT NULL,
  `consumer_name` varchar(40) DEFAULT NULL,
  `consumer_password` varchar(40) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `number` varchar(12) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `security_question` varchar(255) DEFAULT NULL,
  `security_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`consumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of consumer_consumer
-- ----------------------------
INSERT INTO `consumer_consumer` VALUES ('1', 'user1', '拉拉', '123456', '王者一号', '女', '18647377201', '2000-08-12', '1348757279@qq.com', '你最喜欢吃的是什么', '黄瓜');
INSERT INTO `consumer_consumer` VALUES ('5', 'user3', 'admin2', '123456', 'dada', '男', '18647377201', '2022-10-05', '1348757279@qq.com', '你最喜欢吃的是什么', '茄子');
INSERT INTO `consumer_consumer` VALUES ('6', 'user4', 'dada', '123456', 'dawdfawf', '女', '13152924566', '2022-09-28', '446294034@qq.com', 'dawdawd', 'fawfawf');

-- ----------------------------
-- Table structure for consumer_consumer_answer_status
-- ----------------------------
DROP TABLE IF EXISTS `consumer_consumer_answer_status`;
CREATE TABLE `consumer_consumer_answer_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `consumer_id_id` bigint NOT NULL,
  `question_id_id` bigint NOT NULL,
  `testpaper_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Consumer_consumer_an_consumer_id_id_aa21687b_fk_Consumer_` (`consumer_id_id`),
  KEY `Consumer_consumer_an_question_id_id_b9a73973_fk_CollectTe` (`question_id_id`),
  KEY `Consumer_consumer_an_testpaper_id_id_1befb1ea_fk_CollectTe` (`testpaper_id_id`),
  CONSTRAINT `Consumer_consumer_an_consumer_id_id_aa21687b_fk_Consumer_` FOREIGN KEY (`consumer_id_id`) REFERENCES `consumer_consumer` (`consumer_id`),
  CONSTRAINT `Consumer_consumer_an_question_id_id_b9a73973_fk_CollectTe` FOREIGN KEY (`question_id_id`) REFERENCES `collecttestpaper_question` (`question_id`),
  CONSTRAINT `Consumer_consumer_an_testpaper_id_id_1befb1ea_fk_CollectTe` FOREIGN KEY (`testpaper_id_id`) REFERENCES `collecttestpaper_testpaper` (`testpaper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of consumer_consumer_answer_status
-- ----------------------------
INSERT INTO `consumer_consumer_answer_status` VALUES ('65', 'C', '1', '153', '10');
INSERT INTO `consumer_consumer_answer_status` VALUES ('66', 'C', '1', '154', '10');
INSERT INTO `consumer_consumer_answer_status` VALUES ('67', 'C', '1', '155', '10');

-- ----------------------------
-- Table structure for consumer_consumer_testpaper_first
-- ----------------------------
DROP TABLE IF EXISTS `consumer_consumer_testpaper_first`;
CREATE TABLE `consumer_consumer_testpaper_first` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `consumer_id` bigint NOT NULL,
  `testpaper_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Consumer_consumer_te_consumer_id_6f146bb9_fk_Consumer_` (`consumer_id`),
  KEY `Consumer_consumer_te_testpaper_id_f9236013_fk_CollectTe` (`testpaper_id`),
  CONSTRAINT `Consumer_consumer_te_consumer_id_6f146bb9_fk_Consumer_` FOREIGN KEY (`consumer_id`) REFERENCES `consumer_consumer` (`consumer_id`),
  CONSTRAINT `Consumer_consumer_te_testpaper_id_f9236013_fk_CollectTe` FOREIGN KEY (`testpaper_id`) REFERENCES `collecttestpaper_testpaper` (`testpaper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of consumer_consumer_testpaper_first
-- ----------------------------
INSERT INTO `consumer_consumer_testpaper_first` VALUES ('5', '1', '10');
INSERT INTO `consumer_consumer_testpaper_first` VALUES ('12', '1', '7');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2022-11-15 07:43:49.368742', '1', 'Testpaper object (1)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('2', '2022-11-15 07:44:06.550379', '10', 'Choice object (10)', '3', '', '9', '2');
INSERT INTO `django_admin_log` VALUES ('3', '2022-11-15 07:44:06.553373', '9', 'Choice object (9)', '3', '', '9', '2');
INSERT INTO `django_admin_log` VALUES ('4', '2022-11-15 07:44:06.554382', '8', 'Choice object (8)', '3', '', '9', '2');
INSERT INTO `django_admin_log` VALUES ('5', '2022-11-15 07:44:06.556387', '7', 'Choice object (7)', '3', '', '9', '2');
INSERT INTO `django_admin_log` VALUES ('6', '2022-11-15 07:44:06.558369', '6', 'Choice object (6)', '3', '', '9', '2');
INSERT INTO `django_admin_log` VALUES ('7', '2022-11-15 07:44:06.560390', '5', 'Choice object (5)', '3', '', '9', '2');
INSERT INTO `django_admin_log` VALUES ('8', '2022-11-15 07:44:06.562395', '4', 'Choice object (4)', '3', '', '9', '2');
INSERT INTO `django_admin_log` VALUES ('9', '2022-11-15 07:44:06.564408', '3', 'Choice object (3)', '3', '', '9', '2');
INSERT INTO `django_admin_log` VALUES ('10', '2022-11-15 07:44:06.566046', '2', 'Choice object (2)', '3', '', '9', '2');
INSERT INTO `django_admin_log` VALUES ('11', '2022-11-15 07:44:06.568048', '1', 'Choice object (1)', '3', '', '9', '2');
INSERT INTO `django_admin_log` VALUES ('12', '2022-11-15 07:44:13.124777', '27', 'Question object (27)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('13', '2022-11-15 07:44:13.127771', '26', 'Question object (26)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('14', '2022-11-15 07:44:13.130771', '25', 'Question object (25)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('15', '2022-11-15 07:44:13.132773', '24', 'Question object (24)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('16', '2022-11-15 07:44:13.134999', '23', 'Question object (23)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('17', '2022-11-15 07:44:13.136811', '22', 'Question object (22)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('18', '2022-11-15 07:44:13.138692', '21', 'Question object (21)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('19', '2022-11-15 07:44:13.140692', '20', 'Question object (20)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('20', '2022-11-15 07:44:13.142691', '19', 'Question object (19)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('21', '2022-11-15 07:44:13.144691', '18', 'Question object (18)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('22', '2022-11-15 07:44:13.146692', '17', 'Question object (17)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('23', '2022-11-15 07:44:13.148432', '16', 'Question object (16)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('24', '2022-11-15 07:44:13.150433', '15', 'Question object (15)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('25', '2022-11-15 07:44:13.151435', '14', 'Question object (14)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('26', '2022-11-15 07:44:13.153435', '13', 'Question object (13)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('27', '2022-11-15 07:44:13.155436', '12', 'Question object (12)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('28', '2022-11-15 07:44:13.157984', '11', 'Question object (11)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('29', '2022-11-15 07:44:13.159987', '10', 'Question object (10)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('30', '2022-11-15 07:44:13.161987', '9', 'Question object (9)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('31', '2022-11-15 07:44:13.163988', '8', 'Question object (8)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('32', '2022-11-15 07:44:13.165987', '7', 'Question object (7)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('33', '2022-11-15 07:44:13.167988', '6', 'Question object (6)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('34', '2022-11-15 07:44:13.169990', '5', 'Question object (5)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('35', '2022-11-15 07:44:13.171989', '4', 'Question object (4)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('36', '2022-11-15 07:44:13.173992', '3', 'Question object (3)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('37', '2022-11-15 07:44:13.175990', '2', 'Question object (2)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('38', '2022-11-15 07:44:13.177901', '1', 'Question object (1)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('39', '2022-11-15 08:31:25.668777', '2', 'Testpaper object (2)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('40', '2022-11-15 08:31:31.163776', '28', 'TrueOrFalse object (28)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('41', '2022-11-15 08:31:31.167778', '27', 'TrueOrFalse object (27)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('42', '2022-11-15 08:31:31.170387', '26', 'TrueOrFalse object (26)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('43', '2022-11-15 08:31:31.172388', '25', 'TrueOrFalse object (25)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('44', '2022-11-15 08:31:31.174397', '24', 'TrueOrFalse object (24)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('45', '2022-11-15 08:31:31.175788', '23', 'TrueOrFalse object (23)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('46', '2022-11-15 08:31:31.177789', '22', 'TrueOrFalse object (22)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('47', '2022-11-15 08:31:31.179977', '21', 'TrueOrFalse object (21)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('48', '2022-11-15 08:31:31.181982', '20', 'TrueOrFalse object (20)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('49', '2022-11-15 08:31:31.183983', '19', 'TrueOrFalse object (19)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('50', '2022-11-15 08:31:31.185970', '18', 'TrueOrFalse object (18)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('51', '2022-11-15 08:31:31.187970', '17', 'TrueOrFalse object (17)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('52', '2022-11-15 08:31:31.189971', '16', 'TrueOrFalse object (16)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('53', '2022-11-15 08:31:31.191971', '15', 'TrueOrFalse object (15)', '3', '', '10', '2');
INSERT INTO `django_admin_log` VALUES ('54', '2022-11-15 08:31:36.976598', '54', 'Question object (54)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('55', '2022-11-15 08:31:36.978654', '53', 'Question object (53)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('56', '2022-11-15 08:31:36.981403', '52', 'Question object (52)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('57', '2022-11-15 08:31:36.983396', '51', 'Question object (51)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('58', '2022-11-15 08:31:36.985383', '50', 'Question object (50)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('59', '2022-11-15 08:31:36.987539', '49', 'Question object (49)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('60', '2022-11-15 08:31:36.989342', '48', 'Question object (48)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('61', '2022-11-15 08:31:36.991343', '47', 'Question object (47)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('62', '2022-11-15 08:31:36.993343', '46', 'Question object (46)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('63', '2022-11-15 08:31:36.995342', '45', 'Question object (45)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('64', '2022-11-15 08:31:36.997344', '44', 'Question object (44)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('65', '2022-11-15 08:31:36.999344', '43', 'Question object (43)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('66', '2022-11-15 08:31:37.000345', '42', 'Question object (42)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('67', '2022-11-15 08:31:37.002922', '41', 'Question object (41)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('68', '2022-11-15 08:31:37.004925', '40', 'Question object (40)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('69', '2022-11-15 08:31:37.006926', '39', 'Question object (39)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('70', '2022-11-15 08:31:37.008884', '38', 'Question object (38)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('71', '2022-11-15 08:31:37.010714', '37', 'Question object (37)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('72', '2022-11-15 08:31:37.012716', '36', 'Question object (36)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('73', '2022-11-15 08:31:37.014717', '35', 'Question object (35)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('74', '2022-11-15 08:31:37.015716', '34', 'Question object (34)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('75', '2022-11-15 08:31:37.017718', '33', 'Question object (33)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('76', '2022-11-15 08:31:37.020718', '32', 'Question object (32)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('77', '2022-11-15 08:31:37.022719', '31', 'Question object (31)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('78', '2022-11-15 08:31:37.023835', '30', 'Question object (30)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('79', '2022-11-15 08:31:37.025723', '29', 'Question object (29)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('80', '2022-11-15 08:31:37.028182', '28', 'Question object (28)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('81', '2022-11-15 08:43:58.768994', '3', 'Testpaper object (3)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('82', '2022-11-15 08:44:05.602481', '81', 'Question object (81)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('83', '2022-11-15 08:44:05.606494', '80', 'Question object (80)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('84', '2022-11-15 08:44:05.608482', '79', 'Question object (79)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('85', '2022-11-15 08:44:05.610504', '78', 'Question object (78)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('86', '2022-11-15 08:44:05.612490', '77', 'Question object (77)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('87', '2022-11-15 08:44:05.614497', '76', 'Question object (76)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('88', '2022-11-15 08:44:05.616497', '75', 'Question object (75)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('89', '2022-11-15 08:44:05.618500', '74', 'Question object (74)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('90', '2022-11-15 08:44:05.620501', '73', 'Question object (73)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('91', '2022-11-15 08:44:05.622501', '72', 'Question object (72)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('92', '2022-11-15 08:44:05.624501', '71', 'Question object (71)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('93', '2022-11-15 08:44:05.626851', '70', 'Question object (70)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('94', '2022-11-15 08:44:05.628455', '69', 'Question object (69)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('95', '2022-11-15 08:44:05.629455', '68', 'Question object (68)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('96', '2022-11-15 08:44:05.631456', '67', 'Question object (67)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('97', '2022-11-15 08:44:05.633456', '66', 'Question object (66)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('98', '2022-11-15 08:44:05.635459', '65', 'Question object (65)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('99', '2022-11-15 08:44:05.637459', '64', 'Question object (64)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('100', '2022-11-15 08:44:05.639458', '63', 'Question object (63)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('101', '2022-11-15 08:44:05.640458', '62', 'Question object (62)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('102', '2022-11-15 08:44:05.643459', '61', 'Question object (61)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('103', '2022-11-15 08:44:05.645460', '60', 'Question object (60)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('104', '2022-11-15 08:44:05.647574', '59', 'Question object (59)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('105', '2022-11-15 08:44:05.649287', '58', 'Question object (58)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('106', '2022-11-15 08:44:05.650288', '57', 'Question object (57)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('107', '2022-11-15 08:44:05.652287', '56', 'Question object (56)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('108', '2022-11-15 08:44:05.654289', '55', 'Question object (55)', '3', '', '8', '2');
INSERT INTO `django_admin_log` VALUES ('109', '2022-11-15 09:48:23.120132', '1', 'admin', '2', '[{\"changed\": {\"fields\": [\"password\"]}}]', '4', '2');
INSERT INTO `django_admin_log` VALUES ('110', '2022-11-15 11:01:06.135599', '4', 'Testpaper object (4)', '3', '', '13', '1');
INSERT INTO `django_admin_log` VALUES ('111', '2022-11-15 11:01:14.669731', '108', 'Question object (108)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('112', '2022-11-15 11:01:14.672668', '107', 'Question object (107)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('113', '2022-11-15 11:01:14.674670', '106', 'Question object (106)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('114', '2022-11-15 11:01:14.677669', '105', 'Question object (105)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('115', '2022-11-15 11:01:14.679669', '104', 'Question object (104)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('116', '2022-11-15 11:01:14.681245', '103', 'Question object (103)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('117', '2022-11-15 11:01:14.683166', '102', 'Question object (102)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('118', '2022-11-15 11:01:14.685168', '101', 'Question object (101)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('119', '2022-11-15 11:01:14.686785', '100', 'Question object (100)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('120', '2022-11-15 11:01:14.689737', '99', 'Question object (99)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('121', '2022-11-15 11:01:14.692743', '98', 'Question object (98)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('122', '2022-11-15 11:01:14.694731', '97', 'Question object (97)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('123', '2022-11-15 11:01:14.696732', '96', 'Question object (96)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('124', '2022-11-15 11:01:14.697731', '95', 'Question object (95)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('125', '2022-11-15 11:01:14.699731', '94', 'Question object (94)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('126', '2022-11-15 11:01:14.701873', '93', 'Question object (93)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('127', '2022-11-15 11:01:14.702735', '92', 'Question object (92)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('128', '2022-11-15 11:01:14.704746', '91', 'Question object (91)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('129', '2022-11-15 11:01:14.706741', '90', 'Question object (90)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('130', '2022-11-15 11:01:14.708739', '89', 'Question object (89)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('131', '2022-11-15 11:01:14.710736', '88', 'Question object (88)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('132', '2022-11-15 11:01:14.712368', '87', 'Question object (87)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('133', '2022-11-15 11:01:14.713714', '86', 'Question object (86)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('134', '2022-11-15 11:01:14.715716', '85', 'Question object (85)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('135', '2022-11-15 11:01:14.716716', '84', 'Question object (84)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('136', '2022-11-15 11:01:14.718717', '83', 'Question object (83)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('137', '2022-11-15 11:01:14.720717', '82', 'Question object (82)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('138', '2022-11-15 11:03:50.784787', '5', 'Testpaper object (5)', '3', '', '13', '1');
INSERT INTO `django_admin_log` VALUES ('139', '2022-11-15 11:03:59.950064', '6', 'Testpaper object (6)', '3', '', '13', '1');
INSERT INTO `django_admin_log` VALUES ('140', '2022-11-15 11:04:17.436572', '135', 'Question object (135)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('141', '2022-11-15 11:04:17.440593', '134', 'Question object (134)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('142', '2022-11-15 11:04:17.443588', '133', 'Question object (133)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('143', '2022-11-15 11:04:17.444582', '132', 'Question object (132)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('144', '2022-11-15 11:04:17.446830', '131', 'Question object (131)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('145', '2022-11-15 11:04:17.448793', '130', 'Question object (130)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('146', '2022-11-15 11:04:17.450793', '129', 'Question object (129)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('147', '2022-11-15 11:04:17.452794', '128', 'Question object (128)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('148', '2022-11-15 11:04:17.454997', '127', 'Question object (127)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('149', '2022-11-15 11:04:17.456764', '126', 'Question object (126)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('150', '2022-11-15 11:04:17.458766', '125', 'Question object (125)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('151', '2022-11-15 11:04:17.460767', '124', 'Question object (124)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('152', '2022-11-15 11:04:17.461769', '123', 'Question object (123)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('153', '2022-11-15 11:04:17.463767', '122', 'Question object (122)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('154', '2022-11-15 11:04:17.465768', '121', 'Question object (121)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('155', '2022-11-15 11:04:17.467817', '120', 'Question object (120)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('156', '2022-11-15 11:04:17.469689', '119', 'Question object (119)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('157', '2022-11-15 11:04:17.470689', '118', 'Question object (118)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('158', '2022-11-15 11:04:17.472689', '117', 'Question object (117)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('159', '2022-11-15 11:04:17.473690', '116', 'Question object (116)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('160', '2022-11-15 11:04:17.475690', '115', 'Question object (115)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('161', '2022-11-15 11:04:17.477604', '114', 'Question object (114)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('162', '2022-11-15 11:04:17.479153', '113', 'Question object (113)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('163', '2022-11-15 11:04:17.480153', '112', 'Question object (112)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('164', '2022-11-15 11:04:17.482154', '111', 'Question object (111)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('165', '2022-11-15 11:04:17.483154', '110', 'Question object (110)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('166', '2022-11-15 11:04:17.485154', '109', 'Question object (109)', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('167', '2022-11-15 11:08:20.989273', '8', 'Testpaper object (8)', '3', '', '13', '1');
INSERT INTO `django_admin_log` VALUES ('168', '2022-11-17 08:30:06.214185', '16', 'Testpaper object (16)', '3', '', '13', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('9', 'CollectTestpaper', 'choice');
INSERT INTO `django_content_type` VALUES ('12', 'CollectTestpaper', 'gapfill');
INSERT INTO `django_content_type` VALUES ('8', 'CollectTestpaper', 'question');
INSERT INTO `django_content_type` VALUES ('13', 'CollectTestpaper', 'testpaper');
INSERT INTO `django_content_type` VALUES ('11', 'CollectTestpaper', 'testpaperquestion');
INSERT INTO `django_content_type` VALUES ('10', 'CollectTestpaper', 'trueorfalse');
INSERT INTO `django_content_type` VALUES ('7', 'Consumer', 'consumer');
INSERT INTO `django_content_type` VALUES ('15', 'Consumer', 'consumer_answer_status');
INSERT INTO `django_content_type` VALUES ('14', 'Consumer', 'consumer_testpaper_first');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'Consumer', '0001_initial', '2022-09-26 13:58:52.747641');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0001_initial', '2022-09-26 13:58:52.790236');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2022-09-26 13:58:53.225679');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0001_initial', '2022-09-26 13:58:53.387510');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0002_logentry_remove_auto_add', '2022-09-26 13:58:53.397513');
INSERT INTO `django_migrations` VALUES ('6', 'admin', '0003_logentry_add_action_flag_choices', '2022-09-26 13:58:53.405517');
INSERT INTO `django_migrations` VALUES ('7', 'contenttypes', '0002_remove_content_type_name', '2022-09-26 13:58:53.490388');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0002_alter_permission_name_max_length', '2022-09-26 13:58:53.557268');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0003_alter_user_email_max_length', '2022-09-26 13:58:53.583277');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0004_alter_user_username_opts', '2022-09-26 13:58:53.592276');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0005_alter_user_last_login_null', '2022-09-26 13:58:53.646290');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0006_require_contenttypes_0002', '2022-09-26 13:58:53.651294');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0007_alter_validators_add_error_messages', '2022-09-26 13:58:53.660302');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0008_alter_user_username_max_length', '2022-09-26 13:58:53.717308');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0009_alter_user_last_name_max_length', '2022-09-26 13:58:53.772319');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0010_alter_group_name_max_length', '2022-09-26 13:58:53.794324');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0011_update_proxy_permissions', '2022-09-26 13:58:53.806330');
INSERT INTO `django_migrations` VALUES ('18', 'auth', '0012_alter_user_first_name_max_length', '2022-09-26 13:58:53.861016');
INSERT INTO `django_migrations` VALUES ('19', 'sessions', '0001_initial', '2022-09-26 13:58:53.894994');
INSERT INTO `django_migrations` VALUES ('20', 'CollectTestpaper', '0001_initial', '2022-11-04 12:50:15.847605');
INSERT INTO `django_migrations` VALUES ('21', 'CollectTestpaper', '0002_choice_score_gapfill_score_testpaper_apply_time_and_more', '2022-11-15 07:40:23.605622');
INSERT INTO `django_migrations` VALUES ('22', 'CollectTestpaper', '0003_alter_testpaper_hard', '2022-11-15 08:05:49.798824');
INSERT INTO `django_migrations` VALUES ('23', 'Consumer', '0002_consumer_testpaper_first', '2022-11-15 17:05:08.815698');
INSERT INTO `django_migrations` VALUES ('24', 'Consumer', '0003_consumer_answer_status', '2022-11-16 15:16:41.590688');
INSERT INTO `django_migrations` VALUES ('25', 'Consumer', '0004_alter_consumer_options_alter_consumer_birthday_and_more', '2022-11-17 03:49:38.459319');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('e6ba3rvwllnhluj5gtrchsil3ms7xec1', '.eJxVTLtuwyAU_RfmyOL9yNglU_sFlhBcrmPaxFYNDFWUfy9IWbIcnfeD3HKp_l6u5PwgBaEduf7534al5n0jZzI3uWg6N21oR6UcdB4571xSMTejreyO5ktvItCB0pLnibSCx1e44wVr_xmKkRPxodXVD-Vz6j5_92KAH9xGkL7Ddt0n2Ld65DiNyvRKy_S5J7x9vLpvB2soa18bcIhqkZFHqZUVUTKURkAMilkK3BnDtFApgQ6cgXNycagx2gAgqBDk-Q-MS1wv:1omVS3:mE7NrTc8hmj-PNtjXzZxhx8tgH9VcGwylF3Wrii67Z4', '2022-11-06 07:31:19.326303');
INSERT INTO `django_session` VALUES ('f99mt0j7w2paaehmyrimg7u2403kxecl', '.eJwdijsKgDAQBe-ytUWMSfxcwM4TBETDKgE_6GYLEe_uajPMe8wNTHh2w4otJmj-lUMGS6TUrzRDcwNh4DOmqz8YKcV9k86zmZzy7EoltLYO4qPW4kYVnktXGXmcnqTEoD6aCp7nBZR9JSI:1ogjVM:HR-cME-WJXYglI6SQzZ6fqa8_4eg1C8IHi65MMPz5cE', '2022-10-21 09:18:52.303232');
INSERT INTO `django_session` VALUES ('q16je4xt2tqjbv31wpc9gxilwnxh0k0q', '.eJwdijsKgDAQBe-ytUWMSfxcwM4TBETDKgE_6GYLEe_uajPMe8wNTHh2w4otJmj-lUMGS6TUrzRDcwNh4DOmqz8YKcV9k86zmZzy7EoltLYO4qPW4kYVnktXGXmcnqTEoD6aCp7nBZR9JSI:1oqGnO:1XGLO9Lxhfqu5qYO0AVebJ9yty8fLsmvZSO6BPvCuFs', '2022-11-16 16:40:54.776421');
INSERT INTO `django_session` VALUES ('st8tdawbhksebleh5ddggv3fynh5fqzp', '.eJxVTrtuwzAQ-xfNhaG31IxdMrVfYEA4yadYbWKjljQUQf69JyBDuxA8kkfwzgL0toZe8QhlYScm2MtfLUL6wm0Yyydsl31K-9aOEqcRmZ5und73Ba9vz-y_ghXqSt85RgE-Cq4tQOJeoOYqCxDoM1GhFietSkYrlMabxB1w4MmpDMpwaal01H3ADc_YqHBcY-u11BZu9cJOd1Yx9aO0n_Ddsbayb5Sbu86Wz906TmjMayIepSROC-burNekWJkpiYkP1J49Hr9iwFvE:1ova5y:_qo1rRHVUuLxQBmOqak7OngxtdX8NNFi_i5RvVY3q0Q', '2022-12-01 08:18:02.312397');
INSERT INTO `django_session` VALUES ('tf8ihgh2i6qc93y0gcdbypbwqea4839i', '.eJxVjDsOwjAQBe_iGlnx36ak5wzW7nqDA8iR4qRC3B0ipYD2zcx7iQzbWvPWeclTEWehxel3Q6AHtx2UO7TbLGlu6zKh3BV50C6vc-Hn5XD_Dir0-q0DJWY3WtRovYsGrWIbDCE4FQfSKQTljSuFPGhFKdkxsWeMQGQGY8T7A-KEN9o:1oqHTe:yTamCFALffcFzsRY71-9klcnp12fU7gYDWuxP5oDX0k', '2022-11-16 17:24:34.814821');
INSERT INTO `django_session` VALUES ('xrrq2eb8f1lewi96foj3uwz081r7l1vy', '.eJxVjr1uAyEQhN-F2jqx_B24TOMqeYKTED-Lj8S-Uw4oIsvvHpBcJM1qdmb07T6Ida2uthU8bI7kTICc_nrehS_cRhA_3Xbdp7Bv9ch-GpXplZbpfY94e3t1_wFWV9aBZZyDCx75DA6ST1opxhlCEI6bpCUT3Y6Kcq-VNiANCGWARxkcT1F06C2Xau_lSs4PUjC0I9cf-92w1Lxv_cTSRFJ0aWqmfUppQteesa4F5UublRbdUSz1JgY6ptDkeSLj0Q93xwvWzhkbkOcvJfVbiw:1ofeGN:IZK8C1LjMQlAHze09iTIlGuJCV2nowReJoU7p1r1TFk', '2022-10-18 09:30:55.710661');
