/*
 Navicat MySQL Data Transfer

 Source Server         : t68 DB
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 10.10.1.158:3306
 Source Schema         : t68_money_system

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 15/11/2021 09:11:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_banklevel_setting
-- ----------------------------
DROP TABLE IF EXISTS `account_banklevel_setting`;
CREATE TABLE `account_banklevel_setting`  (
  `accountindex` mediumint NOT NULL,
  `banklevel_id` mediumint NOT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`accountindex`) USING BTREE,
  INDEX `accountindex`(`accountindex`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '这个表格记录每个会员最后一次存取银行阶层时所使用的阶层。' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_banklevel_setting
-- ----------------------------
INSERT INTO `account_banklevel_setting` VALUES (4088, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4120, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4121, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4122, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4123, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4124, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4125, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4126, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4127, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4128, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4129, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (4130, 7, '2021-11-04 04:16:47');
INSERT INTO `account_banklevel_setting` VALUES (5001, 3, '2021-11-09 00:51:54');
INSERT INTO `account_banklevel_setting` VALUES (5002, 3, '2021-11-09 00:54:45');
INSERT INTO `account_banklevel_setting` VALUES (5003, 3, '2021-11-09 04:38:40');
INSERT INTO `account_banklevel_setting` VALUES (5004, 3, '2021-11-09 04:43:40');
INSERT INTO `account_banklevel_setting` VALUES (5005, 3, '2021-11-09 08:41:22');
INSERT INTO `account_banklevel_setting` VALUES (5006, 3, '2021-11-09 13:07:28');
INSERT INTO `account_banklevel_setting` VALUES (5008, 3, '2021-11-09 15:17:51');
INSERT INTO `account_banklevel_setting` VALUES (5009, 3, '2021-11-09 15:18:14');
INSERT INTO `account_banklevel_setting` VALUES (5010, 8, '2021-11-12 07:57:34');
INSERT INTO `account_banklevel_setting` VALUES (5011, 3, '2021-11-10 11:15:43');
INSERT INTO `account_banklevel_setting` VALUES (5012, 3, '2021-11-10 22:24:53');
INSERT INTO `account_banklevel_setting` VALUES (5013, 3, '2021-11-12 01:17:23');
INSERT INTO `account_banklevel_setting` VALUES (5014, 3, '2021-11-12 14:02:45');
INSERT INTO `account_banklevel_setting` VALUES (5017, 3, '2021-11-13 08:20:06');
INSERT INTO `account_banklevel_setting` VALUES (5018, 8, '2021-11-13 15:49:14');
INSERT INTO `account_banklevel_setting` VALUES (5019, 8, '2021-11-13 17:26:37');
INSERT INTO `account_banklevel_setting` VALUES (5020, 8, '2021-11-13 20:24:06');
INSERT INTO `account_banklevel_setting` VALUES (5021, 8, '2021-11-13 23:39:36');
INSERT INTO `account_banklevel_setting` VALUES (5022, 8, '2021-11-14 01:04:18');
INSERT INTO `account_banklevel_setting` VALUES (5023, 3, '2021-11-14 01:16:34');
INSERT INTO `account_banklevel_setting` VALUES (5024, 3, '2021-11-14 02:34:20');
INSERT INTO `account_banklevel_setting` VALUES (5025, 8, '2021-11-14 03:11:34');
INSERT INTO `account_banklevel_setting` VALUES (5026, 8, '2021-11-14 03:54:16');
INSERT INTO `account_banklevel_setting` VALUES (5027, 8, '2021-11-14 07:03:30');
INSERT INTO `account_banklevel_setting` VALUES (5028, 3, '2021-11-14 07:02:42');
INSERT INTO `account_banklevel_setting` VALUES (5029, 3, '2021-11-14 07:54:05');
INSERT INTO `account_banklevel_setting` VALUES (5030, 3, '2021-11-14 08:29:14');
INSERT INTO `account_banklevel_setting` VALUES (5031, 8, '2021-11-14 09:31:05');
INSERT INTO `account_banklevel_setting` VALUES (5032, 3, '2021-11-14 10:37:30');
INSERT INTO `account_banklevel_setting` VALUES (5033, 3, '2021-11-14 11:35:12');
INSERT INTO `account_banklevel_setting` VALUES (5034, 3, '2021-11-14 12:20:48');
INSERT INTO `account_banklevel_setting` VALUES (5035, 3, '2021-11-14 12:25:28');
INSERT INTO `account_banklevel_setting` VALUES (5036, 3, '2021-11-14 12:38:16');
INSERT INTO `account_banklevel_setting` VALUES (5037, 3, '2021-11-14 14:17:44');
INSERT INTO `account_banklevel_setting` VALUES (5038, 3, '2021-11-14 14:17:46');
INSERT INTO `account_banklevel_setting` VALUES (5039, 3, '2021-11-14 18:06:25');
INSERT INTO `account_banklevel_setting` VALUES (5040, 8, '2021-11-14 19:01:40');
INSERT INTO `account_banklevel_setting` VALUES (5041, 3, '2021-11-14 20:51:14');

-- ----------------------------
-- Table structure for bank_level
-- ----------------------------
DROP TABLE IF EXISTS `bank_level`;
CREATE TABLE `bank_level`  (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `trans` int UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(14, 4) UNSIGNED NOT NULL DEFAULT 0.0000,
  `activebet` decimal(14, 4) UNSIGNED NOT NULL DEFAULT 0.0000,
  `flags` int UNSIGNED NOT NULL DEFAULT 0,
  `bank_group` blob NULL,
  `mintransaction` decimal(12, 2) NOT NULL DEFAULT 50.00,
  `maxtransaction` decimal(12, 2) NOT NULL DEFAULT 100.00,
  `showbankaccountno` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastupdateduser` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sequence` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `leveltype` enum('1','2','3','-1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '1: auto 2: manual 3: fixed. -1:deleted',
  `deposit_min` double NULL DEFAULT NULL,
  `deposit_max` double NULL DEFAULT NULL,
  `onlinepayment_min` double NULL DEFAULT NULL,
  `onlinepayment_max` double NULL DEFAULT NULL,
  `withdraw_min` double NULL DEFAULT NULL,
  `withdraw_max` double NULL DEFAULT NULL,
  `dailywithdraw_max` double NULL DEFAULT NULL,
  `autoapprovelimit` double UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trans`(`trans`, `amount`, `activebet`, `leveltype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bank_level
-- ----------------------------
INSERT INTO `bank_level` VALUES (3, '新会员', 0, 0.0000, 0.0000, 0, 0x312C332C342C352C362C382C31382C3232, 10.00, 1000000.00, '1', '2021-11-14 13:11:22', 'cs_t683a4', 0, '1', 10, 10000, 10, 10000, 10, 300000, 300000, 20000);
INSERT INTO `bank_level` VALUES (4, '一般会员', 5, 200000.0000, 0.0000, 1, '', 10.00, 0.00, '0', '2021-11-11 06:28:03', 'BOS', 0, '-1', 10, 10000, 10, 10000, 10, 10000, 500000, 0);
INSERT INTO `bank_level` VALUES (5, 'VIP会员', 20, 1000000.0000, 0.0000, 1, '', 10.00, 10000000.00, '1', '2021-11-11 06:28:03', 'BOS', 0, '-1', 10, 10000, 10, 10000, 10, 10000, 500000, 0);
INSERT INTO `bank_level` VALUES (6, '异常会员', 0, 0.0000, 0.0000, 1, '', 10.00, 1000.00, '0', '2021-11-09 06:56:13', 'BOS', 4, '-1', 0, 0, 0, 0, 0, 0, 0, 0.01);
INSERT INTO `bank_level` VALUES (7, '测试层', 0, 0.0000, 0.0000, 1, 0x312C332C342C352C362C382C31382C3232, 10.00, 1000.00, '1', '2021-11-14 13:11:22', 'cs_t683a4', 255, '3', 10, 10000, 10, 10000, 10, 10000, 500000, 0);
INSERT INTO `bank_level` VALUES (8, '平民-VIP1', 0, 1.0000, 0.0000, 1, 0x312C332C342C352C362C382C31382C3232, 50.00, 100.00, '1', '2021-11-14 13:11:22', 'cs_t683a4', 1, '1', 10, 50000, 10, 50000, 100, 300000, 300000, 50000);
INSERT INTO `bank_level` VALUES (9, '平民-VIP2', 0, 30000.0000, 0.0000, 1, 0x312C332C342C352C362C382C31382C3232, 50.00, 100.00, '1', '2021-11-14 13:11:22', 'cs_t683a4', 1, '1', 10, 50000, 10, 50000, 100, 500000, 500000, 50000);
INSERT INTO `bank_level` VALUES (10, '骑士-VIP3', 0, 100000.0000, 0.0000, 1, 0x312C332C342C352C362C382C31382C3232, 50.00, 100.00, '1', '2021-11-14 13:11:22', 'cs_t683a4', 3, '1', 10, 50000, 10, 50000, 100, 800000, 800000, 50000);
INSERT INTO `bank_level` VALUES (11, '男爵-VIP4', 0, 500000.0000, 0.0000, 1, 0x312C332C342C352C362C382C31382C3232, 50.00, 100.00, '1', '2021-11-14 13:11:22', 'cs_t683a4', 4, '1', 10, 100000, 10, 50000, 10, 1000000, 1000000, 50000);
INSERT INTO `bank_level` VALUES (12, '子爵-VIP5', 0, 3000000.0000, 0.0000, 1, 0x312C332C342C352C362C382C31382C3232, 50.00, 100.00, '1', '2021-11-14 13:11:22', 'cs_t683a4', 4, '1', 10, 150000, 10, 50000, 100, 2000000, 2000000, 50000);
INSERT INTO `bank_level` VALUES (13, '伯爵-VIP6', 0, 10000000.0000, 0.0000, 1, 0x312C332C342C352C362C382C31382C3232, 50.00, 100.00, '1', '2021-11-14 13:11:22', 'cs_t683a4', 6, '1', 10, 200000, 10, 50000, 10, 5000000, 5000000, 50000);
INSERT INTO `bank_level` VALUES (14, '公爵-SVIP', 0, 100000000.0000, 0.0000, 1, 0x312C332C342C352C362C382C31382C3232, 50.00, 100.00, '1', '2021-11-14 13:11:22', 'cs_t683a4', 8, '1', 10, 1000000, 10, 50000, 100, 20000000, 20000000, 50000);
INSERT INTO `bank_level` VALUES (15, '侯爵-VIP7', 0, 30000000.0000, 0.0000, 1, 0x312C332C342C352C362C382C31382C3232, 50.00, 100.00, '1', '2021-11-14 13:11:22', 'cs_t683a4', 7, '1', 10, 300000, 10, 50000, 100, 1000000, 1000000, 50000);

-- ----------------------------
-- Table structure for bank_level_assignment
-- ----------------------------
DROP TABLE IF EXISTS `bank_level_assignment`;
CREATE TABLE `bank_level_assignment`  (
  `assignid` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `banklevel` mediumint UNSIGNED NULL DEFAULT NULL,
  `accountid` int UNSIGNED NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdateduser` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lock` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0',
  PRIMARY KEY (`assignid`) USING BTREE,
  UNIQUE INDEX `accountid`(`accountid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of bank_level_assignment
-- ----------------------------
INSERT INTO `bank_level_assignment` VALUES (1, 7, 4088, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (2, 7, 4120, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (3, 7, 4121, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (4, 7, 4122, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (5, 7, 4123, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (6, 7, 4124, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (7, 7, 4125, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (8, 7, 4126, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (9, 7, 4127, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (10, 7, 4128, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (11, 7, 4129, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');
INSERT INTO `bank_level_assignment` VALUES (12, 7, 4130, 'BOS', '2021-11-04 04:16:48', 'BOS', '0');

-- ----------------------------
-- Table structure for bank_level_assignment_audittrail
-- ----------------------------
DROP TABLE IF EXISTS `bank_level_assignment_audittrail`;
CREATE TABLE `bank_level_assignment_audittrail`  (
  `auditindex` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `assignid` int UNSIGNED NOT NULL,
  `banklevel` mediumint UNSIGNED NULL DEFAULT NULL,
  `accountid` int UNSIGNED NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastupdateduser` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `updateaction` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lock` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`auditindex`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of bank_level_assignment_audittrail
-- ----------------------------

-- ----------------------------
-- Table structure for cash_ledger
-- ----------------------------
DROP TABLE IF EXISTS `cash_ledger`;
CREATE TABLE `cash_ledger`  (
  `ledgerindex` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ledgerdatetime` datetime NOT NULL,
  `accountindex` mediumint UNSIGNED NOT NULL,
  `transactionindex` tinyint UNSIGNED NOT NULL,
  `fundindex` tinyint UNSIGNED NOT NULL,
  `status` tinyint UNSIGNED NOT NULL,
  `doublecheckstatus` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `currencyindex` tinyint UNSIGNED NOT NULL,
  `amount` decimal(14, 4) NOT NULL,
  `amountlocal` decimal(14, 4) NOT NULL,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `creditcard_flag` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `return_msg` blob NULL,
  `featureindex` mediumint UNSIGNED NULL DEFAULT NULL,
  `companyindex` tinyint UNSIGNED NOT NULL,
  `bankindex` smallint NULL DEFAULT NULL,
  `postindex` mediumint NULL DEFAULT NULL,
  `reference_ledgerindex` mediumint UNSIGNED NULL DEFAULT NULL,
  `bankaccountindex` mediumint UNSIGNED NOT NULL,
  `deposit_date` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_bankaccountname` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_bankaccountno` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deposit_time` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deposit_location` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `deposit_profileindex` mediumint NULL DEFAULT NULL,
  `deposit_method_type` tinyint NULL DEFAULT NULL,
  `deposit_verify_code` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total_ccl` decimal(25, 4) NOT NULL,
  `current_rollover` decimal(14, 4) UNSIGNED NOT NULL,
  `autoconfirm` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `withdrawal_valid` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1' COMMENT '此笔交易是否加入稽核 0: 不加入稽核； 1: 加入稽核',
  `finishdatetime` datetime NULL DEFAULT NULL,
  `finishby` int NULL DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ledgerindex`) USING BTREE,
  INDEX `ledgerdatetime`(`ledgerdatetime`) USING BTREE,
  INDEX `accountindex_ledgerdatetime`(`accountindex`, `ledgerdatetime`) USING BTREE,
  INDEX `fundindex`(`fundindex`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `accountindex`(`accountindex`) USING BTREE,
  INDEX `transactionindex`(`transactionindex`) USING BTREE,
  INDEX `companyindex`(`companyindex`) USING BTREE,
  INDEX `ledgerindex`(`ledgerindex`) USING BTREE,
  INDEX `deposit_verify_code`(`deposit_verify_code`) USING BTREE,
  INDEX `finishdatetime`(`finishdatetime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cash_ledger
-- ----------------------------
INSERT INTO `cash_ledger` VALUES (1, '2021-11-09 04:47:06', 5003, 1, 1, 4, '0', 1, 10000.0000, 10000.0000, '113.61.43.12', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-09', '正在', '', '16:46', '正在', 1, 1, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-09 04:47:06');
INSERT INTO `cash_ledger` VALUES (2, '2021-11-09 08:41:40', 5005, 1, 1, 8, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 2, 1, 5, NULL, 0, 3, '09/11/2021', '37', '', '08:41', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-09 08:41:42');
INSERT INTO `cash_ledger` VALUES (3, '2021-11-09 08:41:58', 5005, 1, 1, 8, '0', 1, 111.0000, 111.0000, '113.61.43.13', 0, NULL, 2, 1, 5, NULL, 0, 3, '09/11/2021', '37', '', '08:41', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-09 08:41:58');
INSERT INTO `cash_ledger` VALUES (4, '2021-11-09 09:08:57', 5005, 1, 1, 8, '0', 1, 111.0000, 111.0000, '113.61.43.13', 0, NULL, 2, 1, 5, NULL, 0, 3, '09/11/2021', '37', '', '09:08', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-09 09:08:58');
INSERT INTO `cash_ledger` VALUES (5, '2021-11-09 09:09:30', 5005, 1, 1, 8, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 2, 1, 5, NULL, 0, 3, '09/11/2021', '37', '', '09:09', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-09 09:09:30');
INSERT INTO `cash_ledger` VALUES (6, '2021-11-09 09:10:24', 5005, 1, 1, 8, '0', 1, 399.0000, 399.0000, '113.61.43.13', 0, NULL, 2, 1, 5, NULL, 0, 3, '09/11/2021', '29', '', '09:10', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-09 09:10:25');
INSERT INTO `cash_ledger` VALUES (7, '2021-11-09 09:49:30', 5005, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 2, 1, 5, NULL, 0, 3, '09/11/2021', '37', '', '09:49', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-09 21:49:31', 72, '2021-11-09 21:49:31');
INSERT INTO `cash_ledger` VALUES (8, '2021-11-09 10:30:50', 5005, 1, 1, 8, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 3, 1, 5, NULL, 0, 4, '09/11/2021', '29', '', '10:30', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-09 10:30:51');
INSERT INTO `cash_ledger` VALUES (9, '2021-11-09 14:30:41', 4126, 1, 1, 2, '0', 1, 100.0000, 100.0000, '13.73.17.192', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-10', 'bgtest03', '', '02:30', '', 2, 1, '', 500.0000, 0.0000, '0', '1', '2021-11-09 14:31:31', 1024, '2021-11-09 14:31:31');
INSERT INTO `cash_ledger` VALUES (10, '2021-11-09 14:32:56', 4126, 1, 1, 2, '0', 1, 100.0000, 100.0000, '13.73.17.192', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-10', 'bgtest03', '', '02:30', '', 2, 1, '', 500.0000, 0.0000, '0', '1', '2021-11-09 14:35:28', 1024, '2021-11-09 14:35:28');
INSERT INTO `cash_ledger` VALUES (11, '2021-11-10 01:33:46', 5005, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 2, 1, 5, NULL, 0, 3, '10/11/2021', '37', '', '01:33', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-10 13:33:47', 72, '2021-11-10 13:33:47');
INSERT INTO `cash_ledger` VALUES (12, '2021-11-10 01:49:32', 5005, 1, 1, 8, '0', 1, 30.0000, 30.0000, '113.61.43.13', 0, NULL, 2, 1, 5, NULL, 0, 3, '10/11/2021', '37', '', '01:49', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-10 01:49:33');
INSERT INTO `cash_ledger` VALUES (13, '2021-11-10 01:49:54', 5005, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 2, 1, 5, NULL, 0, 3, '10/11/2021', '37', '', '01:49', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-10 13:49:55', 72, '2021-11-10 13:49:55');
INSERT INTO `cash_ledger` VALUES (14, '2021-11-10 03:09:51', 5005, 1, 1, 8, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 10, 1, 5, NULL, 0, 5, '10/11/2021', '29', '', '03:09', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-10 03:09:52');
INSERT INTO `cash_ledger` VALUES (15, '2021-11-10 03:22:23', 5005, 1, 1, 8, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, NULL, 10, 1, 5, NULL, 0, 5, '10/11/2021', '29', '', '03:22', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-10 03:22:24');
INSERT INTO `cash_ledger` VALUES (16, '2021-11-10 03:26:35', 5005, 1, 1, 8, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, NULL, 10, 1, 5, NULL, 0, 5, '10/11/2021', '5', '', '03:26', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-10 03:26:36');
INSERT INTO `cash_ledger` VALUES (17, '2021-11-10 03:29:20', 5005, 1, 1, 8, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, NULL, 10, 1, 5, NULL, 0, 5, '10/11/2021', '5', '', '03:29', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-10 03:29:23');
INSERT INTO `cash_ledger` VALUES (18, '2021-11-10 04:31:11', 5005, 1, 1, 8, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, NULL, 10, 1, 5, NULL, 0, 5, '10/11/2021', '5', '', '04:31', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-10 04:31:13');
INSERT INTO `cash_ledger` VALUES (19, '2021-11-10 04:31:34', 5005, 1, 1, 8, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, NULL, 10, 1, 5, NULL, 0, 5, '10/11/2021', '5', '', '04:31', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-10 04:31:35');
INSERT INTO `cash_ledger` VALUES (20, '2021-11-10 04:32:01', 5005, 1, 1, 2, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, NULL, 10, 1, 5, NULL, 0, 5, '10/11/2021', '29', '', '04:32', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-10 16:32:02', 72, '2021-11-10 16:32:02');
INSERT INTO `cash_ledger` VALUES (21, '2021-11-10 04:32:50', 5005, 1, 1, 2, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, NULL, 10, 1, 5, NULL, 0, 5, '10/11/2021', '29', '', '04:32', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-10 16:32:52', 72, '2021-11-10 16:32:52');
INSERT INTO `cash_ledger` VALUES (22, '2021-11-10 07:18:55', 5010, 1, 3, 1, '0', 1, 888.0000, 888.0000, '113.61.43.11', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 888.0000, 0.0000, '0', '1', '2021-11-10 07:55:22', 1002, '2021-11-10 07:55:22');
INSERT INTO `cash_ledger` VALUES (23, '2021-11-10 08:06:09', 5010, 1, 3, 2, '0', 1, 8888.0000, 8888.0000, '113.61.43.11', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9776.0000, 0.0000, '0', '1', '2021-11-10 08:09:18', 1002, '2021-11-10 08:09:18');
INSERT INTO `cash_ledger` VALUES (24, '2021-11-10 08:08:48', 5010, 1, 3, 2, '0', 1, 888.0000, 888.0000, '113.61.43.11', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1776.0000, 0.0000, '0', '1', '2021-11-10 08:09:11', 1002, '2021-11-10 08:09:11');
INSERT INTO `cash_ledger` VALUES (25, '2021-11-10 08:29:57', 4126, 1, 3, 2, '0', 1, 888.0000, 888.0000, '13.73.17.192', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1480.0000, 0.0000, '0', '1', '2021-11-10 08:43:32', 1002, '2021-11-10 08:43:32');
INSERT INTO `cash_ledger` VALUES (26, '2021-11-10 11:41:59', 4124, 1, 3, 2, '0', 1, 8888.0000, 8888.0000, '13.73.17.192', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9388.0000, 0.0000, '0', '1', '2021-11-10 12:26:10', 1002, '2021-11-10 12:26:10');
INSERT INTO `cash_ledger` VALUES (27, '2021-11-10 12:04:27', 5011, 1, 3, 2, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '0', '1', '2021-11-10 12:26:15', 1002, '2021-11-10 12:26:15');
INSERT INTO `cash_ledger` VALUES (28, '2021-11-11 06:15:51', 5004, 1, 3, 2, '0', 1, 8888.0000, 8888.0000, '61.244.94.106', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8888.0000, 0.0000, '0', '1', '2021-11-11 06:24:58', 1011, '2021-11-11 06:24:58');
INSERT INTO `cash_ledger` VALUES (29, '2021-11-11 06:24:32', 5004, 1, 1, 2, '0', 1, 100.0000, 100.0000, '61.244.94.106', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-11', '测试', '', '18:23', '', 3, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-11 06:24:50', 1011, '2021-11-11 06:24:50');
INSERT INTO `cash_ledger` VALUES (30, '2021-11-11 06:24:32', 5004, 1, 3, 2, '0', 1, 1.0000, 1.0000, '61.244.94.106', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-11', '测试', '', '18:23', '', 3, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-11 06:24:50', 1011, '2021-11-11 06:24:50');
INSERT INTO `cash_ledger` VALUES (31, '2021-11-11 06:59:04', 5010, 1, 3, 1, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '0', '1', '2021-11-11 06:59:20', 1002, '2021-11-11 06:59:20');
INSERT INTO `cash_ledger` VALUES (32, '2021-11-11 10:50:17', 5010, 1, 3, 2, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '0', '1', '2021-11-12 07:09:51', 1002, '2021-11-12 07:09:51');
INSERT INTO `cash_ledger` VALUES (33, '2021-11-12 00:56:27', 5003, 1, 4, 2, '0', 1, 500.0000, 500.0000, '113.61.43.13', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '0', '1', '2021-11-12 01:24:05', 1013, '2021-11-12 01:24:05');
INSERT INTO `cash_ledger` VALUES (34, '2021-11-12 01:25:58', 5013, 1, 4, 1, '0', 1, 500.0000, 500.0000, '113.61.43.12', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 500.0000, 0.0000, '0', '1', '2021-11-12 01:26:02', 1013, '2021-11-12 01:26:02');
INSERT INTO `cash_ledger` VALUES (35, '2021-11-12 06:42:49', 5010, 1, 1, 2, '0', 1, 500.0000, 500.0000, '113.61.43.11', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-12', '大神', '', '18:42', '', 4, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-12 07:58:50', 1002, '2021-11-12 07:58:50');
INSERT INTO `cash_ledger` VALUES (36, '2021-11-12 06:42:49', 5010, 1, 3, 2, '0', 1, 5.0000, 5.0000, '113.61.43.11', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-12', '大神', '', '18:42', '', 4, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-12 07:09:59', 1002, '2021-11-12 07:09:59');
INSERT INTO `cash_ledger` VALUES (37, '2021-11-12 07:07:48', 5010, 1, 3, 1, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, '0', '1', '2021-11-12 07:08:40', 1002, '2021-11-12 07:08:40');
INSERT INTO `cash_ledger` VALUES (38, '2021-11-12 07:23:01', 5010, 1, 1, 2, '0', 1, 50.0000, 50.0000, '113.61.43.11', 0, NULL, 2, 1, 5, NULL, 0, 3, '12/11/2021', '37', '', '07:23', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-12 19:23:02', 72, '2021-11-12 19:23:02');
INSERT INTO `cash_ledger` VALUES (39, '2021-11-12 07:23:28', 5010, 1, 1, 1, '0', 1, 200.0000, 200.0000, '113.61.43.11', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-12', '大神', '', '19:23', '', 4, 1, '', 200.0000, 0.0000, '0', '1', '2021-11-12 07:57:25', 1002, '2021-11-12 07:57:25');
INSERT INTO `cash_ledger` VALUES (40, '2021-11-12 07:23:28', 5010, 1, 3, 1, '0', 1, 60.0000, 60.0000, '113.61.43.11', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-12', '大神', '', '19:23', '', 4, 1, '', 260.0000, 0.0000, '1', '1', '2021-11-12 07:57:26', 72, '2021-11-12 07:57:26');
INSERT INTO `cash_ledger` VALUES (41, '2021-11-12 07:53:46', 5010, 1, 1, 1, '0', 1, 1000.0000, 1000.0000, '113.61.43.11', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-12', '大神', '', '19:53', '', 4, 1, '', 1260.0000, 0.0000, '0', '1', '2021-11-12 07:58:13', 1002, '2021-11-12 07:58:13');
INSERT INTO `cash_ledger` VALUES (42, '2021-11-12 07:53:46', 5010, 1, 3, 2, '0', 1, 880.0000, 880.0000, '113.61.43.11', 0, NULL, NULL, 1, 1, NULL, 0, 2, '2021-11-12', '大神', '', '19:53', '', 4, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-12 07:58:22', 1002, '2021-11-12 07:58:22');
INSERT INTO `cash_ledger` VALUES (43, '2021-11-13 11:04:26', 5010, 1, 1, 2, '0', 1, 10.0000, 10.0000, '113.61.43.11', 0, NULL, 8, 1, 5, NULL, 0, 1, '13/11/2021', '37', '', '11:04', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-13 23:04:27', 72, '2021-11-13 23:04:27');
INSERT INTO `cash_ledger` VALUES (44, '2021-11-13 12:07:19', 5005, 1, 1, 2, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, NULL, 8, 1, 5, NULL, 0, 1, '13/11/2021', '37', '', '12:07', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 00:07:20', 72, '2021-11-14 00:07:20');
INSERT INTO `cash_ledger` VALUES (45, '2021-11-13 12:07:32', 5005, 1, 1, 2, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, NULL, 16, 1, 5, NULL, 0, 8, '13/11/2021', '37', '', '12:07', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 00:07:34', 72, '2021-11-14 00:07:34');
INSERT INTO `cash_ledger` VALUES (46, '2021-11-13 12:07:45', 5005, 1, 1, 2, '0', 1, 300.0000, 300.0000, '113.61.43.13', 0, NULL, 5, 1, 5, NULL, 0, 3, '13/11/2021', '29', '', '12:07', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 00:07:46', 72, '2021-11-14 00:07:46');
INSERT INTO `cash_ledger` VALUES (47, '2021-11-13 12:07:54', 5005, 1, 1, 2, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, NULL, 7, 1, 5, NULL, 0, 1, '13/11/2021', '29', '', '12:07', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 00:07:55', 72, '2021-11-14 00:07:55');
INSERT INTO `cash_ledger` VALUES (48, '2021-11-13 12:08:03', 5005, 1, 1, 2, '0', 1, 3000.0000, 3000.0000, '113.61.43.13', 0, NULL, 10, 1, 5, NULL, 0, 5, '13/11/2021', '29', '', '12:08', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 00:08:04', 72, '2021-11-14 00:08:04');
INSERT INTO `cash_ledger` VALUES (49, '2021-11-13 12:08:16', 5005, 1, 1, 2, '0', 1, 300.0000, 300.0000, '113.61.43.13', 0, NULL, 13, 1, 5, NULL, 0, 8, '13/11/2021', '29', '', '12:08', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 00:08:17', 72, '2021-11-14 00:08:17');
INSERT INTO `cash_ledger` VALUES (50, '2021-11-13 12:08:54', 5005, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 9, 1, 5, NULL, 0, 1, '13/11/2021', '37', '', '12:08', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 00:08:55', 72, '2021-11-14 00:08:55');
INSERT INTO `cash_ledger` VALUES (51, '2021-11-13 12:09:14', 5005, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 6, 1, 5, NULL, 0, 1, '13/11/2021', '29', '', '12:09', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 00:09:15', 72, '2021-11-14 00:09:15');
INSERT INTO `cash_ledger` VALUES (52, '2021-11-13 14:53:40', 5014, 1, 1, 2, '0', 1, 500.0000, 500.0000, '113.61.43.12', 0, NULL, 5, 1, 5, NULL, 0, 3, '13/11/2021', '29', '', '14:53', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 02:53:41', 72, '2021-11-14 02:53:41');
INSERT INTO `cash_ledger` VALUES (53, '2021-11-13 14:54:01', 5014, 1, 1, 2, '0', 1, 1000.0000, 1000.0000, '113.61.43.12', 0, NULL, 13, 1, 5, NULL, 0, 8, '13/11/2021', '29', '', '14:54', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 02:54:03', 72, '2021-11-14 02:54:03');
INSERT INTO `cash_ledger` VALUES (54, '2021-11-13 14:58:09', 5014, 1, 1, 2, '0', 1, 1000.0000, 1000.0000, '113.61.43.12', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '小雅', '', '02:58', '', 5, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-13 15:00:21', 1013, '2021-11-13 15:00:21');
INSERT INTO `cash_ledger` VALUES (55, '2021-11-13 14:58:49', 5014, 1, 1, 2, '0', 1, 1000.0000, 1000.0000, '113.61.43.12', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '小雅', '', '02:58', '', 5, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-13 15:00:29', 1013, '2021-11-13 15:00:29');
INSERT INTO `cash_ledger` VALUES (56, '2021-11-13 14:59:20', 5014, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.12', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '小雅', '', '02:58', '', 5, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-13 15:00:36', 1013, '2021-11-13 15:00:36');
INSERT INTO `cash_ledger` VALUES (57, '2021-11-13 15:00:43', 5014, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.12', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '小雅', '', '02:58', '', 5, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-13 15:02:30', 1013, '2021-11-13 15:02:30');
INSERT INTO `cash_ledger` VALUES (58, '2021-11-13 15:01:35', 5014, 1, 1, 2, '0', 1, 133.0000, 133.0000, '113.61.43.12', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '小雅', '', '02:58', '', 5, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-13 15:02:22', 1013, '2021-11-13 15:02:22');
INSERT INTO `cash_ledger` VALUES (59, '2021-11-13 15:02:35', 5014, 1, 1, 2, '0', 1, 121.0000, 121.0000, '113.61.43.12', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '小雅', '', '02:58', '', 5, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-13 15:04:17', 1013, '2021-11-13 15:04:17');
INSERT INTO `cash_ledger` VALUES (60, '2021-11-13 15:06:09', 5010, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.11', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '大神', '', '03:05', '', 4, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-13 15:49:17', 1013, '2021-11-13 15:49:17');
INSERT INTO `cash_ledger` VALUES (61, '2021-11-13 15:48:45', 5018, 1, 1, 1, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-13', '29', '', '15:49:07', '', 0, 3, '', 200.0000, 0.0000, '1', '1', '2021-11-13 15:49:07', 72, '2021-11-13 15:49:07');
INSERT INTO `cash_ledger` VALUES (62, '2021-11-13 15:53:07', 5018, 1, 1, 1, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 0x613A383A7B733A383A226D656D6265726964223B733A353A223130353433223B733A373A226F726465726964223B733A32383A2232303231313131343033353331313435393838323430393237383338223B733A31343A227472616E73616374696F6E5F6964223B733A31363A2232303231313131333135353330373632223B733A363A22616D6F756E74223B733A383A223230302E30303030223B733A383A226461746574696D65223B733A31343A223230323131313134303335333437223B733A31303A2272657475726E636F6465223B733A323A223030223B733A343A227369676E223B733A33323A224346413934313330343841344346334430314639464334333734353332343039223B733A363A22617474616368223B733A32303A226433366464386635333965333830323761383639223B7D, 13, 1, 5, NULL, 0, 8, '2021-11-13', '29', '', '15:53:48', '', 0, 3, '', 200.0000, 121.0000, '1', '1', '2021-11-13 15:53:48', 72, '2021-11-13 16:01:57');
INSERT INTO `cash_ledger` VALUES (63, '2021-11-13 16:01:56', 5018, 2, 1, 1, '1', 1, 600.0000, 600.0000, '211.95.3.168', 0, NULL, NULL, 1, 6, NULL, 0, 10, '', '', '', '', '', 0, NULL, '', 600.0000, 0.0000, '0', '1', '2021-11-13 16:24:52', 1013, '2021-11-13 16:24:52');
INSERT INTO `cash_ledger` VALUES (64, '2021-11-13 17:24:34', 5019, 1, 1, 2, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, NULL, 16, 1, 5, NULL, 0, 8, '13/11/2021', '37', '', '17:24', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 05:24:35', 72, '2021-11-14 05:24:35');
INSERT INTO `cash_ledger` VALUES (65, '2021-11-13 17:24:57', 5019, 1, 1, 2, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, NULL, 16, 1, 5, NULL, 0, 8, '13/11/2021', '37', '', '17:24', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 05:24:58', 72, '2021-11-14 05:24:58');
INSERT INTO `cash_ledger` VALUES (66, '2021-11-13 17:25:30', 5019, 1, 1, 1, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, 0x613A303A7B7D, 4, 1, 5, NULL, 0, 3, '2021-11-13', '29', '', '17:26:21', '', 0, 3, '', 500.0000, 2420.0000, '1', '1', '2021-11-13 17:26:22', 72, '2021-11-13 20:19:00');
INSERT INTO `cash_ledger` VALUES (67, '2021-11-13 20:19:00', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.136.102.77', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-13', '29', '', '20:19:29', '', 0, 3, '', 100.0000, 160.0000, '1', '1', '2021-11-13 20:19:29', 72, '2021-11-13 20:24:40');
INSERT INTO `cash_ledger` VALUES (68, '2021-11-13 20:21:11', 5020, 1, 1, 1, '0', 1, 150.0000, 150.0000, '112.64.119.242', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '陈仁义', '', '08:21', '', 6, 1, '', 150.0000, 0.0000, '0', '1', '2021-11-13 20:21:26', 1013, '2021-11-13 20:21:26');
INSERT INTO `cash_ledger` VALUES (69, '2021-11-13 20:21:11', 5020, 1, 3, 1, '0', 1, 1.5000, 1.5000, '112.64.119.242', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '陈仁义', '', '08:21', '', 6, 1, '', 151.5000, 0.0000, '1', '1', '2021-11-13 20:21:27', 72, '2021-11-13 20:21:27');
INSERT INTO `cash_ledger` VALUES (70, '2021-11-13 20:24:40', 5019, 1, 1, 2, '0', 1, 100.0000, 100.0000, '36.4.213.108', 0, NULL, 7, 1, 5, NULL, 0, 1, '13/11/2021', '29', '', '20:24', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 08:24:41', 72, '2021-11-14 08:24:41');
INSERT INTO `cash_ledger` VALUES (71, '2021-11-13 20:26:23', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '36.4.213.108', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-13', '29', '', '20:26:55', '', 0, 3, '', 100.0000, 1122.0000, '1', '1', '2021-11-13 20:26:56', 72, '2021-11-13 20:51:36');
INSERT INTO `cash_ledger` VALUES (72, '2021-11-13 20:43:31', 5018, 1, 1, 2, '0', 1, 200.0000, 200.0000, '117.136.8.123', 0, NULL, 7, 1, 5, NULL, 0, 1, '13/11/2021', '29', '', '20:43', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 08:43:32', 72, '2021-11-14 08:43:32');
INSERT INTO `cash_ledger` VALUES (73, '2021-11-13 20:51:36', 5019, 2, 1, 1, '1', 1, 300.0000, 300.0000, '36.4.213.108', 0, NULL, NULL, 1, 2, NULL, 0, 12, '', '', '', '', '', 0, NULL, '', 402.0000, 1086.5000, '0', '1', '2021-11-13 21:00:11', 1013, '2021-11-13 21:11:50');
INSERT INTO `cash_ledger` VALUES (74, '2021-11-13 21:11:50', 5019, 2, 1, 1, '1', 1, 500.0000, 500.0000, '36.4.213.108', 0, NULL, NULL, 1, 2, NULL, 0, 12, '', '', '', '', '', 0, NULL, '', 608.0000, 455.0000, '0', '1', '2021-11-13 21:13:43', 1013, '2021-11-14 11:57:12');
INSERT INTO `cash_ledger` VALUES (75, '2021-11-13 21:18:39', 5020, 1, 3, 2, '0', 1, 0.0000, 0.0000, '112.64.119.208', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.5000, 0.0000, '0', '1', '2021-11-13 21:21:50', 1013, '2021-11-13 21:21:50');
INSERT INTO `cash_ledger` VALUES (76, '2021-11-13 21:22:13', 5020, 1, 1, 1, '0', 1, 123.0000, 123.0000, '112.64.119.208', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '陈仁义', '', '09:22', '', 6, 1, '', 123.5000, 0.0000, '0', '1', '2021-11-13 21:22:43', 1013, '2021-11-13 21:22:43');
INSERT INTO `cash_ledger` VALUES (77, '2021-11-13 21:22:13', 5020, 1, 3, 1, '0', 1, 1.2300, 1.2300, '112.64.119.208', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '陈仁义', '', '09:22', '', 6, 1, '', 124.7300, 0.0000, '1', '1', '2021-11-13 21:22:44', 72, '2021-11-13 21:22:44');
INSERT INTO `cash_ledger` VALUES (78, '2021-11-13 23:37:51', 5021, 1, 1, 2, '0', 1, 20.0000, 20.0000, '42.245.196.182', 0, NULL, 8, 1, 5, NULL, 0, 1, '13/11/2021', '37', '', '23:37', '', 0, 3, '', 0.0000, 0.0000, '0', '1', '2021-11-14 11:37:52', 72, '2021-11-14 11:37:52');
INSERT INTO `cash_ledger` VALUES (79, '2021-11-13 23:38:41', 5021, 1, 1, 1, '0', 1, 20.0000, 20.0000, '117.136.30.2', 0, 0x613A303A7B7D, 8, 1, 5, NULL, 0, 1, '2021-11-13', '37', '', '23:39:15', '', 0, 3, '', 20.0000, 86.4000, '1', '1', '2021-11-13 23:39:15', 72, '2021-11-13 23:50:18');
INSERT INTO `cash_ledger` VALUES (80, '2021-11-13 23:50:18', 5021, 1, 1, 1, '0', 1, 30.0000, 30.0000, '117.136.30.2', 0, 0x613A303A7B7D, 8, 1, 5, NULL, 0, 1, '2021-11-13', '37', '', '23:50:44', '', 0, 3, '', 30.0000, 488.4000, '1', '1', '2021-11-13 23:50:45', 72, '2021-11-14 00:35:27');
INSERT INTO `cash_ledger` VALUES (81, '2021-11-14 00:35:27', 5021, 1, 1, 1, '0', 1, 30.0000, 30.0000, '117.136.30.2', 0, 0x613A303A7B7D, 8, 1, 5, NULL, 0, 1, '2021-11-14', '37', '', '00:36:11', '', 0, 3, '', 30.0000, 73.5000, '1', '1', '2021-11-14 00:36:11', 72, '2021-11-14 00:47:18');
INSERT INTO `cash_ledger` VALUES (82, '2021-11-14 00:47:17', 5021, 1, 1, 1, '0', 1, 20.0000, 20.0000, '117.136.30.2', 0, 0x613A303A7B7D, 8, 1, 5, NULL, 0, 1, '2021-11-14', '37', '', '00:47:54', '', 0, 3, '', 20.0000, 29.0000, '1', '1', '2021-11-14 00:47:54', 72, '2021-11-14 00:53:30');
INSERT INTO `cash_ledger` VALUES (83, '2021-11-14 00:47:49', 5022, 1, 1, 1, '0', 1, 50.0000, 50.0000, '117.61.244.60', 0, 0x613A303A7B7D, 2, 1, 5, NULL, 0, 3, '2021-11-14', '37', '', '00:48:48', '', 0, 3, '', 50.0000, 198.4000, '1', '1', '2021-11-14 00:48:49', 72, '2021-11-14 01:05:40');
INSERT INTO `cash_ledger` VALUES (84, '2021-11-14 00:53:30', 5021, 1, 1, 1, '0', 1, 30.0000, 30.0000, '117.136.30.34', 0, 0x613A303A7B7D, 8, 1, 5, NULL, 0, 1, '2021-11-14', '37', '', '00:54:01', '', 0, 3, '', 30.0000, 149.5000, '1', '1', '2021-11-14 00:54:02', 72, '2021-11-14 01:20:00');
INSERT INTO `cash_ledger` VALUES (85, '2021-11-14 01:05:40', 5022, 2, 1, 1, '1', 1, 200.0000, 200.0000, '117.61.244.60', 0, NULL, NULL, 1, 4, NULL, 0, 13, '', '', '', '', '', 0, NULL, '', 251.6800, 106.8000, '0', '1', '2021-11-14 01:10:01', 1013, '2021-11-14 01:12:57');
INSERT INTO `cash_ledger` VALUES (86, '2021-11-14 01:12:57', 5022, 1, 1, 2, '0', 1, 30.0000, 30.0000, '117.61.244.60', 0, NULL, 2, 1, 5, NULL, 0, 3, '14/11/2021', '37', '', '01:12', '', 0, 3, '', 0.2400, 0.0000, '0', '1', '2021-11-14 13:12:58', 72, '2021-11-14 13:12:58');
INSERT INTO `cash_ledger` VALUES (87, '2021-11-14 01:13:14', 5022, 1, 1, 2, '0', 1, 30.0000, 30.0000, '117.61.244.60', 0, NULL, 2, 1, 5, NULL, 0, 3, '14/11/2021', '37', '', '01:13', '', 0, 3, '', 0.2400, 0.0000, '0', '1', '2021-11-14 13:13:15', 72, '2021-11-14 13:13:15');
INSERT INTO `cash_ledger` VALUES (88, '2021-11-14 01:13:45', 5022, 1, 1, 1, '0', 1, 50.0000, 50.0000, '117.61.244.60', 0, 0x613A303A7B7D, 2, 1, 5, NULL, 0, 3, '2021-11-14', '37', '', '01:14:22', '', 0, 3, '', 50.2400, 0.0000, '1', '1', '2021-11-14 01:14:22', 72, '2021-11-14 01:14:22');
INSERT INTO `cash_ledger` VALUES (89, '2021-11-14 01:20:00', 5021, 1, 1, 1, '0', 1, 30.0000, 30.0000, '117.136.30.34', 0, 0x613A303A7B7D, 8, 1, 5, NULL, 0, 1, '2021-11-14', '37', '', '01:21:12', '', 0, 3, '', 30.0000, 0.0000, '1', '1', '2021-11-14 01:21:13', 72, '2021-11-14 01:21:13');
INSERT INTO `cash_ledger` VALUES (90, '2021-11-14 03:10:30', 5025, 1, 1, 1, '0', 1, 1002.0000, 1002.0000, '121.31.247.148', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '王均宁', '', '15:10', '', 7, 1, '', 1002.0000, 0.0000, '0', '1', '2021-11-14 03:11:16', 1013, '2021-11-14 03:11:16');
INSERT INTO `cash_ledger` VALUES (91, '2021-11-14 03:10:30', 5025, 1, 3, 1, '0', 1, 10.0200, 10.0200, '121.31.247.148', 0, NULL, NULL, 1, 6, NULL, 0, 9, '2021-11-14', '王均宁', '', '15:10', '', 7, 1, '', 1012.0200, 0.0000, '1', '1', '2021-11-14 03:11:16', 72, '2021-11-14 03:11:16');
INSERT INTO `cash_ledger` VALUES (92, '2021-11-14 03:34:40', 5025, 1, 4, 1, '0', 1, 88.0000, 88.0000, '113.61.43.12', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1100.0200, 2162.5000, '0', '1', '2021-11-14 03:34:44', 1013, '2021-11-14 04:25:31');
INSERT INTO `cash_ledger` VALUES (93, '2021-11-14 03:53:26', 5026, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.152.5.213', 0, 0x613A383A7B733A383A226D656D6265726964223B733A353A223130353433223B733A373A226F726465726964223B733A32383A2232303231313131343135353333303432363830363838363039353838223B733A31343A227472616E73616374696F6E5F6964223B733A31363A2232303231313131343033353332363933223B733A363A22616D6F756E74223B733A383A223130302E30303030223B733A383A226461746574696D65223B733A31343A223230323131313134313535343035223B733A31303A2272657475726E636F6465223B733A323A223030223B733A343A227369676E223B733A33323A223746333537453633443135313239323244314634414433393238453244414343223B733A363A22617474616368223B733A32303A223165303930636365653061343533326239623933223B7D, 16, 1, 5, NULL, 0, 8, '2021-11-14', '37', '', '03:54:06', '', 0, 3, '', 100.0000, 1440.0000, '1', '1', '2021-11-14 03:54:07', 72, '2021-11-14 04:49:18');
INSERT INTO `cash_ledger` VALUES (94, '2021-11-14 04:25:31', 5025, 2, 1, 1, '1', 1, 662.0000, 662.0000, '121.31.247.148', 0, NULL, NULL, 1, 1, NULL, 0, 14, '', '', '', '', '', 0, NULL, '', 662.0200, 0.0000, '0', '1', '2021-11-14 04:49:42', 1013, '2021-11-14 04:49:42');
INSERT INTO `cash_ledger` VALUES (95, '2021-11-14 04:49:17', 5026, 2, 1, 1, '1', 1, 200.0000, 200.0000, '117.152.5.213', 0, NULL, NULL, 1, 1, NULL, 0, 15, '', '', '', '', '', 0, NULL, '', 200.0000, 0.0000, '0', '1', '2021-11-14 04:55:54', 1013, '2021-11-14 04:55:54');
INSERT INTO `cash_ledger` VALUES (96, '2021-11-14 07:01:10', 5027, 1, 1, 1, '0', 1, 1005.0000, 1005.0000, '171.111.230.205', 0, NULL, NULL, 1, 1, NULL, 0, 9, '2021-11-14', '王玉达', '', '19:01', '', 8, 1, '', 1005.0000, 0.0000, '0', '1', '2021-11-14 07:01:40', 1013, '2021-11-14 07:01:40');
INSERT INTO `cash_ledger` VALUES (97, '2021-11-14 07:01:10', 5027, 1, 3, 1, '0', 1, 10.0500, 10.0500, '171.111.230.205', 0, NULL, NULL, 1, 1, NULL, 0, 9, '2021-11-14', '王玉达', '', '19:01', '', 8, 1, '', 1015.0500, 0.0000, '1', '1', '2021-11-14 07:01:41', 72, '2021-11-14 07:01:41');
INSERT INTO `cash_ledger` VALUES (98, '2021-11-14 07:25:48', 5027, 1, 4, 1, '0', 1, 88.0000, 88.0000, '113.61.43.12', 0, NULL, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1103.0500, 2666.0000, '0', '1', '2021-11-14 07:26:24', 1013, '2021-11-14 08:16:33');
INSERT INTO `cash_ledger` VALUES (99, '2021-11-14 08:16:33', 5027, 2, 1, 1, '1', 1, 909.0000, 909.0000, '171.111.230.205', 0, NULL, NULL, 1, 2, NULL, 0, 16, '', '', '', '', '', 0, NULL, '', 909.0500, 0.0000, '0', '1', '2021-11-14 08:23:24', 1013, '2021-11-14 08:23:24');
INSERT INTO `cash_ledger` VALUES (100, '2021-11-14 09:15:59', 5031, 1, 1, 4, '0', 1, 1200.0000, 1200.0000, '223.104.14.37', 0, NULL, 5, 1, 5, NULL, 0, 3, '14/11/2021', '29', '', '09:15', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 09:15:59');
INSERT INTO `cash_ledger` VALUES (101, '2021-11-14 09:28:18', 5031, 1, 1, 1, '0', 1, 100.0000, 100.0000, '223.104.14.37', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '09:29:57', '', 0, 3, '', 100.0000, 1338.6500, '1', '1', '2021-11-14 09:29:58', 72, '2021-11-14 10:00:16');
INSERT INTO `cash_ledger` VALUES (102, '2021-11-14 10:00:16', 5031, 1, 1, 1, '0', 1, 500.0000, 500.0000, '117.136.90.12', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '10:00:54', '', 0, 3, '', 500.0000, 1260.5000, '1', '1', '2021-11-14 10:00:55', 72, '2021-11-14 20:27:56');
INSERT INTO `cash_ledger` VALUES (103, '2021-11-14 11:57:11', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '11:57:42', '', 0, 3, '', 100.0000, 879.0000, '1', '1', '2021-11-14 11:57:42', 72, '2021-11-14 12:37:51');
INSERT INTO `cash_ledger` VALUES (104, '2021-11-14 12:12:35', 5004, 1, 1, 4, '0', 1, 10.0000, 10.0000, '61.244.94.106', 0, NULL, 8, 1, 5, NULL, 0, 1, '14/11/2021', '37', '', '12:12', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 12:12:35');
INSERT INTO `cash_ledger` VALUES (105, '2021-11-14 12:37:51', 5019, 2, 1, 1, '1', 1, 400.0000, 400.0000, '36.4.171.82', 0, NULL, NULL, 1, 2, NULL, 0, 12, '', '', '', '', '', 0, NULL, '', 502.0000, 202.0000, '0', '1', '2021-11-14 12:48:04', 1013, '2021-11-14 14:32:42');
INSERT INTO `cash_ledger` VALUES (106, '2021-11-14 12:45:02', 5004, 1, 1, 4, '0', 1, 500.0000, 500.0000, '61.244.94.106', 0, NULL, 18, 1, 5, NULL, 0, 18, '14/11/2021', '74', '', '12:45', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 12:45:02');
INSERT INTO `cash_ledger` VALUES (107, '2021-11-14 12:46:51', 5004, 1, 1, 4, '0', 1, 500.0000, 500.0000, '61.244.94.106', 0, NULL, 18, 1, 5, NULL, 0, 18, '14/11/2021', '92', '', '12:46', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 12:46:51');
INSERT INTO `cash_ledger` VALUES (108, '2021-11-14 12:48:13', 5004, 1, 1, 4, '0', 1, 500.0000, 500.0000, '61.244.94.106', 0, NULL, 18, 1, 5, NULL, 0, 18, '14/11/2021', '74', '', '12:48', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 12:48:13');
INSERT INTO `cash_ledger` VALUES (109, '2021-11-14 12:48:46', 5004, 1, 1, 4, '0', 1, 512.0000, 512.0000, '61.244.94.106', 0, NULL, 18, 1, 5, NULL, 0, 18, '14/11/2021', '74', '', '12:48', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 12:48:46');
INSERT INTO `cash_ledger` VALUES (110, '2021-11-14 12:50:34', 5004, 1, 1, 4, '0', 1, 600.0000, 600.0000, '61.244.94.106', 0, NULL, 18, 1, 5, NULL, 0, 18, '14/11/2021', '92', '', '12:50', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 12:50:34');
INSERT INTO `cash_ledger` VALUES (111, '2021-11-14 12:52:45', 5004, 1, 1, 4, '0', 1, 700.0000, 700.0000, '123.125.127.183', 0, NULL, 18, 1, 5, NULL, 0, 18, '14/11/2021', '92', '', '12:52', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 12:52:45');
INSERT INTO `cash_ledger` VALUES (112, '2021-11-14 12:53:24', 5004, 1, 1, 7, '0', 1, 800.0000, 800.0000, '123.125.127.183', 0, NULL, 18, 1, 5, NULL, 0, 18, '14/11/2021', '92', '', '12:53', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 12:53:24');
INSERT INTO `cash_ledger` VALUES (113, '2021-11-14 12:54:52', 5004, 1, 1, 7, '0', 1, 1000.0000, 1000.0000, '123.125.127.183', 0, NULL, 18, 1, 5, NULL, 0, 18, '14/11/2021', '74', '', '12:54', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 12:54:52');
INSERT INTO `cash_ledger` VALUES (114, '2021-11-14 12:55:22', 5010, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.11', 0, NULL, NULL, 1, 12, NULL, 0, 20, '2021-11-15', '大神', '', '00:55', '', 4, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-14 19:02:53', 1014, '2021-11-14 19:02:53');
INSERT INTO `cash_ledger` VALUES (115, '2021-11-14 12:55:22', 5010, 1, 3, 2, '0', 1, 1.0000, 1.0000, '113.61.43.11', 0, NULL, NULL, 1, 12, NULL, 0, 20, '2021-11-15', '大神', '', '00:55', '', 4, 1, '', 0.0000, 0.0000, '0', '1', '2021-11-14 19:02:53', 1014, '2021-11-14 19:02:53');
INSERT INTO `cash_ledger` VALUES (116, '2021-11-14 12:55:55', 5004, 1, 1, 4, '0', 1, 1500.0000, 1500.0000, '123.125.127.183', 0, NULL, 18, 1, 5, NULL, 0, 18, '14/11/2021', '74', '', '12:55', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 12:55:55');
INSERT INTO `cash_ledger` VALUES (117, '2021-11-14 14:24:21', 5018, 1, 1, 1, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '14:24:47', '', 0, 3, '', 200.0000, 0.0000, '1', '1', '2021-11-14 14:24:47', 72, '2021-11-14 14:24:47');
INSERT INTO `cash_ledger` VALUES (118, '2021-11-14 14:30:34', 5018, 1, 1, 1, '0', 1, 300.0000, 300.0000, '211.95.3.168', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '14:31:04', '', 0, 3, '', 300.0000, 795.0000, '1', '1', '2021-11-14 14:31:06', 72, '2021-11-14 14:47:05');
INSERT INTO `cash_ledger` VALUES (119, '2021-11-14 14:32:42', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '36.4.171.82', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '14:33:14', '', 0, 3, '', 100.0000, 100.0000, '1', '1', '2021-11-14 14:33:15', 72, '2021-11-14 14:36:14');
INSERT INTO `cash_ledger` VALUES (120, '2021-11-14 14:36:14', 5019, 1, 1, 1, '0', 1, 300.0000, 300.0000, '36.4.171.82', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '14:36:36', '', 0, 3, '', 300.0000, 649.0000, '1', '1', '2021-11-14 14:36:36', 72, '2021-11-14 14:54:19');
INSERT INTO `cash_ledger` VALUES (121, '2021-11-14 14:47:05', 5018, 1, 1, 1, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '14:47:37', '', 0, 3, '', 500.0000, 1957.5600, '1', '1', '2021-11-14 14:47:37', 72, '2021-11-14 15:07:31');
INSERT INTO `cash_ledger` VALUES (122, '2021-11-14 14:54:18', 5019, 1, 1, 1, '0', 1, 200.0000, 200.0000, '117.136.102.94', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '14:54:38', '', 0, 3, '', 200.0000, 200.0000, '1', '1', '2021-11-14 14:54:39', 72, '2021-11-14 15:00:27');
INSERT INTO `cash_ledger` VALUES (123, '2021-11-14 15:00:27', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, NULL, 7, 1, 5, NULL, 0, 1, '14/11/2021', '29', '', '15:00', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 15:00:27');
INSERT INTO `cash_ledger` VALUES (124, '2021-11-14 15:00:59', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '15:01:17', '', 0, 3, '', 100.0000, 555.5000, '1', '1', '2021-11-14 15:01:17', 72, '2021-11-14 15:51:46');
INSERT INTO `cash_ledger` VALUES (125, '2021-11-14 15:07:31', 5018, 1, 1, 1, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '15:07:48', '', 0, 3, '', 500.0000, 500.0000, '1', '1', '2021-11-14 15:07:49', 72, '2021-11-14 15:17:25');
INSERT INTO `cash_ledger` VALUES (126, '2021-11-14 15:17:24', 5018, 1, 1, 4, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, NULL, 7, 1, 5, NULL, 0, 1, '14/11/2021', '29', '', '15:17', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 15:17:24');
INSERT INTO `cash_ledger` VALUES (127, '2021-11-14 15:18:37', 5018, 1, 1, 1, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '15:19:08', '', 0, 3, '', 500.0000, 12891.8000, '1', '1', '2021-11-14 15:19:08', 72, '2021-11-14 16:39:23');
INSERT INTO `cash_ledger` VALUES (128, '2021-11-14 15:51:45', 5019, 1, 1, 8, '0', 1, 400.0000, 400.0000, '36.4.171.82', 0, NULL, 7, 1, 5, NULL, 0, 1, '14/11/2021', '29', '', '15:51', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 15:51:48');
INSERT INTO `cash_ledger` VALUES (129, '2021-11-14 15:51:59', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, NULL, 13, 1, 5, NULL, 0, 8, '14/11/2021', '29', '', '15:51', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 15:51:59');
INSERT INTO `cash_ledger` VALUES (130, '2021-11-14 15:52:28', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, NULL, 7, 1, 5, NULL, 0, 1, '14/11/2021', '29', '', '15:52', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 15:52:28');
INSERT INTO `cash_ledger` VALUES (131, '2021-11-14 15:53:31', 5019, 1, 1, 1, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '15:53:51', '', 0, 3, '', 500.0000, 600.0000, '1', '1', '2021-11-14 15:53:52', 72, '2021-11-14 16:15:33');
INSERT INTO `cash_ledger` VALUES (132, '2021-11-14 16:15:32', 5019, 1, 1, 1, '0', 1, 300.0000, 300.0000, '117.136.102.94', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '16:16:05', '', 0, 3, '', 300.0000, 500.0000, '1', '1', '2021-11-14 16:16:06', 72, '2021-11-14 17:20:08');
INSERT INTO `cash_ledger` VALUES (133, '2021-11-14 16:39:23', 5018, 1, 1, 1, '0', 1, 400.0000, 400.0000, '211.95.3.168', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '16:39:39', '', 0, 3, '', 400.0000, 0.0000, '1', '1', '2021-11-14 16:39:39', 72, '2021-11-14 16:39:39');
INSERT INTO `cash_ledger` VALUES (134, '2021-11-14 17:20:08', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '17:20:57', '', 0, 3, '', 100.0000, 292.5500, '1', '1', '2021-11-14 17:20:57', 72, '2021-11-14 17:38:26');
INSERT INTO `cash_ledger` VALUES (135, '2021-11-14 17:38:26', 5019, 1, 1, 1, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '17:38:43', '', 0, 3, '', 500.0000, 382.5000, '1', '1', '2021-11-14 17:38:43', 72, '2021-11-14 17:46:37');
INSERT INTO `cash_ledger` VALUES (136, '2021-11-14 17:46:37', 5019, 1, 1, 4, '0', 1, 1000.0000, 1000.0000, '36.4.171.82', 0, NULL, 13, 1, 5, NULL, 0, 8, '14/11/2021', '29', '', '17:46', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 17:46:37');
INSERT INTO `cash_ledger` VALUES (137, '2021-11-14 17:47:48', 5019, 1, 1, 1, '0', 1, 300.0000, 300.0000, '36.4.171.82', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '17:48:07', '', 0, 3, '', 300.0000, 1520.7500, '1', '1', '2021-11-14 17:48:08', 72, '2021-11-14 18:14:40');
INSERT INTO `cash_ledger` VALUES (138, '2021-11-14 18:14:40', 5019, 1, 1, 1, '0', 1, 200.0000, 200.0000, '36.4.171.82', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '18:15:01', '', 0, 3, '', 200.0000, 120.0000, '1', '1', '2021-11-14 18:15:02', 72, '2021-11-14 18:24:00');
INSERT INTO `cash_ledger` VALUES (139, '2021-11-14 18:24:00', 5019, 1, 1, 1, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '18:24:19', '', 0, 3, '', 500.0000, 0.0000, '1', '1', '2021-11-14 18:24:20', 72, '2021-11-14 18:24:20');
INSERT INTO `cash_ledger` VALUES (140, '2021-11-14 18:24:39', 5019, 1, 1, 1, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '18:25:01', '', 0, 3, '', 1000.0000, 2990.0000, '1', '1', '2021-11-14 18:25:02', 72, '2021-11-14 19:05:12');
INSERT INTO `cash_ledger` VALUES (141, '2021-11-14 18:56:34', 5040, 1, 1, 8, '0', 1, 30.0000, 30.0000, '120.211.142.39', 0, NULL, 2, 1, 5, NULL, 0, 3, '14/11/2021', '37', '', '18:56', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 18:56:39');
INSERT INTO `cash_ledger` VALUES (142, '2021-11-14 18:57:17', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '120.211.142.39', 0, NULL, 9, 1, 5, NULL, 0, 1, '14/11/2021', '37', '', '18:57', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 18:57:17');
INSERT INTO `cash_ledger` VALUES (143, '2021-11-14 18:57:57', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '120.211.142.39', 0, NULL, 9, 1, 5, NULL, 0, 1, '14/11/2021', '37', '', '18:57', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 18:57:57');
INSERT INTO `cash_ledger` VALUES (144, '2021-11-14 18:58:37', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '101.71.140.9', 0, NULL, 9, 1, 5, NULL, 0, 1, '14/11/2021', '37', '', '18:58', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 18:58:37');
INSERT INTO `cash_ledger` VALUES (145, '2021-11-14 18:59:23', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '101.71.140.9', 0, NULL, 9, 1, 5, NULL, 0, 1, '14/11/2021', '37', '', '18:59', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 18:59:23');
INSERT INTO `cash_ledger` VALUES (146, '2021-11-14 19:00:23', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '101.71.140.9', 0, NULL, 9, 1, 5, NULL, 0, 1, '14/11/2021', '37', '', '19:00', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 19:00:23');
INSERT INTO `cash_ledger` VALUES (147, '2021-11-14 19:01:04', 5040, 1, 1, 1, '0', 1, 30.0000, 30.0000, '101.71.140.6', 0, 0x613A303A7B7D, 8, 1, 5, NULL, 0, 1, '2021-11-14', '37', '', '19:01:38', '', 0, 3, '', 30.0000, 0.0000, '1', '1', '2021-11-14 19:01:39', 72, '2021-11-14 19:01:39');
INSERT INTO `cash_ledger` VALUES (148, '2021-11-14 19:05:12', 5019, 2, 1, 1, '1', 1, 2800.0000, 2800.0000, '36.4.171.82', 0, NULL, NULL, 1, 2, NULL, 0, 12, '', '', '', '', '', 0, NULL, '', 2830.0000, 0.0000, '0', '1', '2021-11-14 20:44:06', 1014, '2021-11-14 20:44:06');
INSERT INTO `cash_ledger` VALUES (149, '2021-11-14 20:27:56', 5031, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.136.90.12', 0, 0x613A303A7B7D, 7, 1, 5, NULL, 0, 1, '2021-11-14', '29', '', '20:28:46', '', 0, 3, '', 100.0000, 0.0000, '1', '1', '2021-11-14 20:28:47', 72, '2021-11-14 20:28:47');
INSERT INTO `cash_ledger` VALUES (150, '2021-11-14 20:54:11', 5041, 1, 1, 4, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, NULL, 16, 1, 5, NULL, 0, 8, '14/11/2021', '37', '', '20:54', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 20:54:11');
INSERT INTO `cash_ledger` VALUES (151, '2021-11-14 20:54:34', 5041, 1, 1, 4, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, NULL, 8, 1, 5, NULL, 0, 1, '14/11/2021', '37', '', '20:54', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 20:54:34');
INSERT INTO `cash_ledger` VALUES (152, '2021-11-14 20:55:24', 5041, 1, 1, 8, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, NULL, 7, 1, 5, NULL, 0, 1, '14/11/2021', '29', '', '20:55', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 20:55:26');
INSERT INTO `cash_ledger` VALUES (153, '2021-11-14 20:55:49', 5041, 1, 1, 4, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, NULL, 16, 1, 5, NULL, 0, 8, '14/11/2021', '37', '', '20:55', '', 0, 3, '', 0.0000, 0.0000, '0', '1', NULL, NULL, '2021-11-14 20:55:49');

-- ----------------------------
-- Table structure for cash_ledger_audittrail
-- ----------------------------
DROP TABLE IF EXISTS `cash_ledger_audittrail`;
CREATE TABLE `cash_ledger_audittrail`  (
  `auditindex` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `audit_ledgerindex` mediumint UNSIGNED NOT NULL,
  `audit_ledgerdatetime` datetime NOT NULL,
  `audit_accountindex` mediumint UNSIGNED NOT NULL,
  `audit_transactionindex` tinyint UNSIGNED NOT NULL,
  `audit_fundindex` tinyint UNSIGNED NOT NULL,
  `audit_status` tinyint UNSIGNED NOT NULL,
  `audit_doublecheckstatus` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `audit_currencyindex` tinyint UNSIGNED NOT NULL,
  `audit_amount` decimal(14, 4) NOT NULL,
  `audit_amountlocal` decimal(14, 4) NOT NULL,
  `audit_ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `audit_creditcard_flag` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `audit_featureindex` smallint UNSIGNED NULL DEFAULT NULL,
  `audit_bankindex` smallint NULL DEFAULT NULL,
  `audit_postindex` mediumint NULL DEFAULT NULL,
  `audit_reference_ledgerindex` mediumint UNSIGNED NULL DEFAULT NULL,
  `audit_return_msg` blob NULL,
  `audit_action` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `audit_companyindex` tinyint UNSIGNED NOT NULL,
  `audit_lastupdateduser` mediumint UNSIGNED NOT NULL,
  `audit_lastupdated` datetime NOT NULL,
  `audit_deposit_date` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `audit_user_bankaccountname` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `audit_user_bankaccountno` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `audit_deposit_time` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `audit_deposit_location` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `audit_deposit_profileindex` mediumint NULL DEFAULT NULL,
  `audit_deposit_method_type` tinyint UNSIGNED NULL DEFAULT NULL,
  `audit_deposit_verify_code` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`auditindex`) USING BTREE,
  INDEX `ledgerindex`(`audit_ledgerindex`) USING BTREE,
  INDEX `audit_lastupdated`(`audit_lastupdated`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 254 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cash_ledger_audittrail
-- ----------------------------
INSERT INTO `cash_ledger_audittrail` VALUES (1, 1, '2021-11-09 04:47:06', 5003, 1, 1, 4, '0', 1, 10000.0000, 10000.0000, '113.61.43.12', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5003, '2021-11-09 04:47:06', '2021-11-09', '正在', '', '16:46', '正在', 1, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (2, 2, '2021-11-09 08:41:40', 5005, 1, 1, 7, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-09 08:41:40', '09/11/2021', '37', '', '08:41', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (3, 2, '2021-11-09 08:41:40', 5005, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-09 08:41:41', '09/11/2021', '37', '', '08:41', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (4, 2, '2021-11-09 08:41:40', 5005, 1, 1, 8, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-09 08:41:42', '09/11/2021', '37', '', '08:41', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (5, 3, '2021-11-09 08:41:58', 5005, 1, 1, 7, '0', 1, 111.0000, 111.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-09 08:41:58', '09/11/2021', '37', '', '08:41', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (6, 3, '2021-11-09 08:41:58', 5005, 1, 1, 4, '0', 1, 111.0000, 111.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-09 08:41:58', '09/11/2021', '37', '', '08:41', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (7, 3, '2021-11-09 08:41:58', 5005, 1, 1, 8, '0', 1, 111.0000, 111.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-09 08:41:58', '09/11/2021', '37', '', '08:41', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (8, 4, '2021-11-09 09:08:57', 5005, 1, 1, 7, '0', 1, 111.0000, 111.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-09 09:08:57', '09/11/2021', '37', '', '09:08', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (9, 4, '2021-11-09 09:08:57', 5005, 1, 1, 4, '0', 1, 111.0000, 111.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-09 09:08:58', '09/11/2021', '37', '', '09:08', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (10, 4, '2021-11-09 09:08:57', 5005, 1, 1, 8, '0', 1, 111.0000, 111.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-09 09:08:58', '09/11/2021', '37', '', '09:08', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (11, 5, '2021-11-09 09:09:30', 5005, 1, 1, 7, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-09 09:09:30', '09/11/2021', '37', '', '09:09', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (12, 5, '2021-11-09 09:09:30', 5005, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-09 09:09:30', '09/11/2021', '37', '', '09:09', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (13, 5, '2021-11-09 09:09:30', 5005, 1, 1, 8, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-09 09:09:30', '09/11/2021', '37', '', '09:09', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (14, 6, '2021-11-09 09:10:24', 5005, 1, 1, 7, '0', 1, 399.0000, 399.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-09 09:10:24', '09/11/2021', '29', '', '09:10', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (15, 6, '2021-11-09 09:10:24', 5005, 1, 1, 4, '0', 1, 399.0000, 399.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-09 09:10:25', '09/11/2021', '29', '', '09:10', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (16, 6, '2021-11-09 09:10:24', 5005, 1, 1, 8, '0', 1, 399.0000, 399.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-09 09:10:25', '09/11/2021', '29', '', '09:10', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (17, 7, '2021-11-09 09:49:30', 5005, 1, 1, 7, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-09 09:49:30', '09/11/2021', '37', '', '09:49', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (18, 7, '2021-11-09 09:49:30', 5005, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-09 09:49:31', '09/11/2021', '37', '', '09:49', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (19, 8, '2021-11-09 10:30:50', 5005, 1, 1, 7, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 3, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-09 10:30:50', '09/11/2021', '29', '', '10:30', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (20, 8, '2021-11-09 10:30:50', 5005, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 3, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-09 10:30:51', '09/11/2021', '29', '', '10:30', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (21, 8, '2021-11-09 10:30:50', 5005, 1, 1, 8, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 3, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-09 10:30:51', '09/11/2021', '29', '', '10:30', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (22, 9, '2021-11-09 14:30:41', 4126, 1, 1, 4, '0', 1, 100.0000, 100.0000, '13.73.17.192', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 4126, '2021-11-09 14:30:41', '2021-11-10', 'bgtest03', '', '02:30', '', 2, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (23, 9, '2021-11-09 14:30:41', 4126, 1, 1, 2, '0', 1, 100.0000, 100.0000, '13.73.17.192', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1024, '2021-11-09 14:31:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (24, 10, '2021-11-09 14:32:56', 4126, 1, 1, 4, '0', 1, 100.0000, 100.0000, '13.73.17.192', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 4126, '2021-11-09 14:32:56', '2021-11-10', 'bgtest03', '', '02:30', '', 2, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (25, 10, '2021-11-09 14:32:56', 4126, 1, 1, 2, '0', 1, 100.0000, 100.0000, '13.73.17.192', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1024, '2021-11-09 14:35:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (26, 7, '2021-11-09 09:49:30', 5005, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-09 21:49:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (27, 11, '2021-11-10 01:33:46', 5005, 1, 1, 7, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 01:33:46', '10/11/2021', '37', '', '01:33', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (28, 11, '2021-11-10 01:33:46', 5005, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 01:33:46', '10/11/2021', '37', '', '01:33', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (29, 12, '2021-11-10 01:49:32', 5005, 1, 1, 7, '0', 1, 30.0000, 30.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 01:49:32', '10/11/2021', '37', '', '01:49', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (30, 12, '2021-11-10 01:49:32', 5005, 1, 1, 4, '0', 1, 30.0000, 30.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 01:49:32', '10/11/2021', '37', '', '01:49', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (31, 12, '2021-11-10 01:49:32', 5005, 1, 1, 8, '0', 1, 30.0000, 30.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-10 01:49:33', '10/11/2021', '37', '', '01:49', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (32, 13, '2021-11-10 01:49:54', 5005, 1, 1, 7, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 01:49:54', '10/11/2021', '37', '', '01:49', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (33, 13, '2021-11-10 01:49:54', 5005, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 01:49:55', '10/11/2021', '37', '', '01:49', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (34, 14, '2021-11-10 03:09:51', 5005, 1, 1, 7, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 03:09:51', '10/11/2021', '29', '', '03:09', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (35, 14, '2021-11-10 03:09:51', 5005, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 03:09:51', '10/11/2021', '29', '', '03:09', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (36, 14, '2021-11-10 03:09:51', 5005, 1, 1, 8, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-10 03:09:52', '10/11/2021', '29', '', '03:09', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (37, 15, '2021-11-10 03:22:23', 5005, 1, 1, 7, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 03:22:23', '10/11/2021', '29', '', '03:22', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (38, 15, '2021-11-10 03:22:23', 5005, 1, 1, 4, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 03:22:23', '10/11/2021', '29', '', '03:22', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (39, 15, '2021-11-10 03:22:23', 5005, 1, 1, 8, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-10 03:22:24', '10/11/2021', '29', '', '03:22', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (40, 16, '2021-11-10 03:26:35', 5005, 1, 1, 7, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 03:26:35', '10/11/2021', '5', '', '03:26', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (41, 16, '2021-11-10 03:26:35', 5005, 1, 1, 4, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 03:26:35', '10/11/2021', '5', '', '03:26', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (42, 16, '2021-11-10 03:26:35', 5005, 1, 1, 8, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-10 03:26:36', '10/11/2021', '5', '', '03:26', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (43, 17, '2021-11-10 03:29:20', 5005, 1, 1, 7, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 03:29:20', '10/11/2021', '5', '', '03:29', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (44, 17, '2021-11-10 03:29:20', 5005, 1, 1, 4, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 03:29:20', '10/11/2021', '5', '', '03:29', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (45, 17, '2021-11-10 03:29:20', 5005, 1, 1, 8, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-10 03:29:23', '10/11/2021', '5', '', '03:29', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (46, 18, '2021-11-10 04:31:11', 5005, 1, 1, 7, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 04:31:11', '10/11/2021', '5', '', '04:31', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (47, 18, '2021-11-10 04:31:11', 5005, 1, 1, 4, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 04:31:12', '10/11/2021', '5', '', '04:31', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (48, 18, '2021-11-10 04:31:11', 5005, 1, 1, 8, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-10 04:31:13', '10/11/2021', '5', '', '04:31', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (49, 19, '2021-11-10 04:31:34', 5005, 1, 1, 7, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 04:31:34', '10/11/2021', '5', '', '04:31', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (50, 19, '2021-11-10 04:31:34', 5005, 1, 1, 4, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 04:31:35', '10/11/2021', '5', '', '04:31', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (51, 19, '2021-11-10 04:31:34', 5005, 1, 1, 8, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-10 04:31:35', '10/11/2021', '5', '', '04:31', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (52, 20, '2021-11-10 04:32:01', 5005, 1, 1, 7, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 04:32:01', '10/11/2021', '29', '', '04:32', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (53, 20, '2021-11-10 04:32:01', 5005, 1, 1, 4, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 04:32:02', '10/11/2021', '29', '', '04:32', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (54, 21, '2021-11-10 04:32:50', 5005, 1, 1, 7, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-10 04:32:50', '10/11/2021', '29', '', '04:32', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (55, 21, '2021-11-10 04:32:50', 5005, 1, 1, 4, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-10 04:32:50', '10/11/2021', '29', '', '04:32', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (56, 22, '2021-11-10 07:18:55', 5010, 1, 3, 4, '0', 1, 888.0000, 888.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 5010, '2021-11-10 07:18:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (57, 22, '2021-11-10 07:18:55', 5010, 1, 3, 1, '0', 1, 888.0000, 888.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-10 07:55:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (58, 23, '2021-11-10 08:06:09', 5010, 1, 3, 4, '0', 1, 8888.0000, 8888.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 5010, '2021-11-10 08:06:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (59, 24, '2021-11-10 08:08:48', 5010, 1, 3, 4, '0', 1, 888.0000, 888.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 5010, '2021-11-10 08:08:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (60, 24, '2021-11-10 08:08:48', 5010, 1, 3, 2, '0', 1, 888.0000, 888.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-10 08:09:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (61, 23, '2021-11-10 08:06:09', 5010, 1, 3, 2, '0', 1, 8888.0000, 8888.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-10 08:09:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (62, 25, '2021-11-10 08:29:57', 4126, 1, 3, 4, '0', 1, 888.0000, 888.0000, '13.73.17.192', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 4126, '2021-11-10 08:29:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (63, 25, '2021-11-10 08:29:57', 4126, 1, 3, 2, '0', 1, 888.0000, 888.0000, '13.73.17.192', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-10 08:43:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (64, 26, '2021-11-10 11:41:59', 4124, 1, 3, 4, '0', 1, 8888.0000, 8888.0000, '13.73.17.192', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 4124, '2021-11-10 11:41:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (65, 27, '2021-11-10 12:04:27', 5011, 1, 3, 4, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 5011, '2021-11-10 12:04:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (66, 26, '2021-11-10 11:41:59', 4124, 1, 3, 2, '0', 1, 8888.0000, 8888.0000, '13.73.17.192', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-10 12:26:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (67, 27, '2021-11-10 12:04:27', 5011, 1, 3, 2, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-10 12:26:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (68, 11, '2021-11-10 01:33:46', 5005, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-10 13:33:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (69, 13, '2021-11-10 01:49:54', 5005, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-10 13:49:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (70, 20, '2021-11-10 04:32:01', 5005, 1, 1, 2, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-10 16:32:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (71, 21, '2021-11-10 04:32:50', 5005, 1, 1, 2, '0', 1, 2000.0000, 2000.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-10 16:32:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (72, 28, '2021-11-11 06:15:51', 5004, 1, 3, 4, '0', 1, 8888.0000, 8888.0000, '61.244.94.106', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 5004, '2021-11-11 06:15:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (73, 29, '2021-11-11 06:24:32', 5004, 1, 1, 4, '0', 1, 100.0000, 100.0000, '61.244.94.106', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-11 06:24:32', '2021-11-11', '测试', '', '18:23', '', 3, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (74, 30, '2021-11-11 06:24:32', 5004, 1, 3, 4, '0', 1, 1.0000, 1.0000, '61.244.94.106', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-11 06:24:32', '2021-11-11', '测试', '', '18:23', '', 3, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (75, 30, '2021-11-11 06:24:32', 5004, 1, 3, 2, '0', 1, 1.0000, 1.0000, '61.244.94.106', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1011, '2021-11-11 06:24:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (76, 29, '2021-11-11 06:24:32', 5004, 1, 1, 2, '0', 1, 100.0000, 100.0000, '61.244.94.106', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1011, '2021-11-11 06:24:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (77, 28, '2021-11-11 06:15:51', 5004, 1, 3, 2, '0', 1, 8888.0000, 8888.0000, '61.244.94.106', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1011, '2021-11-11 06:24:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (78, 31, '2021-11-11 06:59:04', 5010, 1, 3, 4, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 5010, '2021-11-11 06:59:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (79, 31, '2021-11-11 06:59:04', 5010, 1, 3, 1, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-11 06:59:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (80, 32, '2021-11-11 10:50:17', 5010, 1, 3, 4, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 5010, '2021-11-11 10:50:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (81, 33, '2021-11-12 00:56:27', 5003, 1, 4, 4, '0', 1, 500.0000, 500.0000, '113.61.43.13', 0, NULL, 0, NULL, 0, NULL, 'CASH-INSERT', 1, 1012, '2021-11-12 00:56:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (82, 33, '2021-11-12 00:56:27', 5003, 1, 4, 2, '0', 1, 500.0000, 500.0000, '113.61.43.13', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-12 01:24:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (83, 34, '2021-11-12 01:25:58', 5013, 1, 4, 4, '0', 1, 500.0000, 500.0000, '113.61.43.12', 0, NULL, 0, NULL, 0, NULL, 'CASH-INSERT', 1, 1013, '2021-11-12 01:25:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (84, 34, '2021-11-12 01:25:58', 5013, 1, 4, 1, '0', 1, 500.0000, 500.0000, '113.61.43.12', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-12 01:26:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (85, 35, '2021-11-12 06:42:49', 5010, 1, 1, 4, '0', 1, 500.0000, 500.0000, '113.61.43.11', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-12 06:42:49', '2021-11-12', '大神', '', '18:42', '', 4, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (86, 36, '2021-11-12 06:42:49', 5010, 1, 3, 4, '0', 1, 5.0000, 5.0000, '113.61.43.11', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-12 06:42:49', '2021-11-12', '大神', '', '18:42', '', 4, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (87, 37, '2021-11-12 07:07:48', 5010, 1, 3, 4, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 5010, '2021-11-12 07:07:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (88, 37, '2021-11-12 07:07:48', 5010, 1, 3, 1, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-12 07:08:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (89, 32, '2021-11-11 10:50:17', 5010, 1, 3, 2, '0', 1, 0.0000, 0.0000, '113.61.43.11', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-12 07:09:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (90, 36, '2021-11-12 06:42:49', 5010, 1, 3, 2, '0', 1, 5.0000, 5.0000, '113.61.43.11', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-12 07:09:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (91, 38, '2021-11-12 07:23:01', 5010, 1, 1, 7, '0', 1, 50.0000, 50.0000, '113.61.43.11', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-12 07:23:01', '12/11/2021', '37', '', '07:23', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (92, 38, '2021-11-12 07:23:01', 5010, 1, 1, 4, '0', 1, 50.0000, 50.0000, '113.61.43.11', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-12 07:23:01', '12/11/2021', '37', '', '07:23', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (93, 39, '2021-11-12 07:23:28', 5010, 1, 1, 4, '0', 1, 200.0000, 200.0000, '113.61.43.11', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-12 07:23:28', '2021-11-12', '大神', '', '19:23', '', 4, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (94, 40, '2021-11-12 07:23:28', 5010, 1, 3, 4, '0', 1, 60.0000, 60.0000, '113.61.43.11', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-12 07:23:28', '2021-11-12', '大神', '', '19:23', '', 4, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (95, 41, '2021-11-12 07:53:46', 5010, 1, 1, 4, '0', 1, 1000.0000, 1000.0000, '113.61.43.11', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-12 07:53:46', '2021-11-12', '大神', '', '19:53', '', 4, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (96, 42, '2021-11-12 07:53:46', 5010, 1, 3, 4, '0', 1, 880.0000, 880.0000, '113.61.43.11', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-12 07:53:46', '2021-11-12', '大神', '', '19:53', '', 4, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (97, 39, '2021-11-12 07:23:28', 5010, 1, 1, 1, '0', 1, 200.0000, 200.0000, '113.61.43.11', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-12 07:57:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (98, 40, '2021-11-12 07:23:28', 5010, 1, 3, 1, '0', 1, 60.0000, 60.0000, '113.61.43.11', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-12 07:57:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (99, 41, '2021-11-12 07:53:46', 5010, 1, 1, 1, '0', 1, 1000.0000, 1000.0000, '113.61.43.11', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-12 07:58:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (100, 42, '2021-11-12 07:53:46', 5010, 1, 3, 2, '0', 1, 880.0000, 880.0000, '113.61.43.11', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-12 07:58:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (101, 35, '2021-11-12 06:42:49', 5010, 1, 1, 2, '0', 1, 500.0000, 500.0000, '113.61.43.11', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1002, '2021-11-12 07:58:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (102, 38, '2021-11-12 07:23:01', 5010, 1, 1, 2, '0', 1, 50.0000, 50.0000, '113.61.43.11', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-12 19:23:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (103, 43, '2021-11-13 11:04:26', 5010, 1, 1, 7, '0', 1, 10.0000, 10.0000, '113.61.43.11', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-13 11:04:26', '13/11/2021', '37', '', '11:04', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (104, 43, '2021-11-13 11:04:26', 5010, 1, 1, 4, '0', 1, 10.0000, 10.0000, '113.61.43.11', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 11:04:26', '13/11/2021', '37', '', '11:04', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (105, 44, '2021-11-13 12:07:19', 5005, 1, 1, 7, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-13 12:07:19', '13/11/2021', '37', '', '12:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (106, 44, '2021-11-13 12:07:19', 5005, 1, 1, 4, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 12:07:20', '13/11/2021', '37', '', '12:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (107, 45, '2021-11-13 12:07:32', 5005, 1, 1, 7, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, 16, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-13 12:07:32', '13/11/2021', '37', '', '12:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (108, 45, '2021-11-13 12:07:32', 5005, 1, 1, 4, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, 16, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 12:07:32', '13/11/2021', '37', '', '12:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (109, 46, '2021-11-13 12:07:45', 5005, 1, 1, 7, '0', 1, 300.0000, 300.0000, '113.61.43.13', 0, 5, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-13 12:07:45', '13/11/2021', '29', '', '12:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (110, 46, '2021-11-13 12:07:45', 5005, 1, 1, 4, '0', 1, 300.0000, 300.0000, '113.61.43.13', 0, 5, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 12:07:46', '13/11/2021', '29', '', '12:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (111, 47, '2021-11-13 12:07:54', 5005, 1, 1, 7, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-13 12:07:54', '13/11/2021', '29', '', '12:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (112, 47, '2021-11-13 12:07:54', 5005, 1, 1, 4, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 12:07:54', '13/11/2021', '29', '', '12:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (113, 48, '2021-11-13 12:08:03', 5005, 1, 1, 7, '0', 1, 3000.0000, 3000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-13 12:08:03', '13/11/2021', '29', '', '12:08', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (114, 48, '2021-11-13 12:08:03', 5005, 1, 1, 4, '0', 1, 3000.0000, 3000.0000, '113.61.43.13', 0, 10, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 12:08:04', '13/11/2021', '29', '', '12:08', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (115, 49, '2021-11-13 12:08:16', 5005, 1, 1, 7, '0', 1, 300.0000, 300.0000, '113.61.43.13', 0, 13, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-13 12:08:16', '13/11/2021', '29', '', '12:08', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (116, 49, '2021-11-13 12:08:16', 5005, 1, 1, 4, '0', 1, 300.0000, 300.0000, '113.61.43.13', 0, 13, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 12:08:17', '13/11/2021', '29', '', '12:08', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (117, 50, '2021-11-13 12:08:54', 5005, 1, 1, 7, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 9, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-13 12:08:54', '13/11/2021', '37', '', '12:08', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (118, 50, '2021-11-13 12:08:54', 5005, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 9, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 12:08:54', '13/11/2021', '37', '', '12:08', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (119, 51, '2021-11-13 12:09:14', 5005, 1, 1, 7, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 6, 5, NULL, NULL, '', 'M-INSERT', 1, 5005, '2021-11-13 12:09:14', '13/11/2021', '29', '', '12:09', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (120, 51, '2021-11-13 12:09:14', 5005, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, 6, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 12:09:15', '13/11/2021', '29', '', '12:09', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (121, 52, '2021-11-13 14:53:40', 5014, 1, 1, 7, '0', 1, 500.0000, 500.0000, '113.61.43.12', 0, 5, 5, NULL, NULL, '', 'M-INSERT', 1, 5014, '2021-11-13 14:53:40', '13/11/2021', '29', '', '14:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (122, 52, '2021-11-13 14:53:40', 5014, 1, 1, 4, '0', 1, 500.0000, 500.0000, '113.61.43.12', 0, 5, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 14:53:41', '13/11/2021', '29', '', '14:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (123, 53, '2021-11-13 14:54:01', 5014, 1, 1, 7, '0', 1, 1000.0000, 1000.0000, '113.61.43.12', 0, 13, 5, NULL, NULL, '', 'M-INSERT', 1, 5014, '2021-11-13 14:54:01', '13/11/2021', '29', '', '14:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (124, 53, '2021-11-13 14:54:01', 5014, 1, 1, 4, '0', 1, 1000.0000, 1000.0000, '113.61.43.12', 0, 13, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 14:54:02', '13/11/2021', '29', '', '14:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (125, 54, '2021-11-13 14:58:09', 5014, 1, 1, 4, '0', 1, 1000.0000, 1000.0000, '113.61.43.12', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5014, '2021-11-13 14:58:09', '2021-11-14', '小雅', '', '02:58', '', 5, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (126, 55, '2021-11-13 14:58:49', 5014, 1, 1, 4, '0', 1, 1000.0000, 1000.0000, '113.61.43.12', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5014, '2021-11-13 14:58:49', '2021-11-14', '小雅', '', '02:58', '', 5, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (127, 56, '2021-11-13 14:59:20', 5014, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.12', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5014, '2021-11-13 14:59:20', '2021-11-14', '小雅', '', '02:58', '', 5, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (128, 54, '2021-11-13 14:58:09', 5014, 1, 1, 2, '0', 1, 1000.0000, 1000.0000, '113.61.43.12', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 15:00:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (129, 55, '2021-11-13 14:58:49', 5014, 1, 1, 2, '0', 1, 1000.0000, 1000.0000, '113.61.43.12', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 15:00:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (130, 56, '2021-11-13 14:59:20', 5014, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.12', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 15:00:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (131, 57, '2021-11-13 15:00:43', 5014, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.12', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5014, '2021-11-13 15:00:43', '2021-11-14', '小雅', '', '02:58', '', 5, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (132, 58, '2021-11-13 15:01:35', 5014, 1, 1, 4, '0', 1, 133.0000, 133.0000, '113.61.43.12', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5014, '2021-11-13 15:01:35', '2021-11-14', '小雅', '', '02:58', '', 5, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (133, 58, '2021-11-13 15:01:35', 5014, 1, 1, 2, '0', 1, 133.0000, 133.0000, '113.61.43.12', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 15:02:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (134, 57, '2021-11-13 15:00:43', 5014, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.12', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 15:02:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (135, 59, '2021-11-13 15:02:35', 5014, 1, 1, 4, '0', 1, 121.0000, 121.0000, '113.61.43.12', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5014, '2021-11-13 15:02:35', '2021-11-14', '小雅', '', '02:58', '', 5, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (136, 59, '2021-11-13 15:02:35', 5014, 1, 1, 2, '0', 1, 121.0000, 121.0000, '113.61.43.12', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 15:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (137, 60, '2021-11-13 15:06:09', 5010, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.11', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-13 15:06:09', '2021-11-14', '大神', '', '03:05', '', 4, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (138, 61, '2021-11-13 15:48:45', 5018, 1, 1, 7, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-13 15:48:45', '13/11/2021', '29', '', '15:48', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (139, 61, '2021-11-13 15:48:45', 5018, 1, 1, 4, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 15:48:48', '13/11/2021', '29', '', '15:48', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (140, 61, '2021-11-13 15:48:45', 5018, 1, 1, 4, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-13 15:49:07', '2021-11-13', '29', '', '15:49:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (141, 61, '2021-11-13 15:48:45', 5018, 1, 1, 1, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-13 15:49:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (142, 60, '2021-11-13 15:06:09', 5010, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.11', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 15:49:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (143, 62, '2021-11-13 15:53:07', 5018, 1, 1, 7, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 13, 5, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-13 15:53:07', '13/11/2021', '29', '', '15:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (144, 62, '2021-11-13 15:53:07', 5018, 1, 1, 4, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 13, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 15:53:09', '13/11/2021', '29', '', '15:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (145, 62, '2021-11-13 15:53:07', 5018, 1, 1, 4, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 13, 5, NULL, NULL, 0x613A383A7B733A383A226D656D6265726964223B733A353A223130353433223B733A373A226F726465726964223B733A32383A2232303231313131343033353331313435393838323430393237383338223B733A31343A227472616E73616374696F6E5F6964223B733A31363A2232303231313131333135353330373632223B733A363A22616D6F756E74223B733A383A223230302E30303030223B733A383A226461746574696D65223B733A31343A223230323131313134303335333437223B733A31303A2272657475726E636F6465223B733A323A223030223B733A343A227369676E223B733A33323A224346413934313330343841344346334430314639464334333734353332343039223B733A363A22617474616368223B733A32303A226433366464386635333965333830323761383639223B7D, 'CONFIRMED', 0, 0, '2021-11-13 15:53:48', '2021-11-13', '29', '', '15:53:48', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (146, 62, '2021-11-13 15:53:07', 5018, 1, 1, 1, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-13 15:53:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (147, 63, '2021-11-13 16:01:56', 5018, 2, 1, 4, '0', 1, 600.0000, 600.0000, '211.95.3.168', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-13 16:01:56', '', '', '', '', '', 0, NULL, '');
INSERT INTO `cash_ledger_audittrail` VALUES (148, 63, '2021-11-13 16:01:56', 5018, 2, 1, 5, '0', 1, 600.0000, 600.0000, '211.95.3.168', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 16:10:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (149, 63, '2021-11-13 16:01:56', 5018, 2, 1, 5, '1', 1, 600.0000, 600.0000, '211.95.3.168', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-DOUBLESTATUS', 1, 1013, '2021-11-13 16:16:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (150, 63, '2021-11-13 16:01:56', 5018, 2, 1, 1, '1', 1, 600.0000, 600.0000, '211.95.3.168', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 16:24:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (151, 64, '2021-11-13 17:24:34', 5019, 1, 1, 7, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, 16, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-13 17:24:34', '13/11/2021', '37', '', '17:24', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (152, 64, '2021-11-13 17:24:34', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, 16, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 17:24:37', '13/11/2021', '37', '', '17:24', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (153, 65, '2021-11-13 17:24:57', 5019, 1, 1, 7, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, 16, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-13 17:24:57', '13/11/2021', '37', '', '17:24', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (154, 65, '2021-11-13 17:24:57', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, 16, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 17:24:59', '13/11/2021', '37', '', '17:24', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (155, 66, '2021-11-13 17:25:30', 5019, 1, 1, 7, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, 4, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-13 17:25:30', '13/11/2021', '29', '', '17:25', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (156, 66, '2021-11-13 17:25:30', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, 4, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 17:25:32', '13/11/2021', '29', '', '17:25', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (157, 66, '2021-11-13 17:25:30', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, 4, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-13 17:26:21', '2021-11-13', '29', '', '17:26:21', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (158, 66, '2021-11-13 17:25:30', 5019, 1, 1, 1, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-13 17:26:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (159, 67, '2021-11-13 20:19:00', 5019, 1, 1, 7, '0', 1, 100.0000, 100.0000, '117.136.102.77', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-13 20:19:00', '13/11/2021', '29', '', '20:18', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (160, 67, '2021-11-13 20:19:00', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.102.77', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 20:19:03', '13/11/2021', '29', '', '20:18', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (161, 67, '2021-11-13 20:19:00', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.102.77', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-13 20:19:29', '2021-11-13', '29', '', '20:19:29', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (162, 67, '2021-11-13 20:19:00', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.136.102.77', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-13 20:19:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (163, 68, '2021-11-13 20:21:11', 5020, 1, 1, 4, '0', 1, 150.0000, 150.0000, '112.64.119.242', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5020, '2021-11-13 20:21:11', '2021-11-14', '陈仁义', '', '08:21', '', 6, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (164, 69, '2021-11-13 20:21:11', 5020, 1, 3, 4, '0', 1, 1.5000, 1.5000, '112.64.119.242', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5020, '2021-11-13 20:21:11', '2021-11-14', '陈仁义', '', '08:21', '', 6, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (165, 68, '2021-11-13 20:21:11', 5020, 1, 1, 1, '0', 1, 150.0000, 150.0000, '112.64.119.242', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 20:21:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (166, 69, '2021-11-13 20:21:11', 5020, 1, 3, 1, '0', 1, 1.5000, 1.5000, '112.64.119.242', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-13 20:21:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (167, 70, '2021-11-13 20:24:40', 5019, 1, 1, 7, '0', 1, 100.0000, 100.0000, '36.4.213.108', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-13 20:24:40', '13/11/2021', '29', '', '20:24', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (168, 70, '2021-11-13 20:24:40', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '36.4.213.108', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 20:24:42', '13/11/2021', '29', '', '20:24', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (169, 71, '2021-11-13 20:26:23', 5019, 1, 1, 7, '0', 1, 100.0000, 100.0000, '36.4.213.108', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-13 20:26:23', '13/11/2021', '29', '', '20:26', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (170, 71, '2021-11-13 20:26:23', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '36.4.213.108', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 20:26:25', '13/11/2021', '29', '', '20:26', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (171, 71, '2021-11-13 20:26:23', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '36.4.213.108', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-13 20:26:55', '2021-11-13', '29', '', '20:26:55', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (172, 71, '2021-11-13 20:26:23', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '36.4.213.108', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-13 20:26:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (173, 72, '2021-11-13 20:43:31', 5018, 1, 1, 7, '0', 1, 200.0000, 200.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-13 20:43:31', '13/11/2021', '29', '', '20:43', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (174, 72, '2021-11-13 20:43:31', 5018, 1, 1, 4, '0', 1, 200.0000, 200.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 20:43:33', '13/11/2021', '29', '', '20:43', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (175, 73, '2021-11-13 20:51:36', 5019, 2, 1, 4, '0', 1, 300.0000, 300.0000, '36.4.213.108', 0, NULL, 2, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-13 20:51:36', '', '', '', '', '', 0, NULL, '');
INSERT INTO `cash_ledger_audittrail` VALUES (176, 73, '2021-11-13 20:51:36', 5019, 2, 1, 5, '0', 1, 300.0000, 300.0000, '36.4.213.108', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 20:52:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (177, 73, '2021-11-13 20:51:36', 5019, 2, 1, 5, '1', 1, 300.0000, 300.0000, '36.4.213.108', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-DOUBLESTATUS', 1, 1013, '2021-11-13 20:54:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (178, 73, '2021-11-13 20:51:36', 5019, 2, 1, 1, '1', 1, 300.0000, 300.0000, '36.4.213.108', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 21:00:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (179, 74, '2021-11-13 21:11:50', 5019, 2, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, NULL, 2, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-13 21:11:50', '', '', '', '', '', 0, NULL, '');
INSERT INTO `cash_ledger_audittrail` VALUES (180, 74, '2021-11-13 21:11:50', 5019, 2, 1, 5, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 21:12:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (181, 74, '2021-11-13 21:11:50', 5019, 2, 1, 5, '1', 1, 500.0000, 500.0000, '36.4.213.108', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-DOUBLESTATUS', 1, 1013, '2021-11-13 21:13:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (182, 74, '2021-11-13 21:11:50', 5019, 2, 1, 1, '1', 1, 500.0000, 500.0000, '36.4.213.108', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 21:13:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (183, 75, '2021-11-13 21:18:39', 5020, 1, 3, 4, '0', 1, 0.0000, 0.0000, '112.64.119.208', 0, NULL, 0, NULL, 0, NULL, 'PROMO-INSERT', 1, 5020, '2021-11-13 21:18:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (184, 75, '2021-11-13 21:18:39', 5020, 1, 3, 2, '0', 1, 0.0000, 0.0000, '112.64.119.208', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 21:21:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (185, 76, '2021-11-13 21:22:13', 5020, 1, 1, 4, '0', 1, 123.0000, 123.0000, '112.64.119.208', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5020, '2021-11-13 21:22:13', '2021-11-14', '陈仁义', '', '09:22', '', 6, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (186, 77, '2021-11-13 21:22:13', 5020, 1, 3, 4, '0', 1, 1.2300, 1.2300, '112.64.119.208', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5020, '2021-11-13 21:22:13', '2021-11-14', '陈仁义', '', '09:22', '', 6, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (187, 76, '2021-11-13 21:22:13', 5020, 1, 1, 1, '0', 1, 123.0000, 123.0000, '112.64.119.208', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-13 21:22:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (188, 77, '2021-11-13 21:22:13', 5020, 1, 3, 1, '0', 1, 1.2300, 1.2300, '112.64.119.208', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-13 21:22:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (189, 43, '2021-11-13 11:04:26', 5010, 1, 1, 2, '0', 1, 10.0000, 10.0000, '113.61.43.11', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-13 23:04:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (190, 78, '2021-11-13 23:37:51', 5021, 1, 1, 7, '0', 1, 20.0000, 20.0000, '42.245.196.182', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5021, '2021-11-13 23:37:51', '13/11/2021', '37', '', '23:37', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (191, 78, '2021-11-13 23:37:51', 5021, 1, 1, 4, '0', 1, 20.0000, 20.0000, '42.245.196.182', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 23:37:55', '13/11/2021', '37', '', '23:37', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (192, 79, '2021-11-13 23:38:41', 5021, 1, 1, 7, '0', 1, 20.0000, 20.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5021, '2021-11-13 23:38:41', '13/11/2021', '37', '', '23:38', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (193, 79, '2021-11-13 23:38:41', 5021, 1, 1, 4, '0', 1, 20.0000, 20.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 23:38:44', '13/11/2021', '37', '', '23:38', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (194, 79, '2021-11-13 23:38:41', 5021, 1, 1, 4, '0', 1, 20.0000, 20.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-13 23:39:15', '2021-11-13', '37', '', '23:39:15', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (195, 79, '2021-11-13 23:38:41', 5021, 1, 1, 1, '0', 1, 20.0000, 20.0000, '117.136.30.2', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-13 23:39:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (196, 80, '2021-11-13 23:50:18', 5021, 1, 1, 7, '0', 1, 30.0000, 30.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5021, '2021-11-13 23:50:18', '13/11/2021', '37', '', '23:50', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (197, 80, '2021-11-13 23:50:18', 5021, 1, 1, 4, '0', 1, 30.0000, 30.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-13 23:50:20', '13/11/2021', '37', '', '23:50', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (198, 80, '2021-11-13 23:50:18', 5021, 1, 1, 4, '0', 1, 30.0000, 30.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-13 23:50:44', '2021-11-13', '37', '', '23:50:44', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (199, 80, '2021-11-13 23:50:18', 5021, 1, 1, 1, '0', 1, 30.0000, 30.0000, '117.136.30.2', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-13 23:50:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (200, 44, '2021-11-13 12:07:19', 5005, 1, 1, 2, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:07:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (201, 45, '2021-11-13 12:07:32', 5005, 1, 1, 2, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:07:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (202, 46, '2021-11-13 12:07:45', 5005, 1, 1, 2, '0', 1, 300.0000, 300.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:07:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (203, 47, '2021-11-13 12:07:54', 5005, 1, 1, 2, '0', 1, 200.0000, 200.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:07:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (204, 48, '2021-11-13 12:08:03', 5005, 1, 1, 2, '0', 1, 3000.0000, 3000.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:08:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (205, 49, '2021-11-13 12:08:16', 5005, 1, 1, 2, '0', 1, 300.0000, 300.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:08:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (206, 50, '2021-11-13 12:08:54', 5005, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:08:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (207, 51, '2021-11-13 12:09:14', 5005, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.13', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:09:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (208, 81, '2021-11-14 00:35:27', 5021, 1, 1, 7, '0', 1, 30.0000, 30.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5021, '2021-11-14 00:35:27', '14/11/2021', '37', '', '00:35', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (209, 81, '2021-11-14 00:35:27', 5021, 1, 1, 4, '0', 1, 30.0000, 30.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 00:35:29', '14/11/2021', '37', '', '00:35', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (210, 81, '2021-11-14 00:35:27', 5021, 1, 1, 4, '0', 1, 30.0000, 30.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 00:36:11', '2021-11-14', '37', '', '00:36:11', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (211, 81, '2021-11-14 00:35:27', 5021, 1, 1, 1, '0', 1, 30.0000, 30.0000, '117.136.30.2', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:36:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (212, 82, '2021-11-14 00:47:17', 5021, 1, 1, 7, '0', 1, 20.0000, 20.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5021, '2021-11-14 00:47:17', '14/11/2021', '37', '', '00:47', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (213, 82, '2021-11-14 00:47:17', 5021, 1, 1, 4, '0', 1, 20.0000, 20.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 00:47:19', '14/11/2021', '37', '', '00:47', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (214, 83, '2021-11-14 00:47:49', 5022, 1, 1, 7, '0', 1, 50.0000, 50.0000, '117.61.244.60', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5022, '2021-11-14 00:47:49', '14/11/2021', '37', '', '00:47', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (215, 83, '2021-11-14 00:47:49', 5022, 1, 1, 4, '0', 1, 50.0000, 50.0000, '117.61.244.60', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 00:47:52', '14/11/2021', '37', '', '00:47', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (216, 82, '2021-11-14 00:47:17', 5021, 1, 1, 4, '0', 1, 20.0000, 20.0000, '117.136.30.2', 0, 8, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 00:47:54', '2021-11-14', '37', '', '00:47:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (217, 82, '2021-11-14 00:47:17', 5021, 1, 1, 1, '0', 1, 20.0000, 20.0000, '117.136.30.2', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:47:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (218, 83, '2021-11-14 00:47:49', 5022, 1, 1, 4, '0', 1, 50.0000, 50.0000, '117.61.244.60', 0, 2, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 00:48:48', '2021-11-14', '37', '', '00:48:48', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (219, 83, '2021-11-14 00:47:49', 5022, 1, 1, 1, '0', 1, 50.0000, 50.0000, '117.61.244.60', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:48:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (220, 84, '2021-11-14 00:53:30', 5021, 1, 1, 7, '0', 1, 30.0000, 30.0000, '117.136.30.34', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5021, '2021-11-14 00:53:30', '14/11/2021', '37', '', '00:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (221, 84, '2021-11-14 00:53:30', 5021, 1, 1, 4, '0', 1, 30.0000, 30.0000, '117.136.30.34', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 00:53:34', '14/11/2021', '37', '', '00:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (222, 84, '2021-11-14 00:53:30', 5021, 1, 1, 4, '0', 1, 30.0000, 30.0000, '117.136.30.34', 0, 8, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 00:54:01', '2021-11-14', '37', '', '00:54:01', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (223, 84, '2021-11-14 00:53:30', 5021, 1, 1, 1, '0', 1, 30.0000, 30.0000, '117.136.30.34', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 00:54:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (224, 85, '2021-11-14 01:05:40', 5022, 2, 1, 4, '0', 1, 200.0000, 200.0000, '117.61.244.60', 0, NULL, 4, NULL, NULL, '', 'M-INSERT', 1, 5022, '2021-11-14 01:05:40', '', '', '', '', '', 0, NULL, '');
INSERT INTO `cash_ledger_audittrail` VALUES (225, 85, '2021-11-14 01:05:40', 5022, 2, 1, 5, '0', 1, 200.0000, 200.0000, '117.61.244.60', 0, NULL, 4, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 01:06:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (226, 85, '2021-11-14 01:05:40', 5022, 2, 1, 5, '1', 1, 200.0000, 200.0000, '117.61.244.60', 0, NULL, 4, NULL, 0, NULL, 'UPDATE-DOUBLESTATUS', 1, 1013, '2021-11-14 01:09:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (227, 85, '2021-11-14 01:05:40', 5022, 2, 1, 1, '1', 1, 200.0000, 200.0000, '117.61.244.60', 0, NULL, 4, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 01:10:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (228, 86, '2021-11-14 01:12:57', 5022, 1, 1, 7, '0', 1, 30.0000, 30.0000, '117.61.244.60', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5022, '2021-11-14 01:12:57', '14/11/2021', '37', '', '01:12', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (229, 86, '2021-11-14 01:12:57', 5022, 1, 1, 4, '0', 1, 30.0000, 30.0000, '117.61.244.60', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 01:13:01', '14/11/2021', '37', '', '01:12', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (230, 87, '2021-11-14 01:13:14', 5022, 1, 1, 7, '0', 1, 30.0000, 30.0000, '117.61.244.60', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5022, '2021-11-14 01:13:14', '14/11/2021', '37', '', '01:13', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (231, 87, '2021-11-14 01:13:14', 5022, 1, 1, 4, '0', 1, 30.0000, 30.0000, '117.61.244.60', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 01:13:16', '14/11/2021', '37', '', '01:13', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (232, 88, '2021-11-14 01:13:45', 5022, 1, 1, 7, '0', 1, 50.0000, 50.0000, '117.61.244.60', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5022, '2021-11-14 01:13:45', '14/11/2021', '37', '', '01:13', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (233, 88, '2021-11-14 01:13:45', 5022, 1, 1, 4, '0', 1, 50.0000, 50.0000, '117.61.244.60', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 01:13:48', '14/11/2021', '37', '', '01:13', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (234, 88, '2021-11-14 01:13:45', 5022, 1, 1, 4, '0', 1, 50.0000, 50.0000, '117.61.244.60', 0, 2, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 01:14:22', '2021-11-14', '37', '', '01:14:22', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (235, 88, '2021-11-14 01:13:45', 5022, 1, 1, 1, '0', 1, 50.0000, 50.0000, '117.61.244.60', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 01:14:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (236, 89, '2021-11-14 01:20:00', 5021, 1, 1, 7, '0', 1, 30.0000, 30.0000, '117.136.30.34', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5021, '2021-11-14 01:20:00', '14/11/2021', '37', '', '01:19', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (237, 89, '2021-11-14 01:20:00', 5021, 1, 1, 4, '0', 1, 30.0000, 30.0000, '117.136.30.34', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 01:20:03', '14/11/2021', '37', '', '01:19', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (238, 89, '2021-11-14 01:20:00', 5021, 1, 1, 4, '0', 1, 30.0000, 30.0000, '117.136.30.34', 0, 8, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 01:21:12', '2021-11-14', '37', '', '01:21:12', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (239, 89, '2021-11-14 01:20:00', 5021, 1, 1, 1, '0', 1, 30.0000, 30.0000, '117.136.30.34', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 01:21:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (240, 52, '2021-11-13 14:53:40', 5014, 1, 1, 2, '0', 1, 500.0000, 500.0000, '113.61.43.12', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 02:53:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (241, 53, '2021-11-13 14:54:01', 5014, 1, 1, 2, '0', 1, 1000.0000, 1000.0000, '113.61.43.12', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 02:54:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (242, 90, '2021-11-14 03:10:30', 5025, 1, 1, 4, '0', 1, 1002.0000, 1002.0000, '121.31.247.148', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5025, '2021-11-14 03:10:30', '2021-11-14', '王均宁', '', '15:10', '', 7, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (243, 91, '2021-11-14 03:10:30', 5025, 1, 3, 4, '0', 1, 10.0200, 10.0200, '121.31.247.148', 0, NULL, 6, NULL, NULL, '', 'M-INSERT', 1, 5025, '2021-11-14 03:10:30', '2021-11-14', '王均宁', '', '15:10', '', 7, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (244, 90, '2021-11-14 03:10:30', 5025, 1, 1, 1, '0', 1, 1002.0000, 1002.0000, '121.31.247.148', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 03:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (245, 91, '2021-11-14 03:10:30', 5025, 1, 3, 1, '0', 1, 10.0200, 10.0200, '121.31.247.148', 0, NULL, 6, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 03:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (246, 92, '2021-11-14 03:34:40', 5025, 1, 4, 4, '0', 1, 88.0000, 88.0000, '113.61.43.12', 0, NULL, 0, NULL, 0, NULL, 'CASH-INSERT', 1, 1013, '2021-11-14 03:34:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (247, 92, '2021-11-14 03:34:40', 5025, 1, 4, 1, '0', 1, 88.0000, 88.0000, '113.61.43.12', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 03:34:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (248, 93, '2021-11-14 03:53:26', 5026, 1, 1, 7, '0', 1, 100.0000, 100.0000, '117.152.5.213', 0, 16, 5, NULL, NULL, '', 'M-INSERT', 1, 5026, '2021-11-14 03:53:26', '14/11/2021', '37', '', '03:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (249, 93, '2021-11-14 03:53:26', 5026, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.152.5.213', 0, 16, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 03:53:28', '14/11/2021', '37', '', '03:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (250, 93, '2021-11-14 03:53:26', 5026, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.152.5.213', 0, 16, 5, NULL, NULL, 0x613A383A7B733A383A226D656D6265726964223B733A353A223130353433223B733A373A226F726465726964223B733A32383A2232303231313131343135353333303432363830363838363039353838223B733A31343A227472616E73616374696F6E5F6964223B733A31363A2232303231313131343033353332363933223B733A363A22616D6F756E74223B733A383A223130302E30303030223B733A383A226461746574696D65223B733A31343A223230323131313134313535343035223B733A31303A2272657475726E636F6465223B733A323A223030223B733A343A227369676E223B733A33323A223746333537453633443135313239323244314634414433393238453244414343223B733A363A22617474616368223B733A32303A223165303930636365653061343533326239623933223B7D, 'CONFIRMED', 0, 0, '2021-11-14 03:54:06', '2021-11-14', '37', '', '03:54:06', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (251, 93, '2021-11-14 03:53:26', 5026, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.152.5.213', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 03:54:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (252, 94, '2021-11-14 04:25:31', 5025, 2, 1, 4, '0', 1, 662.0000, 662.0000, '121.31.247.148', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5025, '2021-11-14 04:25:31', '', '', '', '', '', 0, NULL, '');
INSERT INTO `cash_ledger_audittrail` VALUES (253, 94, '2021-11-14 04:25:31', 5025, 2, 1, 5, '0', 1, 662.0000, 662.0000, '121.31.247.148', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 04:25:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (254, 94, '2021-11-14 04:25:31', 5025, 2, 1, 5, '1', 1, 662.0000, 662.0000, '121.31.247.148', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-DOUBLESTATUS', 1, 1013, '2021-11-14 04:27:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (255, 95, '2021-11-14 04:49:17', 5026, 2, 1, 4, '0', 1, 200.0000, 200.0000, '117.152.5.213', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5026, '2021-11-14 04:49:17', '', '', '', '', '', 0, NULL, '');
INSERT INTO `cash_ledger_audittrail` VALUES (256, 94, '2021-11-14 04:25:31', 5025, 2, 1, 1, '1', 1, 662.0000, 662.0000, '121.31.247.148', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 04:49:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (257, 95, '2021-11-14 04:49:17', 5026, 2, 1, 5, '0', 1, 200.0000, 200.0000, '117.152.5.213', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 04:49:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (258, 95, '2021-11-14 04:49:17', 5026, 2, 1, 5, '1', 1, 200.0000, 200.0000, '117.152.5.213', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-DOUBLESTATUS', 1, 1013, '2021-11-14 04:50:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (259, 95, '2021-11-14 04:49:17', 5026, 2, 1, 1, '1', 1, 200.0000, 200.0000, '117.152.5.213', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 04:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (260, 64, '2021-11-13 17:24:34', 5019, 1, 1, 2, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 05:24:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (261, 65, '2021-11-13 17:24:57', 5019, 1, 1, 2, '0', 1, 500.0000, 500.0000, '36.4.213.108', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 05:24:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (262, 96, '2021-11-14 07:01:10', 5027, 1, 1, 4, '0', 1, 1005.0000, 1005.0000, '171.111.230.205', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5027, '2021-11-14 07:01:10', '2021-11-14', '王玉达', '', '19:01', '', 8, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (263, 97, '2021-11-14 07:01:10', 5027, 1, 3, 4, '0', 1, 10.0500, 10.0500, '171.111.230.205', 0, NULL, 1, NULL, NULL, '', 'M-INSERT', 1, 5027, '2021-11-14 07:01:10', '2021-11-14', '王玉达', '', '19:01', '', 8, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (264, 96, '2021-11-14 07:01:10', 5027, 1, 1, 1, '0', 1, 1005.0000, 1005.0000, '171.111.230.205', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 07:01:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (265, 97, '2021-11-14 07:01:10', 5027, 1, 3, 1, '0', 1, 10.0500, 10.0500, '171.111.230.205', 0, NULL, 1, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 07:01:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (266, 98, '2021-11-14 07:25:48', 5027, 1, 4, 4, '0', 1, 88.0000, 88.0000, '113.61.43.12', 0, NULL, 0, NULL, 0, NULL, 'CASH-INSERT', 1, 1013, '2021-11-14 07:25:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (267, 98, '2021-11-14 07:25:48', 5027, 1, 4, 1, '0', 1, 88.0000, 88.0000, '113.61.43.12', 0, NULL, 0, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 07:26:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (268, 99, '2021-11-14 08:16:33', 5027, 2, 1, 4, '0', 1, 909.0000, 909.0000, '171.111.230.205', 0, NULL, 2, NULL, NULL, '', 'M-INSERT', 1, 5027, '2021-11-14 08:16:33', '', '', '', '', '', 0, NULL, '');
INSERT INTO `cash_ledger_audittrail` VALUES (269, 99, '2021-11-14 08:16:33', 5027, 2, 1, 5, '0', 1, 909.0000, 909.0000, '171.111.230.205', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 08:17:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (270, 99, '2021-11-14 08:16:33', 5027, 2, 1, 5, '1', 1, 909.0000, 909.0000, '171.111.230.205', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-DOUBLESTATUS', 1, 1013, '2021-11-14 08:23:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (271, 99, '2021-11-14 08:16:33', 5027, 2, 1, 1, '1', 1, 909.0000, 909.0000, '171.111.230.205', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 08:23:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (272, 70, '2021-11-13 20:24:40', 5019, 1, 1, 2, '0', 1, 100.0000, 100.0000, '36.4.213.108', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 08:24:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (273, 72, '2021-11-13 20:43:31', 5018, 1, 1, 2, '0', 1, 200.0000, 200.0000, '117.136.8.123', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 08:43:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (274, 100, '2021-11-14 09:15:59', 5031, 1, 1, 7, '0', 1, 1200.0000, 1200.0000, '223.104.14.37', 0, 5, 5, NULL, NULL, '', 'M-INSERT', 1, 5031, '2021-11-14 09:15:59', '14/11/2021', '29', '', '09:15', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (275, 100, '2021-11-14 09:15:59', 5031, 1, 1, 4, '0', 1, 1200.0000, 1200.0000, '223.104.14.37', 0, 5, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 09:16:05', '14/11/2021', '29', '', '09:15', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (276, 101, '2021-11-14 09:28:18', 5031, 1, 1, 7, '0', 1, 100.0000, 100.0000, '223.104.14.37', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5031, '2021-11-14 09:28:18', '14/11/2021', '29', '', '09:28', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (277, 101, '2021-11-14 09:28:18', 5031, 1, 1, 4, '0', 1, 100.0000, 100.0000, '223.104.14.37', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 09:28:34', '14/11/2021', '29', '', '09:28', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (278, 101, '2021-11-14 09:28:18', 5031, 1, 1, 4, '0', 1, 100.0000, 100.0000, '223.104.14.37', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 09:29:57', '2021-11-14', '29', '', '09:29:57', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (279, 101, '2021-11-14 09:28:18', 5031, 1, 1, 1, '0', 1, 100.0000, 100.0000, '223.104.14.37', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 09:29:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (280, 102, '2021-11-14 10:00:16', 5031, 1, 1, 7, '0', 1, 500.0000, 500.0000, '117.136.90.12', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5031, '2021-11-14 10:00:16', '14/11/2021', '29', '', '10:00', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (281, 102, '2021-11-14 10:00:16', 5031, 1, 1, 4, '0', 1, 500.0000, 500.0000, '117.136.90.12', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 10:00:28', '14/11/2021', '29', '', '10:00', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (282, 102, '2021-11-14 10:00:16', 5031, 1, 1, 4, '0', 1, 500.0000, 500.0000, '117.136.90.12', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 10:00:54', '2021-11-14', '29', '', '10:00:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (283, 102, '2021-11-14 10:00:16', 5031, 1, 1, 1, '0', 1, 500.0000, 500.0000, '117.136.90.12', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 10:00:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (284, 78, '2021-11-13 23:37:51', 5021, 1, 1, 2, '0', 1, 20.0000, 20.0000, '42.245.196.182', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 11:37:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (285, 103, '2021-11-14 11:57:11', 5019, 1, 1, 7, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 11:57:11', '14/11/2021', '29', '', '11:57', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (286, 103, '2021-11-14 11:57:11', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 11:57:14', '14/11/2021', '29', '', '11:57', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (287, 103, '2021-11-14 11:57:11', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 11:57:42', '2021-11-14', '29', '', '11:57:42', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (288, 103, '2021-11-14 11:57:11', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 11:57:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (289, 104, '2021-11-14 12:12:35', 5004, 1, 1, 7, '0', 1, 10.0000, 10.0000, '61.244.94.106', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-14 12:12:35', '14/11/2021', '37', '', '12:12', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (290, 104, '2021-11-14 12:12:35', 5004, 1, 1, 4, '0', 1, 10.0000, 10.0000, '61.244.94.106', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 12:12:36', '14/11/2021', '37', '', '12:12', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (291, 105, '2021-11-14 12:37:51', 5019, 2, 1, 4, '0', 1, 400.0000, 400.0000, '36.4.171.82', 0, NULL, 2, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 12:37:51', '', '', '', '', '', 0, NULL, '');
INSERT INTO `cash_ledger_audittrail` VALUES (292, 105, '2021-11-14 12:37:51', 5019, 2, 1, 5, '0', 1, 400.0000, 400.0000, '36.4.171.82', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 12:38:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (293, 106, '2021-11-14 12:45:02', 5004, 1, 1, 7, '0', 1, 500.0000, 500.0000, '61.244.94.106', 0, 18, 5, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-14 12:45:02', '14/11/2021', '74', '', '12:45', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (294, 106, '2021-11-14 12:45:02', 5004, 1, 1, 4, '0', 1, 500.0000, 500.0000, '61.244.94.106', 0, 18, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 12:45:03', '14/11/2021', '74', '', '12:45', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (295, 107, '2021-11-14 12:46:51', 5004, 1, 1, 7, '0', 1, 500.0000, 500.0000, '61.244.94.106', 0, 18, 5, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-14 12:46:51', '14/11/2021', '92', '', '12:46', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (296, 107, '2021-11-14 12:46:51', 5004, 1, 1, 4, '0', 1, 500.0000, 500.0000, '61.244.94.106', 0, 18, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 12:46:52', '14/11/2021', '92', '', '12:46', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (297, 105, '2021-11-14 12:37:51', 5019, 2, 1, 5, '1', 1, 400.0000, 400.0000, '36.4.171.82', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-DOUBLESTATUS', 1, 1013, '2021-11-14 12:47:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (298, 105, '2021-11-14 12:37:51', 5019, 2, 1, 1, '1', 1, 400.0000, 400.0000, '36.4.171.82', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1013, '2021-11-14 12:48:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (299, 108, '2021-11-14 12:48:13', 5004, 1, 1, 7, '0', 1, 500.0000, 500.0000, '61.244.94.106', 0, 18, 5, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-14 12:48:13', '14/11/2021', '74', '', '12:48', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (300, 108, '2021-11-14 12:48:13', 5004, 1, 1, 4, '0', 1, 500.0000, 500.0000, '61.244.94.106', 0, 18, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 12:48:20', '14/11/2021', '74', '', '12:48', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (301, 109, '2021-11-14 12:48:46', 5004, 1, 1, 7, '0', 1, 512.0000, 512.0000, '61.244.94.106', 0, 18, 5, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-14 12:48:46', '14/11/2021', '74', '', '12:48', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (302, 109, '2021-11-14 12:48:46', 5004, 1, 1, 4, '0', 1, 512.0000, 512.0000, '61.244.94.106', 0, 18, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 12:48:47', '14/11/2021', '74', '', '12:48', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (303, 110, '2021-11-14 12:50:34', 5004, 1, 1, 7, '0', 1, 600.0000, 600.0000, '61.244.94.106', 0, 18, 5, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-14 12:50:34', '14/11/2021', '92', '', '12:50', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (304, 110, '2021-11-14 12:50:34', 5004, 1, 1, 4, '0', 1, 600.0000, 600.0000, '61.244.94.106', 0, 18, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 12:50:35', '14/11/2021', '92', '', '12:50', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (305, 111, '2021-11-14 12:52:45', 5004, 1, 1, 7, '0', 1, 700.0000, 700.0000, '123.125.127.183', 0, 18, 5, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-14 12:52:45', '14/11/2021', '92', '', '12:52', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (306, 111, '2021-11-14 12:52:45', 5004, 1, 1, 4, '0', 1, 700.0000, 700.0000, '123.125.127.183', 0, 18, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 12:52:55', '14/11/2021', '92', '', '12:52', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (307, 112, '2021-11-14 12:53:24', 5004, 1, 1, 7, '0', 1, 800.0000, 800.0000, '123.125.127.183', 0, 18, 5, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-14 12:53:24', '14/11/2021', '92', '', '12:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (308, 113, '2021-11-14 12:54:52', 5004, 1, 1, 7, '0', 1, 1000.0000, 1000.0000, '123.125.127.183', 0, 18, 5, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-14 12:54:52', '14/11/2021', '74', '', '12:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (309, 114, '2021-11-14 12:55:22', 5010, 1, 1, 4, '0', 1, 100.0000, 100.0000, '113.61.43.11', 0, NULL, 12, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-14 12:55:22', '2021-11-15', '大神', '', '00:55', '', 4, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (310, 115, '2021-11-14 12:55:22', 5010, 1, 3, 4, '0', 1, 1.0000, 1.0000, '113.61.43.11', 0, NULL, 12, NULL, NULL, '', 'M-INSERT', 1, 5010, '2021-11-14 12:55:22', '2021-11-15', '大神', '', '00:55', '', 4, 1, '');
INSERT INTO `cash_ledger_audittrail` VALUES (311, 116, '2021-11-14 12:55:55', 5004, 1, 1, 7, '0', 1, 1500.0000, 1500.0000, '123.125.127.183', 0, 18, 5, NULL, NULL, '', 'M-INSERT', 1, 5004, '2021-11-14 12:55:55', '14/11/2021', '74', '', '12:55', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (312, 116, '2021-11-14 12:55:55', 5004, 1, 1, 4, '0', 1, 1500.0000, 1500.0000, '123.125.127.183', 0, 18, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 12:56:04', '14/11/2021', '74', '', '12:55', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (313, 86, '2021-11-14 01:12:57', 5022, 1, 1, 2, '0', 1, 30.0000, 30.0000, '117.61.244.60', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 13:12:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (314, 87, '2021-11-14 01:13:14', 5022, 1, 1, 2, '0', 1, 30.0000, 30.0000, '117.61.244.60', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 13:13:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (315, 117, '2021-11-14 14:24:21', 5018, 1, 1, 7, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-14 14:24:21', '14/11/2021', '29', '', '14:24', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (316, 117, '2021-11-14 14:24:21', 5018, 1, 1, 4, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 14:24:23', '14/11/2021', '29', '', '14:24', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (317, 117, '2021-11-14 14:24:21', 5018, 1, 1, 4, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 14:24:47', '2021-11-14', '29', '', '14:24:47', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (318, 117, '2021-11-14 14:24:21', 5018, 1, 1, 1, '0', 1, 200.0000, 200.0000, '211.95.3.168', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 14:24:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (319, 118, '2021-11-14 14:30:34', 5018, 1, 1, 7, '0', 1, 300.0000, 300.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-14 14:30:34', '14/11/2021', '29', '', '14:30', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (320, 118, '2021-11-14 14:30:34', 5018, 1, 1, 4, '0', 1, 300.0000, 300.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 14:30:37', '14/11/2021', '29', '', '14:30', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (321, 118, '2021-11-14 14:30:34', 5018, 1, 1, 4, '0', 1, 300.0000, 300.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 14:31:04', '2021-11-14', '29', '', '14:31:04', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (322, 118, '2021-11-14 14:30:34', 5018, 1, 1, 1, '0', 1, 300.0000, 300.0000, '211.95.3.168', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 14:31:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (323, 119, '2021-11-14 14:32:42', 5019, 1, 1, 7, '0', 1, 100.0000, 100.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 14:32:42', '14/11/2021', '29', '', '14:32', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (324, 119, '2021-11-14 14:32:42', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 14:32:44', '14/11/2021', '29', '', '14:32', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (325, 119, '2021-11-14 14:32:42', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 14:33:14', '2021-11-14', '29', '', '14:33:14', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (326, 119, '2021-11-14 14:32:42', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '36.4.171.82', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 14:33:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (327, 120, '2021-11-14 14:36:14', 5019, 1, 1, 7, '0', 1, 300.0000, 300.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 14:36:14', '14/11/2021', '29', '', '14:36', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (328, 120, '2021-11-14 14:36:14', 5019, 1, 1, 4, '0', 1, 300.0000, 300.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 14:36:16', '14/11/2021', '29', '', '14:36', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (329, 120, '2021-11-14 14:36:14', 5019, 1, 1, 4, '0', 1, 300.0000, 300.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 14:36:36', '2021-11-14', '29', '', '14:36:36', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (330, 120, '2021-11-14 14:36:14', 5019, 1, 1, 1, '0', 1, 300.0000, 300.0000, '36.4.171.82', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 14:36:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (331, 121, '2021-11-14 14:47:05', 5018, 1, 1, 7, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-14 14:47:05', '14/11/2021', '29', '', '14:47', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (332, 121, '2021-11-14 14:47:05', 5018, 1, 1, 4, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 14:47:08', '14/11/2021', '29', '', '14:47', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (333, 121, '2021-11-14 14:47:05', 5018, 1, 1, 4, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 14:47:37', '2021-11-14', '29', '', '14:47:37', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (334, 121, '2021-11-14 14:47:05', 5018, 1, 1, 1, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 14:47:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (335, 122, '2021-11-14 14:54:18', 5019, 1, 1, 7, '0', 1, 200.0000, 200.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 14:54:18', '14/11/2021', '29', '', '14:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (336, 122, '2021-11-14 14:54:18', 5019, 1, 1, 4, '0', 1, 200.0000, 200.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 14:54:21', '14/11/2021', '29', '', '14:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (337, 122, '2021-11-14 14:54:18', 5019, 1, 1, 4, '0', 1, 200.0000, 200.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 14:54:38', '2021-11-14', '29', '', '14:54:38', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (338, 122, '2021-11-14 14:54:18', 5019, 1, 1, 1, '0', 1, 200.0000, 200.0000, '117.136.102.94', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 14:54:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (339, 123, '2021-11-14 15:00:27', 5019, 1, 1, 7, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 15:00:27', '14/11/2021', '29', '', '15:00', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (340, 123, '2021-11-14 15:00:27', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 15:00:30', '14/11/2021', '29', '', '15:00', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (341, 124, '2021-11-14 15:00:59', 5019, 1, 1, 7, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 15:00:59', '14/11/2021', '29', '', '15:00', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (342, 124, '2021-11-14 15:00:59', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 15:01:01', '14/11/2021', '29', '', '15:00', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (343, 124, '2021-11-14 15:00:59', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 15:01:17', '2021-11-14', '29', '', '15:01:17', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (344, 124, '2021-11-14 15:00:59', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 15:01:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (345, 125, '2021-11-14 15:07:31', 5018, 1, 1, 7, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-14 15:07:31', '14/11/2021', '29', '', '15:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (346, 125, '2021-11-14 15:07:31', 5018, 1, 1, 4, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 15:07:32', '14/11/2021', '29', '', '15:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (347, 125, '2021-11-14 15:07:31', 5018, 1, 1, 4, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 15:07:48', '2021-11-14', '29', '', '15:07:48', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (348, 125, '2021-11-14 15:07:31', 5018, 1, 1, 1, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 15:07:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (349, 126, '2021-11-14 15:17:24', 5018, 1, 1, 7, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-14 15:17:24', '14/11/2021', '29', '', '15:17', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (350, 126, '2021-11-14 15:17:24', 5018, 1, 1, 4, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 15:17:29', '14/11/2021', '29', '', '15:17', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (351, 127, '2021-11-14 15:18:37', 5018, 1, 1, 7, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-14 15:18:37', '14/11/2021', '29', '', '15:18', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (352, 127, '2021-11-14 15:18:37', 5018, 1, 1, 4, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 15:18:39', '14/11/2021', '29', '', '15:18', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (353, 127, '2021-11-14 15:18:37', 5018, 1, 1, 4, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 15:19:08', '2021-11-14', '29', '', '15:19:08', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (354, 127, '2021-11-14 15:18:37', 5018, 1, 1, 1, '0', 1, 500.0000, 500.0000, '117.136.8.123', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 15:19:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (355, 128, '2021-11-14 15:51:45', 5019, 1, 1, 7, '0', 1, 400.0000, 400.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 15:51:45', '14/11/2021', '29', '', '15:51', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (356, 128, '2021-11-14 15:51:45', 5019, 1, 1, 4, '0', 1, 400.0000, 400.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 15:51:48', '14/11/2021', '29', '', '15:51', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (357, 128, '2021-11-14 15:51:45', 5019, 1, 1, 8, '0', 1, 400.0000, 400.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-14 15:51:48', '14/11/2021', '29', '', '15:51', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (358, 129, '2021-11-14 15:51:59', 5019, 1, 1, 7, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 13, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 15:51:59', '14/11/2021', '29', '', '15:51', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (359, 129, '2021-11-14 15:51:59', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 13, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 15:52:01', '14/11/2021', '29', '', '15:51', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (360, 130, '2021-11-14 15:52:28', 5019, 1, 1, 7, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 15:52:28', '14/11/2021', '29', '', '15:52', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (361, 130, '2021-11-14 15:52:28', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 15:52:29', '14/11/2021', '29', '', '15:52', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (362, 131, '2021-11-14 15:53:31', 5019, 1, 1, 7, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 15:53:31', '14/11/2021', '29', '', '15:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (363, 131, '2021-11-14 15:53:31', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 15:53:33', '14/11/2021', '29', '', '15:53', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (364, 131, '2021-11-14 15:53:31', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 15:53:51', '2021-11-14', '29', '', '15:53:51', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (365, 131, '2021-11-14 15:53:31', 5019, 1, 1, 1, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 15:53:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (366, 132, '2021-11-14 16:15:32', 5019, 1, 1, 7, '0', 1, 300.0000, 300.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 16:15:32', '14/11/2021', '29', '', '16:15', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (367, 132, '2021-11-14 16:15:32', 5019, 1, 1, 4, '0', 1, 300.0000, 300.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 16:15:38', '14/11/2021', '29', '', '16:15', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (368, 132, '2021-11-14 16:15:32', 5019, 1, 1, 4, '0', 1, 300.0000, 300.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 16:16:05', '2021-11-14', '29', '', '16:16:05', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (369, 132, '2021-11-14 16:15:32', 5019, 1, 1, 1, '0', 1, 300.0000, 300.0000, '117.136.102.94', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 16:16:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (370, 133, '2021-11-14 16:39:23', 5018, 1, 1, 7, '0', 1, 400.0000, 400.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5018, '2021-11-14 16:39:23', '14/11/2021', '29', '', '16:39', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (371, 133, '2021-11-14 16:39:23', 5018, 1, 1, 4, '0', 1, 400.0000, 400.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 16:39:25', '14/11/2021', '29', '', '16:39', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (372, 133, '2021-11-14 16:39:23', 5018, 1, 1, 4, '0', 1, 400.0000, 400.0000, '211.95.3.168', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 16:39:39', '2021-11-14', '29', '', '16:39:39', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (373, 133, '2021-11-14 16:39:23', 5018, 1, 1, 1, '0', 1, 400.0000, 400.0000, '211.95.3.168', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 16:39:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (374, 134, '2021-11-14 17:20:08', 5019, 1, 1, 7, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 17:20:08', '14/11/2021', '29', '', '17:20', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (375, 134, '2021-11-14 17:20:08', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 17:20:11', '14/11/2021', '29', '', '17:20', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (376, 134, '2021-11-14 17:20:08', 5019, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 17:20:57', '2021-11-14', '29', '', '17:20:57', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (377, 134, '2021-11-14 17:20:08', 5019, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.136.102.94', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 17:20:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (378, 135, '2021-11-14 17:38:26', 5019, 1, 1, 7, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 17:38:26', '14/11/2021', '29', '', '17:38', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (379, 135, '2021-11-14 17:38:26', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 17:38:28', '14/11/2021', '29', '', '17:38', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (380, 135, '2021-11-14 17:38:26', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 17:38:43', '2021-11-14', '29', '', '17:38:43', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (381, 135, '2021-11-14 17:38:26', 5019, 1, 1, 1, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 17:38:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (382, 136, '2021-11-14 17:46:37', 5019, 1, 1, 7, '0', 1, 1000.0000, 1000.0000, '36.4.171.82', 0, 13, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 17:46:37', '14/11/2021', '29', '', '17:46', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (383, 136, '2021-11-14 17:46:37', 5019, 1, 1, 4, '0', 1, 1000.0000, 1000.0000, '36.4.171.82', 0, 13, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 17:46:39', '14/11/2021', '29', '', '17:46', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (384, 137, '2021-11-14 17:47:48', 5019, 1, 1, 7, '0', 1, 300.0000, 300.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 17:47:48', '14/11/2021', '29', '', '17:47', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (385, 137, '2021-11-14 17:47:48', 5019, 1, 1, 4, '0', 1, 300.0000, 300.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 17:47:51', '14/11/2021', '29', '', '17:47', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (386, 137, '2021-11-14 17:47:48', 5019, 1, 1, 4, '0', 1, 300.0000, 300.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 17:48:07', '2021-11-14', '29', '', '17:48:07', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (387, 137, '2021-11-14 17:47:48', 5019, 1, 1, 1, '0', 1, 300.0000, 300.0000, '36.4.171.82', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 17:48:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (388, 138, '2021-11-14 18:14:40', 5019, 1, 1, 7, '0', 1, 200.0000, 200.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 18:14:40', '14/11/2021', '29', '', '18:14', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (389, 138, '2021-11-14 18:14:40', 5019, 1, 1, 4, '0', 1, 200.0000, 200.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 18:14:42', '14/11/2021', '29', '', '18:14', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (390, 138, '2021-11-14 18:14:40', 5019, 1, 1, 4, '0', 1, 200.0000, 200.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 18:15:01', '2021-11-14', '29', '', '18:15:01', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (391, 138, '2021-11-14 18:14:40', 5019, 1, 1, 1, '0', 1, 200.0000, 200.0000, '36.4.171.82', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 18:15:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (392, 139, '2021-11-14 18:24:00', 5019, 1, 1, 7, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 18:24:00', '14/11/2021', '29', '', '18:23', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (393, 139, '2021-11-14 18:24:00', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 18:24:02', '14/11/2021', '29', '', '18:23', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (394, 139, '2021-11-14 18:24:00', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 18:24:19', '2021-11-14', '29', '', '18:24:19', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (395, 139, '2021-11-14 18:24:00', 5019, 1, 1, 1, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 18:24:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (396, 140, '2021-11-14 18:24:39', 5019, 1, 1, 7, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 18:24:39', '14/11/2021', '29', '', '18:24', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (397, 140, '2021-11-14 18:24:39', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 18:24:41', '14/11/2021', '29', '', '18:24', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (398, 140, '2021-11-14 18:24:39', 5019, 1, 1, 4, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 18:25:01', '2021-11-14', '29', '', '18:25:01', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (399, 140, '2021-11-14 18:24:39', 5019, 1, 1, 1, '0', 1, 500.0000, 500.0000, '36.4.171.82', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 18:25:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (400, 141, '2021-11-14 18:56:34', 5040, 1, 1, 7, '0', 1, 30.0000, 30.0000, '120.211.142.39', 0, 2, 5, NULL, NULL, '', 'M-INSERT', 1, 5040, '2021-11-14 18:56:34', '14/11/2021', '37', '', '18:56', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (401, 141, '2021-11-14 18:56:34', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '120.211.142.39', 0, 2, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 18:56:39', '14/11/2021', '37', '', '18:56', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (402, 141, '2021-11-14 18:56:34', 5040, 1, 1, 8, '0', 1, 30.0000, 30.0000, '120.211.142.39', 0, 2, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-14 18:56:39', '14/11/2021', '37', '', '18:56', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (403, 142, '2021-11-14 18:57:17', 5040, 1, 1, 7, '0', 1, 30.0000, 30.0000, '120.211.142.39', 0, 9, 5, NULL, NULL, '', 'M-INSERT', 1, 5040, '2021-11-14 18:57:17', '14/11/2021', '37', '', '18:57', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (404, 142, '2021-11-14 18:57:17', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '120.211.142.39', 0, 9, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 18:57:19', '14/11/2021', '37', '', '18:57', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (405, 143, '2021-11-14 18:57:57', 5040, 1, 1, 7, '0', 1, 30.0000, 30.0000, '120.211.142.39', 0, 9, 5, NULL, NULL, '', 'M-INSERT', 1, 5040, '2021-11-14 18:57:57', '14/11/2021', '37', '', '18:57', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (406, 143, '2021-11-14 18:57:57', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '120.211.142.39', 0, 9, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 18:57:59', '14/11/2021', '37', '', '18:57', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (407, 144, '2021-11-14 18:58:37', 5040, 1, 1, 7, '0', 1, 30.0000, 30.0000, '101.71.140.9', 0, 9, 5, NULL, NULL, '', 'M-INSERT', 1, 5040, '2021-11-14 18:58:37', '14/11/2021', '37', '', '18:58', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (408, 144, '2021-11-14 18:58:37', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '101.71.140.9', 0, 9, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 18:58:39', '14/11/2021', '37', '', '18:58', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (409, 145, '2021-11-14 18:59:23', 5040, 1, 1, 7, '0', 1, 30.0000, 30.0000, '101.71.140.9', 0, 9, 5, NULL, NULL, '', 'M-INSERT', 1, 5040, '2021-11-14 18:59:23', '14/11/2021', '37', '', '18:59', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (410, 145, '2021-11-14 18:59:23', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '101.71.140.9', 0, 9, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 18:59:25', '14/11/2021', '37', '', '18:59', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (411, 146, '2021-11-14 19:00:23', 5040, 1, 1, 7, '0', 1, 30.0000, 30.0000, '101.71.140.9', 0, 9, 5, NULL, NULL, '', 'M-INSERT', 1, 5040, '2021-11-14 19:00:23', '14/11/2021', '37', '', '19:00', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (412, 146, '2021-11-14 19:00:23', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '101.71.140.9', 0, 9, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 19:00:25', '14/11/2021', '37', '', '19:00', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (413, 147, '2021-11-14 19:01:04', 5040, 1, 1, 7, '0', 1, 30.0000, 30.0000, '101.71.140.6', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5040, '2021-11-14 19:01:04', '14/11/2021', '37', '', '19:01', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (414, 147, '2021-11-14 19:01:04', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '101.71.140.6', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 19:01:06', '14/11/2021', '37', '', '19:01', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (415, 147, '2021-11-14 19:01:04', 5040, 1, 1, 4, '0', 1, 30.0000, 30.0000, '101.71.140.6', 0, 8, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 19:01:38', '2021-11-14', '37', '', '19:01:38', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (416, 147, '2021-11-14 19:01:04', 5040, 1, 1, 1, '0', 1, 30.0000, 30.0000, '101.71.140.6', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 19:01:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (417, 115, '2021-11-14 12:55:22', 5010, 1, 3, 2, '0', 1, 1.0000, 1.0000, '113.61.43.11', 0, NULL, 12, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1014, '2021-11-14 19:02:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (418, 114, '2021-11-14 12:55:22', 5010, 1, 1, 2, '0', 1, 100.0000, 100.0000, '113.61.43.11', 0, NULL, 12, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1014, '2021-11-14 19:02:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (419, 148, '2021-11-14 19:05:12', 5019, 2, 1, 4, '0', 1, 2800.0000, 2800.0000, '36.4.171.82', 0, NULL, 2, NULL, NULL, '', 'M-INSERT', 1, 5019, '2021-11-14 19:05:12', '', '', '', '', '', 0, NULL, '');
INSERT INTO `cash_ledger_audittrail` VALUES (420, 149, '2021-11-14 20:27:56', 5031, 1, 1, 7, '0', 1, 100.0000, 100.0000, '117.136.90.12', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5031, '2021-11-14 20:27:56', '14/11/2021', '29', '', '20:27', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (421, 149, '2021-11-14 20:27:56', 5031, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.90.12', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 20:28:07', '14/11/2021', '29', '', '20:27', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (422, 149, '2021-11-14 20:27:56', 5031, 1, 1, 4, '0', 1, 100.0000, 100.0000, '117.136.90.12', 0, 7, 5, NULL, NULL, 0x613A303A7B7D, 'CONFIRMED', 0, 0, '2021-11-14 20:28:46', '2021-11-14', '29', '', '20:28:46', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (423, 149, '2021-11-14 20:27:56', 5031, 1, 1, 1, '0', 1, 100.0000, 100.0000, '117.136.90.12', 0, NULL, 5, NULL, 0, NULL, 'UPDATE-STATUS', 1, 72, '2021-11-14 20:28:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (424, 148, '2021-11-14 19:05:12', 5019, 2, 1, 5, '0', 1, 2800.0000, 2800.0000, '36.4.171.82', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1014, '2021-11-14 20:32:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (425, 148, '2021-11-14 19:05:12', 5019, 2, 1, 5, '1', 1, 2800.0000, 2800.0000, '36.4.171.82', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-DOUBLESTATUS', 1, 1014, '2021-11-14 20:36:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (426, 148, '2021-11-14 19:05:12', 5019, 2, 1, 1, '1', 1, 2800.0000, 2800.0000, '36.4.171.82', 0, NULL, 2, NULL, 0, NULL, 'UPDATE-STATUS', 1, 1014, '2021-11-14 20:44:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cash_ledger_audittrail` VALUES (427, 150, '2021-11-14 20:54:11', 5041, 1, 1, 7, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, 16, 5, NULL, NULL, '', 'M-INSERT', 1, 5041, '2021-11-14 20:54:11', '14/11/2021', '37', '', '20:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (428, 150, '2021-11-14 20:54:11', 5041, 1, 1, 4, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, 16, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 20:54:15', '14/11/2021', '37', '', '20:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (429, 151, '2021-11-14 20:54:34', 5041, 1, 1, 7, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, 8, 5, NULL, NULL, '', 'M-INSERT', 1, 5041, '2021-11-14 20:54:34', '14/11/2021', '37', '', '20:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (430, 151, '2021-11-14 20:54:34', 5041, 1, 1, 4, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, 8, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 20:54:36', '14/11/2021', '37', '', '20:54', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (431, 152, '2021-11-14 20:55:24', 5041, 1, 1, 7, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, 7, 5, NULL, NULL, '', 'M-INSERT', 1, 5041, '2021-11-14 20:55:24', '14/11/2021', '29', '', '20:55', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (432, 152, '2021-11-14 20:55:24', 5041, 1, 1, 4, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, 7, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 20:55:26', '14/11/2021', '29', '', '20:55', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (433, 152, '2021-11-14 20:55:24', 5041, 1, 1, 8, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, 7, 5, NULL, NULL, '', 'FAILURE', 0, 0, '2021-11-14 20:55:26', '14/11/2021', '29', '', '20:55', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (434, 153, '2021-11-14 20:55:49', 5041, 1, 1, 7, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, 16, 5, NULL, NULL, '', 'M-INSERT', 1, 5041, '2021-11-14 20:55:49', '14/11/2021', '37', '', '20:55', '', 0, 3, '');
INSERT INTO `cash_ledger_audittrail` VALUES (435, 153, '2021-11-14 20:55:49', 5041, 1, 1, 4, '0', 1, 100.0000, 100.0000, '42.249.33.52', 0, 16, 5, NULL, NULL, '', 'SUBMITTED', 0, 0, '2021-11-14 20:55:50', '14/11/2021', '37', '', '20:55', '', 0, 3, '');

-- ----------------------------
-- Table structure for cash_ledger_reference
-- ----------------------------
DROP TABLE IF EXISTS `cash_ledger_reference`;
CREATE TABLE `cash_ledger_reference`  (
  `ledgerindex` mediumint UNSIGNED NOT NULL,
  `currentcl` decimal(16, 4) NOT NULL,
  `groupindex` tinyint UNSIGNED NULL DEFAULT 0,
  `bank_reference_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `transaction_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ledgerindex`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cash_ledger_reference
-- ----------------------------
INSERT INTO `cash_ledger_reference` VALUES (1, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (2, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (3, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (4, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (5, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (6, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (7, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (8, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (9, 500.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (10, 500.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (11, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (12, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (13, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (14, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (15, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (16, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (17, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (18, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (19, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (20, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (21, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (22, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (23, 888.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (24, 888.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (25, 592.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (26, 500.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (27, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (28, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (29, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (30, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (31, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (32, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (33, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (34, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (35, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (36, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (37, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (38, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (39, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (40, 200.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (41, 260.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (42, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (43, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (44, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (45, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (46, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (47, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (48, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (49, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (50, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (51, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (52, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (53, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (54, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (55, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (56, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (57, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (58, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (59, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (60, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (61, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (62, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (63, 600.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (64, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (65, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (66, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (67, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (68, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (69, 150.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (70, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (71, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (72, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (73, 402.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (74, 608.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (75, 0.5000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (76, 0.5000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (77, 123.5000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (78, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (79, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (80, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (81, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (82, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (83, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (84, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (85, 251.6800, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (86, 0.2400, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (87, 0.2400, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (88, 0.2400, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (89, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (90, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (91, 1002.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (92, 1012.0200, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (93, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (94, 662.0200, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (95, 200.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (96, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (97, 1005.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (98, 1015.0500, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (99, 909.0500, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (100, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (101, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (102, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (103, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (104, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (105, 502.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (106, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (107, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (108, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (109, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (110, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (111, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (112, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (113, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (114, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (115, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (116, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (117, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (118, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (119, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (120, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (121, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (122, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (123, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (124, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (125, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (126, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (127, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (128, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (129, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (130, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (131, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (132, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (133, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (134, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (135, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (136, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (137, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (138, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (139, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (140, 500.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (141, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (142, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (143, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (144, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (145, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (146, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (147, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (148, 2830.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (149, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (150, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (151, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (152, 0.0000, 0, NULL, NULL);
INSERT INTO `cash_ledger_reference` VALUES (153, 0.0000, 0, NULL, NULL);

-- ----------------------------
-- Table structure for cash_ledger_remark_cash
-- ----------------------------
DROP TABLE IF EXISTS `cash_ledger_remark_cash`;
CREATE TABLE `cash_ledger_remark_cash`  (
  `ledgerindex` mediumint UNSIGNED NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lastupdateduser` mediumint UNSIGNED NOT NULL,
  PRIMARY KEY (`ledgerindex`) USING BTREE,
  INDEX `remark`(`remark`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cash_ledger_remark_cash
-- ----------------------------
INSERT INTO `cash_ledger_remark_cash` VALUES (7, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (9, 'TEST', 1024);
INSERT INTO `cash_ledger_remark_cash` VALUES (10, 'TEST', 1024);
INSERT INTO `cash_ledger_remark_cash` VALUES (11, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (13, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (20, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (21, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (22, '自助申请优惠', 5010);
INSERT INTO `cash_ledger_remark_cash` VALUES (23, '自助申请优惠', 5010);
INSERT INTO `cash_ledger_remark_cash` VALUES (24, '自助申请优惠', 5010);
INSERT INTO `cash_ledger_remark_cash` VALUES (25, '自助申请优惠', 4126);
INSERT INTO `cash_ledger_remark_cash` VALUES (26, '自助申请优惠', 4124);
INSERT INTO `cash_ledger_remark_cash` VALUES (27, '自助申请优惠', 5011);
INSERT INTO `cash_ledger_remark_cash` VALUES (28, '自助申请优惠', 5004);
INSERT INTO `cash_ledger_remark_cash` VALUES (29, '', 1011);
INSERT INTO `cash_ledger_remark_cash` VALUES (31, '自助申请优惠', 5010);
INSERT INTO `cash_ledger_remark_cash` VALUES (32, '自助申请优惠', 5010);
INSERT INTO `cash_ledger_remark_cash` VALUES (33, 'cs', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (34, '11', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (35, '', 1002);
INSERT INTO `cash_ledger_remark_cash` VALUES (37, '自助申请优惠', 5010);
INSERT INTO `cash_ledger_remark_cash` VALUES (38, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (39, '', 1002);
INSERT INTO `cash_ledger_remark_cash` VALUES (43, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (44, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (45, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (46, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (47, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (48, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (49, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (50, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (51, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (52, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (53, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (54, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (55, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (56, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (57, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (58, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (59, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (60, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (61, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (62, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (63, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (64, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (65, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (66, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (67, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (70, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (71, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (72, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (73, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (74, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (75, '自助申请优惠', 5020);
INSERT INTO `cash_ledger_remark_cash` VALUES (78, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (79, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (80, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (81, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (82, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (83, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (84, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (85, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (86, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (87, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (88, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (89, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (92, 'APP首存优惠', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (93, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (94, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (95, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (98, 'APP首存', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (99, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (101, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (102, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (103, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (105, '', 1013);
INSERT INTO `cash_ledger_remark_cash` VALUES (114, '', 1014);
INSERT INTO `cash_ledger_remark_cash` VALUES (117, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (118, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (119, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (120, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (121, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (122, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (124, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (125, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (127, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (131, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (132, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (133, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (134, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (135, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (137, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (138, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (139, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (140, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (147, '', 72);
INSERT INTO `cash_ledger_remark_cash` VALUES (148, '', 1014);
INSERT INTO `cash_ledger_remark_cash` VALUES (149, '', 72);

-- ----------------------------
-- Table structure for cash_ledger_remark_cash_audittrail
-- ----------------------------
DROP TABLE IF EXISTS `cash_ledger_remark_cash_audittrail`;
CREATE TABLE `cash_ledger_remark_cash_audittrail`  (
  `logindex` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ledgerindex` mediumint UNSIGNED NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lastupdateduser` mediumint UNSIGNED NOT NULL,
  `updateaction` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`logindex`) USING BTREE,
  INDEX `remark`(`remark`) USING BTREE,
  INDEX `ledgerindex`(`ledgerindex`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cash_ledger_remark_cash_audittrail
-- ----------------------------
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (1, 9, 'TEST', 1024, 'INSERT', '2021-11-09 14:31:31');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (2, 10, 'TEST', 1024, 'INSERT', '2021-11-09 14:35:28');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (3, 7, '', 72, 'INSERT', '2021-11-09 21:49:31');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (4, 11, '', 72, 'INSERT', '2021-11-10 13:33:47');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (5, 13, '', 72, 'INSERT', '2021-11-10 13:49:55');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (6, 20, '', 72, 'INSERT', '2021-11-10 16:32:02');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (7, 21, '', 72, 'INSERT', '2021-11-10 16:32:52');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (8, 29, '', 1011, 'INSERT', '2021-11-11 06:24:50');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (9, 33, 'cs', 1012, 'INSERT', '2021-11-12 00:56:27');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (10, 33, 'cs', 1013, 'UPDATE', '2021-11-12 01:24:05');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (11, 34, '11', 1013, 'INSERT', '2021-11-12 01:25:58');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (12, 34, '11', 1013, 'UPDATE', '2021-11-12 01:26:02');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (13, 39, '', 1002, 'INSERT', '2021-11-12 07:57:25');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (14, 35, '', 1002, 'INSERT', '2021-11-12 07:58:50');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (15, 38, '', 72, 'INSERT', '2021-11-12 19:23:02');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (16, 54, '', 1013, 'INSERT', '2021-11-13 15:00:21');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (17, 55, '', 1013, 'INSERT', '2021-11-13 15:00:29');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (18, 56, '', 1013, 'INSERT', '2021-11-13 15:00:36');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (19, 58, '', 1013, 'INSERT', '2021-11-13 15:02:22');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (20, 57, '', 1013, 'INSERT', '2021-11-13 15:02:30');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (21, 59, '', 1013, 'INSERT', '2021-11-13 15:04:17');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (22, 61, '', 72, 'INSERT', '2021-11-13 15:49:07');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (23, 60, '', 1013, 'INSERT', '2021-11-13 15:49:17');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (24, 62, '', 72, 'INSERT', '2021-11-13 15:53:48');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (25, 63, '', 1013, 'INSERT', '2021-11-13 16:24:52');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (26, 66, '', 72, 'INSERT', '2021-11-13 17:26:22');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (27, 67, '', 72, 'INSERT', '2021-11-13 20:19:29');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (28, 71, '', 72, 'INSERT', '2021-11-13 20:26:56');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (29, 73, '', 1013, 'INSERT', '2021-11-13 21:00:11');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (30, 74, '', 1013, 'INSERT', '2021-11-13 21:13:43');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (31, 43, '', 72, 'INSERT', '2021-11-13 23:04:27');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (32, 79, '', 72, 'INSERT', '2021-11-13 23:39:15');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (33, 80, '', 72, 'INSERT', '2021-11-13 23:50:45');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (34, 44, '', 72, 'INSERT', '2021-11-14 00:07:20');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (35, 45, '', 72, 'INSERT', '2021-11-14 00:07:34');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (36, 46, '', 72, 'INSERT', '2021-11-14 00:07:46');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (37, 47, '', 72, 'INSERT', '2021-11-14 00:07:55');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (38, 48, '', 72, 'INSERT', '2021-11-14 00:08:04');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (39, 49, '', 72, 'INSERT', '2021-11-14 00:08:17');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (40, 50, '', 72, 'INSERT', '2021-11-14 00:08:55');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (41, 51, '', 72, 'INSERT', '2021-11-14 00:09:15');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (42, 81, '', 72, 'INSERT', '2021-11-14 00:36:11');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (43, 82, '', 72, 'INSERT', '2021-11-14 00:47:54');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (44, 83, '', 72, 'INSERT', '2021-11-14 00:48:49');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (45, 84, '', 72, 'INSERT', '2021-11-14 00:54:02');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (46, 85, '', 1013, 'INSERT', '2021-11-14 01:10:01');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (47, 88, '', 72, 'INSERT', '2021-11-14 01:14:22');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (48, 89, '', 72, 'INSERT', '2021-11-14 01:21:13');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (49, 52, '', 72, 'INSERT', '2021-11-14 02:53:41');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (50, 53, '', 72, 'INSERT', '2021-11-14 02:54:02');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (51, 92, 'APP首存优惠', 1013, 'INSERT', '2021-11-14 03:34:40');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (52, 92, 'APP首存优惠', 1013, 'UPDATE', '2021-11-14 03:34:44');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (53, 93, '', 72, 'INSERT', '2021-11-14 03:54:07');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (54, 94, '', 1013, 'INSERT', '2021-11-14 04:49:42');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (55, 95, '', 1013, 'INSERT', '2021-11-14 04:55:53');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (56, 64, '', 72, 'INSERT', '2021-11-14 05:24:35');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (57, 65, '', 72, 'INSERT', '2021-11-14 05:24:58');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (58, 98, 'APP首存', 1013, 'INSERT', '2021-11-14 07:25:48');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (59, 98, 'APP首存', 1013, 'UPDATE', '2021-11-14 07:26:24');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (60, 99, '', 1013, 'INSERT', '2021-11-14 08:23:24');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (61, 70, '', 72, 'INSERT', '2021-11-14 08:24:41');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (62, 72, '', 72, 'INSERT', '2021-11-14 08:43:32');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (63, 101, '', 72, 'INSERT', '2021-11-14 09:29:58');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (64, 102, '', 72, 'INSERT', '2021-11-14 10:00:55');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (65, 78, '', 72, 'INSERT', '2021-11-14 11:37:52');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (66, 103, '', 72, 'INSERT', '2021-11-14 11:57:42');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (67, 105, '', 1013, 'INSERT', '2021-11-14 12:48:04');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (68, 86, '', 72, 'INSERT', '2021-11-14 13:12:58');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (69, 87, '', 72, 'INSERT', '2021-11-14 13:13:15');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (70, 117, '', 72, 'INSERT', '2021-11-14 14:24:47');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (71, 118, '', 72, 'INSERT', '2021-11-14 14:31:06');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (72, 119, '', 72, 'INSERT', '2021-11-14 14:33:15');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (73, 120, '', 72, 'INSERT', '2021-11-14 14:36:36');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (74, 121, '', 72, 'INSERT', '2021-11-14 14:47:37');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (75, 122, '', 72, 'INSERT', '2021-11-14 14:54:39');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (76, 124, '', 72, 'INSERT', '2021-11-14 15:01:17');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (77, 125, '', 72, 'INSERT', '2021-11-14 15:07:49');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (78, 127, '', 72, 'INSERT', '2021-11-14 15:19:08');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (79, 131, '', 72, 'INSERT', '2021-11-14 15:53:52');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (80, 132, '', 72, 'INSERT', '2021-11-14 16:16:06');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (81, 133, '', 72, 'INSERT', '2021-11-14 16:39:39');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (82, 134, '', 72, 'INSERT', '2021-11-14 17:20:57');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (83, 135, '', 72, 'INSERT', '2021-11-14 17:38:43');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (84, 137, '', 72, 'INSERT', '2021-11-14 17:48:08');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (85, 138, '', 72, 'INSERT', '2021-11-14 18:15:02');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (86, 139, '', 72, 'INSERT', '2021-11-14 18:24:20');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (87, 140, '', 72, 'INSERT', '2021-11-14 18:25:02');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (88, 147, '', 72, 'INSERT', '2021-11-14 19:01:39');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (89, 114, '', 1014, 'INSERT', '2021-11-14 19:02:53');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (90, 149, '', 72, 'INSERT', '2021-11-14 20:28:47');
INSERT INTO `cash_ledger_remark_cash_audittrail` VALUES (91, 148, '', 1014, 'INSERT', '2021-11-14 20:44:06');

-- ----------------------------
-- Table structure for withdrawal_profile
-- ----------------------------
DROP TABLE IF EXISTS `withdrawal_profile`;
CREATE TABLE `withdrawal_profile`  (
  `profileindex` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `bankindex` mediumint UNSIGNED NOT NULL,
  `accountindex` mediumint UNSIGNED NOT NULL,
  `bankaccountno` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bankprovince` smallint NOT NULL,
  `bankcity` smallint NOT NULL,
  `bankaddress` tinytext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `otherbankname` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `companyindex` tinyint UNSIGNED NOT NULL,
  `valid_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`profileindex`, `bankindex`, `accountindex`) USING BTREE,
  INDEX `profileindex`(`profileindex`) USING BTREE,
  INDEX `accountindex`(`accountindex`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of withdrawal_profile
-- ----------------------------
INSERT INTO `withdrawal_profile` VALUES (1, 4, 5007, '1231235846', -5, 0, '', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (2, 4, 5008, '2548445445614515', 45, 0, 'test', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (3, 2, 5008, '154846845', 45, 0, 'test', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (4, 9, 5008, '15679884', 29, 0, 'test', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (5, 6, 5018, '6216690800003077850', 287, 0, '中国银行上海市秀沿路支行', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (6, 2, 5019, '6222033901005270776', 131, 0, '宁波工商银行朝阳支行', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (7, 2, 5020, '6222031001008177425', 287, 0, '大柏树支行', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (8, 9, 5021, '6221806900014587433', 293, 0, '中国邮政储蓄银行', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (9, 4, 5022, '6217003190006534556', 384, 0, '河源市源城区', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (10, 1, 5025, '6228481238853158272', 509, 0, '四川农业银行', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (11, 1, 5026, '6228481619754660971', 295, 0, '孝感市孝南区城东支行', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (12, 2, 5027, '6212262107001648261', 131, 0, '宁波', '', '1', 1, NULL);
INSERT INTO `withdrawal_profile` VALUES (13, 1, 5004, '6228489838383883833', 863, 0, '农业银行', '', '1', 1, NULL);

-- ----------------------------
-- Table structure for withdrawal_profile_audittrail
-- ----------------------------
DROP TABLE IF EXISTS `withdrawal_profile_audittrail`;
CREATE TABLE `withdrawal_profile_audittrail`  (
  `auditindex` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `audit_profileindex` mediumint UNSIGNED NOT NULL,
  `audit_bankindex` mediumint UNSIGNED NOT NULL,
  `audit_accountindex` mediumint UNSIGNED NOT NULL,
  `audit_bankaccountno` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `audit_bankprovince` smallint NOT NULL,
  `audit_bankcity` smallint NOT NULL,
  `audit_bankaddress` tinytext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `audit_otherbankname` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `audit_status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `audit_companyindex` tinyint UNSIGNED NOT NULL,
  `audit_action` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `audit_lastupdateduser` mediumint UNSIGNED NOT NULL,
  `audit_lastupdated` datetime NOT NULL,
  `audit_remark` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`auditindex`) USING BTREE,
  INDEX `audit_profileindex`(`audit_profileindex`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of withdrawal_profile_audittrail
-- ----------------------------
INSERT INTO `withdrawal_profile_audittrail` VALUES (1, 1, 4, 5007, '1231235846', -5, 0, '', '', '1', 1, 'INSERT', 1024, '2021-11-09 15:09:31', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (2, 2, 4, 5008, '2548445445614515', 45, 0, 'test', '', '1', 1, 'INSERT', 5008, '2021-11-09 15:26:39', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (3, 3, 2, 5008, '154846845', 45, 0, 'test', '', '1', 1, 'INSERT', 5008, '2021-11-09 15:26:48', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (4, 4, 9, 5008, '15679884', 29, 0, 'test', '', '1', 1, 'INSERT', 5008, '2021-11-09 15:27:00', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (5, 5, 6, 5018, '6216690800003077850', 287, 0, '中国银行上海市秀沿路支行', '', '1', 1, 'INSERT', 5018, '2021-11-13 15:44:44', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (6, 5, 6, 5018, '6216690800003077850', 287, 0, '中国银行上海市秀沿路支行', '', '1', 1, 'WITHDRAW', 5018, '2021-11-13 16:01:56', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (7, 6, 2, 5019, '6222033901005270776', 131, 0, '宁波工商银行朝阳支行', '', '1', 1, 'INSERT', 5019, '2021-11-13 17:46:02', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (8, 7, 2, 5020, '6222031001008177425', 287, 0, '大柏树支行', '', '1', 1, 'INSERT', 5020, '2021-11-13 20:14:55', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (9, 6, 2, 5019, '6222033901005270776', 131, 0, '宁波工商银行朝阳支行', '', '1', 1, 'WITHDRAW', 5019, '2021-11-13 20:51:36', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (10, 6, 2, 5019, '6222033901005270776', 131, 0, '宁波工商银行朝阳支行', '', '1', 1, 'WITHDRAW', 5019, '2021-11-13 21:11:50', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (11, 8, 9, 5021, '6221806900014587433', 293, 0, '中国邮政储蓄银行', '', '1', 1, 'INSERT', 5021, '2021-11-13 23:36:08', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (12, 9, 4, 5022, '6217003190006534556', 384, 0, '河源市源城区', '', '1', 1, 'INSERT', 5022, '2021-11-14 01:05:20', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (13, 9, 4, 5022, '6217003190006534556', 384, 0, '河源市源城区', '', '1', 1, 'WITHDRAW', 5022, '2021-11-14 01:05:40', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (14, 10, 1, 5025, '6228481238853158272', 509, 0, '四川农业银行', '', '1', 1, 'INSERT', 5025, '2021-11-14 02:55:58', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (15, 10, 1, 5025, '6228481238853158272', 509, 0, '四川农业银行', '', '1', 1, 'WITHDRAW', 5025, '2021-11-14 04:25:31', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (16, 11, 1, 5026, '6228481619754660971', 295, 0, '孝感市孝南区城东支行', '', '1', 1, 'INSERT', 5026, '2021-11-14 04:48:58', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (17, 11, 1, 5026, '6228481619754660971', 295, 0, '孝感市孝南区城东支行', '', '1', 1, 'WITHDRAW', 5026, '2021-11-14 04:49:17', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (18, 12, 2, 5027, '6212262107001648261', 131, 0, '宁波', '', '1', 1, 'INSERT', 5027, '2021-11-14 06:57:16', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (19, 12, 2, 5027, '6212262107001648261', 131, 0, '宁波', '', '1', 1, 'WITHDRAW', 5027, '2021-11-14 08:16:33', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (20, 6, 2, 5019, '6222033901005270776', 131, 0, '宁波工商银行朝阳支行', '', '1', 1, 'WITHDRAW', 5019, '2021-11-14 12:37:51', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (21, 13, 1, 5004, '6228489838383883833', 863, 0, '农业银行', '', '1', 1, 'INSERT', 5004, '2021-11-14 13:15:25', '');
INSERT INTO `withdrawal_profile_audittrail` VALUES (22, 6, 2, 5019, '6222033901005270776', 131, 0, '宁波工商银行朝阳支行', '', '1', 1, 'WITHDRAW', 5019, '2021-11-14 19:05:12', '');

SET FOREIGN_KEY_CHECKS = 1;
