/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50027
 Source Host           : localhost:3308
 Source Schema         : rabbitmq

 Target Server Type    : MySQL
 Target Server Version : 50027
 File Encoding         : 65001

 Date: 16/04/2020 16:28:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for broker_message_log
-- ----------------------------
DROP TABLE IF EXISTS `broker_message_log`;
CREATE TABLE `broker_message_log`  (
  `message_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `message` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息内容',
  `try_count` int(4) NULL DEFAULT 0 COMMENT '重试次数',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '消息投递状态 0-投递中，1-投递成功，2-投递失败',
  `next_retry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '下一次重试时间',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY USING BTREE (`message_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of broker_message_log
-- ----------------------------
INSERT INTO `broker_message_log` VALUES ('1539078787230$6cc6bc31-8387-4e43-a6c1-e44b0055a592', '{\"id\":\"201809290000000001\",\"messageId\":\"1539078787230$6cc6bc31-8387-4e43-a6c1-e44b0055a592\",\"name\":\"测试订单1\"}', 1, '1', '2018-10-09 17:54:07', '2018-10-09 17:53:08', '2018-10-09 17:54:07');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单ID',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单名称',
  `message_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '消息唯一ID',
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('201809290000000001', '测试订单1', '1539078787230$6cc6bc31-8387-4e43-a6c1-e44b0055a592');

SET FOREIGN_KEY_CHECKS = 1;
