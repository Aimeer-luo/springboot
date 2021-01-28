/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : tice

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 28/01/2021 10:34:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (3, 'sys_job', '定时任务调度表', 'Job', 'crud', 'com.ruoyi.project.system', 'system', 'job', '定时任务调度', 'ruoyi', NULL, 'admin', '2019-11-13 16:48:42', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (12, 'sys_student', '学生基本信息表', 'Student', 'crud', 'com.ruoyi.project.system', 'system', 'student', '学生基本信息', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-11-15 18:09:19', '', '2019-11-15 18:09:54', '');
INSERT INTO `gen_table` VALUES (16, 'sys_ks', '学生体测信息表', 'Ks', 'crud', 'com.ruoyi.project.system', 'system', 'ks', '学生体测信息', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-11-17 23:34:14', '', '2019-11-20 16:54:24', '');
INSERT INTO `gen_table` VALUES (20, 'sys_chengji', '学生成绩信息表', 'Chengji', 'crud', 'com.ruoyi.project.system', 'system', 'chengji', '学生成绩信息', 'ruoyi', NULL, 'admin', '2019-12-03 17:07:33', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (21, 'sys_zt', '成绩统计及正态分布信息', 'Zt', 'crud', 'com.ruoyi.project.system', 'system', 'zt', '成绩统计及正态分布信息', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-04 17:32:39', '', '2019-12-04 17:32:50', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (17, '3', 'job_id', '任务ID', 'bigint(20)', 'Long', 'jobId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (18, '3', 'job_name', '任务名称', 'varchar(64)', 'String', 'jobName', '1', '0', NULL, '1', NULL, NULL, NULL, 'LIKE', 'input', '', 2, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (19, '3', 'job_group', '任务组名', 'varchar(64)', 'String', 'jobGroup', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 3, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (20, '3', 'invoke_target', '调用目标字符串', 'varchar(500)', 'String', 'invokeTarget', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (21, '3', 'cron_expression', 'cron执行表达式', 'varchar(255)', 'String', 'cronExpression', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (22, '3', 'misfire_policy', '计划执行错误策略（1立即执行 2执行一次 3放弃执行）', 'varchar(20)', 'String', 'misfirePolicy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (23, '3', 'concurrent', '是否并发执行（0允许 1禁止）', 'char(1)', 'String', 'concurrent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (24, '3', 'status', '状态（0正常 1暂停）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (25, '3', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (26, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (27, '3', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (28, '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, '3', 'remark', '备注信息', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 13, 'admin', '2019-11-13 16:48:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (81, '12', 'student_id', '编号', 'int(11)', 'Long', 'studentId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-11-15 18:09:19', NULL, '2019-11-15 18:09:54');
INSERT INTO `gen_table_column` VALUES (82, '12', 'student_stuid', '学号', 'varchar(12)', 'String', 'studentStuid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-11-15 18:09:19', NULL, '2019-11-15 18:09:54');
INSERT INTO `gen_table_column` VALUES (83, '12', 'student_name', '学生名称', 'varchar(30)', 'String', 'studentName', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-11-15 18:09:19', NULL, '2019-11-15 18:09:54');
INSERT INTO `gen_table_column` VALUES (84, '12', 'student_idcard', '身份证', 'varchar(18)', 'String', 'studentIdcard', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-11-15 18:09:19', NULL, '2019-11-15 18:09:54');
INSERT INTO `gen_table_column` VALUES (85, '12', 'student_birthday', '生日', 'datetime', 'Date', 'studentBirthday', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2019-11-15 18:09:19', NULL, '2019-11-15 18:09:54');
INSERT INTO `gen_table_column` VALUES (86, '12', 'student_card', '照片', 'varchar(3000)', 'String', 'studentCard', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-11-15 18:09:19', NULL, '2019-11-15 18:09:54');
INSERT INTO `gen_table_column` VALUES (87, '12', 'student_home', '籍贯', 'varchar(30)', 'String', 'studentHome', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2019-11-15 18:09:19', NULL, '2019-11-15 18:09:54');
INSERT INTO `gen_table_column` VALUES (112, '16', 'ks_id', '编号', 'int(11)', 'Long', 'ksId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-11-17 23:34:14', NULL, '2019-11-20 16:54:24');
INSERT INTO `gen_table_column` VALUES (113, '16', 'ks_pic', '考试截图', 'varchar(2000)', 'String', 'ksPic', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 2, 'admin', '2019-11-17 23:34:14', NULL, '2019-11-20 16:54:24');
INSERT INTO `gen_table_column` VALUES (114, '16', 'ks_username', '姓名', 'varchar(255)', 'String', 'ksUsername', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2019-11-17 23:34:14', NULL, '2019-11-20 16:54:24');
INSERT INTO `gen_table_column` VALUES (115, '16', 'ks_lc', '里程', 'varchar(255)', 'String', 'ksLc', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-11-17 23:34:14', NULL, '2019-11-20 16:54:24');
INSERT INTO `gen_table_column` VALUES (116, '16', 'ks_hs', '耗时', 'varchar(255)', 'String', 'ksHs', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-11-17 23:34:14', NULL, '2019-11-20 16:54:24');
INSERT INTO `gen_table_column` VALUES (117, '16', 'ks_time', '考试日期', 'datetime', 'Date', 'ksTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2019-11-17 23:34:14', NULL, '2019-11-20 16:54:24');
INSERT INTO `gen_table_column` VALUES (118, '16', 'ks_start', '开始时间', 'varchar(255)', 'String', 'ksStart', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2019-11-17 23:34:14', NULL, '2019-11-20 16:54:24');
INSERT INTO `gen_table_column` VALUES (119, '16', 'ks_end', '耗时', 'varchar(255)', 'String', 'ksEnd', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2019-11-17 23:34:14', NULL, '2019-11-20 16:54:24');
INSERT INTO `gen_table_column` VALUES (142, '20', 'chengji_id', '编号', 'int(11)', 'Long', 'chengjiId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-03 17:07:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (143, '20', 'ks_username', '姓名', 'varchar(255)', 'String', 'ksUsername', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2019-12-03 17:07:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (144, '20', 'ks_lc', '里程', 'varchar(255)', 'String', 'ksLc', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-03 17:07:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (145, '20', 'ks_hs', '耗时', 'varchar(255)', 'String', 'ksHs', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-03 17:07:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (146, '20', 'ks_time', '考试时间', 'datetime', 'Date', 'ksTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2019-12-03 17:07:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (147, '20', 'chengji_mark', '分数', 'varchar(255)', 'String', 'chengjiMark', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-12-03 17:07:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (148, '20', 'chengji_js', '评分教师', 'varchar(255)', 'String', 'chengjiJs', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2019-12-03 17:07:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (149, '20', 'chengji_status', '状态（0待审核 1通过）', 'char(1)', 'String', 'chengjiStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2019-12-03 17:07:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (150, '21', 'zt_id', '编号', 'int(11)', 'Long', 'ztId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-04 17:32:39', NULL, '2019-12-04 17:32:50');
INSERT INTO `gen_table_column` VALUES (151, '21', 'ks_username', '姓名', 'varchar(30)', 'String', 'ksUsername', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2019-12-04 17:32:39', NULL, '2019-12-04 17:32:50');
INSERT INTO `gen_table_column` VALUES (152, '21', 'chengji_mark', '全期评分', 'varchar(2500)', 'String', 'chengjiMark', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2019-12-04 17:32:39', NULL, '2019-12-04 17:32:50');
INSERT INTO `gen_table_column` VALUES (153, '21', 'zt_pinglv', '频率', 'varchar(100)', 'String', 'ztPinglv', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-04 17:32:39', NULL, '2019-12-04 17:32:50');
INSERT INTO `gen_table_column` VALUES (154, '21', 'zt_mean', '平均分', 'varchar(100)', 'String', 'ztMean', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-12-04 17:32:39', NULL, '2019-12-04 17:32:50');
INSERT INTO `gen_table_column` VALUES (155, '21', 'zt_min', '最低分数', 'varchar(100)', 'String', 'ztMin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-12-04 17:32:39', NULL, '2019-12-04 17:32:50');
INSERT INTO `gen_table_column` VALUES (156, '21', 'zt_max', '最高分数', 'varchar(100)', 'String', 'ztMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2019-12-04 17:32:39', NULL, '2019-12-04 17:32:50');
INSERT INTO `gen_table_column` VALUES (157, '21', 'zt_sdv', '标准偏差', 'varchar(100)', 'String', 'ztSdv', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2019-12-04 17:32:39', NULL, '2019-12-04 17:32:50');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'WIN-20200915TYG1611796055787', 1611796058347, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1611796060000, -1, 5, 'PAUSED', 'CRON', 1611796055000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1611796065000, -1, 5, 'PAUSED', 'CRON', 1611796056000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1611796060000, -1, 5, 'PAUSED', 'CRON', 1611796056000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_chengji
-- ----------------------------
DROP TABLE IF EXISTS `sys_chengji`;
CREATE TABLE `sys_chengji`  (
  `chengji_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ks_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '姓名',
  `ks_lc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '里程',
  `ks_hs` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '耗时',
  `ks_time` datetime(0) NULL DEFAULT NULL COMMENT '考试时间',
  `chengji_mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '分数',
  `chengji_js` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '评分教师',
  `chengji_status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0待审核 1通过）',
  PRIMARY KEY (`chengji_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '学生成绩信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_chengji
-- ----------------------------
INSERT INTO `sys_chengji` VALUES (2, 'wzxy', '0米', '00:10', NULL, '71', '', '0');
INSERT INTO `sys_chengji` VALUES (3, 'wzxy', '0米', '00:10', '2019-12-19 14:10:25', '88.6', '', '0');
INSERT INTO `sys_chengji` VALUES (4, '666', '1256米', '00：50', '2019-12-20 15:14:30', '77.6', '', '0');
INSERT INTO `sys_chengji` VALUES (5, 'wzxy', '0米', '00:10', '2019-12-26 16:03:18', '66.7', '', '0');
INSERT INTO `sys_chengji` VALUES (6, 'wzxy', '0米', '00:10', NULL, '88.7', '', '0');
INSERT INTO `sys_chengji` VALUES (7, 'wzxy', '19', '00：50', '2020-09-08 00:00:00', '71', '问问', '1');
INSERT INTO `sys_chengji` VALUES (8, 'wzxyw', '19', '00：50', '2020-09-02 00:00:00', '71', '事务所', '1');
INSERT INTO `sys_chengji` VALUES (9, 'wzxy', '19', '00：50', '2020-09-17 00:00:00', '71', '晚上', '1');
INSERT INTO `sys_chengji` VALUES (10, 'wzxy', '19', '00：50', '2020-10-02 00:00:00', '71', '事务所', '1');
INSERT INTO `sys_chengji` VALUES (11, 'wzxy', '19', '00：50', '2020-09-25 00:00:00', '71', '晚上', '0');
INSERT INTO `sys_chengji` VALUES (12, 'wzxy', '19', '0999', '2020-09-09 00:00:00', '71', '', '0');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '梧州学院', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-12 19:43:35');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '大数据与软件工程', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-12 19:43:01');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '电子信息工程学院', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-12 19:43:35');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '16软件1、2班', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-12 19:42:49');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '16软件3、4班', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-12 19:43:01');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '电子信息工程1、2班', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-12 19:43:35');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_file_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_info`;
CREATE TABLE `sys_file_info`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `file_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '文件名称',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '文件路径',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file_info
-- ----------------------------
INSERT INTO `sys_file_info` VALUES (1, '22', '');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_ks
-- ----------------------------
DROP TABLE IF EXISTS `sys_ks`;
CREATE TABLE `sys_ks`  (
  `ks_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ks_pic` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '考试截图',
  `ks_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '姓名',
  `ks_lc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '里程',
  `ks_hs` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '耗时',
  `ks_time` datetime(0) NULL DEFAULT NULL COMMENT '考试日期',
  `ks_start` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '开始时间',
  `ks_end` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '耗时',
  PRIMARY KEY (`ks_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '学生体测信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_ks
-- ----------------------------
INSERT INTO `sys_ks` VALUES (3, 'screenshot4.png', 'wzxy', '0米', '00:10', '2019-11-24 21:09:44', '2019-11-24 21:09:36', '2019-11-24 21:09:46');
INSERT INTO `sys_ks` VALUES (4, '/profile/upload/2019/12/04/694b9fefabb44d1c5ebde4c1bed37c1c.docx', '666', '1256米', '00：50', '2019-12-04 16:49:23', '2019-12-20', '2019-12-20');
INSERT INTO `sys_ks` VALUES (5, 'screenshot5.png', '罗', '0米', '1:10:47', '2019-12-12 21:20:19', '2019-12-12 20:09:30', '2019-12-12 21:20:16');
INSERT INTO `sys_ks` VALUES (6, 'screenshot6.png', '罗', '0米', '00:17', '2019-12-12 21:24:11', '2019-12-12 21:23:50', '2019-12-12 21:24:08');
INSERT INTO `sys_ks` VALUES (7, 'screenshot7.png', '潘筹强', '12.0米', '00:39', '2020-01-02 11:46:00', '2020-01-02 11:45:21', '2020-01-02 11:46:00');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 312 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 17:18:37');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 17:32:57');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-12 17:39:24');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 17:39:27');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-12 18:37:02');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 18:37:05');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 18:44:43');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-12 18:47:10');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 18:47:12');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 18:52:55');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 18:57:36');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 19:00:01');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-12 19:04:22');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-12 19:04:27');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 19:04:32');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 19:37:14');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 20:40:13');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 21:02:14');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 22:30:05');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 23:45:29');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-12 23:51:52');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 11:26:31');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 12:03:18');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 12:33:46');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-13 14:25:41');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 14:25:45');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 15:18:02');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 15:34:46');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 15:44:26');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 15:49:40');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 16:07:49');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 16:26:48');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 16:36:43');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 16:59:06');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-13 17:59:09');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 17:59:12');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 18:26:11');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-13 18:34:35');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-13 18:34:38');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-13 18:34:42');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 18:34:45');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 18:44:31');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 19:08:21');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 19:19:42');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-13 19:40:27');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 19:40:30');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-13 21:35:53');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 21:35:56');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-13 21:54:13');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-13 21:54:16');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 21:54:24');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 22:06:34');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 22:41:37');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-13 22:44:10');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 22:44:12');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 22:46:33');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-13 23:20:03');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-14 14:53:57');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-14 17:37:15');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-14 18:20:30');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-14 18:32:23');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-14 18:34:24');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-15 15:24:56');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 15:24:59');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 15:34:45');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 15:44:27');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 15:49:06');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-15 16:05:28');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 16:05:30');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 16:06:44');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 16:19:26');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 16:39:57');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 17:15:58');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 17:19:35');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 17:28:25');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 17:43:53');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-15 17:50:08');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 17:50:12');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 17:55:31');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-15 18:01:04');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 18:01:07');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-15 18:08:06');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 18:08:09');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 18:21:10');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 18:51:31');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 18:58:08');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 18:59:54');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 19:03:20');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-15 19:05:46');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-16 12:35:30');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-16 13:06:58');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-17 16:57:40');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-17 21:41:25');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-17 22:29:00');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-17 22:29:04');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-17 22:43:45');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-17 22:59:27');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-17 23:06:41');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-17 23:19:22');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-17 23:19:24');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-17 23:33:57');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-17 23:36:48');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-18 00:13:39');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-18 17:32:21');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-19 15:23:51');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-19 15:23:55');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-19 17:15:02');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-19 18:19:04');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-19 21:45:46');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-19 22:28:39');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 14:12:13');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-20 14:31:54');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 14:32:01');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 15:45:23');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-20 15:47:51');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 15:47:56');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 15:55:32');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 16:03:25');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-20 16:19:08');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 16:19:11');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 16:28:22');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 16:34:47');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 16:43:14');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 16:52:35');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-20 16:58:27');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 16:58:34');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 17:05:32');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 17:08:10');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 17:23:56');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-20 17:41:40');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-21 15:16:26');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-24 21:07:56');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-28 11:03:23');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-02 16:08:23');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 08:59:43');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-03 09:18:29');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 09:18:33');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 09:54:49');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 09:59:04');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 10:03:05');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 10:32:34');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 10:34:21');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 10:39:53');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-03 10:51:28');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 10:51:31');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 11:25:17');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-03 11:49:05');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 11:49:10');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 11:52:51');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 11:55:08');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-12-03 12:01:31');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 12:06:16');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 12:22:41');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 14:14:02');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 14:31:22');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 14:45:05');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 14:49:22');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 14:53:12');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 15:00:27');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 15:04:36');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-03 15:13:12');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-03 15:13:19');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 15:13:26');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 15:21:05');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 15:22:51');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 15:25:47');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-03 16:13:06');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 16:13:11');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 16:44:34');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-03 17:12:56');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 15:47:00');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 16:01:48');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 16:14:30');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 16:15:41');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 16:36:02');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-04 16:37:06');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-04 16:37:11');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 16:37:15');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 17:25:28');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-04 17:36:56');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-04 17:37:00');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 17:37:03');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 17:40:43');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 17:45:31');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 17:48:36');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 17:54:20');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 18:09:55');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 16:10:08');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 17:00:20');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 19:41:28');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 15:59:50');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-17 16:47:47');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 16:47:54');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2019-12-23 19:32:51');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 12:07:47');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-25 13:04:58');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 13:05:02');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-26 00:35:31');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-26 00:35:35');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 00:35:39');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 01:28:38');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-29 17:35:14');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-01-02 11:47:48');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 11:47:53');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-15 16:34:56');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-19 15:13:13');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-21 16:09:33');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-22 14:54:41');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-23 17:04:36');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-19 15:02:28');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-19 15:02:32');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-23 15:04:36');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2116 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', 'menuItem', 'C', '1', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-12 17:41:53', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 2006, 1, '/system/notice', 'menuItem', 'C', '0', 'system:notice:view', 'fa fa-paper-plane', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-12 17:51:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', 'menuItem', 'M', '1', '', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-12 17:41:41', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', 'menuItem', 'C', '1', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-12 17:40:10', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', 'menuItem', 'C', '1', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-12 17:40:39', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', 'menuItem', 'C', '1', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-12 17:40:50', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2006, '考试公告', 0, 3, '#', 'menuItem', 'M', '0', NULL, 'fa fa-send-o', 'admin', '2019-11-12 17:50:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '学生信息管理', 0, 3, '#', 'menuItem', 'M', '0', NULL, 'fa fa-address-card-o', 'admin', '2019-11-12 17:52:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2068, '学生基本信息', 2007, 1, '/system/student', 'menuItem', 'C', '0', 'system:student:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-11-20 17:25:11', '学生基本信息菜单');
INSERT INTO `sys_menu` VALUES (2069, '学生基本信息查询', 2068, 1, '#', '', 'F', '0', 'system:student:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2070, '学生基本信息新增', 2068, 2, '#', '', 'F', '0', 'system:student:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2071, '学生基本信息修改', 2068, 3, '#', '', 'F', '0', 'system:student:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2072, '学生基本信息删除', 2068, 4, '#', '', 'F', '0', 'system:student:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2073, '学生基本信息导出', 2068, 5, '#', '', 'F', '0', 'system:student:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2080, '学生体测信息', 2007, 1, '/system/ks', 'menuItem', 'C', '0', 'system:ks:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-04 16:41:11', '学生体测信息菜单');
INSERT INTO `sys_menu` VALUES (2081, '学生体测信息查询', 2080, 1, '#', '', 'F', '0', 'system:ks:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2082, '学生体测信息新增', 2080, 2, '#', '', 'F', '0', 'system:ks:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2083, '学生体测信息修改', 2080, 3, '#', '', 'F', '0', 'system:ks:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2084, '学生体测信息删除', 2080, 4, '#', '', 'F', '0', 'system:ks:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2085, '学生体测信息导出', 2080, 5, '#', '', 'F', '0', 'system:ks:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2104, '学生成绩信息', 2007, 1, '/system/chengji', 'menuItem', 'C', '0', 'system:chengji:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-04 16:41:30', '学生成绩信息菜单');
INSERT INTO `sys_menu` VALUES (2105, '学生成绩信息查询', 2104, 1, '#', '', 'F', '0', 'system:chengji:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2106, '学生成绩信息新增', 2104, 2, '#', '', 'F', '0', 'system:chengji:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2107, '学生成绩信息修改', 2104, 3, '#', '', 'F', '0', 'system:chengji:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2108, '学生成绩信息删除', 2104, 4, '#', '', 'F', '0', 'system:chengji:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2109, '学生成绩信息导出', 2104, 5, '#', '', 'F', '0', 'system:chengji:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2110, '成绩统计及正态分布信息', 2007, 2, '/system/zt', 'menuItem', 'C', '0', 'system:zt:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-04 17:37:30', '成绩统计及正态分布信息菜单');
INSERT INTO `sys_menu` VALUES (2111, '成绩统计及正态分布信息查询', 2110, 1, '#', '', 'F', '0', 'system:zt:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2112, '成绩统计及正态分布信息新增', 2110, 2, '#', '', 'F', '0', 'system:zt:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2113, '成绩统计及正态分布信息修改', 2110, 3, '#', '', 'F', '0', 'system:zt:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2114, '成绩统计及正态分布信息删除', 2110, 4, '#', '', 'F', '0', 'system:zt:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2115, '成绩统计及正态分布信息导出', 2110, 5, '#', '', 'F', '0', 'system:zt:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');

-- ----------------------------
-- Table structure for sys_ne_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_ne_info`;
CREATE TABLE `sys_ne_info`  (
  `ne_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `ne_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '文件名称',
  `ne_path` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '文件路径',
  PRIMARY KEY (`ne_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ne信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_ne_info
-- ----------------------------

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：', '2', '<p><br></p>', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-19 15:40:18', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知', '1', '<p><br></p>', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-19 15:40:34', '管理员');
INSERT INTO `sys_notice` VALUES (10, '考试10月11号', '1', '<p><img src=\"http://localhost:8081/profile/upload/2019/12/17/91c019f87e810384fff17904833513af.png\" data-filename=\"/profile/upload/2019/12/17/91c019f87e810384fff17904833513af.png\" style=\"width: 50%;\">限时两天完成，必须在范围规定内<br></p>', '0', 'admin', '2019-12-17 16:52:25', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 495 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:25:32');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-12 17:25:42');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"sys_student\"],\"tableComment\":[\"学生基本信息表\"],\"className\":[\"Student\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"studentId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentStuid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"年龄\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"studentAge\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别（0男 1女 2未知）\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"studentSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"状态（0正常 1停用）\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaFiel', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:35:04');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"sys_student\"],\"tableComment\":[\"学生基本信息表\"],\"className\":[\"Student\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"studentId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentStuid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"年龄\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"studentAge\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别（0男 1女 2未知）\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"studentSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"sys_user_sex\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"状态（0正常 1停用）\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaFiel', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:35:57');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-12 17:36:01');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"110\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"定时任务\"],\"url\":[\"/monitor/job\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:job:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:40:10');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"111\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"数据监控\"],\"url\":[\"/monitor/data\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:data:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:40:39');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"112\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"服务监控\"],\"url\":[\"/monitor/server\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:server:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:40:50');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"108\"],\"parentId\":[\"1\"],\"menuType\":[\"M\"],\"menuName\":[\"日志管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"9\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:41:41');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"106\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"参数设置\"],\"url\":[\"/system/config\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:41:53');
INSERT INTO `sys_oper_log` VALUES (110, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:43:14');
INSERT INTO `sys_oper_log` VALUES (111, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":301}', 0, NULL, '2019-11-12 17:43:18');
INSERT INTO `sys_oper_log` VALUES (112, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/106', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:43:23');
INSERT INTO `sys_oper_log` VALUES (113, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":301}', 0, NULL, '2019-11-12 17:43:26');
INSERT INTO `sys_oper_log` VALUES (114, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/109', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:43:30');
INSERT INTO `sys_oper_log` VALUES (115, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/107', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:43:33');
INSERT INTO `sys_oper_log` VALUES (116, '岗位管理', 3, 'com.ruoyi.project.system.post.controller.PostController.remove()', 'POST', 1, 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:43:51');
INSERT INTO `sys_oper_log` VALUES (117, '岗位管理', 3, 'com.ruoyi.project.system.post.controller.PostController.remove()', 'POST', 1, 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"项目经理已分配,不能删除\",\"code\":500}', 0, NULL, '2019-11-12 17:43:53');
INSERT INTO `sys_oper_log` VALUES (118, '岗位管理', 3, 'com.ruoyi.project.system.post.controller.PostController.remove()', 'POST', 1, 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"项目经理已分配,不能删除\",\"code\":500}', 0, NULL, '2019-11-12 17:43:57');
INSERT INTO `sys_oper_log` VALUES (119, '岗位管理', 2, 'com.ruoyi.project.system.post.controller.PostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"总体测负责人\"],\"postCode\":[\"01\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:44:34');
INSERT INTO `sys_oper_log` VALUES (120, '岗位管理', 2, 'com.ruoyi.project.system.post.controller.PostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"2\"],\"postName\":[\"监考老师\"],\"postCode\":[\"02\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:45:02');
INSERT INTO `sys_oper_log` VALUES (121, '岗位管理', 2, 'com.ruoyi.project.system.post.controller.PostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"4\"],\"postName\":[\"学生\"],\"postCode\":[\"03\"],\"postSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:45:28');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"107\"],\"parentId\":[\"1\"],\"menuType\":[\"M\"],\"menuName\":[\"通知公告\"],\"url\":[\"/system/notice\"],\"target\":[\"menuItem\"],\"perms\":[\"system:notice:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-paper-plane\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:47:36');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"考试公告\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-send-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:50:32');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"107\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"通知公告\"],\"url\":[\"/system/notice\"],\"target\":[\"menuItem\"],\"perms\":[\"system:notice:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:51:01');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"学生信息管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:52:33');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2007\"],\"menuType\":[\"C\"],\"menuName\":[\"学生基本信息\"],\"url\":[\"/system/student\"],\"target\":[\"menuItem\"],\"perms\":[\"system:student:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:55:32');
INSERT INTO `sys_oper_log` VALUES (127, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"201600208216\"],\"studentName\":[\"罗浩铨\"],\"studentAge\":[\"22\"],\"studentSex\":[\"0\"],\"studentStatus\":[\"0\"],\"studentBirthday\":[\"2019-10-29\"],\"studentHome\":[\"云南\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 17:56:24');
INSERT INTO `sys_oper_log` VALUES (128, '角色管理', 4, 'com.ruoyi.project.system.role.controller.RoleController.cancelAuthUser()', 'POST', 1, 'admin', '研发部门', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"userId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-12 21:12:26');
INSERT INTO `sys_oper_log` VALUES (129, '通知公告', 2, 'com.ruoyi.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"1\"],\"noticeTitle\":[\"温馨提醒：2018-07-01 若依新版本发布啦\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"<p>新版本内容<img src=\\\"http://localhost:8080/profile/upload/2019/11/13/1b5fdd933760e63bed77e697ecc54e4b.PNG\\\" data-filename=\\\"/profile/upload/2019/11/13/1b5fdd933760e63bed77e697ecc54e4b.PNG\\\" style=\\\"width: 1023px;\\\"></p>\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 12:18:40');
INSERT INTO `sys_oper_log` VALUES (130, '通知公告', 2, 'com.ruoyi.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"1\"],\"noticeTitle\":[\"温馨提醒：2018-07-01 若依新版本发布啦\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"<p>新版本内容<img src=\\\"http://localhost:8080/profile/upload/2019/11/13/94083fd3093e6d390b43c08811f1b666.png\\\" data-filename=\\\"/profile/upload/2019/11/13/94083fd3093e6d390b43c08811f1b666.png\\\" style=\\\"width: 223px;\\\"></p>\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 12:39:00');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_studenttest\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 13:08:03');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"sys_studenttest\"],\"tableComment\":[\"学生成绩表\"],\"className\":[\"Studenttest\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"10\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"studenttestId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"11\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studenttestCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"12\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studenttestName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"13\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"年龄\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"studenttestAge\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"14\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"考试时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"studenttestDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"15\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"成绩\"],\"columns[5].javaType\":[\"Double\"],\"columns[5].javaFi', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 13:09:06');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_studenttest', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-13 13:09:12');
INSERT INTO `sys_oper_log` VALUES (134, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"201600208215\"],\"studenttestName\":[\"公告\"],\"studenttestAge\":[\"22\"],\"studenttestDate\":[\"2019-10-30\"],\"studenttestGrade\":[\"87\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.insertStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_studenttest          ( studenttest_code,             studenttest_name,             studenttest_age,             studenttest_date,             studenttest_grade )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 15:35:25');
INSERT INTO `sys_oper_log` VALUES (135, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"11\"],\"studenttestName\":[\"22\"],\"studenttestAge\":[\"22\"],\"studenttestDate\":[\"2019-11-05\"],\"studenttestGrade\":[\"22\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.insertStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_studenttest          ( studenttest_code,             studenttest_name,             studenttest_age,             studenttest_date,             studenttest_grade )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 15:36:41');
INSERT INTO `sys_oper_log` VALUES (136, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"222222222\"],\"studentName\":[\"22222222\"],\"studentAge\":[\"22\"],\"studentSex\":[\"0\"],\"studentStatus\":[\"0\"],\"studentBirthday\":[\"2019-11-04\"],\"studentHome\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 15:37:21');
INSERT INTO `sys_oper_log` VALUES (137, '学生基本信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 15:38:33');
INSERT INTO `sys_oper_log` VALUES (138, '用户管理', 5, 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '{\"msg\":\"864bb5b3-088e-482b-b6c2-1947e179fe66_用户数据.xlsx\",\"code\":0}', 0, NULL, '2019-11-13 15:40:44');
INSERT INTO `sys_oper_log` VALUES (139, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 'null', 1, '', '2019-11-13 15:41:46');
INSERT INTO `sys_oper_log` VALUES (140, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"true\"]}', 'null', 1, '', '2019-11-13 15:41:49');
INSERT INTO `sys_oper_log` VALUES (141, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"1122222\"],\"studentName\":[\"22\"],\"studentAge\":[\"22\"],\"studentSex\":[\"0\"],\"studentStatus\":[\"0\"],\"studentBirthday\":[\"2019-10-29\"],\"studentHome\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 16:08:14');
INSERT INTO `sys_oper_log` VALUES (142, '学生基本信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 16:09:14');
INSERT INTO `sys_oper_log` VALUES (143, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"222222222\"],\"studentName\":[\"22\"],\"studentAge\":[\"22\"],\"studentSex\":[\"0\"],\"studentStatus\":[\"0\"],\"studentBirthday\":[\"2019-11-14\"],\"studentHome\":[\"22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 16:27:17');
INSERT INTO `sys_oper_log` VALUES (144, '学生基本信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 16:27:49');
INSERT INTO `sys_oper_log` VALUES (145, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"nana\"],\"deptName\":[\"研发部门\"],\"phonenumber\":[\"13566666661\"],\"email\":[\"10724578@qq.com\"],\"loginName\":[\"nana\"],\"password\":[\"123123\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 16:38:10');
INSERT INTO `sys_oper_log` VALUES (146, '用户管理', 5, 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '{\"msg\":\"b7a2c35e-b527-4705-aab1-d1b5a68b53bf_用户数据.xlsx\",\"code\":0}', 0, NULL, '2019-11-13 16:38:18');
INSERT INTO `sys_oper_log` VALUES (147, '用户管理', 3, 'com.ruoyi.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 16:38:25');
INSERT INTO `sys_oper_log` VALUES (148, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 'null', 1, '', '2019-11-13 16:38:33');
INSERT INTO `sys_oper_log` VALUES (149, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"msg\":\"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 22 导入成功\",\"code\":0}', 0, NULL, '2019-11-13 16:40:07');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_job\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 16:48:42');
INSERT INTO `sys_oper_log` VALUES (151, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentAge\":[\"2\"],\"studentSex\":[\"1\"],\"studentStatus\":[\"0\"],\"studentBirthday\":[\"2019-10-28\"],\"studentHome\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 16:59:30');
INSERT INTO `sys_oper_log` VALUES (152, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"2\"],\"studenttestName\":[\"2\"],\"studenttestAge\":[\"2\"],\"studenttestDate\":[\"2019-10-28\"],\"studenttestGrade\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 17:59:24');
INSERT INTO `sys_oper_log` VALUES (153, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"32\"],\"studenttestName\":[\"2\"],\"studenttestAge\":[\"2\"],\"studenttestDate\":[\"2019-11-14\"],\"studenttestGrade\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 17:59:44');
INSERT INTO `sys_oper_log` VALUES (154, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"2222222222222222222\"],\"studenttestName\":[\"2222222222\"],\"studenttestAge\":[\"22\"],\"studenttestDate\":[\"2019-10-29\"],\"studenttestGrade\":[\"22\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'studenttest_code\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.insertStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_studenttest          ( studenttest_code,             studenttest_name,             studenttest_age,             studenttest_date,             studenttest_grade )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'studenttest_code\' at row 1\n; Data truncation: Data too long for column \'studenttest_code\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'studenttest_code\' at row 1', '2019-11-13 18:01:49');
INSERT INTO `sys_oper_log` VALUES (155, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"201600208216\"],\"studenttestName\":[\"2222222222\"],\"studenttestAge\":[\"22\"],\"studenttestDate\":[\"2019-10-29\"],\"studenttestGrade\":[\"22\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.insertStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_studenttest          ( studenttest_code,             studenttest_name,             studenttest_age,             studenttest_date,             studenttest_grade )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 18:02:02');
INSERT INTO `sys_oper_log` VALUES (156, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"20160020821\"],\"studenttestName\":[\"2222222222\"],\"studenttestAge\":[\"22\"],\"studenttestDate\":[\"2019-10-29\"],\"studenttestGrade\":[\"22\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.insertStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_studenttest          ( studenttest_code,             studenttest_name,             studenttest_age,             studenttest_date,             studenttest_grade )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 18:02:07');
INSERT INTO `sys_oper_log` VALUES (157, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"2233\"],\"studenttestName\":[\"2222222222\"],\"studenttestAge\":[\"22\"],\"studenttestDate\":[\"2019-10-29\"],\"studenttestGrade\":[\"22\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.insertStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_studenttest          ( studenttest_code,             studenttest_name,             studenttest_age,             studenttest_date,             studenttest_grade )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 18:02:13');
INSERT INTO `sys_oper_log` VALUES (158, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"2233\"],\"studenttestName\":[\"www\"],\"studenttestAge\":[\"22\"],\"studenttestDate\":[\"2019-10-29\"],\"studenttestGrade\":[\"22\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.insertStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_studenttest          ( studenttest_code,             studenttest_name,             studenttest_age,             studenttest_date,             studenttest_grade )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 18:02:21');
INSERT INTO `sys_oper_log` VALUES (159, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"2233\"],\"studenttestName\":[\"www\"],\"studenttestAge\":[\"22\"],\"studenttestDate\":[\"2019-10-25\"],\"studenttestGrade\":[\"22\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.insertStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_studenttest          ( studenttest_code,             studenttest_name,             studenttest_age,             studenttest_date,             studenttest_grade )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 18:02:30');
INSERT INTO `sys_oper_log` VALUES (160, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"22223\"],\"studenttestName\":[\"245\"],\"studenttestAge\":[\"22\"],\"studenttestDate\":[\"2019-11-05\"],\"studenttestGrade\":[\"123\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.insertStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_studenttest          ( studenttest_code,             studenttest_name,             studenttest_age,             studenttest_date,             studenttest_grade )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 18:02:55');
INSERT INTO `sys_oper_log` VALUES (161, '学生成绩', 1, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/add', '127.0.0.1', '内网IP', '{\"studenttestCode\":[\"2\"],\"studenttestName\":[\"2\"],\"studenttestAge\":[\"2\"],\"studenttestDate\":[\"2019-11-05\"],\"studenttestGrade\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 18:03:06');
INSERT INTO `sys_oper_log` VALUES (162, '学生成绩', 2, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/edit', '127.0.0.1', '内网IP', '{\"studenttestId\":[\"2\"],\"studenttestCode\":[\"32\"],\"studenttestName\":[\"2\"],\"studenttestAge\":[\"2\"],\"studenttestDate\":[\"2019-11-14\"],\"studenttestGrade\":[\"40\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.updateStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_studenttest          SET studenttest_code = ?,             studenttest_name = ?,             studenttest_age = ?,             studenttest_date = ?,             studenttest_grade = ?          where studenttest_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 18:04:13');
INSERT INTO `sys_oper_log` VALUES (163, '学生成绩', 2, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/edit', '127.0.0.1', '内网IP', '{\"studenttestId\":[\"2\"],\"studenttestCode\":[\"32\"],\"studenttestName\":[\"2\"],\"studenttestAge\":[\"2\"],\"studenttestDate\":[\"2019-11-14\"],\"studenttestGrade\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 18:04:21');
INSERT INTO `sys_oper_log` VALUES (164, '学生成绩', 2, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/edit', '127.0.0.1', '内网IP', '{\"studenttestId\":[\"2\"],\"studenttestCode\":[\"32\"],\"studenttestName\":[\"2\"],\"studenttestAge\":[\"2\"],\"studenttestDate\":[\"2019-11-14\"],\"studenttestGrade\":[\"40.0\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.updateStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_studenttest          SET studenttest_code = ?,             studenttest_name = ?,             studenttest_age = ?,             studenttest_date = ?,             studenttest_grade = ?          where studenttest_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 18:04:29');
INSERT INTO `sys_oper_log` VALUES (165, '学生成绩', 2, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/edit', '127.0.0.1', '内网IP', '{\"studenttestId\":[\"1\"],\"studenttestCode\":[\"2\"],\"studenttestName\":[\"2\"],\"studenttestAge\":[\"2\"],\"studenttestDate\":[\"2019-10-28\"],\"studenttestGrade\":[\"10\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\r\n### The error may involve com.ruoyi.project.system.studenttest.mapper.StudenttestMapper.updateStudenttest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_studenttest          SET studenttest_code = ?,             studenttest_name = ?,             studenttest_age = ?,             studenttest_date = ?,             studenttest_grade = ?          where studenttest_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1\n; Data truncation: Out of range value for column \'studenttest_grade\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'studenttest_grade\' at row 1', '2019-11-13 18:04:49');
INSERT INTO `sys_oper_log` VALUES (166, '学生成绩', 2, 'com.ruoyi.project.system.studenttest.controller.StudenttestController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/studenttest/edit', '127.0.0.1', '内网IP', '{\"studenttestId\":[\"1\"],\"studenttestCode\":[\"2\"],\"studenttestName\":[\"2\"],\"studenttestAge\":[\"2\"],\"studenttestDate\":[\"2019-10-28\"],\"studenttestGrade\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 18:04:53');
INSERT INTO `sys_oper_log` VALUES (167, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_test\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 18:18:55');
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_test', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-13 18:19:00');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"sys_test\"],\"tableComment\":[\"成绩信息\"],\"className\":[\"Test\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"30\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"testId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"31\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"testCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"32\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"testName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"33\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"日期\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"testDate\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"34\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"成绩\"],\"columns[4].javaType\":[\"Double\"],\"columns[4].javaField\":[\"testMark\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"35\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"评分教师\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"testTecher\"],\"columns[5].isInsert\":[\"1\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 18:27:07');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_test', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-13 18:27:10');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 18:46:03');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_test\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 18:46:10');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"sys_test\"],\"tableComment\":[\"成绩表\"],\"className\":[\"Test\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"37\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"testId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"38\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学生名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"testName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"39\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"testCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"40\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别（0男 1女 2未知）\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"testSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"41\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"testDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"42\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"成绩\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"testMark\"],\"columns[5].isInsert\":[\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 18:48:54');
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_test', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-13 18:49:00');
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:08:37');
INSERT INTO `sys_oper_log` VALUES (176, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_test\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:08:41');
INSERT INTO `sys_oper_log` VALUES (177, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"sys_test\"],\"tableComment\":[\"成绩表\"],\"className\":[\"Test\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"44\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"testId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"45\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学生名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"testName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"46\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"testCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"47\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别（0男 1女 2未知）\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"testSex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"48\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"testDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"49\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"成绩\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"testMark\"],\"columns[5].isInsert\":', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:09:10');
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_test', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-13 19:09:13');
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2014', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2019-11-13 19:11:08');
INSERT INTO `sys_oper_log` VALUES (180, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2015', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:11:16');
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2009', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:11:29');
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2010', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:11:37');
INSERT INTO `sys_oper_log` VALUES (183, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2011', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:11:44');
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2012', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:11:50');
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2013', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:11:55');
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2008', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:12:04');
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2016', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:12:10');
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2017', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:12:19');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2018', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:12:28');
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2014', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2019-11-13 19:12:33');
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2019', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:12:40');
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2014', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:13:00');
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2021', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:14:11');
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2022', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:14:15');
INSERT INTO `sys_oper_log` VALUES (195, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2023', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:14:22');
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2024', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:14:29');
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/113', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2019-11-13 19:14:33');
INSERT INTO `sys_oper_log` VALUES (198, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2025', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:14:39');
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2020', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:14:45');
INSERT INTO `sys_oper_log` VALUES (200, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:14:57');
INSERT INTO `sys_oper_log` VALUES (201, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"sys_studenttest\"],\"tableComment\":[\"学生成绩表\"],\"className\":[\"Studenttest\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"10\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"studenttestId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"11\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studenttestCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"12\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studenttestName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"13\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"年龄\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"studenttestAge\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"14\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"考试时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"studenttestDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"15\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"成绩\"],\"columns[5].javaType\":[\"Double\"],\"columns[5].javaFi', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:20:43');
INSERT INTO `sys_oper_log` VALUES (202, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_studenttest', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-13 19:20:49');
INSERT INTO `sys_oper_log` VALUES (203, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_te\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:38:07');
INSERT INTO `sys_oper_log` VALUES (204, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_te', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-13 19:38:11');
INSERT INTO `sys_oper_log` VALUES (205, '成绩信息', 1, 'com.ruoyi.project.system.te.controller.TeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/te/add', '127.0.0.1', '内网IP', '{\"teName\":[\"22\"],\"teIdt\":[\"22\"],\"teDay\":[\"2019-11-21\"],\"teMark\":[\"22\"],\"teTecher\":[\"22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:40:50');
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2027', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:58:05');
INSERT INTO `sys_oper_log` VALUES (207, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/111', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2019-11-13 19:58:14');
INSERT INTO `sys_oper_log` VALUES (208, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2028', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:58:59');
INSERT INTO `sys_oper_log` VALUES (209, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2029', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:59:11');
INSERT INTO `sys_oper_log` VALUES (210, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2030', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:59:17');
INSERT INTO `sys_oper_log` VALUES (211, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2031', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:59:24');
INSERT INTO `sys_oper_log` VALUES (212, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2026', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 19:59:37');
INSERT INTO `sys_oper_log` VALUES (213, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2033', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 20:00:58');
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2034', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 20:01:08');
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2035', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 20:03:18');
INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2036', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 20:03:27');
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/113', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2019-11-13 20:03:32');
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2037', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 20:03:39');
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2032', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 20:06:50');
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_file_info\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 21:51:37');
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_file_info', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-13 21:51:40');
INSERT INTO `sys_oper_log` VALUES (222, '文件信息', 1, 'com.ruoyi.project.system.info.controller.FileInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/info/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"22\"],\"filePath\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 22:44:49');
INSERT INTO `sys_oper_log` VALUES (223, '文件信息', 2, 'com.ruoyi.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"1\"],\"fileName\":[\"22\"],\"filePath\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 22:45:39');
INSERT INTO `sys_oper_log` VALUES (224, '文件信息', 2, 'com.ruoyi.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"1\"],\"fileName\":[\"22\"],\"filePath\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 22:46:51');
INSERT INTO `sys_oper_log` VALUES (225, '文件信息', 2, 'com.ruoyi.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"1\"],\"fileName\":[\"22\"],\"filePath\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 22:47:44');
INSERT INTO `sys_oper_log` VALUES (226, '文件信息', 2, 'com.ruoyi.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"1\"],\"fileName\":[\"22\"],\"filePath\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 22:49:38');
INSERT INTO `sys_oper_log` VALUES (227, '文件信息', 2, 'com.ruoyi.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"1\"],\"fileName\":[\"22\"],\"filePath\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 22:50:07');
INSERT INTO `sys_oper_log` VALUES (228, '文件信息', 2, 'com.ruoyi.project.system.info.controller.FileInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '127.0.0.1', '内网IP', '{\"fileId\":[\"1\"],\"fileName\":[\"22\"],\"filePath\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 22:50:16');
INSERT INTO `sys_oper_log` VALUES (229, '通知公告', 2, 'com.ruoyi.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"2\"],\"noticeTitle\":[\"维护通知：2018-07-01 若依系统凌晨维护\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p>维护内容<img src=\\\"http://localhost:8080/profile/upload/2019/11/13/cb99ea6129921538486598e592714700.PNG\\\" data-filename=\\\"/profile/upload/2019/11/13/cb99ea6129921538486598e592714700.PNG\\\" style=\\\"width: 25%;\\\"></p>\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 22:51:13');
INSERT INTO `sys_oper_log` VALUES (230, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_ne_info\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 22:58:10');
INSERT INTO `sys_oper_log` VALUES (231, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_ne_info', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-13 22:58:18');
INSERT INTO `sys_oper_log` VALUES (232, 'ne信息', 1, 'com.ruoyi.project.system.info.controller.NeInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/info/add', '127.0.0.1', '内网IP', '{\"neName\":[\"22\"],\"nePath\":[\"<p><img src=\\\"http://localhost:8080/profile/upload/2019/11/13/5747658e692519d11ad3531e893f18d4.PNG\\\" data-filename=\\\"/profile/upload/2019/11/13/5747658e692519d11ad3531e893f18d4.PNG\\\" style=\\\"width: 25%;\\\">222<br></p>\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 23:20:26');
INSERT INTO `sys_oper_log` VALUES (233, 'ne信息', 2, 'com.ruoyi.project.system.info.controller.NeInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '127.0.0.1', '内网IP', '{\"neId\":[\"1\"],\"neName\":[\"22\"],\"nePath\":[\"222\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 23:21:02');
INSERT INTO `sys_oper_log` VALUES (234, 'ne信息', 3, 'com.ruoyi.project.system.info.controller.NeInfoController.remove()', 'POST', 1, 'admin', '研发部门', '/system/info/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 23:21:06');
INSERT INTO `sys_oper_log` VALUES (235, 'ne信息', 1, 'com.ruoyi.project.system.info.controller.NeInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/info/add', '127.0.0.1', '内网IP', '{\"neName\":[\"\"],\"nePath\":[\"<p><img src=\\\"http://localhost:8080/profile/upload/2019/11/13/7d5254adca449b614cd0a9284169c651.PNG\\\" data-filename=\\\"/profile/upload/2019/11/13/7d5254adca449b614cd0a9284169c651.PNG\\\" style=\\\"width: 25%;\\\"><br></p>\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.project.system.info.mapper.NeInfoMapper.insertNeInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_ne_info\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-11-13 23:21:38');
INSERT INTO `sys_oper_log` VALUES (236, 'ne信息', 1, 'com.ruoyi.project.system.info.controller.NeInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/info/add', '127.0.0.1', '内网IP', '{\"neName\":[\"\"],\"nePath\":[\"<p><a href=\\\"http://localhost:8080/index#/system/info\\\" target=\\\"_blank\\\">http://localhost:8080/index#/system/info</a><br></p>\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 23:26:18');
INSERT INTO `sys_oper_log` VALUES (237, 'ne信息', 2, 'com.ruoyi.project.system.info.controller.NeInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '127.0.0.1', '内网IP', '{\"neId\":[\"2\"],\"neName\":[\"\"],\"nePath\":[\"http://localhost:8080/index#/system/info\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-13 23:29:18');
INSERT INTO `sys_oper_log` VALUES (238, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2045', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-14 15:37:19');
INSERT INTO `sys_oper_log` VALUES (239, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2046', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-14 15:37:28');
INSERT INTO `sys_oper_log` VALUES (240, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2047', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-14 15:37:37');
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2048', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-14 15:37:47');
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2049', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-14 15:37:54');
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2044', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-14 15:38:01');
INSERT INTO `sys_oper_log` VALUES (244, 'ne信息', 2, 'com.ruoyi.project.system.info.controller.NeInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/info/edit', '127.0.0.1', '内网IP', '{\"neId\":[\"2\"],\"neName\":[\"\"],\"nePath\":[\"http://localhost:8080/index#/system/info\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-14 17:37:42');
INSERT INTO `sys_oper_log` VALUES (245, 'ne信息', 1, 'com.ruoyi.project.system.info.controller.NeInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/info/add', '127.0.0.1', '内网IP', '{\"neName\":[\"2244\"],\"nePath\":[\"<ol><li>44222</li></ol><table class=\\\"table table-bordered\\\"><tbody><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td></tr></tbody></table><ol><li><br></li></ol>\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-14 17:38:08');
INSERT INTO `sys_oper_log` VALUES (246, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"3\"],\"studentName\":[\"222223\"],\"studentAge\":[\"34\"],\"studentSex\":[\"0\"],\"studentStatus\":[\"0\"],\"studentBirthday\":[\"2019-10-27\"],\"studentHome\":[\"22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-14 18:34:41');
INSERT INTO `sys_oper_log` VALUES (247, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentId\":[\"5\"],\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentAge\":[\"2\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.updateStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_student          SET student_stuid = ?,             student_name = ?,             student_age = ?,             student_sex = ?,             student_status = ?,                                       remark = ?          where student_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\n; Data truncation: Data too long for column \'student_sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1', '2019-11-15 15:25:17');
INSERT INTO `sys_oper_log` VALUES (248, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentId\":[\"5\"],\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentAge\":[\"2\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.updateStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_student          SET student_stuid = ?,             student_name = ?,             student_age = ?,             student_sex = ?,             student_status = ?,                                       remark = ?          where student_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\n; Data truncation: Data too long for column \'student_sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1', '2019-11-15 15:25:17');
INSERT INTO `sys_oper_log` VALUES (249, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentId\":[\"6\"],\"studentStuid\":[\"3\"],\"studentName\":[\"222223\"],\"studentAge\":[\"34\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.updateStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_student          SET student_stuid = ?,             student_name = ?,             student_age = ?,             student_sex = ?,             student_status = ?,                                       remark = ?          where student_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\n; Data truncation: Data too long for column \'student_sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1', '2019-11-15 15:25:43');
INSERT INTO `sys_oper_log` VALUES (250, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentAge\":[\"2\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:35:09');
INSERT INTO `sys_oper_log` VALUES (251, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentAge\":[\"2\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:35:16');
INSERT INTO `sys_oper_log` VALUES (252, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentAge\":[\"22\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:35:31');
INSERT INTO `sys_oper_log` VALUES (253, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentAge\":[\"22\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:35:57');
INSERT INTO `sys_oper_log` VALUES (254, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentAge\":[\"22\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:36:08');
INSERT INTO `sys_oper_log` VALUES (255, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,                          student_sex,             student_status,                          student_home,             remark )           values ( ?,             ?,                          ?,             ?,                          ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\n; Data truncation: Data too long for column \'student_sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1', '2019-11-15 15:45:00');
INSERT INTO `sys_oper_log` VALUES (256, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,                          student_sex,             student_status,                          student_home,             remark )           values ( ?,             ?,                          ?,             ?,                          ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\n; Data truncation: Data too long for column \'student_sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1', '2019-11-15 15:46:04');
INSERT INTO `sys_oper_log` VALUES (257, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:46:16');
INSERT INTO `sys_oper_log` VALUES (258, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,                          student_sex,             student_status,                          student_home,             remark )           values ( ?,             ?,                          ?,             ?,                          ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\n; Data truncation: Data too long for column \'student_sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1', '2019-11-15 15:46:41');
INSERT INTO `sys_oper_log` VALUES (259, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 15:49:21');
INSERT INTO `sys_oper_log` VALUES (260, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2234\"],\"studentName\":[\"2344\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:50:07');
INSERT INTO `sys_oper_log` VALUES (261, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2234\"],\"studentName\":[\"2344\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:50:30');
INSERT INTO `sys_oper_log` VALUES (262, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2234\"],\"studentName\":[\"2344\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:51:23');
INSERT INTO `sys_oper_log` VALUES (263, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2234\"],\"studentName\":[\"2344\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:51:58');
INSERT INTO `sys_oper_log` VALUES (264, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:52:40');
INSERT INTO `sys_oper_log` VALUES (265, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2\"],\"studentName\":[\"2\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2019-11-15 15:52:42');
INSERT INTO `sys_oper_log` VALUES (266, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,                          student_sex,             student_status,                          student_home,             remark )           values ( ?,             ?,                          ?,             ?,                          ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\n; Data truncation: Data too long for column \'student_sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1', '2019-11-15 16:07:02');
INSERT INTO `sys_oper_log` VALUES (267, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentSex\":[\"undefined\"],\"studentStatus\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"remark\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,                          student_sex,             student_status,                          student_home,             remark )           values ( ?,             ?,                          ?,             ?,                          ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\n; Data truncation: Data too long for column \'student_sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1', '2019-11-15 16:14:25');
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 16:19:44');
INSERT INTO `sys_oper_log` VALUES (269, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2002', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 16:19:50');
INSERT INTO `sys_oper_log` VALUES (270, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2003', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 16:19:55');
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2004', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 16:20:01');
INSERT INTO `sys_oper_log` VALUES (272, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2005', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 16:20:07');
INSERT INTO `sys_oper_log` VALUES (273, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 16:20:13');
INSERT INTO `sys_oper_log` VALUES (274, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 16:34:14');
INSERT INTO `sys_oper_log` VALUES (275, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 16:34:19');
INSERT INTO `sys_oper_log` VALUES (276, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"10\"],\"tableName\":[\"sys_student\"],\"tableComment\":[\"学生基础信息表\"],\"className\":[\"Student\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"64\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"studentId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"65\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentStuid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"66\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"67\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"籍贯\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"studentIdcard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"68\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"年龄\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"studentAge\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"69\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"性别\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"studentSex\"],\"colum', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 16:35:12');
INSERT INTO `sys_oper_log` VALUES (277, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-15 16:36:03');
INSERT INTO `sys_oper_log` VALUES (278, '学生基础信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"3\"],\"studentName\":[\"2222\"],\"studentIdcard\":[\"33332\"],\"studentAge\":[\"34\"],\"studentSex\":[\"\"],\"studentBirthday\":[\"2019-10-31\"],\"studentHome\":[\"232\"],\"studentCard\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 16:40:56');
INSERT INTO `sys_oper_log` VALUES (279, '学生基础信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"3\"],\"studentName\":[\"2222\"],\"studentIdcard\":[\"33332\"],\"studentAge\":[\"34\"],\"studentSex\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"studentHome\":[\"232\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,             student_idcard,             student_age,             student_sex,             student_birthday,             student_home,             student_card )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\n; Data truncation: Data too long for column \'student_sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1', '2019-11-15 17:21:12');
INSERT INTO `sys_oper_log` VALUES (280, '学生基础信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"3\"],\"studentName\":[\"2222\"],\"studentIdcard\":[\"33332\"],\"studentAge\":[\"34\"],\"studentSex\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"studentHome\":[\"232\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,             student_idcard,             student_age,             student_sex,             student_birthday,             student_home,             student_card )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1\n; Data truncation: Data too long for column \'student_sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_sex\' at row 1', '2019-11-15 17:21:12');
INSERT INTO `sys_oper_log` VALUES (281, '学生基础信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 17:23:58');
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1012', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2019-11-15 17:24:09');
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2057', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 17:24:28');
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2058', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 17:24:36');
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2059', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 17:24:44');
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2056', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2019-11-15 17:24:53');
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2060', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 17:24:59');
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2061', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 17:25:06');
INSERT INTO `sys_oper_log` VALUES (289, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2056', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 17:25:19');
INSERT INTO `sys_oper_log` VALUES (290, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 17:28:37');
INSERT INTO `sys_oper_log` VALUES (291, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 17:28:41');
INSERT INTO `sys_oper_log` VALUES (292, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"sys_student\"],\"tableComment\":[\"学生基本信息表\"],\"className\":[\"Student\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"73\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"studentId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"74\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentStuid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"75\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"76\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"身份证\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"studentIdcard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"77\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"年龄\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"studentAge\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"78\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"生日\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"studentBirthday\"],\"c', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 17:29:11');
INSERT INTO `sys_oper_log` VALUES (293, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-15 17:29:14');
INSERT INTO `sys_oper_log` VALUES (294, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentIdcard\":[\"undefined\"],\"studentAge\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"studentHome\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_age\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,             student_idcard,             student_age,             student_birthday,             student_card,             student_home )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_age\' at row 1\n; Data truncation: Data too long for column \'student_age\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_age\' at row 1', '2019-11-15 17:55:55');
INSERT INTO `sys_oper_log` VALUES (295, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentIdcard\":[\"undefined\"],\"studentAge\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"studentHome\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_age\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,             student_idcard,             student_age,             student_birthday,             student_card,             student_home )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_age\' at row 1\n; Data truncation: Data too long for column \'student_age\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_age\' at row 1', '2019-11-15 17:55:55');
INSERT INTO `sys_oper_log` VALUES (296, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentIdcard\":[\"undefined\"],\"studentAge\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"studentHome\":[\"undefined\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_age\' at row 1\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,             student_idcard,             student_age,             student_birthday,             student_card,             student_home )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_age\' at row 1\n; Data truncation: Data too long for column \'student_age\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'student_age\' at row 1', '2019-11-15 17:56:39');
INSERT INTO `sys_oper_log` VALUES (297, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentIdcard\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"studentHome\":[\"undefined\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:01:27');
INSERT INTO `sys_oper_log` VALUES (298, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentIdcard\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"studentHome\":[\"undefined\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:01:38');
INSERT INTO `sys_oper_log` VALUES (299, '学生基本信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:03:04');
INSERT INTO `sys_oper_log` VALUES (300, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2063', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:08:25');
INSERT INTO `sys_oper_log` VALUES (301, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2064', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:08:31');
INSERT INTO `sys_oper_log` VALUES (302, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2065', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:08:36');
INSERT INTO `sys_oper_log` VALUES (303, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2066', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:08:41');
INSERT INTO `sys_oper_log` VALUES (304, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2067', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:08:49');
INSERT INTO `sys_oper_log` VALUES (305, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2062', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:08:55');
INSERT INTO `sys_oper_log` VALUES (306, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:09:16');
INSERT INTO `sys_oper_log` VALUES (307, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_student\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:09:19');
INSERT INTO `sys_oper_log` VALUES (308, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"12\"],\"tableName\":[\"sys_student\"],\"tableComment\":[\"学生基本信息表\"],\"className\":[\"Student\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"81\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"studentId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"82\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentStuid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"83\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"84\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"身份证\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"studentIdcard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"85\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"生日\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"studentBirthday\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"86\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"照片\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"studentCard\"],', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:09:54');
INSERT INTO `sys_oper_log` VALUES (309, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_student', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-15 18:09:57');
INSERT INTO `sys_oper_log` VALUES (310, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentIdcard\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"studentHome\":[\"undefined\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:21:33');
INSERT INTO `sys_oper_log` VALUES (311, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentIdcard\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"studentHome\":[\"undefined\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:24:20');
INSERT INTO `sys_oper_log` VALUES (312, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"undefined\"],\"studentName\":[\"undefined\"],\"studentIdcard\":[\"undefined\"],\"studentBirthday\":[\"undefined\"],\"studentHome\":[\"undefined\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:30:36');
INSERT INTO `sys_oper_log` VALUES (313, '学生基本信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:51:40');
INSERT INTO `sys_oper_log` VALUES (314, '学生基本信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:51:41');
INSERT INTO `sys_oper_log` VALUES (315, '学生基本信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:51:43');
INSERT INTO `sys_oper_log` VALUES (316, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"22\"],\"studentName\":[\"22222\"],\"studentIdcard\":[\"2222222\"],\"studentBirthday\":[\"2019-10-29\"],\"studentHome\":[\"r\'f\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:51:59');
INSERT INTO `sys_oper_log` VALUES (317, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"22\"],\"studentName\":[\"22222\"],\"studentIdcard\":[\"2222222\"],\"studentBirthday\":[\"2019-11-15\"],\"studentHome\":[\"r\'f\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 18:58:22');
INSERT INTO `sys_oper_log` VALUES (318, '学生基本信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 19:00:06');
INSERT INTO `sys_oper_log` VALUES (319, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentId\":[\"4\"],\"studentStuid\":[\"22\"],\"studentName\":[\"22222\"],\"studentIdcard\":[\"2222222\"],\"studentBirthday\":[\"2019-11-15\"],\"studentHome\":[\"r\'f\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 19:00:13');
INSERT INTO `sys_oper_log` VALUES (320, '学生基本信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 19:00:29');
INSERT INTO `sys_oper_log` VALUES (321, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentId\":[\"4\"],\"studentStuid\":[\"22\"],\"studentName\":[\"22222\"],\"studentIdcard\":[\"2222222\"],\"studentBirthday\":[\"2019-11-15\"],\"studentHome\":[\"r\'f\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 19:00:45');
INSERT INTO `sys_oper_log` VALUES (322, '学生基本信息', 3, 'com.ruoyi.project.system.student.controller.StudentController.remove()', 'POST', 1, 'admin', '研发部门', '/system/student/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 19:03:33');
INSERT INTO `sys_oper_log` VALUES (323, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentId\":[\"4\"],\"studentStuid\":[\"22\"],\"studentName\":[\"22222\"],\"studentIdcard\":[\"2222222\"],\"studentBirthday\":[\"2019-11-15\"],\"studentHome\":[\"r\'f\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-15 19:03:46');
INSERT INTO `sys_oper_log` VALUES (324, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_test\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 22:34:34');
INSERT INTO `sys_oper_log` VALUES (325, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"13\"],\"tableName\":[\"sys_test\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Test\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"88\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"testId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"89\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考试截图\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"testPic\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"90\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"testUsername\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"91\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"里程\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"testLc\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"92\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"耗时\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"testHs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"93\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"考试日期\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"testTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"colu', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 22:35:48');
INSERT INTO `sys_oper_log` VALUES (326, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_test', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-17 22:35:51');
INSERT INTO `sys_oper_log` VALUES (327, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"13\"],\"tableName\":[\"sys_test\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Test\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"88\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"testId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"89\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考试截图\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"testPic\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"90\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"testUsername\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"91\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"里程\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"testLc\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"92\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"耗时\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"testHs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"93\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"考试日期\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"testTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"colu', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 22:45:20');
INSERT INTO `sys_oper_log` VALUES (328, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_test', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-17 22:45:24');
INSERT INTO `sys_oper_log` VALUES (329, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 22:59:37');
INSERT INTO `sys_oper_log` VALUES (330, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_test\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 22:59:45');
INSERT INTO `sys_oper_log` VALUES (331, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"14\"],\"tableName\":[\"sys_test\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Test\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"96\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"testId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"97\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考试截图\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"testPic\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"98\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"testUsername\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"99\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"里程\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"testLc\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"100\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"耗时\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"testHs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"101\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"考试日期\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"testTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"co', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:00:14');
INSERT INTO `sys_oper_log` VALUES (332, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"14\"],\"tableName\":[\"sys_test\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Test\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"96\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"testId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"97\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考试截图\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"testPic\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"98\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"testUsername\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"99\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"里程\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"testLc\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"100\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"耗时\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"testHs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"101\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"考试日期\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"testTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"co', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:00:24');
INSERT INTO `sys_oper_log` VALUES (333, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_test', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-17 23:00:38');
INSERT INTO `sys_oper_log` VALUES (334, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"32\"],\"studentName\":[\"22222\"],\"studentIdcard\":[\"2222222\"],\"studentBirthday\":[\"2019-11-08\"],\"studentHome\":[\"22\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Table \'tice.sys_student\' doesn\'t exist\r\n### The error may involve com.ruoyi.project.system.student.mapper.StudentMapper.insertStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_student          ( student_stuid,             student_name,             student_idcard,             student_birthday,             student_card,             student_home )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'tice.sys_student\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'tice.sys_student\' doesn\'t exist', '2019-11-17 23:07:10');
INSERT INTO `sys_oper_log` VALUES (335, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"222\"],\"studentName\":[\"22222\"],\"studentIdcard\":[\"2222222\"],\"studentBirthday\":[\"2019-10-15\"],\"studentHome\":[\"22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:19:42');
INSERT INTO `sys_oper_log` VALUES (336, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:25:45');
INSERT INTO `sys_oper_log` VALUES (337, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_test\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:25:50');
INSERT INTO `sys_oper_log` VALUES (338, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"15\"],\"tableName\":[\"sys_test\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Test\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"104\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"testId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"105\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考试截图\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"testPic\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"106\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"testUsername\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"107\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"里程\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"testLc\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"108\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"耗时\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"testHs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"109\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"考试日期\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"testTime\"],\"columns[5].isInsert\":[\"1', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:27:08');
INSERT INTO `sys_oper_log` VALUES (339, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_test', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-17 23:27:11');
INSERT INTO `sys_oper_log` VALUES (340, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:34:05');
INSERT INTO `sys_oper_log` VALUES (341, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_ks\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:34:14');
INSERT INTO `sys_oper_log` VALUES (342, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"sys_ks\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Ks\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"112\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ksId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"113\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考试截图\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ksPic\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"114\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ksUsername\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"115\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"里程\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ksLc\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"116\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"耗时\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ksHs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"117\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"考试日期\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"ksTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:34:32');
INSERT INTO `sys_oper_log` VALUES (343, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_ks', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-17 23:34:40');
INSERT INTO `sys_oper_log` VALUES (344, 'ne信息', 3, 'com.ruoyi.project.system.info.controller.NeInfoController.remove()', 'POST', 1, 'admin', '研发部门', '/system/info/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:37:03');
INSERT INTO `sys_oper_log` VALUES (345, 'ne信息', 3, 'com.ruoyi.project.system.info.controller.NeInfoController.remove()', 'POST', 1, 'admin', '研发部门', '/system/info/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:37:05');
INSERT INTO `sys_oper_log` VALUES (346, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2075', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:38:04');
INSERT INTO `sys_oper_log` VALUES (347, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2076', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:38:13');
INSERT INTO `sys_oper_log` VALUES (348, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2077', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:38:22');
INSERT INTO `sys_oper_log` VALUES (349, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2078', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:38:29');
INSERT INTO `sys_oper_log` VALUES (350, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2079', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:38:35');
INSERT INTO `sys_oper_log` VALUES (351, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2074', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-17 23:38:40');
INSERT INTO `sys_oper_log` VALUES (352, '学生体测信息', 1, 'com.ruoyi.project.system.ks.controller.KsController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/ks/add', '127.0.0.1', '内网IP', '{\"ksUsername\":[\"22\"],\"ksLc\":[\"22\"],\"ksHs\":[\"22\"],\"ksTime\":[\"2019-11-20\"],\"ksStart\":[\"22\"],\"ksEnd\":[\"24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-18 00:14:39');
INSERT INTO `sys_oper_log` VALUES (353, 'ne信息', 1, 'com.ruoyi.project.system.info.controller.NeInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/info/add', '127.0.0.1', '内网IP', '{\"neName\":[\"\"],\"nePath\":[\"<p><img src=\\\"http://localhost:8081/profile/upload/2019/11/19/3e9a93967676149286af20d6c6c3155d.PNG\\\" data-filename=\\\"/profile/upload/2019/11/19/3e9a93967676149286af20d6c6c3155d.PNG\\\" style=\\\"width: 456px;\\\"><br></p>\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.project.system.info.mapper.NeInfoMapper.insertNeInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_ne_info\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-11-19 15:29:22');
INSERT INTO `sys_oper_log` VALUES (354, '通知公告', 2, 'com.ruoyi.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"1\"],\"noticeTitle\":[\"温馨提醒：\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"<p>新版本内容<img src=\\\"http://localhost:8080/profile/upload/2019/11/13/94083fd3093e6d390b43c08811f1b666.png\\\" data-filename=\\\"/profile/upload/2019/11/13/94083fd3093e6d390b43c08811f1b666.png\\\" style=\\\"width: 223px;\\\"></p>\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-19 15:31:30');
INSERT INTO `sys_oper_log` VALUES (355, '通知公告', 2, 'com.ruoyi.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"1\"],\"noticeTitle\":[\"温馨提醒：\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"<p><img src=\\\"http://localhost:8081/profile/upload/2019/11/19/3728059b159ebe0a8a33ff1164716563.PNG\\\" data-filename=\\\"/profile/upload/2019/11/19/3728059b159ebe0a8a33ff1164716563.PNG\\\" style=\\\"width: 456px;\\\"><br></p>\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-19 15:31:49');
INSERT INTO `sys_oper_log` VALUES (356, '通知公告', 2, 'com.ruoyi.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"1\"],\"noticeTitle\":[\"温馨提醒：\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"<p><br></p>\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-19 15:40:19');
INSERT INTO `sys_oper_log` VALUES (357, '通知公告', 2, 'com.ruoyi.project.system.notice.controller.NoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"2\"],\"noticeTitle\":[\"维护通知\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p><br></p>\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-19 15:40:34');
INSERT INTO `sys_oper_log` VALUES (358, '岗位管理', 5, 'com.ruoyi.project.system.post.controller.PostController.export()', 'POST', 1, 'admin', '研发部门', '/system/post/export', '127.0.0.1', '内网IP', '{\"postCode\":[\"\"],\"postName\":[\"\"],\"status\":[\"\"]}', '{\"msg\":\"1c66f3d5-8451-42bd-ae0d-2a8f6d23fc03_岗位数据.xlsx\",\"code\":0}', 0, NULL, '2019-11-19 16:22:13');
INSERT INTO `sys_oper_log` VALUES (359, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2051', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 14:28:41');
INSERT INTO `sys_oper_log` VALUES (360, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2052', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 14:28:47');
INSERT INTO `sys_oper_log` VALUES (361, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2053', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 14:28:54');
INSERT INTO `sys_oper_log` VALUES (362, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2054', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 14:29:03');
INSERT INTO `sys_oper_log` VALUES (363, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2055', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 14:29:10');
INSERT INTO `sys_oper_log` VALUES (364, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2050', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 14:29:17');
INSERT INTO `sys_oper_log` VALUES (365, '岗位管理', 1, 'com.ruoyi.project.system.post.controller.PostController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/post/add', '127.0.0.1', '内网IP', '{\"postName\":[\"1\"],\"postCode\":[\"1\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 14:44:15');
INSERT INTO `sys_oper_log` VALUES (366, '岗位管理', 5, 'com.ruoyi.project.system.post.controller.PostController.export()', 'POST', 1, 'admin', '研发部门', '/system/post/export', '127.0.0.1', '内网IP', '{\"postCode\":[\"\"],\"postName\":[\"\"],\"status\":[\"\"]}', '{\"msg\":\"c05ef754-35c6-407c-a06f-525ab11092b9_岗位数据.xlsx\",\"code\":0}', 0, NULL, '2019-11-20 14:44:30');
INSERT INTO `sys_oper_log` VALUES (367, '岗位管理', 3, 'com.ruoyi.project.system.post.controller.PostController.remove()', 'POST', 1, 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 14:47:14');
INSERT INTO `sys_oper_log` VALUES (368, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 'null', 1, '', '2019-11-20 14:51:18');
INSERT INTO `sys_oper_log` VALUES (369, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 'null', 1, '', '2019-11-20 14:51:32');
INSERT INTO `sys_oper_log` VALUES (370, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 'null', 1, '', '2019-11-20 14:51:34');
INSERT INTO `sys_oper_log` VALUES (371, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 'null', 1, '导入用户数据不能为空！', '2019-11-20 14:51:39');
INSERT INTO `sys_oper_log` VALUES (372, '用户管理', 5, 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '{\"msg\":\"9de9ffa1-929d-419f-bd84-fcbc9c845427_用户数据.xlsx\",\"code\":0}', 0, NULL, '2019-11-20 14:51:53');
INSERT INTO `sys_oper_log` VALUES (373, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 'null', 1, '导入用户数据不能为空！', '2019-11-20 14:52:14');
INSERT INTO `sys_oper_log` VALUES (374, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 'null', 1, '', '2019-11-20 14:52:22');
INSERT INTO `sys_oper_log` VALUES (375, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 'null', 1, '', '2019-11-20 14:52:24');
INSERT INTO `sys_oper_log` VALUES (376, '用户管理', 3, 'com.ruoyi.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"122,1,2\"]}', '{\"msg\":\"不允许操作超级管理员用户\",\"code\":500}', 0, NULL, '2019-11-20 14:52:47');
INSERT INTO `sys_oper_log` VALUES (377, '用户管理', 3, 'com.ruoyi.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"122,1\"]}', '{\"msg\":\"不允许操作超级管理员用户\",\"code\":500}', 0, NULL, '2019-11-20 14:52:57');
INSERT INTO `sys_oper_log` VALUES (378, '用户管理', 3, 'com.ruoyi.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"122\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 14:53:01');
INSERT INTO `sys_oper_log` VALUES (379, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"true\"]}', 'null', 1, '', '2019-11-20 14:53:08');
INSERT INTO `sys_oper_log` VALUES (380, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', 'null', 1, '', '2019-11-20 14:53:13');
INSERT INTO `sys_oper_log` VALUES (381, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"true\"]}', 'null', 1, '', '2019-11-20 14:53:26');
INSERT INTO `sys_oper_log` VALUES (382, '成绩信息', 3, 'com.ruoyi.project.system.te.controller.TeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/te/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 15:48:05');
INSERT INTO `sys_oper_log` VALUES (383, '成绩信息', 6, 'com.ruoyi.project.system.te.controller.TeController.importData()', 'POST', 1, 'admin', '研发部门', '/system/te/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"code\":0}', 0, NULL, '2019-11-20 15:48:12');
INSERT INTO `sys_oper_log` VALUES (384, '成绩信息', 6, 'com.ruoyi.project.system.te.controller.TeController.importData()', 'POST', 1, 'admin', '研发部门', '/system/te/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"code\":0}', 0, NULL, '2019-11-20 15:48:58');
INSERT INTO `sys_oper_log` VALUES (385, '成绩信息', 6, 'com.ruoyi.project.system.te.controller.TeController.importData()', 'POST', 1, 'admin', '研发部门', '/system/te/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"code\":0}', 0, NULL, '2019-11-20 15:55:42');
INSERT INTO `sys_oper_log` VALUES (386, '成绩信息', 1, 'com.ruoyi.project.system.te.controller.TeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/te/add', '127.0.0.1', '内网IP', '{\"teName\":[\"2\"],\"teIdt\":[\"2\"],\"teDay\":[\"2019-11-21\"],\"teMark\":[\"2\"],\"teTecher\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 15:56:12');
INSERT INTO `sys_oper_log` VALUES (387, '成绩信息', 6, 'com.ruoyi.project.system.te.controller.TeController.importData()', 'POST', 1, 'admin', '研发部门', '/system/te/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"code\":0}', 0, NULL, '2019-11-20 16:03:35');
INSERT INTO `sys_oper_log` VALUES (388, '成绩信息', 6, 'com.ruoyi.project.system.te.controller.TeController.importData()', 'POST', 1, 'admin', '研发部门', '/system/te/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"msg\":\"恭喜您，数据已全部导入成功！共 0 条，数据如下：\",\"code\":0}', 0, NULL, '2019-11-20 16:19:20');
INSERT INTO `sys_oper_log` VALUES (389, '成绩信息', 3, 'com.ruoyi.project.system.te.controller.TeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/te/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 16:19:34');
INSERT INTO `sys_oper_log` VALUES (390, '成绩信息', 6, 'com.ruoyi.project.system.te.controller.TeController.importData()', 'POST', 1, 'admin', '研发部门', '/system/te/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"msg\":\"恭喜您，数据已全部导入成功！共 0 条，数据如下：\",\"code\":0}', 0, NULL, '2019-11-20 16:19:47');
INSERT INTO `sys_oper_log` VALUES (391, '成绩信息', 1, 'com.ruoyi.project.system.te.controller.TeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/te/add', '127.0.0.1', '内网IP', '{\"teName\":[\"2\"],\"teIdt\":[\"2\"],\"teDay\":[\"\"],\"teMark\":[\"2\"],\"teTecher\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 16:28:35');
INSERT INTO `sys_oper_log` VALUES (392, '成绩信息', 3, 'com.ruoyi.project.system.te.controller.TeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/te/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 16:28:49');
INSERT INTO `sys_oper_log` VALUES (393, '成绩信息', 6, 'com.ruoyi.project.system.te.controller.TeController.importData()', 'POST', 1, 'admin', '研发部门', '/system/te/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"code\":0}', 0, NULL, '2019-11-20 16:29:01');
INSERT INTO `sys_oper_log` VALUES (394, '成绩信息', 6, 'com.ruoyi.project.system.te.controller.TeController.importData()', 'POST', 1, 'admin', '研发部门', '/system/te/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"msg\":\"恭喜您，数据已全部导入成功！共 0 条，数据如下：\",\"code\":0}', 0, NULL, '2019-11-20 16:35:00');
INSERT INTO `sys_oper_log` VALUES (395, '成绩信息', 6, 'com.ruoyi.project.system.te.controller.TeController.importData()', 'POST', 1, 'admin', '研发部门', '/system/te/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"msg\":\"恭喜您，数据已全部导入成功！共 0 条，数据如下：\",\"code\":0}', 0, NULL, '2019-11-20 16:35:20');
INSERT INTO `sys_oper_log` VALUES (396, '学生体测信息', 1, 'com.ruoyi.project.system.ks.controller.KsController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/ks/add', '127.0.0.1', '内网IP', '{\"ksUsername\":[\"24\"],\"ksLc\":[\"24\"],\"ksHs\":[\"24\"],\"ksTime\":[\"2019-11-05\"],\"ksStart\":[\"22\"],\"ksEnd\":[\"22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 16:43:51');
INSERT INTO `sys_oper_log` VALUES (397, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_chengji\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 16:53:34');
INSERT INTO `sys_oper_log` VALUES (398, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"sys_chengji\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Chengji\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"120\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"chengjiId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"121\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengjiUsername\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"122\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"里程\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengjiLc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"123\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"耗时\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"chengjiHs\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"124\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"考试日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"chengjiTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"125\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"评分\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"chengjiMark\"],', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 16:54:12');
INSERT INTO `sys_oper_log` VALUES (399, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"sys_ks\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Ks\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"112\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ksId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"113\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考试截图\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ksPic\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"114\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ksUsername\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"115\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"里程\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ksLc\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"116\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"耗时\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ksHs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"117\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"考试日期\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"ksTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 16:54:24');
INSERT INTO `sys_oper_log` VALUES (400, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"sys_chengji\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Chengji\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"120\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"chengjiId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"121\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengjiUsername\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"122\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"里程\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengjiLc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"123\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"耗时\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"chengjiHs\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"124\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"考试日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"chengjiTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"125\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"评分\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"chengjiMark\"],', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 16:54:32');
INSERT INTO `sys_oper_log` VALUES (401, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"sys_chengji\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Chengji\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"120\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"chengjiId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"121\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengjiUsername\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"122\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"里程\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengjiLc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"123\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"耗时\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"chengjiHs\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"124\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"考试日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"chengjiTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"125\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"评分\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"chengjiMark\"],', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 16:54:36');
INSERT INTO `sys_oper_log` VALUES (402, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"17\"],\"tableName\":[\"sys_chengji\"],\"tableComment\":[\"学生体测信息表\"],\"className\":[\"Chengji\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"120\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"chengjiId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"121\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengjiUsername\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"122\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"里程\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengjiLc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"123\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"耗时\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"chengjiHs\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"124\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"考试日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"chengjiTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"125\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"评分\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"chengjiMark\"],', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 16:54:47');
INSERT INTO `sys_oper_log` VALUES (403, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_chengji', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-20 16:54:50');
INSERT INTO `sys_oper_log` VALUES (404, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2040', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:00:50');
INSERT INTO `sys_oper_log` VALUES (405, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2039', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:00:56');
INSERT INTO `sys_oper_log` VALUES (406, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2041', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:01:01');
INSERT INTO `sys_oper_log` VALUES (407, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2042', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:01:07');
INSERT INTO `sys_oper_log` VALUES (408, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2043', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:01:17');
INSERT INTO `sys_oper_log` VALUES (409, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2038', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:01:23');
INSERT INTO `sys_oper_log` VALUES (410, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2087', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:01:39');
INSERT INTO `sys_oper_log` VALUES (411, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2088', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:01:44');
INSERT INTO `sys_oper_log` VALUES (412, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2089', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:01:56');
INSERT INTO `sys_oper_log` VALUES (413, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2090', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:02:51');
INSERT INTO `sys_oper_log` VALUES (414, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2091', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:02:58');
INSERT INTO `sys_oper_log` VALUES (415, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2086', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:03:09');
INSERT INTO `sys_oper_log` VALUES (416, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:05:46');
INSERT INTO `sys_oper_log` VALUES (417, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:05:55');
INSERT INTO `sys_oper_log` VALUES (418, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:05:58');
INSERT INTO `sys_oper_log` VALUES (419, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:06:00');
INSERT INTO `sys_oper_log` VALUES (420, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:06:05');
INSERT INTO `sys_oper_log` VALUES (421, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_chengji\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:06:10');
INSERT INTO `sys_oper_log` VALUES (422, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"sys_chengji\"],\"tableComment\":[\"学生成绩信息\"],\"className\":[\"Chengji\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"127\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"chengjiId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"128\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"chengjiUsername\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"129\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"里程\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengjiLc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"130\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"耗时\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"chengjiHs\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"131\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"考试日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"chengjiTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"132\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"评分\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"chengjiMark\"],\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:06:24');
INSERT INTO `sys_oper_log` VALUES (423, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_chengji', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-20 17:06:28');
INSERT INTO `sys_oper_log` VALUES (424, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_zt\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:21:43');
INSERT INTO `sys_oper_log` VALUES (425, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_zt', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-11-20 17:21:46');
INSERT INTO `sys_oper_log` VALUES (426, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2068\"],\"parentId\":[\"2007\"],\"menuType\":[\"C\"],\"menuName\":[\"学生基本信息\"],\"url\":[\"/system/student\"],\"target\":[\"menuItem\"],\"perms\":[\"system:student:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:25:11');
INSERT INTO `sys_oper_log` VALUES (427, '用户管理', 6, 'com.ruoyi.project.system.user.controller.UserController.importData()', 'POST', 1, 'admin', '研发部门', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '{\"msg\":\"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 6 导入成功\",\"code\":0}', 0, NULL, '2019-11-20 17:29:46');
INSERT INTO `sys_oper_log` VALUES (428, '重置密码', 2, 'com.ruoyi.project.system.user.controller.UserController.resetPwd()', 'GET', 1, 'admin', '研发部门', '/system/user/resetPwd/6', '127.0.0.1', '内网IP', '{}', '\"system/user/resetPwd\"', 0, NULL, '2019-11-20 17:31:07');
INSERT INTO `sys_oper_log` VALUES (429, '重置密码', 2, 'com.ruoyi.project.system.user.controller.UserController.resetPwdSave()', 'POST', 1, 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"6\"],\"loginName\":[\"6\"],\"password\":[\"666666\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:31:18');
INSERT INTO `sys_oper_log` VALUES (430, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"6\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-11-20 17:31:26');
INSERT INTO `sys_oper_log` VALUES (431, '学生体测信息', 3, 'com.ruoyi.project.system.ks.controller.KsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/ks/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-02 16:10:52');
INSERT INTO `sys_oper_log` VALUES (432, '学生体测信息', 3, 'com.ruoyi.project.system.ks.controller.KsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/ks/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-02 16:10:54');
INSERT INTO `sys_oper_log` VALUES (433, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksId\":[\"3\"],\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"0米\"],\"ksHs\":[\"00:10\"],\"ksTime\":[\"Sun Nov 24 21:09:44 CST 2019\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.project.system.chengji.mapper.ChengjiMapper.insertChengji-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_chengji\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-12-03 15:27:46');
INSERT INTO `sys_oper_log` VALUES (434, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksId\":[\"3\"],\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"0米\"],\"ksHs\":[\"00:10\"],\"ksTime\":[\"Sun Nov 24 21:09:44 CST 2019\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.project.system.chengji.mapper.ChengjiMapper.insertChengji-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_chengji\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-12-03 15:32:57');
INSERT INTO `sys_oper_log` VALUES (435, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksId\":[\"3\"],\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"0米\"],\"ksHs\":[\"00:10\"],\"ksTime\":[\"Sun Nov 24 21:09:44 CST 2019\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.project.system.chengji.mapper.ChengjiMapper.insertChengji-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_chengji\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-12-03 15:33:11');
INSERT INTO `sys_oper_log` VALUES (436, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2093', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-03 16:13:32');
INSERT INTO `sys_oper_log` VALUES (437, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2094', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-03 16:13:38');
INSERT INTO `sys_oper_log` VALUES (438, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2095', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-03 16:14:05');
INSERT INTO `sys_oper_log` VALUES (439, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2096', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-03 16:14:11');
INSERT INTO `sys_oper_log` VALUES (440, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2097', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-03 16:14:21');
INSERT INTO `sys_oper_log` VALUES (441, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2092', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-03 16:14:26');
INSERT INTO `sys_oper_log` VALUES (442, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-03 17:07:29');
INSERT INTO `sys_oper_log` VALUES (443, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_chengji\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-03 17:07:34');
INSERT INTO `sys_oper_log` VALUES (444, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_chengji', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-12-03 17:08:54');
INSERT INTO `sys_oper_log` VALUES (445, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksId\":[\"3\"],\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"0米\"],\"ksHs\":[\"00:10\"],\"ksTime\":[\"Sun Nov 24 21:09:44 CST 2019\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-03 17:13:17');
INSERT INTO `sys_oper_log` VALUES (446, '学生成绩信息', 3, 'com.ruoyi.project.system.chengji.controller.ChengjiController.remove()', 'POST', 1, 'admin', '研发部门', '/system/chengji/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 16:01:56');
INSERT INTO `sys_oper_log` VALUES (447, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksId\":[\"3\"],\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"0米\"],\"ksHs\":[\"00:10\"],\"ksTime\":[\"\"],\"chengjiMark\":[\"71\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 16:16:16');
INSERT INTO `sys_oper_log` VALUES (448, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksId\":[\"3\"],\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"0米\"],\"ksHs\":[\"00:10\"],\"ksTime\":[\"2019-12-19 14:10:25\"],\"chengjiMark\":[\"88.6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 16:37:37');
INSERT INTO `sys_oper_log` VALUES (449, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2080\"],\"parentId\":[\"2007\"],\"menuType\":[\"C\"],\"menuName\":[\"学生体测信息\"],\"url\":[\"/system/ks\"],\"target\":[\"menuItem\"],\"perms\":[\"system:ks:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 16:41:11');
INSERT INTO `sys_oper_log` VALUES (450, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2104\"],\"parentId\":[\"2007\"],\"menuType\":[\"C\"],\"menuName\":[\"学生成绩信息\"],\"url\":[\"/system/chengji\"],\"target\":[\"menuItem\"],\"perms\":[\"system:chengji:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 16:41:30');
INSERT INTO `sys_oper_log` VALUES (451, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2098\"],\"parentId\":[\"2007\"],\"menuType\":[\"C\"],\"menuName\":[\"学生统计及正态分布信息\"],\"url\":[\"/system/zt\"],\"target\":[\"menuItem\"],\"perms\":[\"system:zt:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 16:42:46');
INSERT INTO `sys_oper_log` VALUES (452, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2098\"],\"parentId\":[\"2007\"],\"menuType\":[\"C\"],\"menuName\":[\"学生统计及正态分布信息\"],\"url\":[\"/system/zt\"],\"target\":[\"menuItem\"],\"perms\":[\"system:zt:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 16:43:20');
INSERT INTO `sys_oper_log` VALUES (453, '学生体测信息', 1, 'com.ruoyi.project.system.ks.controller.KsController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/ks/add', '127.0.0.1', '内网IP', '{\"ksUsername\":[\"666\"],\"ksLc\":[\"1256米\"],\"ksHs\":[\"00：50\"],\"ksTime\":[\"2019-12-20\"],\"ksStart\":[\"2019-12-20\"],\"ksEnd\":[\"2019-12-20\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 16:49:23');
INSERT INTO `sys_oper_log` VALUES (454, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksId\":[\"4\"],\"ksUsername\":[\"666\"],\"ksLc\":[\"1256米\"],\"ksHs\":[\"00：50\"],\"ksTime\":[\"2019-12-20 15:14:30\"],\"chengjiMark\":[\"77.6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 16:49:40');
INSERT INTO `sys_oper_log` VALUES (455, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2099', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 17:25:58');
INSERT INTO `sys_oper_log` VALUES (456, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2100', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 17:26:05');
INSERT INTO `sys_oper_log` VALUES (457, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 17:26:13');
INSERT INTO `sys_oper_log` VALUES (458, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 17:26:20');
INSERT INTO `sys_oper_log` VALUES (459, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 17:26:29');
INSERT INTO `sys_oper_log` VALUES (460, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2098', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 17:26:35');
INSERT INTO `sys_oper_log` VALUES (461, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"19\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 17:31:55');
INSERT INTO `sys_oper_log` VALUES (462, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_zt\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 17:32:39');
INSERT INTO `sys_oper_log` VALUES (463, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"sys_zt\"],\"tableComment\":[\"成绩统计及正态分布信息\"],\"className\":[\"Zt\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"150\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ztId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"151\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ksUsername\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"152\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"全期评分\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"chengjiMark\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"153\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"频率\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ztPinglv\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"154\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"平均分\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ztMean\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"155\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"最低分数\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"ztMin\"],\"columns[5].isInsert\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 17:32:50');
INSERT INTO `sys_oper_log` VALUES (464, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_zt', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-12-04 17:32:54');
INSERT INTO `sys_oper_log` VALUES (465, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2110\"],\"parentId\":[\"2007\"],\"menuType\":[\"C\"],\"menuName\":[\"成绩统计及正态分布信息\"],\"url\":[\"/system/zt\"],\"target\":[\"menuItem\"],\"perms\":[\"system:zt:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-04 17:37:30');
INSERT INTO `sys_oper_log` VALUES (466, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksId\":[\"3\"],\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"0米\"],\"ksHs\":[\"00:10\"],\"ksTime\":[\"2019-12-26 16:03:18\"],\"chengjiMark\":[\"66.7\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-05 16:12:29');
INSERT INTO `sys_oper_log` VALUES (467, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksId\":[\"3\"],\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"0米\"],\"ksHs\":[\"00:10\"],\"ksTime\":[\"\"],\"chengjiMark\":[\"88.7\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-05 16:16:12');
INSERT INTO `sys_oper_log` VALUES (468, '部门管理', 2, 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"梧州学院\"],\"orderNum\":[\"0\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-12 19:42:12');
INSERT INTO `sys_oper_log` VALUES (469, '部门管理', 2, 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"梧州学院\"],\"deptName\":[\"大数据与软件工程\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-12 19:42:32');
INSERT INTO `sys_oper_log` VALUES (470, '部门管理', 2, 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"大数据与软件工程\"],\"deptName\":[\"16软件1、2班\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-12 19:42:49');
INSERT INTO `sys_oper_log` VALUES (471, '部门管理', 2, 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"105\"],\"parentId\":[\"101\"],\"parentName\":[\"大数据与软件工程\"],\"deptName\":[\"16软件3、4班\"],\"orderNum\":[\"3\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-12 19:43:01');
INSERT INTO `sys_oper_log` VALUES (472, '部门管理', 2, 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"102\"],\"parentId\":[\"100\"],\"parentName\":[\"梧州学院\"],\"deptName\":[\"电子信息工程学院\"],\"orderNum\":[\"2\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-12 19:43:17');
INSERT INTO `sys_oper_log` VALUES (473, '部门管理', 2, 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"108\"],\"parentId\":[\"102\"],\"parentName\":[\"电子信息工程学院\"],\"deptName\":[\"电子信息工程1、2班\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-12 19:43:35');
INSERT INTO `sys_oper_log` VALUES (474, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '16软件1、2班', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-17 16:02:48');
INSERT INTO `sys_oper_log` VALUES (475, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.update()', 'POST', 1, 'admin', '16软件1、2班', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"若依\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-17 16:02:51');
INSERT INTO `sys_oper_log` VALUES (476, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.update()', 'POST', 1, 'admin', '16软件1、2班', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"罗浩\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-17 16:03:13');
INSERT INTO `sys_oper_log` VALUES (477, '通知公告', 1, 'com.ruoyi.project.system.notice.controller.NoticeController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/notice/add', '127.0.0.1', '内网IP', '{\"noticeTitle\":[\"考试10月11号\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p><img src=\\\"http://localhost:8081/profile/upload/2019/12/17/91c019f87e810384fff17904833513af.png\\\" data-filename=\\\"/profile/upload/2019/12/17/91c019f87e810384fff17904833513af.png\\\" style=\\\"width: 50%;\\\">限时两天完成，必须在范围规定内<br></p>\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-17 16:52:25');
INSERT INTO `sys_oper_log` VALUES (478, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"罗浩\"],\"dept.deptName\":[\"16软件1、2班\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"1111@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"1\"]}', 'null', 1, '不允许操作超级管理员用户', '2019-12-17 16:54:41');
INSERT INTO `sys_oper_log` VALUES (479, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"2224\"],\"studentName\":[\"2222\"],\"studentIdcard\":[\"22222222222222\"],\"studentBirthday\":[\"2019-10-23\"],\"studentHome\":[\"梧州\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-17 16:55:36');
INSERT INTO `sys_oper_log` VALUES (480, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"201600208216\"],\"studentName\":[\"罗浩\"],\"studentIdcard\":[\"532425199805090011\"],\"studentBirthday\":[\"2019-12-21\"],\"studentHome\":[\"云南玉溪\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-17 16:56:19');
INSERT INTO `sys_oper_log` VALUES (481, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentId\":[\"2\"],\"studentStuid\":[\"201600208209\"],\"studentName\":[\"李家荣\"],\"studentIdcard\":[\"532425199805066\"],\"studentBirthday\":[\"2019-12-19\"],\"studentHome\":[\"梧州\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-17 16:57:18');
INSERT INTO `sys_oper_log` VALUES (482, '学生基本信息', 1, 'com.ruoyi.project.system.student.controller.StudentController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/student/add', '127.0.0.1', '内网IP', '{\"studentStuid\":[\"201600208217\"],\"studentName\":[\"洛斯家\"],\"studentIdcard\":[\"22222225566\"],\"studentBirthday\":[\"2019-12-25\"],\"studentHome\":[\"重庆\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-17 16:57:57');
INSERT INTO `sys_oper_log` VALUES (483, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"lhq123\"],\"deptName\":[\"16软件1、2班\"],\"phonenumber\":[\"18577420722\"],\"email\":[\"10724578@111.com\"],\"loginName\":[\"test01\"],\"password\":[\"123123\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-17 17:16:43');
INSERT INTO `sys_oper_log` VALUES (484, '重置密码', 2, 'com.ruoyi.project.system.user.controller.UserController.resetPwd()', 'GET', 1, 'admin', '16软件1、2班', '/system/user/resetPwd/123', '127.0.0.1', '内网IP', '{}', '\"system/user/resetPwd\"', 0, NULL, '2019-12-17 17:18:57');
INSERT INTO `sys_oper_log` VALUES (485, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,102,108\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2019-12-17 17:19:48');
INSERT INTO `sys_oper_log` VALUES (486, '学生基本信息', 2, 'com.ruoyi.project.system.student.controller.StudentController.editSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/student/edit', '127.0.0.1', '内网IP', '{\"studentId\":[\"1\"],\"studentStuid\":[\"222\"],\"studentName\":[\"22222\"],\"studentIdcard\":[\"2222222\"],\"studentBirthday\":[\"2019-11-17\"],\"studentHome\":[\"22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-09-19 15:13:40');
INSERT INTO `sys_oper_log` VALUES (487, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '16软件1、2班', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-09-22 14:55:32');
INSERT INTO `sys_oper_log` VALUES (488, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.update()', 'POST', 1, 'admin', '16软件1、2班', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"罗浩\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-09-22 14:55:37');
INSERT INTO `sys_oper_log` VALUES (489, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"19\"],\"ksHs\":[\"\\t00：50\"],\"ksTime\":[\"2020-09-08\"],\"chengjiMark\":[\"71\"],\"chengjiJs\":[\"问问\"],\"chengjiStatus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-09-23 17:06:38');
INSERT INTO `sys_oper_log` VALUES (490, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksUsername\":[\"wzxyw\"],\"ksLc\":[\"19\"],\"ksHs\":[\"\\t00：50\"],\"ksTime\":[\"2020-09-02\"],\"chengjiMark\":[\"71\"],\"chengjiJs\":[\"事务所\"],\"chengjiStatus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-09-23 17:06:58');
INSERT INTO `sys_oper_log` VALUES (491, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"19\"],\"ksHs\":[\"\\t00：50\"],\"ksTime\":[\"2020-09-17\"],\"chengjiMark\":[\"71\"],\"chengjiJs\":[\"晚上\"],\"chengjiStatus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-09-23 17:07:15');
INSERT INTO `sys_oper_log` VALUES (492, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"19\"],\"ksHs\":[\"\\t00：50\"],\"ksTime\":[\"2020-10-02\"],\"chengjiMark\":[\"71\"],\"chengjiJs\":[\"事务所\"],\"chengjiStatus\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-09-23 17:07:32');
INSERT INTO `sys_oper_log` VALUES (493, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"19\"],\"ksHs\":[\"\\t00：50\"],\"ksTime\":[\"2020-09-25\"],\"chengjiMark\":[\"71\"],\"chengjiJs\":[\"晚上\"],\"chengjiStatus\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-09-23 17:07:46');
INSERT INTO `sys_oper_log` VALUES (494, '学生成绩信息', 1, 'com.ruoyi.project.system.chengji.controller.ChengjiController.addSave()', 'POST', 1, 'admin', '16软件1、2班', '/system/chengji/add', '127.0.0.1', '内网IP', '{\"ksUsername\":[\"wzxy\"],\"ksLc\":[\"19\"],\"ksHs\":[\"0999\"],\"ksTime\":[\"2020-09-09\"],\"chengjiMark\":[\"71\"],\"chengjiJs\":[\"\"],\"chengjiStatus\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-09-23 17:08:05');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, '01', '总体测负责人', 1, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-12 17:44:34', '');
INSERT INTO `sys_post` VALUES (2, '02', '监考老师', 2, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-12 17:45:02', '');
INSERT INTO `sys_post` VALUES (4, '03', '学生', 3, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-12 17:45:28', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-17 17:19:47', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 102);
INSERT INTO `sys_role_dept` VALUES (2, 108);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_student
-- ----------------------------
DROP TABLE IF EXISTS `sys_student`;
CREATE TABLE `sys_student`  (
  `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `student_stuid` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '学号',
  `student_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '学生名称',
  `student_idcard` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '身份证',
  `student_birthday` datetime(0) NULL DEFAULT NULL COMMENT '生日',
  `student_card` varchar(3000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '照片',
  `student_home` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '籍贯',
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '学生基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_student
-- ----------------------------
INSERT INTO `sys_student` VALUES (1, '222', '22222', '2222222', '2020-09-19 15:13:40', '/profile/upload/2020/09/19/c9fad5c4fc9714de403950205ab562b3.png', '22');
INSERT INTO `sys_student` VALUES (2, '201600208209', '李家荣', '532425199805066', '2019-12-17 16:57:19', '/profile/upload/2019/12/17/58826c0cd644477992cf7aabc9c79b5b.PNG', '梧州');
INSERT INTO `sys_student` VALUES (3, '201600208216', '罗浩', '532425199805090011', '2019-12-17 16:56:19', '/profile/upload/2019/12/17/bb5f65a963a895b782362c1f40af344d.PNG', '云南玉溪');
INSERT INTO `sys_student` VALUES (4, '201600208217', '洛斯家', '22222225566', '2019-12-17 16:57:57', '/profile/upload/2019/12/17/a8f7ddfff7a54169886ad9dbc07874be.PNG', '重庆');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '罗浩', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2020/09/22/437ae92b76501816e1d02e90b73efd1e.png', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2021-01-23 15:04:37', 'admin', '2018-03-16 11:33:00', 'ry', '2021-01-23 15:04:36', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');
INSERT INTO `sys_user` VALUES (6, 6, '6', '6', '00', '66@qq.com', '6666', '0', '', '79333389b511050b09bde265e778d28b', '98a9f6', '1', '0', '', NULL, 'admin', '2019-11-20 17:29:46', '', '2019-11-20 17:31:26', NULL);
INSERT INTO `sys_user` VALUES (100, 103, 'nana', 'nana', '00', '10724578@qq.com', '13566666661', '0', '', 'b8890fb9d95c0b47c14a3a6c562d7c50', 'becddb', '0', '2', '', NULL, 'admin', '2019-11-13 16:38:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (122, 22, '22', '22', '00', '2222qq.com', '2222222', '1', '', 'aae0000eb65a034dfb02ccc8b9dfa26b', '9a66ba', '1', '2', '', NULL, 'admin', '2019-11-13 16:40:07', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (123, 103, 'test01', 'lhq123', '00', '10724578@111.com', '18577420722', '0', '', '1e0157abfd140fc3160ddd060a828e9c', 'b36437', '0', '0', '', NULL, 'admin', '2019-12-17 17:16:43', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('0c5497ab-75ae-4000-abc1-c0e3318372e2', 'admin', '16软件1、2班', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-01-23 15:04:30', '2021-01-23 15:05:42', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 2);
INSERT INTO `sys_user_post` VALUES (123, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 2);
INSERT INTO `sys_user_role` VALUES (123, 2);

-- ----------------------------
-- Table structure for sys_zt
-- ----------------------------
DROP TABLE IF EXISTS `sys_zt`;
CREATE TABLE `sys_zt`  (
  `zt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ks_username` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '姓名',
  `chengji_mark` varchar(2500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '全期评分',
  `zt_pinglv` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '频率',
  `zt_mean` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '平均分',
  `zt_min` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '最低分数',
  `zt_max` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '最高分数',
  `zt_sdv` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '标准偏差',
  PRIMARY KEY (`zt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '成绩统计及正态分布信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_zt
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
