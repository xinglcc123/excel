/*
 Navicat MySQL Data Transfer

 Source Server         : 188 DB
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 10.10.1.102:3306
 Source Schema         : 188_intergration

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 20/09/2021 14:04:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for p_new_rpt
-- ----------------------------
DROP TABLE IF EXISTS `p_new_rpt`;
CREATE TABLE `p_new_rpt`  (
  `index` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `matchdate` date NOT NULL,
  `categoryid` smallint UNSIGNED NOT NULL,
  `accountid` mediumint UNSIGNED NOT NULL,
  `wager_count` int UNSIGNED NOT NULL,
  `bet` decimal(16, 4) NOT NULL,
  `activebet` decimal(16, 4) NOT NULL,
  `payout` decimal(16, 4) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jackpotbet` decimal(16, 4) NOT NULL DEFAULT 0.0000,
  `jackpotpay` decimal(16, 4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`matchdate`, `index`) USING BTREE,
  UNIQUE INDEX `matchdate`(`matchdate`, `categoryid`, `accountid`) USING BTREE,
  UNIQUE INDEX `index`(`index`) USING BTREE,
  INDEX `matchdate2`(`matchdate`, `categoryid`) USING BTREE,
  INDEX `accountid`(`accountid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1385375 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
