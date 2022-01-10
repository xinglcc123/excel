/*
 Navicat MySQL Data Transfer

 Source Server         : t68 DB
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 10.10.1.158:3306
 Source Schema         : t68_agency

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 15/11/2021 09:12:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for a_account
-- ----------------------------
DROP TABLE IF EXISTS `a_account`;
CREATE TABLE `a_account`  (
  `accountid` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `accountcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `levelid` tinyint UNSIGNED NOT NULL,
  `operator` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `currencyid` tinyint UNSIGNED NOT NULL,
  `status` enum('-1','0','1','2') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastupdateduser` mediumint NOT NULL,
  `sma_accountid` mediumint UNSIGNED NULL DEFAULT NULL,
  `ma_accountid` mediumint UNSIGNED NULL DEFAULT NULL,
  `ag_accountid` mediumint UNSIGNED NULL DEFAULT NULL,
  `lastlogin` timestamp NOT NULL DEFAULT '2021-01-01 00:00:00',
  `passwordexpiry` timestamp NOT NULL DEFAULT '2021-01-01 00:00:00',
  `datecreated` timestamp NOT NULL DEFAULT '2021-01-01 00:00:00',
  `lastipaddress` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ma_max_credit` int NULL DEFAULT 0,
  `ag_max_credit` int NULL DEFAULT 0,
  `member_max_credit` int NULL DEFAULT 0,
  `daily_max_deposit` int NULL DEFAULT 0,
  `daily_max_withdraw` int NULL DEFAULT 0,
  `oddsgroup` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'c',
  `companyindex` tinyint UNSIGNED NOT NULL DEFAULT 1,
  `pause_withdrawal` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `group_4d` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `client_id` smallint UNSIGNED NOT NULL,
  `referrals` int NULL DEFAULT NULL,
  `regipaddress` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `reghost` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`accountid`) USING BTREE,
  UNIQUE INDEX `nickname`(`nickname`) USING BTREE,
  UNIQUE INDEX `accountcode`(`accountcode`, `levelid`) USING BTREE,
  INDEX `level_status`(`levelid`, `status`) USING BTREE,
  INDEX `ag_accountid`(`ag_accountid`) USING BTREE,
  INDEX `ma_accountid`(`ma_accountid`) USING BTREE,
  INDEX `c1`(`ma_accountid`, `ag_accountid`, `companyindex`) USING BTREE,
  INDEX `datecreated`(`datecreated`) USING BTREE,
  INDEX `referrals`(`referrals`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5027 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_account
-- ----------------------------
INSERT INTO `a_account` VALUES (804, 'sma', NULL, '', 1, '0', 1, '1', '2017-01-16 04:13:38', 0, NULL, NULL, NULL, '0000-00-00 00:00:00', '2037-12-31 20:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, NULL, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (805, 'cash', NULL, '', 2, '0', 1, '1', '2017-01-16 04:13:38', 0, 804, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, NULL, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (806, 'ag888', NULL, '', 3, '0', 1, '1', '2021-11-04 04:16:33', 0, 804, 805, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, NULL, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (807, 'agent', NULL, '', 2, '0', 1, '1', '2017-01-16 04:13:38', 0, 804, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, NULL, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (808, 'agent01', NULL, '', 3, '0', 1, '1', '2021-11-04 04:16:33', 0, 804, 807, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, NULL, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (809, 'ads', NULL, '', 2, '0', 1, '1', '2017-01-16 04:13:38', 0, 804, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, NULL, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (810, 'ads01', NULL, '', 3, '0', 1, '1', '2021-11-04 04:16:33', 0, 804, 809, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, NULL, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4088, 't68jumbo', NULL, '41a6883331a1ffc9dd5b8da3d756cf9f', 4, '0', 1, '1', '2021-11-04 04:16:33', 35, 804, 805, 806, '0000-00-00 00:00:00', '2037-12-31 20:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 50, 50, 'c', 1, '0', 0, 2, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4120, 't68test987', NULL, '41a6883331a1ffc9dd5b8da3d756cf9f', 4, '0', 1, '1', '2021-11-04 04:16:33', 35, 804, 805, 806, '0000-00-00 00:00:00', '2037-12-31 20:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 50, 50, 'c', 1, '0', 0, 2, NULL, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4121, 't68test426', NULL, '41a6883331a1ffc9dd5b8da3d756cf9f', 4, '0', 1, '1', '2021-11-04 04:16:33', 35, 804, 805, 806, '0000-00-00 00:00:00', '2037-12-31 20:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 50, 50, 'c', 1, '0', 0, 2, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4122, 't68demo122', NULL, '41a6883331a1ffc9dd5b8da3d756cf9f', 4, '0', 1, '1', '2021-11-04 04:16:33', 35, 804, 805, 806, '0000-00-00 00:00:00', '2037-12-31 20:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 50, 50, 'c', 1, '0', 0, 2, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4123, 't68demo123', NULL, 'SH+zgm86+d1RtxJ+CQZZPUKV7DjXd9xYPWNHT6mVShQ', 4, '0', 1, '1', '2021-11-13 21:06:48', 35, 804, 805, 806, '2021-11-13 21:06:48', '2037-12-31 20:00:00', '2021-11-04 04:16:33', '13.73.17.192', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4124, 't68bgtest01', NULL, 'vW7pdSyV8KC0MET8/3NJ7AmxCHs/VKjCe6+0lWwEQNE', 4, '0', 1, '1', '2021-11-14 13:00:56', 35, 804, 805, 806, '2021-11-14 13:00:56', '2021-12-09 23:17:19', '2021-11-04 04:16:33', '13.73.17.192', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4125, 't68bgtest02', NULL, 'Bq68fBIQqkVfnopaG+jY0oNr2jq4vVcO03pYwh5CPMo', 4, '0', 1, '1', '2021-11-11 06:58:59', 35, 804, 805, 806, '2021-11-11 06:58:59', '2037-12-31 20:00:00', '2021-11-04 04:16:33', '13.73.17.192', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4126, 't68bgtest03', NULL, 'sJl3KWvtzDMtZYtC3thKcoxvF8Ny8YNMora+KzBmAn8', 4, '0', 1, '1', '2021-11-13 02:23:31', 35, 804, 805, 806, '2021-11-13 02:23:31', '2021-12-09 14:40:56', '2021-11-04 04:16:33', '13.73.17.192', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 0, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4127, 't68test978', NULL, '41a6883331a1ffc9dd5b8da3d756cf9f', 4, '0', 1, '1', '2021-11-04 04:16:33', 35, 804, 805, 806, '0000-00-00 00:00:00', '2037-12-31 20:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 50, 50, 'c', 1, '0', 0, 2, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4128, 't68test0487', NULL, '41a6883331a1ffc9dd5b8da3d756cf9f', 4, '0', 1, '1', '2021-11-04 04:16:33', 35, 804, 805, 806, '0000-00-00 00:00:00', '2037-12-31 20:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 50, 50, 'c', 1, '0', 0, 2, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (4129, 't68test0978', NULL, '41a6883331a1ffc9dd5b8da3d756cf9f', 4, '0', 1, '1', '2021-11-04 04:16:33', 35, 804, 805, 806, '0000-00-00 00:00:00', '2037-12-31 20:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 50, 50, 'c', 1, '0', 0, 2, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (5000, 't68test9487', NULL, '41a6883331a1ffc9dd5b8da3d756cf9f', 4, '0', 1, '1', '2021-11-04 04:16:33', 35, 804, 805, 806, '0000-00-00 00:00:00', '2037-12-31 20:00:00', '2021-11-04 04:16:33', NULL, 0, 0, 0, 50, 50, 'c', 1, '0', 0, 2, 4120, '127.0.0.1', NULL);
INSERT INTO `a_account` VALUES (5001, 't68bgdev333', NULL, 'W39DcknN7aIDvVKOwun41wt4UN5ytBPZ8zZVpFujzRA', 4, '0', 1, '1', '2021-11-09 00:51:54', 0, 804, 805, 806, '2021-11-09 00:51:54', '2021-12-09 00:51:54', '2021-11-09 00:51:54', '47.91.20.150', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '47.91.20.150', 't68.mklojoikm.com');
INSERT INTO `a_account` VALUES (5002, 't68bgdev123', NULL, 'mHxkrfMqd/UCFMwXrFDRLPjOk9oiGue0PqMsO27tu8k', 4, '0', 1, '1', '2021-11-09 00:54:45', 0, 804, 805, 806, '2021-11-09 00:54:45', '2021-12-09 00:54:45', '2021-11-09 00:54:45', '47.91.20.150', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '47.91.20.150', 't68.mklojoikm.com');
INSERT INTO `a_account` VALUES (5003, 't68qq123123', NULL, '85uGJXtP9IxW/hRX4x0WhO6qvOgMR7KvQEXGK8IpO48', 4, '0', 1, '1', '2021-11-12 01:18:27', 1013, 804, 805, 806, '2021-11-12 01:18:12', '2021-12-12 01:18:27', '2021-11-09 04:38:39', '113.61.43.12', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '113.61.43.12', 't68.mklojoikm.com');
INSERT INTO `a_account` VALUES (5004, 't68bet365', NULL, '2U+iMzIxS0Z84t7F5AfDMqjXPySV1/13p4VuYRFzMBI', 4, '0', 1, '1', '2021-11-14 12:11:56', 0, 804, 805, 806, '2021-11-14 12:11:56', '2021-12-09 04:43:40', '2021-11-09 04:43:40', '61.244.94.106', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '61.244.94.106', 't68.mklojoikm.com');
INSERT INTO `a_account` VALUES (5005, 't68yiyiyi', NULL, 'JC3dTsZUf9DecPVkSTqwrecc45zUXydIFNZIAq/vcLk', 4, '0', 1, '1', '2021-11-13 12:07:06', 1012, 804, 805, 806, '2021-11-13 12:07:06', '2021-12-09 12:10:13', '2021-11-09 08:41:22', '113.61.43.13', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '113.61.43.13', 'bet322555.com');
INSERT INTO `a_account` VALUES (5006, 't68okokok', NULL, 'pBNncTqFG073SiSMzRRzHES0gdwdzdiYEIn7w0qpiqk', 4, '0', 1, '1', '2021-11-09 13:07:28', 0, 804, 805, 806, '2021-11-09 13:07:28', '2021-12-09 13:07:28', '2021-11-09 13:07:28', '113.61.43.11', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '113.61.43.11', 'bet322555.com');
INSERT INTO `a_account` VALUES (5007, 'bgtest01', NULL, 'b4fe96f3bd97e9907d9cf492b5382ec1', 3, '0', 1, '1', '2021-11-09 15:22:11', 1024, 804, 807, NULL, '2021-11-09 15:22:11', '0000-00-00 00:00:00', '2021-11-09 15:09:31', '13.73.17.192', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '13.73.17.192', 't68.mklojoikm.com');
INSERT INTO `a_account` VALUES (5008, 't68math456', NULL, '6Wqp1Th32l5zr/1b5/LaDgGWsHO99kABl5wwTGYYgiY', 4, '0', 1, '1', '2021-11-09 15:37:17', 0, 804, 805, 806, '2021-11-09 15:37:17', '2021-12-09 15:34:40', '2021-11-09 15:17:51', '13.73.17.192', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '13.73.17.192', 't68.mklojoikm.com');
INSERT INTO `a_account` VALUES (5009, 't68bos888', NULL, 'a6LHhVVDBMT23rYDGVDtB4tnIRGLmFbWVnG4cG/d1Jg', 4, '0', 1, '1', '2021-11-09 15:18:14', 0, 804, 805, 806, '2021-11-09 15:18:14', '2021-12-09 15:18:14', '2021-11-09 15:18:14', '13.73.17.192', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '13.73.17.192', 't68.mklojoikm.com');
INSERT INTO `a_account` VALUES (5010, 't68dashen88', NULL, 'WI1TG84jJorU+uhPtEEQhz8K2V6kQK0goAZAym4TRh8', 4, '0', 1, '1', '2021-11-14 13:01:42', 0, 804, 805, 806, '2021-11-14 13:01:42', '2021-12-10 06:10:10', '2021-11-10 06:10:10', '113.61.43.11', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '113.61.43.11', 'bet322555.com');
INSERT INTO `a_account` VALUES (5011, 't68dashen', NULL, '2FRPa0vENgcwNwGzHmfh+VkqPoGp2tp6KkgLYGUcnxY', 4, '0', 1, '1', '2021-11-10 11:15:43', 0, 804, 805, 806, '2021-11-10 11:15:43', '2021-12-10 11:15:43', '2021-11-10 11:15:43', '113.61.43.11', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '113.61.43.11', 'bet322555.com');
INSERT INTO `a_account` VALUES (5012, 't68bgdev1288', NULL, 'oSQb/WixozCFaDcKRMrdZDOuETijJ0/IWrmovFWXodo', 4, '0', 1, '1', '2021-11-10 22:24:53', 0, 804, 805, 806, '2021-11-10 22:24:53', '2021-12-10 22:24:53', '2021-11-10 22:24:53', '47.91.20.150', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '47.91.20.150', 't68.mklojoikm.com');
INSERT INTO `a_account` VALUES (5013, 't68q123123', NULL, 'fXO/HtlzBgVxwP8O0fO9mXto6lNIp+zYvf9Ob9SqYLQ', 4, '0', 1, '1', '2021-11-14 06:50:48', 0, 804, 805, 806, '2021-11-14 06:50:48', '2021-12-12 01:17:23', '2021-11-12 01:17:23', '113.61.43.12', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '150.138.181.108', 'bet322444.com');
INSERT INTO `a_account` VALUES (5014, 't68xiaoya321', NULL, '5mFJbkw1ChTYjNNHzINhcxgFEiTsuWX5ihE3zlfiJ0s', 4, '0', 1, '1', '2021-11-14 15:45:56', 0, 804, 805, 806, '2021-11-14 15:45:56', '2021-12-12 14:02:45', '2021-11-12 14:02:45', '113.61.43.12', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '113.61.43.12', 't68.mklojoikm.com');
INSERT INTO `a_account` VALUES (5015, 'bet111', NULL, 'b0b546417a6cfc501323d2e245484622', 3, '0', 1, '1', '2021-11-13 06:53:01', 1002, 804, 807, NULL, '0000-00-00 00:00:00', '2021-11-13 06:53:01', '2021-11-13 06:53:01', '113.61.43.11', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 2, NULL, '113.61.43.11', 't68-kkk.bge999.net');
INSERT INTO `a_account` VALUES (5016, 'bet222', NULL, 'b0b546417a6cfc501323d2e245484622', 3, '0', 1, '1', '2021-11-13 06:53:28', 1002, 804, 807, NULL, '0000-00-00 00:00:00', '2021-11-13 06:53:28', '2021-11-13 06:53:28', '113.61.43.11', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 2, NULL, '113.61.43.11', 't68-kkk.bge999.net');
INSERT INTO `a_account` VALUES (5017, 't68dashenceshi', NULL, 'zwloCMxrrEl/Np2ABfp2U+2Cd5k6hkGapX+M8lWmqAM', 4, '0', 1, '1', '2021-11-13 08:20:06', 0, 804, 807, 5015, '2021-11-13 08:20:06', '2021-12-13 08:20:06', '2021-11-13 08:20:06', '113.61.43.11', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '113.61.43.11', 'bet322111.com');
INSERT INTO `a_account` VALUES (5018, 't68jacoblee', NULL, 'HSb2daSFOtx2MXzCyXgU3vl7Rr4yJNfl1CF+RnhSG98', 4, '0', 1, '1', '2021-11-14 14:21:48', 0, 804, 807, 5016, '2021-11-14 14:21:48', '2021-12-13 15:42:18', '2021-11-13 15:42:18', '211.95.3.168', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '211.95.3.168', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5019, 't68luckyudd', NULL, 'tR45oRnvaToA1RjJdWUzdn2JZglrOICo19z+PVRfCHM', 4, '0', 1, '1', '2021-11-14 11:56:57', 0, 804, 807, 5016, '2021-11-14 11:56:57', '2021-12-13 17:24:10', '2021-11-13 17:24:10', '117.136.102.94', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '36.4.213.108', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5020, 't68saseke', NULL, '/h2dMlrja8i/uv4IDzOlWkp2+kFBLU7U0ykfauftWkA', 4, '0', 1, '1', '2021-11-14 03:53:24', 0, 804, 807, 5016, '2021-11-14 03:53:24', '2021-12-13 20:13:56', '2021-11-13 20:13:56', '112.64.119.133', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '112.64.119.242', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5021, 't68q41477345', NULL, 'E1u+qgI8PR1vaXdLf927E7bGAvOx7hd0pGtwKCGbDkI', 4, '0', 1, '1', '2021-11-13 23:32:32', 0, 804, 807, 5016, '2021-11-13 23:32:32', '2021-12-13 23:32:32', '2021-11-13 23:32:32', '42.245.196.182', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '42.245.196.182', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5022, 't68a1109677995', NULL, 'ond/v8lZzz+I8ttTEzllvQ15uJrCOck1IUi9vw2IQCM', 4, '0', 1, '1', '2021-11-14 00:46:54', 0, 804, 807, 5016, '2021-11-14 00:46:54', '2021-12-14 00:46:54', '2021-11-14 00:46:54', '117.61.244.60', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '117.61.244.60', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5023, 't68jungle', NULL, 'mMlFEg1VbQLcMu8wpMDl7NurmH949Vbuw1kke75bwGk', 4, '0', 1, '1', '2021-11-14 01:16:34', 0, 804, 807, 5016, '2021-11-14 01:16:34', '2021-12-14 01:16:34', '2021-11-14 01:16:34', '113.88.37.242', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '113.88.37.242', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5024, 't68y59533', NULL, 'N7RgD0i4Nkto4gGohQ5NGHvY/RCxiq2hZsRauOefzww', 4, '0', 1, '1', '2021-11-14 02:34:20', 0, 804, 807, 5016, '2021-11-14 02:34:20', '2021-12-14 02:34:20', '2021-11-14 02:34:20', '36.142.135.119', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '36.142.135.119', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5025, 't68w55567', NULL, 'EIGfOqpWbUtu/ut0RSZTYo8J7uc7972GE1tunMeNFE0', 4, '0', 1, '1', '2021-11-14 03:01:05', 0, 804, 807, 5016, '2021-11-14 03:01:05', '2021-12-14 02:39:59', '2021-11-14 02:39:59', '121.31.247.148', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '121.31.247.148', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5026, 't68hyj921001', NULL, 'Fxegnm933B0GYv0SSng+QzCWYPILT3ppQtVFokoxthg', 4, '0', 1, '1', '2021-11-14 04:47:30', 0, 804, 807, 5016, '2021-11-14 04:47:30', '2021-12-14 03:53:00', '2021-11-14 03:53:00', '117.152.5.213', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '117.152.5.213', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5027, 't681819558', NULL, '32faxDpkwjy+5h5jnH33Q0twi4uzDJpsWerDrC4oHEA', 4, '0', 1, '1', '2021-11-14 06:54:25', 0, 804, 807, 5016, '2021-11-14 06:54:25', '2021-12-14 06:54:25', '2021-11-14 06:54:25', '171.111.230.205', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '171.111.230.205', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5028, 't68wyqwyq', NULL, 'wE6WPnh/+qKFf0liHBwGNC9kmXWkq4VIwfKreFOUJBQ', 4, '0', 1, '1', '2021-11-14 07:02:42', 0, 804, 807, 5016, '2021-11-14 07:02:42', '2021-12-14 07:02:42', '2021-11-14 07:02:42', '223.104.104.134', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '223.104.104.134', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5029, 't68chen62585', NULL, 'TaOESZlp/CvlUDuXTUWlboCC2hKrn2+rznwLlCiy9Xo', 4, '0', 1, '1', '2021-11-14 13:47:35', 0, 804, 807, 5016, '2021-11-14 13:47:35', '2021-12-14 07:54:05', '2021-11-14 07:54:05', '218.205.55.94', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '218.205.55.94', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5030, 't68cc147668', NULL, 'maZwfAPsKz1kGWSaUA6JmdDGrvaBArMukzlAOaBM0Ys', 4, '0', 1, '1', '2021-11-14 08:29:14', 0, 804, 807, 5016, '2021-11-14 08:29:14', '2021-12-14 08:29:14', '2021-11-14 08:29:14', '183.9.217.58', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '183.9.217.58', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5031, 't688174aass', NULL, 'IoLV87YCIh1nakRSB7o2oV7LOq7sqLmb5ugn0VmzbQ0', 4, '0', 1, '1', '2021-11-14 20:27:35', 0, 804, 807, 5016, '2021-11-14 20:27:35', '2021-12-14 09:13:58', '2021-11-14 09:13:58', '117.136.90.12', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '223.104.14.37', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5032, 't68qq111111', NULL, 'R4WEki/T+qb8Z/u+0A2clpfQ3nFkzHMQQlCK6cuL05I', 4, '0', 1, '1', '2021-11-14 10:37:30', 0, 804, 807, 5016, '2021-11-14 10:37:30', '2021-12-14 10:37:30', '2021-11-14 10:37:30', '223.104.195.142', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '223.104.195.142', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5033, 't68qaqaqaqa', NULL, 'kZJn36M4/DHQcA8ZbEdu9TpINI1EWSnv1itgMEAFZE8', 4, '0', 1, '1', '2021-11-14 11:35:12', 0, 804, 807, 5016, '2021-11-14 11:35:12', '2021-12-14 11:35:12', '2021-11-14 11:35:12', '106.6.61.100', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 1, NULL, '106.6.61.100', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5034, 't68yyt838488', NULL, '8HqcT6dQH/1px7tw3HWiX0HRCcj80oIhnIH28Djxk64', 4, '0', 1, '1', '2021-11-14 12:20:48', 0, 804, 805, 806, '2021-11-14 12:20:48', '2021-12-14 12:20:48', '2021-11-14 12:20:48', '115.54.143.66', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 8, NULL, '115.54.143.66', '3656488.com');
INSERT INTO `a_account` VALUES (5035, 't68zw597749', NULL, 'TITT4KBaI1UrEypnCrcU76kHZHPwoAlMcGuQDkX3ivI', 4, '0', 1, '1', '2021-11-14 12:25:28', 0, 804, 807, 5016, '2021-11-14 12:25:28', '2021-12-14 12:25:28', '2021-11-14 12:25:28', '117.70.190.131', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '117.70.190.131', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5036, 't68yyp19850726', NULL, '9KQjuVHZm5eK7q5Xo+wkyNBsIU6GXF6k8nP7rN4rKLg', 4, '0', 1, '1', '2021-11-14 12:38:16', 0, 804, 807, 5016, '2021-11-14 12:38:16', '2021-12-14 12:38:16', '2021-11-14 12:38:16', '223.104.177.37', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '223.104.177.37', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5037, 't68fqy123', NULL, 'l+5ilGdOX+SAJFAV4bYAjHGKOTk5vfe8FT2vKsnm9ak', 4, '0', 1, '1', '2021-11-14 14:17:44', 0, 804, 807, 5016, '2021-11-14 14:17:44', '2021-12-14 14:17:44', '2021-11-14 14:17:44', '36.251.161.99', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '36.251.161.99', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5038, 't68qazwsxedc', NULL, '9PssCq1mqYulHEUtgnOS32CsvFjXwaXV0/frrLg395E', 4, '0', 1, '1', '2021-11-14 14:17:46', 0, 804, 807, 5016, '2021-11-14 14:17:46', '2021-12-14 14:17:46', '2021-11-14 14:17:46', '223.104.92.251', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '223.104.92.251', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5039, 't68lijie198409', NULL, 'ytshBgihGNqKTQEZNoF79OBxqFsITYG6LRyWm2ZDdmI', 4, '0', 1, '1', '2021-11-14 18:06:25', 0, 804, 807, 5016, '2021-11-14 18:06:25', '2021-12-14 18:06:25', '2021-11-14 18:06:25', '59.33.88.204', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '59.33.88.204', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5040, 't68lw1499610258', NULL, '50141f1c6024a9c5919b29492b68b870', 4, '0', 1, '1', '2021-11-14 19:57:04', 1014, 804, 807, 5016, '2021-11-14 18:53:11', '2021-11-14 19:57:04', '2021-11-14 18:53:11', '120.211.142.39', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '120.211.142.39', 'www.bet322333.com');
INSERT INTO `a_account` VALUES (5041, 't68yyd19900903', NULL, 'J7WPFtVdtzV6nB+U9ThxtNu6Hqu/NVcg/DO9Dmt55sU', 4, '0', 1, '1', '2021-11-14 20:51:14', 0, 804, 807, 5016, '2021-11-14 20:51:14', '2021-12-14 20:51:14', '2021-11-14 20:51:14', '42.249.33.52', 0, 0, 0, 0, 0, 'c', 1, '0', 0, 7, NULL, '42.249.33.52', 'www.bet322333.com');

-- ----------------------------
-- Table structure for a_account_data
-- ----------------------------
DROP TABLE IF EXISTS `a_account_data`;
CREATE TABLE `a_account_data`  (
  `accountid` mediumint UNSIGNED NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lastname` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `gender` enum('m','f') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'm',
  `mobileno` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `faxno` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `phoneno` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `country` smallint NULL DEFAULT NULL,
  `address` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `postcode` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `province` smallint NULL DEFAULT NULL,
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `dob` date NOT NULL,
  `confirm_flag` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `same_name_flag` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `withdrawal_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_passport` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `qq` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `question` tinyint NOT NULL,
  `answer` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `website` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastupdateduser` mediumint NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`accountid`) USING BTREE,
  INDEX `firstname`(`firstname`) USING BTREE,
  INDEX `mobileno`(`mobileno`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `qq`(`qq`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_account_data
-- ----------------------------
INSERT INTO `a_account_data` VALUES (804, 'sma', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '123123', 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (805, 'cash', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (806, 'ag888', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (807, 'agent', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (808, 'agent01', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (809, 'ads', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (810, 'ads01', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4088, 'jumbo', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '0001', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4120, '测试987', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '0001', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4121, 'demo121', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '0001', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4122, 'demo122', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '0001', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4123, 'demo123', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '4234', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4124, 'bgtest01', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '1234', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4125, 'bgtest02', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '1234', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4126, 'bgtest03', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '1234', '', NULL, 0, '', NULL, '2021-11-09 15:10:40', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4127, 'test978', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '0001', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4128, 'test0487', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '0001', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4129, 'test0978', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '0001', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (4130, 'test9487', NULL, 'm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '4234', '', NULL, 0, '', NULL, '2021-11-04 04:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5001, NULL, NULL, 'm', '13989999998', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '0000', '', '', 0, '', NULL, '2021-11-09 00:51:54', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5002, NULL, NULL, 'm', '13878888889', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '0000', '', '', 0, '', NULL, '2021-11-09 00:54:45', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5003, NULL, NULL, 'm', '12345678912', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '1234', '', '', 0, '', NULL, '2021-11-09 04:38:39', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5004, '爱心觉罗易得', NULL, 'm', '13567888888', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '0000', '', '', 0, '', NULL, '2021-11-14 13:15:25', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5005, '菲菲', NULL, 'm', '13655988899', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-10 01:31:06', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5006, NULL, NULL, 'm', '14779880201', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-09 13:07:28', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5007, '罗致详', '', 'm', '48444945454', '', '', 'csbg888@gmail.com', 32767, '', '', NULL, '', '1999-04-20', '1', '0', '', '', '458451421', 0, '', '', '2021-11-09 15:09:31', 1024, NULL);
INSERT INTO `a_account_data` VALUES (5008, '王大山', NULL, 'f', '15421541241', NULL, NULL, '789@gmail.com', 1, NULL, NULL, NULL, NULL, '1990-01-01', '0', '0', '1111', '', '187445841', 0, '', NULL, '2021-11-09 15:17:51', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5009, '罗致详', NULL, 'm', '09222567841', NULL, NULL, 'csbg888@gmail.com', 1, NULL, NULL, NULL, NULL, '1999-04-20', '0', '0', '0000', '', '0989884512', 0, '', NULL, '2021-11-09 15:25:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5010, '大神', NULL, 'm', '14778896563', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '', '', '', 0, '', NULL, '2021-11-12 07:57:25', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5011, '大神大神', NULL, 'm', '14586596566', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-10 11:15:43', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5012, 'bgdev', NULL, 'm', '13998977777', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-10 22:24:53', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5013, '问问', NULL, 'm', '15555555555', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-12 01:17:23', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5014, '小雅', NULL, 'm', '13555410385', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-12 14:02:45', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5015, '推广', '', 'm', '15869696969', '', '', 'bet111@t68.bo', 1, '', '', NULL, '', '0000-00-00', '1', '0', '', '', NULL, 0, '', '', '2021-11-13 06:53:01', 1002, '百度知道折叠引流');
INSERT INTO `a_account_data` VALUES (5016, '百度外推', '', 'm', '15863565658', '', '', 'bet222@t68.bo', 1, '', '', NULL, '', '0000-00-00', '1', '0', '', '', NULL, 0, '', '', '2021-11-13 06:53:28', 1002, '外推');
INSERT INTO `a_account_data` VALUES (5017, '大神', NULL, 'm', '15865985656', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-13 08:20:06', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5018, '李家泉', NULL, 'm', '13764229713', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '1603', '', '', 0, '', NULL, '2021-11-13 16:01:15', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5019, '由迪', NULL, 'm', '15216662017', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '5576', '', '', 0, '', NULL, '2021-11-13 17:46:02', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5020, '陈仁义', NULL, 'm', '15659383778', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '1213', '', '', 0, '', NULL, '2021-11-13 20:21:26', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5021, '刘江', NULL, 'm', '17265043748', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '1314', '', '', 0, '', NULL, '2021-11-13 23:39:15', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5022, '古晓斌', NULL, 'm', '16676286783', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '0000', '', '', 0, '', NULL, '2021-11-14 01:05:20', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5023, '邱峻淋', NULL, 'm', '15398806927', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 01:16:34', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5024, '袁昊', NULL, 'm', '15095641011', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 02:34:20', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5025, '王均宁', NULL, 'm', '18579891398', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '7989', '', '', 0, '', NULL, '2021-11-14 03:11:16', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5026, '黄永军', NULL, 'm', '13797189658', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '0000', '', '', 0, '', NULL, '2021-11-14 04:48:58', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5027, '王玉达', NULL, 'm', '19897595524', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '2024', '', '', 0, '', NULL, '2021-11-14 07:01:40', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5028, '魏永清', NULL, 'm', '19831703994', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 07:02:42', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5029, '陈波挺', NULL, 'm', '13626836697', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 07:54:05', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5030, '潘起鹏', NULL, 'm', '18705051629', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 08:29:14', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5031, '牟方明', NULL, 'm', '13886808174', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '', '', '', 0, '', NULL, '2021-11-14 09:29:58', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5032, '张鑫', NULL, 'm', '13333756756', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 10:37:30', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5033, '李旭旦', NULL, 'm', '13626834960', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 11:35:12', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5034, '杨巽', NULL, 'm', '17516477487', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 12:20:48', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5035, '朱伟', NULL, 'm', '17755268607', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 12:25:28', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5036, '尤宇鹏', NULL, 'm', '15842650726', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 12:38:16', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5037, '风清扬', NULL, 'm', '17585858699', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 14:17:44', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5038, '李二单', NULL, 'm', '18477584231', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 14:17:46', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5039, '李守师', NULL, 'm', '15876789583', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 18:06:25', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5040, '李伟', NULL, 'm', '13903101381', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '1', '0', '', '', '', 0, '', NULL, '2021-11-14 19:01:39', NULL, NULL);
INSERT INTO `a_account_data` VALUES (5041, '袁悦东', NULL, 'm', '15842216188', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0000-00-00', '0', '0', '', '', '', 0, '', NULL, '2021-11-14 20:51:14', NULL, NULL);

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
-- Records of a_account_data_extra
-- ----------------------------
INSERT INTO `a_account_data_extra` VALUES (5003, 'wechat', '123123', '2021-11-09 04:38:40');
INSERT INTO `a_account_data_extra` VALUES (5007, 'agree', 'on', '2021-11-09 15:09:31');
INSERT INTO `a_account_data_extra` VALUES (5007, 'wechat', '51548413210', '2021-11-09 15:09:31');
INSERT INTO `a_account_data_extra` VALUES (5008, 'wechat', '15947984', '2021-11-09 15:17:51');
INSERT INTO `a_account_data_extra` VALUES (5009, 'wechat', '32151515656', '2021-11-09 15:18:14');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_account_data_extra_audit
-- ----------------------------
INSERT INTO `a_account_data_extra_audit` VALUES (1, 5003, 'wechat', '123123', '2021-11-09 04:38:40', 't68qq123123', 'REGISTER');
INSERT INTO `a_account_data_extra_audit` VALUES (2, 5008, 'wechat', '15947984', '2021-11-09 15:17:51', 't68math456', 'REGISTER');
INSERT INTO `a_account_data_extra_audit` VALUES (3, 5009, 'wechat', '32151515656', '2021-11-09 15:18:14', 't68bos888', 'REGISTER');

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
-- Records of a_account_features
-- ----------------------------
INSERT INTO `a_account_features` VALUES (2, 5013, '1');

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
-- Records of a_account_sum
-- ----------------------------
INSERT INTO `a_account_sum` VALUES (4126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2603.34, 93.90, 1, NULL, NULL, NULL, NULL, 0x7B2232223A7B2277696E6C6F7374223A2D31352C22616374697665626574223A313636307D2C2235223A7B2277696E6C6F7374223A2D3130372C22616374697665626574223A3130377D2C2234223A7B2277696E6C6F7374223A2D33352C22616374697665626574223A33357D2C2237223A7B2277696E6C6F7374223A2D32362E342C22616374697665626574223A39362E367D2C2233223A7B2277696E6C6F7374223A3237372E332C22616374697665626574223A3730342E3733387D7D);
INSERT INTO `a_account_sum` VALUES (5010, '2021-11-12 07:57:25', '2021-11-12 07:58:13', 2, NULL, 1200.00, NULL, 200.00, 1000.00, NULL, NULL, '2021-11-12 07:58:13', 1000.00, NULL, NULL, NULL, NULL, 948.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `a_account_sum` VALUES (5013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 500.00, NULL, NULL, NULL, NULL, 614.86, -478.18, 2, NULL, NULL, NULL, NULL, 0x7B2234223A7B2277696E6C6F7374223A222D36312E34343030222C22616374697665626574223A2238312E30303030227D2C2233223A7B2277696E6C6F7374223A222D332E32303030222C22616374697665626574223A22352E32303030227D2C2235223A7B2277696E6C6F7374223A22392E32303030222C22616374697665626574223A22392E32303030227D2C2237223A7B2277696E6C6F7374223A222D322E32343030222C22616374697665626574223A2234312E39363030227D2C2232223A7B2277696E6C6F7374223A222D3432302E35303030222C22616374697665626574223A223437372E35303030227D7D);
INSERT INTO `a_account_sum` VALUES (5018, '2021-11-13 15:49:07', '2021-11-13 15:53:48', 8, 1, 2800.00, 600.00, 200.00, 200.00, NULL, NULL, '2021-11-14 16:39:39', 400.00, '2021-11-13 16:24:52', 600.00, NULL, NULL, NULL, NULL, NULL, 21274.36, -2199.64, 2, '2021-11-13 16:24:52', 600.00, NULL, NULL, 0x7B2233223A7B2277696E6C6F7374223A222D3330302E30303030222C22616374697665626574223A22323931362E30303030227D2C2232223A7B2277696E6C6F7374223A222D313839392E36343030222C22616374697665626574223A2231383335382E33363030227D7D);
INSERT INTO `a_account_sum` VALUES (5019, '2021-11-13 17:26:22', '2021-11-13 20:19:29', 16, 4, 4400.00, 4000.00, 500.00, 100.00, NULL, NULL, '2021-11-14 18:25:02', 500.00, '2021-11-14 20:44:06', 2800.00, NULL, NULL, NULL, NULL, NULL, 15266.80, -399.20, 2, '2021-11-13 21:00:11', 300.00, NULL, NULL, 0x7B2232223A7B2277696E6C6F7374223A222D3339392E32303030222C22616374697665626574223A2231353236362E38303030227D7D);
INSERT INTO `a_account_sum` VALUES (5020, '2021-11-13 20:21:26', '2021-11-13 21:22:43', 2, NULL, 273.00, NULL, 150.00, 123.00, NULL, NULL, '2021-11-13 21:22:43', 123.00, NULL, NULL, NULL, NULL, 2.73, NULL, NULL, 2285.20, -275.00, 1, NULL, NULL, NULL, NULL, 0x7B2233223A7B2277696E6C6F7374223A222D3237352E30303030222C22616374697665626574223A22323238352E32303030227D7D);
INSERT INTO `a_account_sum` VALUES (5021, '2021-11-13 23:39:15', '2021-11-13 23:50:45', 6, NULL, 160.00, NULL, 20.00, 30.00, NULL, NULL, '2021-11-14 01:21:13', 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 887.15, -159.29, 2, NULL, NULL, NULL, NULL, 0x7B2233223A7B2277696E6C6F7374223A2D3135392E32392C22616374697665626574223A3838372E31357D7D);
INSERT INTO `a_account_sum` VALUES (5022, '2021-11-14 00:48:49', '2021-11-14 01:14:22', 2, 1, 100.00, 200.00, 50.00, 50.00, NULL, NULL, '2021-11-14 01:14:22', 50.00, '2021-11-14 01:10:01', 200.00, NULL, NULL, NULL, NULL, NULL, 407.40, 100.02, 1, '2021-11-14 01:10:01', 200.00, NULL, NULL, 0x7B2233223A7B2277696E6C6F7374223A223130302E30323030222C22616374697665626574223A223430372E34303030227D7D);
INSERT INTO `a_account_sum` VALUES (5025, '2021-11-14 03:11:16', NULL, 1, 1, 1002.00, 662.00, 1002.00, NULL, NULL, NULL, '2021-11-14 03:11:16', 1002.00, '2021-11-14 04:49:42', 662.00, 88.00, NULL, 10.02, NULL, NULL, 2162.50, -437.50, 1, '2021-11-14 04:49:42', 662.00, NULL, NULL, 0x7B2232223A7B2277696E6C6F7374223A222D3433372E35303030222C22616374697665626574223A22323136322E35303030227D7D);
INSERT INTO `a_account_sum` VALUES (5026, '2021-11-14 03:54:07', NULL, 1, 1, 100.00, 200.00, 100.00, NULL, NULL, NULL, '2021-11-14 03:54:07', 100.00, '2021-11-14 04:55:54', 200.00, NULL, NULL, NULL, NULL, NULL, 1440.00, 100.65, 1, '2021-11-14 04:55:54', 200.00, NULL, NULL, 0x7B2233223A7B2277696E6C6F7374223A223130302E36353030222C22616374697665626574223A22313434302E30303030227D7D);
INSERT INTO `a_account_sum` VALUES (5027, '2021-11-14 07:01:40', NULL, 1, 1, 1005.00, 909.00, 1005.00, NULL, NULL, NULL, '2021-11-14 07:01:40', 1005.00, '2021-11-14 08:23:24', 909.00, 88.00, NULL, 10.05, NULL, NULL, 2666.00, -194.00, 1, '2021-11-14 08:23:24', 909.00, NULL, NULL, 0x7B2232223A7B2277696E6C6F7374223A222D3139342E30303030222C22616374697665626574223A22323636362E30303030227D7D);
INSERT INTO `a_account_sum` VALUES (5031, '2021-11-14 09:29:58', '2021-11-14 10:00:55', 3, NULL, 700.00, NULL, 100.00, 500.00, NULL, NULL, '2021-11-14 20:28:47', 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3278.15, -699.85, 1, NULL, NULL, NULL, NULL, 0x7B2237223A7B2277696E6C6F7374223A2D3639392E38352C22616374697665626574223A333237382E31357D7D);
INSERT INTO `a_account_sum` VALUES (5040, '2021-11-14 19:01:39', NULL, 1, NULL, 30.00, NULL, 30.00, NULL, NULL, NULL, '2021-11-14 19:01:39', 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 270.20, -29.87, 1, NULL, NULL, NULL, NULL, 0x7B2233223A7B2277696E6C6F7374223A222D32392E38373030222C22616374697665626574223A223237302E32303030227D7D);

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
-- Records of a_agent_code
-- ----------------------------
INSERT INTO `a_agent_code` VALUES (0, 'FFFF05J4', '2021-11-09 03:57:43', 'cs_t683a4', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (806, '000001', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (808, '100000', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (810, '100001', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4088, 'FF35k888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4120, 'FF36g888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4121, 'FF36h888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4122, 'FF36i888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4123, 'FF36j888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4124, 'FF36k888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4125, 'FF36l888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4126, 'FF36m888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4127, 'FF36n888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4128, 'FF36o888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4129, 'FF36p888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (4130, 'FF36q888', '2021-11-04 04:16:34', '-', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5001, 'FF3uxQJm', '2021-11-09 00:51:54', 't68bgdev333', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5002, 'FF3uy0bo', '2021-11-09 00:54:45', 't68bgdev123', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5003, 'FF3uzj3h', '2021-11-09 04:38:40', 't68qq123123', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5004, 'FF3v0u87', '2021-11-09 04:43:40', 't68bet365', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5005, 'FF3v1TEz', '2021-11-09 08:41:22', 't68yiyiyi', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5006, 'FF3v2Gw6', '2021-11-09 13:07:28', 't68okokok', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5007, '185312', '2021-11-09 15:09:31', 'cssuper49', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5008, 'FF3v4NSc', '2021-11-09 15:17:51', 't68math456', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5009, 'FF3v544E', '2021-11-09 15:18:14', 't68bos888', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5010, 'FF3v6hLk', '2021-11-10 06:10:10', 't68dashen88', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5011, 'FF3v71Og', '2021-11-10 11:15:43', 't68dashen', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5012, 'FF3v85hV', '2021-11-10 22:24:53', 't68bgdev1288', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5013, 'FF3v9AL6', '2021-11-12 01:17:23', 't68q123123', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5014, 'FF3vaAef', '2021-11-12 14:02:45', 't68xiaoya321', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5015, '685037', '2021-11-13 06:53:01', 'cs_t683a4', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5016, '503059', '2021-11-13 06:53:28', 'cs_t683a4', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5017, 'FF3vdjLf', '2021-11-13 08:20:06', 't68dashenceshi', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5018, 'FF3veTgx', '2021-11-13 15:42:18', 't68jacoblee', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5019, 'FF3vfe8O', '2021-11-13 17:24:10', 't68luckyudd', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5020, 'FF3vgt7M', '2021-11-13 20:13:56', 't68saseke', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5021, 'FF3vhHmX', '2021-11-13 23:32:32', 't68q41477345', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5022, 'FF3vil8u', '2021-11-14 00:46:54', 't68a1109677995', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5023, 'FF3vjt8U', '2021-11-14 01:16:34', 't68jungle', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5024, 'FF3vk4FH', '2021-11-14 02:34:20', 't68y59533', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5025, 'FF3vlPZi', '2021-11-14 02:39:59', 't68w55567', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5026, 'FF3vmhWM', '2021-11-14 03:53:00', 't68hyj921001', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5027, 'FF3vnX2r', '2021-11-14 06:54:25', 't681819558', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5028, 'FF3vobP1', '2021-11-14 07:02:42', 't68wyqwyq', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5029, 'FF3vpNu3', '2021-11-14 07:54:05', 't68chen62585', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5030, 'FF3vqCAP', '2021-11-14 08:29:14', 't68cc147668', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5031, 'FF3vrnM9', '2021-11-14 09:13:58', 't688174aass', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5032, 'FF3vs7dt', '2021-11-14 10:37:30', 't68qq111111', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5033, 'FF3vtNRK', '2021-11-14 11:35:12', 't68qaqaqaqa', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5034, 'FF3vuIh3', '2021-11-14 12:20:48', 't68yyt838488', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5035, 'FF3vvQTY', '2021-11-14 12:25:28', 't68zw597749', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5036, 'FF3vwFgN', '2021-11-14 12:38:16', 't68yyp19850726', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5037, 'FF3vxhBl', '2021-11-14 14:17:44', 't68fqy123', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5038, 'FF3vy7ir', '2021-11-14 14:17:46', 't68qazwsxedc', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5039, 'FF3vz12D', '2021-11-14 18:06:25', 't68lijie198409', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5040, 'FF3w0Slf', '2021-11-14 18:53:11', 't68lw1499610258', '1', 0, NULL);
INSERT INTO `a_agent_code` VALUES (5041, 'FF3w1skq', '2021-11-14 20:51:14', 't68yyd19900903', '1', 0, NULL);

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
-- Records of a_creditlimit
-- ----------------------------
INSERT INTO `a_creditlimit` VALUES (4088, 500.0000, 0.0000, '2016-11-21 01:44:57', 4088, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4088, 0.0000, 0.0000, '2016-08-25 03:15:53', 0, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4120, 500.0000, 0.0000, '2016-10-14 07:16:09', 4113, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4120, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4121, 500.0000, 0.0000, '2016-10-14 07:16:09', 4113, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4121, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4122, 500.0000, 0.0000, '2016-10-14 07:16:09', 4113, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4122, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4123, 477.0000, 0.0000, '2021-11-09 14:44:44', 4123, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4123, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4124, 300.0000, 0.0000, '2021-11-13 21:21:58', 4124, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4124, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4125, 500.0000, 0.0000, '2016-10-14 07:16:09', 4113, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4125, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4126, 592.0000, 0.0000, '2021-11-09 17:04:04', 4126, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4126, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4127, 500.0000, 0.0000, '2016-10-14 07:16:09', 4113, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4127, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4128, 500.0000, 0.0000, '2016-10-14 07:16:09', 4113, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4128, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4129, 500.0000, 0.0000, '2016-10-14 07:16:09', 4113, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4129, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4130, 500.0000, 0.0000, '2016-10-14 07:16:09', 4113, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (4130, 0.0000, 0.0000, '2016-10-14 07:16:09', 4113, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5001, 0.0000, 0.0000, '2021-11-09 00:51:54', 5001, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5001, 0.0000, 0.0000, '2021-11-09 00:51:54', 5001, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5002, 0.0000, 0.0000, '2021-11-09 00:54:45', 5002, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5002, 0.0000, 0.0000, '2021-11-09 00:54:45', 5002, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5003, 0.0000, 0.0000, '2021-11-09 04:38:39', 5003, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5003, 0.0000, 0.0000, '2021-11-09 04:38:39', 5003, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5004, 0.0000, 0.0000, '2021-11-09 04:43:40', 5004, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5004, 0.0000, 0.0000, '2021-11-09 04:43:40', 5004, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5005, 0.0000, 0.0000, '2021-11-09 08:41:22', 5005, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5005, 0.0000, 0.0000, '2021-11-09 08:41:22', 5005, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5006, 0.0000, 0.0000, '2021-11-09 13:07:28', 5006, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5006, 0.0000, 0.0000, '2021-11-09 13:07:28', 5006, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5008, 0.0000, 0.0000, '2021-11-09 15:17:51', 5008, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5008, 0.0000, 0.0000, '2021-11-09 15:17:51', 5008, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5009, 0.0000, 0.0000, '2021-11-09 15:18:14', 5009, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5009, 0.0000, 0.0000, '2021-11-09 15:18:14', 5009, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5010, 0.0000, 0.0000, '2021-11-12 08:33:42', 5010, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5010, 0.0000, 0.0000, '2021-11-10 06:10:10', 5010, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5011, 0.0000, 0.0000, '2021-11-10 11:15:43', 5011, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5011, 0.0000, 0.0000, '2021-11-10 11:15:43', 5011, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5012, 0.0000, 0.0000, '2021-11-10 22:24:53', 5012, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5012, 0.0000, 0.0000, '2021-11-10 22:24:53', 5012, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5013, 0.6200, 0.0000, '2021-11-12 03:40:49', 5013, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5013, 0.0000, 0.0000, '2021-11-12 01:17:23', 5013, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5014, 0.0000, 0.0000, '2021-11-12 14:02:45', 5014, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5014, 0.0000, 0.0000, '2021-11-12 14:02:45', 5014, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5017, 0.0000, 0.0000, '2021-11-13 08:20:06', 5017, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5017, 0.0000, 0.0000, '2021-11-13 08:20:06', 5017, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5018, 0.0000, 0.0000, '2021-11-14 16:39:54', 5018, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5018, 0.0000, 0.0000, '2021-11-13 15:42:18', 5018, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5019, 0.0000, 0.0000, '2021-11-14 19:09:16', 5019, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5019, 0.0000, 0.0000, '2021-11-13 17:24:10', 5019, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5020, 0.7300, 0.0000, '2021-11-13 21:23:12', 5020, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5020, 0.0000, 0.0000, '2021-11-13 20:13:56', 5020, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5021, 0.0000, 0.0000, '2021-11-14 01:23:14', 5021, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5021, 0.0000, 0.0000, '2021-11-13 23:32:32', 5021, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5022, 0.0200, 0.0000, '2021-11-14 01:23:30', 5022, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5022, 0.0000, 0.0000, '2021-11-14 00:46:54', 5022, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5023, 0.0000, 0.0000, '2021-11-14 01:16:34', 5023, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5023, 0.0000, 0.0000, '2021-11-14 01:16:34', 5023, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5024, 0.0000, 0.0000, '2021-11-14 02:34:20', 5024, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5024, 0.0000, 0.0000, '2021-11-14 02:34:20', 5024, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5025, 0.0200, 0.0000, '2021-11-14 04:25:31', 5025, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5025, 0.0000, 0.0000, '2021-11-14 02:39:59', 5025, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5026, 0.0000, 0.0000, '2021-11-14 04:49:17', 5026, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5026, 0.0000, 0.0000, '2021-11-14 03:53:00', 5026, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5027, 0.0500, 0.0000, '2021-11-14 08:16:33', 5027, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5027, 0.0000, 0.0000, '2021-11-14 06:54:25', 5027, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5028, 0.0000, 0.0000, '2021-11-14 07:02:42', 5028, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5028, 0.0000, 0.0000, '2021-11-14 07:02:42', 5028, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5029, 0.0000, 0.0000, '2021-11-14 07:54:05', 5029, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5029, 0.0000, 0.0000, '2021-11-14 07:54:05', 5029, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5030, 0.0000, 0.0000, '2021-11-14 08:29:14', 5030, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5030, 0.0000, 0.0000, '2021-11-14 08:29:14', 5030, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5031, 0.0000, 0.0000, '2021-11-14 20:29:49', 5031, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5031, 0.0000, 0.0000, '2021-11-14 09:13:58', 5031, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5032, 0.0000, 0.0000, '2021-11-14 10:37:30', 5032, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5032, 0.0000, 0.0000, '2021-11-14 10:37:30', 5032, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5033, 0.0000, 0.0000, '2021-11-14 11:35:12', 5033, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5033, 0.0000, 0.0000, '2021-11-14 11:35:12', 5033, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5034, 0.0000, 0.0000, '2021-11-14 12:20:48', 5034, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5034, 0.0000, 0.0000, '2021-11-14 12:20:48', 5034, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5035, 0.0000, 0.0000, '2021-11-14 12:25:28', 5035, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5035, 0.0000, 0.0000, '2021-11-14 12:25:28', 5035, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5036, 0.0000, 0.0000, '2021-11-14 12:38:16', 5036, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5036, 0.0000, 0.0000, '2021-11-14 12:38:16', 5036, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5037, 0.0000, 0.0000, '2021-11-14 14:17:44', 5037, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5037, 0.0000, 0.0000, '2021-11-14 14:17:44', 5037, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5038, 0.0000, 0.0000, '2021-11-14 14:17:46', 5038, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5038, 0.0000, 0.0000, '2021-11-14 14:17:46', 5038, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5039, 0.0000, 0.0000, '2021-11-14 18:06:25', 5039, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5039, 0.0000, 0.0000, '2021-11-14 18:06:25', 5039, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5040, 0.0000, 0.0000, '2021-11-14 19:03:12', 5040, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5040, 0.0000, 0.0000, '2021-11-14 18:53:11', 5040, 1, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5041, 0.0000, 0.0000, '2021-11-14 20:51:14', 5041, 0, '1', 1);
INSERT INTO `a_creditlimit` VALUES (5041, 0.0000, 0.0000, '2021-11-14 20:51:14', 5041, 1, '1', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_features
-- ----------------------------
INSERT INTO `a_features` VALUES (1, 'Special Member', '关注会员', '特別會員', '1', 1, 1, 'FF0000', '1', 1);
INSERT INTO `a_features` VALUES (2, 'VIP Member', 'VIP 会员', 'VIP 會員', '1', 2, 1, '40A1F5', '1', 1);
INSERT INTO `a_features` VALUES (3, 'Black List', '黑名单', '黑名單', '1', 3, 1, '838383', '1', 1);
INSERT INTO `a_features` VALUES (6, '需提供小票', '需提供小票', '需提供小票', '1', 6, 1, '52F549', '1', 1);
INSERT INTO `a_features` VALUES (7, 'Standby 1', '下注体育', '&#20633;&#29992;&#19968;', '1', 4, 1, '842EC7', '1', 1);
INSERT INTO `a_features` VALUES (8, 'Standby 2', '目前盈利', '&#20633;&#29992;&#20108;', '1', 5, 1, 'FBAF52', '1', 1);
INSERT INTO `a_features` VALUES (9, '備用1', '備用1', '備用1', '0', 9, 1, 'F35151', '1', 1);
INSERT INTO `a_features` VALUES (10, 's3', '会对压', 'new', '1', 7, 1, 'FF5CB9', '1', 1);
INSERT INTO `a_features` VALUES (11, '備用2', '備用2', '備用2', '0', 8, 1, 'F35151', '1', 1);
INSERT INTO `a_features` VALUES (12, 's5', '备用', 's5', '1', 10, 1, '0020C0', '1', 1);

SET FOREIGN_KEY_CHECKS = 1;
