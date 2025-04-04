/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 90000 (9.0.0)
 Source Host           : localhost:3306
 Source Schema         : campus

 Target Server Type    : MySQL
 Target Server Version : 90000 (9.0.0)
 File Encoding         : 65001

 Date: 06/01/2025 11:29:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `portrait_path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES (101, 'admin', '女', '21232f297a57a5a743894a0e4a801fc3', '111111@qq.com', '13866666666', 'aaa', 'upload/07ed4cdc452d4f1abb07a50d648ac0d5.jpg');
INSERT INTO `tb_admin` VALUES (102, 'admin1', '男', '21232f297a57a5a743894a0e4a801fc3', '333333@qq.com', '13866666666', '北京', 'upload/default.jpg');
INSERT INTO `tb_admin` VALUES (103, 'admin2', '男', '21232f297a57a5a743894a0e4a801fc3', '333333@qq.com', '13866666666', '北京', 'upload/default.jpg');
INSERT INTO `tb_admin` VALUES (104, 'admin3', '男', '21232f297a57a5a743894a0e4a801fc3', '333333@qq.com', '13866666666', 'aaa', 'upload/default.jpg');

-- ----------------------------
-- Table structure for tb_clazz
-- ----------------------------
DROP TABLE IF EXISTS `tb_clazz`;
CREATE TABLE `tb_clazz`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名',
  `number` int NULL DEFAULT NULL COMMENT '可报名人数',
  `introducation` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程简介',
  `headmaster` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '讲师',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '讲师邮箱',
  `telephone` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '讲师手机号',
  `grade_name` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '讲师所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_clazz
-- ----------------------------
INSERT INTO `tb_clazz` VALUES (1, '数据结构', 30, '数据结构', '大圣', 'dasheng@163.com', '13866666666', '1部门');
INSERT INTO `tb_clazz` VALUES (2, '计算机网络', 28, '计算机网络', '小张', 'xiaozhang@163.com', '13866666666', '技术部');
INSERT INTO `tb_clazz` VALUES (3, '软件工程导论', 35, '软件工程导论', '小韩', 'xiaohan@163.com', '13866666666', '培训部');
INSERT INTO `tb_clazz` VALUES (4, '人工智能导论', 30, '人工智能导论', '小强', 'xiaoqiang@163.com', '13866666666', '管理部');
INSERT INTO `tb_clazz` VALUES (5, '带你听懂传统音乐', 30, '带你听懂传统音乐', '小花', 'xiaohua@163.com', '13866666666', '财务部');
INSERT INTO `tb_clazz` VALUES (6, '面向对象', 30, '面向对象', '小赵', 'xiaozhao@163.com', '13866666666', '培训部');
INSERT INTO `tb_clazz` VALUES (7, '算法设计', 30, '算法设计', '小飞', 'xiaofei@163.com', '13866666666', '管理部');

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coursename` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `teacher` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `begintime` datetime NULL DEFAULT NULL,
  `place` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `endtime` datetime NULL DEFAULT NULL,
  `intro` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `numofapplications` int NULL DEFAULT NULL,
  `numofregistered` int NULL DEFAULT NULL,
  `status` enum('未开始','进行中','已完成') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '未开始',
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `check_apply` CHECK (`numofregistered` <= `numofapplications`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_course
-- ----------------------------
INSERT INTO `tb_course` VALUES (1, '数据结构', '小王', '2025-01-01 10:45:30', 'a楼', '2025-01-18 10:45:38', '无', 200, 20, '进行中');
INSERT INTO `tb_course` VALUES (2, '计算机网络', '张三', '2025-01-11 10:46:12', 'b楼', '2025-01-31 10:46:25', NULL, 300, 0, '未开始');

-- ----------------------------
-- Table structure for tb_grade
-- ----------------------------
DROP TABLE IF EXISTS `tb_grade`;
CREATE TABLE `tb_grade`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '部门名',
  `manager` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工名',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `introducation` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工介绍',
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_grade
-- ----------------------------
INSERT INTO `tb_grade` VALUES (1, '1部门', '张三', 'dasheng@163.com', '13866666666', '1部门');
INSERT INTO `tb_grade` VALUES (2, '技术部', '李四', 'xiaowei@163.com', '13866666666', '技术部');
INSERT INTO `tb_grade` VALUES (3, '培训部', '王五', 'xiaoli@163.com', '13666666666', '培训部');
INSERT INTO `tb_grade` VALUES (4, '管理部', '老刘', 'li@123.com', '13666666666', '管理部');
INSERT INTO `tb_grade` VALUES (5, '财务部', 'aa', 'xiaoming@666.com', '13666666666', '财务部');
INSERT INTO `tb_grade` VALUES (11, '财务部', 'bb', 'xiaozhang@163.com', '13866666666', '财务部');
INSERT INTO `tb_grade` VALUES (12, '财务部', 'cc', '1@qq.com', '15435678910', 'wwwwwwwwhgggg');
INSERT INTO `tb_grade` VALUES (13, '技术部', 'dd', 'xiaohan@163.com', '13866666666', '技术部');

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tno` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '报名信息号',
  `name` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `gender` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工性别',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工密码',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `telephone` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `portrait_path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工头像',
  `clazz_name` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工所报课程名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES (1, '101', '张三', '女', 'e10adc3949ba59abbe56e057f20f883e', 'dasheng@163.com', '13866666666', '北京昌平', 'upload/default.jpg', '数据结构');
INSERT INTO `tb_teacher` VALUES (2, '102', '李四', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaozhang@163.com', '13866666666', '北京海淀', 'upload/default.jpg', '计算机网络');
INSERT INTO `tb_teacher` VALUES (3, '103', '王五', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaohan@163.com', '13866666666', '北京朝阳', 'upload/default.jpg', '软件工程导论');
INSERT INTO `tb_teacher` VALUES (4, '104', '老刘', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaoqiang@163.com', '13866666666', '北京通州', 'upload/default.jpg', '人工智能导论');
INSERT INTO `tb_teacher` VALUES (5, '105', 'aa', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaohua@163.com', '13866666666', '北京顺义', 'upload/default.jpg', '带你听懂传统音乐');
INSERT INTO `tb_teacher` VALUES (6, '106', 'bb', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaozhao@163.com', '13866666666', '北京东城', 'upload/default.jpg', '面向对象');
INSERT INTO `tb_teacher` VALUES (7, '107', 'cc', '男', 'e10adc3949ba59abbe56e057f20f883e', 'xiaofei@163.com', '13866666666', '北京西城', 'upload/default.jpg', '算法设计');
INSERT INTO `tb_teacher` VALUES (8, '108', 'dd', '男', 'e10adc3949ba59abbe56e057f20f883e', '123456@123.com', '13855555555', '海淀', 'upload/1434bc023098443888ecb92335b42f6e.jpg', '计算机网络');

-- ----------------------------
-- Triggers structure for table tb_course
-- ----------------------------
DROP TRIGGER IF EXISTS `check_status_before_insert`;
delimiter ;;
CREATE TRIGGER `check_status_before_insert` BEFORE INSERT ON `tb_course` FOR EACH ROW BEGIN
    IF NEW.status = '未开始' AND NEW.begintime <= CURRENT_TIMESTAMP() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '状态为“未开始”时，开始时间必须大于当前时间';
    END IF;

    IF NEW.status = '进行中' AND (NEW.begintime > CURRENT_TIMESTAMP() OR NEW.endtime < CURRENT_TIMESTAMP()) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '状态为“进行中”时，开始时间必须小于等于当前时间，结束时间必须大于等于当前时间';
    END IF;

    IF NEW.status = '已结束' AND NEW.endtime >= CURRENT_TIMESTAMP() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '状态为“已结束”时，结束时间必须小于当前时间';
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tb_course
-- ----------------------------
DROP TRIGGER IF EXISTS `check_status_before`;
delimiter ;;
CREATE TRIGGER `check_status_before` BEFORE UPDATE ON `tb_course` FOR EACH ROW BEGIN
	IF NEW.begintime >= CURRENT_TIMESTAMP() THEN
		SET NEW.status='未开始';
END IF;

	IF NEW.begintime < CURRENT_TIMESTAMP() AND NEW. endtime > CURRENT_TIMESTAMP() THEN
		SET NEW.status='进行中';
END IF;

	IF NEW.endtime <= CURRENT_TIMESTAMP() THEN
		SET NEW.status='已结束';
END IF;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
