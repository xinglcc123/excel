/*
 Navicat MySQL Data Transfer

 Source Server         : 188 DB
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 10.10.1.102:3306
 Source Schema         : 188_agency

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 20/09/2021 14:04:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for a_account_data_extra
-- ----------------------------
DROP TABLE IF EXISTS `a_account_data_extra`;
CREATE TABLE `a_account_data_extra`  (
  `accountid` int NOT NULL,
  `fieldname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fieldvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`accountid`, `fieldname`) USING BTREE,
  INDEX `accountid`(`accountid`) USING BTREE,
  INDEX `fieldname`(`fieldname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_account_data_extra_audit
-- ----------------------------
DROP TABLE IF EXISTS `a_account_data_extra_audit`;
CREATE TABLE `a_account_data_extra_audit`  (
  `logindex` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `accountid` int NOT NULL,
  `fieldname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fieldvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateby` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `action` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`logindex`) USING BTREE,
  INDEX `accountid`(`accountid`) USING BTREE,
  INDEX `fieldname`(`fieldname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_account_features
-- ----------------------------
DROP TABLE IF EXISTS `a_account_features`;
CREATE TABLE `a_account_features`  (
  `featureindex` smallint UNSIGNED NOT NULL,
  `accountid` mediumint UNSIGNED NOT NULL,
  `status` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`featureindex`, `accountid`) USING BTREE,
  INDEX `accid`(`accountid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_account_sum
-- ----------------------------
DROP TABLE IF EXISTS `a_account_sum`;
CREATE TABLE `a_account_sum`  (
  `accountid` int UNSIGNED NOT NULL,
  `1st_deposit_date` timestamp NULL DEFAULT NULL,
  `2nd_deposit_date` timestamp NULL DEFAULT NULL,
  `d_count` int NULL DEFAULT NULL,
  `w_count` int NULL DEFAULT NULL,
  `d_amt` decimal(16, 2) NULL DEFAULT NULL,
  `w_amt` decimal(16, 2) NULL DEFAULT NULL,
  `1st_amt` decimal(16, 2) NULL DEFAULT NULL,
  `2nd_amt` decimal(16, 2) NULL DEFAULT NULL,
  `lastrolldate` timestamp NULL DEFAULT NULL,
  `rollover` decimal(16, 2) NULL DEFAULT NULL,
  `last_d_date` timestamp NULL DEFAULT NULL,
  `last_d_amt` decimal(16, 2) NULL DEFAULT NULL,
  `last_w_date` timestamp NULL DEFAULT NULL,
  `last_w_amt` decimal(16, 2) NULL DEFAULT NULL,
  `adj_d_amt` decimal(16, 2) NULL DEFAULT NULL,
  `adj_w_amt` decimal(16, 2) NULL DEFAULT NULL,
  `promo_d_amt` decimal(16, 2) NULL DEFAULT NULL,
  `promo_w_amt` decimal(16, 2) NULL DEFAULT NULL,
  `inc_amt` decimal(16, 2) NULL DEFAULT NULL,
  `activebet` decimal(16, 2) NULL DEFAULT NULL,
  `winlose` decimal(16, 2) NULL DEFAULT NULL,
  `activeday` int NULL DEFAULT NULL,
  `1st_w_date` timestamp NULL DEFAULT NULL,
  `1st_w_amt` decimal(16, 2) NULL DEFAULT NULL,
  `interest_d_amt` decimal(16, 2) NULL DEFAULT NULL,
  `interest_w_amt` decimal(16, 2) NULL DEFAULT NULL,
  `ppsum` blob NULL,
  PRIMARY KEY (`accountid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_agent_code
-- ----------------------------
DROP TABLE IF EXISTS `a_agent_code`;
CREATE TABLE `a_agent_code`  (
  `accountid` mediumint NOT NULL,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateby` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '1',
  `views` int UNSIGNED NOT NULL DEFAULT 0,
  `lastvisit` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`accountid`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_creditlimit
-- ----------------------------
DROP TABLE IF EXISTS `a_creditlimit`;
CREATE TABLE `a_creditlimit`  (
  `accountid` mediumint UNSIGNED NOT NULL,
  `creditlimit` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `fixed_cl` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastupdateduser` mediumint NOT NULL,
  `gametypeid` tinyint NOT NULL,
  `view_status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '1',
  `companyindex` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`accountid`, `gametypeid`) USING BTREE,
  INDEX `gametypeid`(`gametypeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_features
-- ----------------------------
DROP TABLE IF EXISTS `a_features`;
CREATE TABLE `a_features`  (
  `featureindex` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `feature_english` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `feature_simplified` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `feature_traditional` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sequence` tinyint UNSIGNED NOT NULL,
  `companyindex` tinyint UNSIGNED NOT NULL,
  `colorcode` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `incentive` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '1',
  `style` tinyint UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`featureindex`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
