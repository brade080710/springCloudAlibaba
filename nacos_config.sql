/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.2.153
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 192.168.2.153:3306
 Source Schema         : nacos_config

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 09/11/2020 15:16:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_use` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `effect` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_schema` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfo_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info
-- ----------------------------
INSERT INTO `config_info` VALUES (1, 'gulimall-coupon.properties', 'DEFAULT_GROUP', 'coupon.user.name=brade\r\ncoupon.user.age=31', '59d30946db85faa3ec9c357a08e82092', '2020-07-06 15:46:56', '2020-07-27 17:51:21', NULL, '192.168.2.159', '', '', '', '', '', 'properties', '');
INSERT INTO `config_info` VALUES (3, 'gulimall-coupon.properties', 'DEFAULT_GROUP', 'coupon.user.name=lisi\r\ncoupon.user.age=33\r\n', '9995949cf9d8fcfeee7f9b9cbc50d990', '2020-07-06 16:02:25', '2020-07-06 16:19:10', NULL, '192.168.2.159', '', '0ef91162-1d06-4fdd-ae46-1d197fa135b7', '', '', '', 'properties', '');
INSERT INTO `config_info` VALUES (5, 'gulimall-coupon.properties', 'DEFAULT_GROUP', 'coupon.user.name=lisi\r\ncoupon.user.age=44\r\n', '9dafaef7a5a149f2001b92ed094b91ff', '2020-07-06 16:23:44', '2020-07-06 16:26:38', NULL, '192.168.2.159', '', '973d68df-6eaa-4f8c-9666-f5329a4441df', '', '', '', 'properties', '');
INSERT INTO `config_info` VALUES (7, 'gulimall-coupon.properties', '1111', 'coupon.user.name=双11\r\ncoupon.user.age=1111\r\n', '26667b5ef7c6d1e6a96e794aebc7aed5', '2020-07-06 16:31:04', '2020-07-06 16:31:04', NULL, '192.168.2.159', '', '973d68df-6eaa-4f8c-9666-f5329a4441df', NULL, NULL, NULL, 'properties', NULL);
INSERT INTO `config_info` VALUES (8, 'gulimall-coupon.properties', 'dev', 'coupon.user.name=dev\r\ncoupon.user.age=10\r\n', '0ce2a443f588111bc5e0050ff0ce7151', '2020-07-06 16:34:48', '2020-07-06 16:38:39', NULL, '192.168.2.159', '', '973d68df-6eaa-4f8c-9666-f5329a4441df', '开发环境', '', '', 'properties', '');
INSERT INTO `config_info` VALUES (9, 'gulimall-coupon.properties', 'prod', 'coupon.user.name=prod666\r\ncoupon.user.age=666\r\n', '6b80bef917c6672cddd9a914cc672734', '2020-07-06 16:35:35', '2020-07-27 17:34:02', NULL, '192.168.2.159', '', '973d68df-6eaa-4f8c-9666-f5329a4441df', '生产环境', '', '', 'properties', '');
INSERT INTO `config_info` VALUES (13, 'datasource.yml', 'dev', 'spring:\r\n  datasource:\r\n    username: root\r\n    password: root\r\n    url: jdbc:mysql://192.168.135.128:3306/gulimall_sms\r\n    driver-class-name: com.mysql.cj.jdbc.Driver', '87269d2e44fc8b18990a6515b76b8b77', '2020-07-06 16:46:49', '2020-07-06 16:46:49', NULL, '192.168.2.159', '', '973d68df-6eaa-4f8c-9666-f5329a4441df', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (14, 'mybatis.yml', 'dev', 'mybatis-plus:\r\n  mapper-locations: classpath:/mapper/**/*.xml\r\n  global-config:\r\n    db-config:\r\n      id-type: auto', '3c8cba7df1687e1fbe635fdfa0352287', '2020-07-06 16:47:24', '2020-07-06 16:47:24', NULL, '192.168.2.159', '', '973d68df-6eaa-4f8c-9666-f5329a4441df', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (15, 'other.yml', 'dev', 'spring:\r\n  cloud:\r\n    nacos:\r\n      discovery:\r\n        server-addr: 192.168.2.153:8848\r\n  application:\r\n    name: gulimall-coupon\r\n\r\nserver:\r\n  port: 7000\r\ncoupon:\r\n  user:\r\n    name: zhangsan\r\n    age: 20\r\n', 'ab1b23f6f27d7982951a315f29d48a87', '2020-07-06 16:48:46', '2020-07-27 17:53:02', NULL, '192.168.2.159', '', '973d68df-6eaa-4f8c-9666-f5329a4441df', '', '', '', 'yaml', '');
INSERT INTO `config_info` VALUES (84, 'transport.type', 'SEATA_GROUP', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (85, 'transport.server', 'SEATA_GROUP', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (86, 'transport.heartbeat', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (87, 'transport.thread-factory.boss-thread-prefix', 'SEATA_GROUP', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (88, 'transport.thread-factory.worker-thread-prefix', 'SEATA_GROUP', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (89, 'transport.thread-factory.server-executor-thread-prefix', 'SEATA_GROUP', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (90, 'transport.thread-factory.share-boss-worker', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (91, 'transport.thread-factory.client-selector-thread-prefix', 'SEATA_GROUP', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (92, 'transport.thread-factory.client-selector-thread-size', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (93, 'transport.thread-factory.client-worker-thread-prefix', 'SEATA_GROUP', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (94, 'transport.thread-factory.boss-thread-size', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (95, 'transport.thread-factory.worker-thread-size', 'SEATA_GROUP', '8', 'c9f0f895fb98ab9159f51fd0297e236d', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (96, 'transport.shutdown.wait', 'SEATA_GROUP', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (97, 'service.vgroup_mapping.storage-service-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (98, 'service.vgroup_mapping.order-service-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (99, 'service.enableDegrade', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (100, 'service.disable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (101, 'service.max.commit.retry.timeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (102, 'service.max.rollback.retry.timeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (103, 'client.async.commit.buffer.limit', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (104, 'client.lock.retry.internal', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (105, 'client.lock.retry.times', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (106, 'store.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (107, 'store.file.dir', 'SEATA_GROUP', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (108, 'store.file.max-branch-session-size', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2020-07-24 16:39:34', '2020-07-24 16:39:34', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (109, 'store.file.max-global-session-size', 'SEATA_GROUP', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (110, 'store.file.file-write-buffer-cache-size', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (111, 'store.file.flush-disk-mode', 'SEATA_GROUP', 'async', '0df93e34273b367bb63bad28c94c78d5', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (112, 'store.file.session.reload.read_size', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (113, 'store.db.datasource', 'SEATA_GROUP', 'dbcp', '3a9f384fb40c59fbdc67024ee97d94b1', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (114, 'store.db.db-type', 'SEATA_GROUP', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (115, 'store.db.url', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (116, 'store.db.user', 'SEATA_GROUP', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (117, 'store.db.password', 'SEATA_GROUP', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (118, 'store.db.min-conn', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (119, 'store.db.max-conn', 'SEATA_GROUP', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (120, 'store.db.global.table', 'SEATA_GROUP', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (121, 'store.db.branch.table', 'SEATA_GROUP', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (122, 'store.db.query-limit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (123, 'store.db.lock-table', 'SEATA_GROUP', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (124, 'recovery.committing-retry-delay', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (125, 'recovery.asyn-committing-retry-delay', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (126, 'recovery.rollbacking-retry-delay', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (127, 'recovery.timeout-retry-delay', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (128, 'transaction.undo.data.validation', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (129, 'transaction.undo.log.serialization', 'SEATA_GROUP', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (130, 'transport.serialization', 'SEATA_GROUP', 'seata', 'b943081c423b9a5416a706524ee05d40', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (131, 'transport.compressor', 'SEATA_GROUP', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (132, 'metrics.enabled', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (133, 'metrics.registry-type', 'SEATA_GROUP', 'compact', '7cf74ca49c304df8150205fc915cd465', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (134, 'metrics.exporter-list', 'SEATA_GROUP', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (135, 'metrics.exporter-prometheus-port', 'SEATA_GROUP', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2020-07-24 16:39:35', '2020-07-24 16:39:35', NULL, '192.168.2.153', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `config_info` VALUES (140, 'service.vgroup_mapping.gulimall-product-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2020-07-27 16:10:16', '2020-07-27 16:10:16', NULL, '192.168.2.159', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (141, 'service.vgroup_mapping.gulimall-order-server-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2020-07-27 16:50:50', '2020-07-27 16:50:50', NULL, '192.168.2.159', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (142, 'service.vgroup_mapping.gulimall-order-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2020-07-27 16:57:13', '2020-07-27 16:57:13', NULL, '192.168.2.159', '', '', NULL, NULL, NULL, 'text', NULL);

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS `config_info_aggr`;
CREATE TABLE `config_info_aggr`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime(0) NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfoaggr_datagrouptenantdatum`(`data_id`, `group_id`, `tenant_id`, `datum_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '增加租户字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS `config_info_beta`;
CREATE TABLE `config_info_beta`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfobeta_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info_beta' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `config_info_tag`;
CREATE TABLE `config_info_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfotag_datagrouptenanttag`(`data_id`, `group_id`, `tenant_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info_tag' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `tag_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`) USING BTREE,
  UNIQUE INDEX `uk_configtagrelation_configidtag`(`id`, `tag_name`, `tag_type`) USING BTREE,
  INDEX `idx_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_tag_relation' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
  `usage` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
  `max_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '集群、各Group容量信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info`  (
  `id` bigint(64) UNSIGNED NOT NULL,
  `nid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app_name',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `op_type` char(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`nid`) USING BTREE,
  INDEX `idx_gmt_create`(`gmt_create`) USING BTREE,
  INDEX `idx_gmt_modified`(`gmt_modified`) USING BTREE,
  INDEX `idx_did`(`data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '多租户改造' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `resource` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE INDEX `uk_role_permission`(`role`, `resource`, `action`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE INDEX `idx_user_role`(`username`, `role`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('nacos', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '配额，0表示使用默认值',
  `usage` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用量',
  `max_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '聚合子配置最大个数',
  `max_aggr_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大变更历史数量',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '租户容量信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tenant_info_kptenantid`(`kp`, `tenant_id`) USING BTREE,
  INDEX `idx_tenant_id`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'tenant_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tenant_info
-- ----------------------------
INSERT INTO `tenant_info` VALUES (1, '1', '0ef91162-1d06-4fdd-ae46-1d197fa135b7', 'prod', 'coupon生产环境', 'nacos', 1594022092644, 1594022092644);
INSERT INTO `tenant_info` VALUES (2, '1', '973d68df-6eaa-4f8c-9666-f5329a4441df', 'coupon', '优惠券配置', 'nacos', 1594023767154, 1594023779951);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', 1);

SET FOREIGN_KEY_CHECKS = 1;
