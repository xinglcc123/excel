/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : 127.0.0.1:3306
 Source Schema         : 668

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 24/09/2020 16:50:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tmp_bank
-- ----------------------------
DROP TABLE IF EXISTS `tmp_bank`;
CREATE TABLE `tmp_bank`  (
  `tmp` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `bank` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
