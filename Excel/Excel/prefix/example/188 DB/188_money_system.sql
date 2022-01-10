/*
 Navicat MySQL Data Transfer

 Source Server         : 188 DB
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 10.10.1.102:3306
 Source Schema         : 188_money_system

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 20/09/2021 14:04:54
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
  INDEX `trans`(`trans`, `amount`, `leveltype`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3388 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4252 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB AUTO_INCREMENT = 8453344 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 18836008 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3459214 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 41795 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 687350 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
