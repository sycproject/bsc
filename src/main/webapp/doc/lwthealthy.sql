/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : lwthealthy

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2015-03-12 13:33:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_resources
-- ----------------------------
DROP TABLE IF EXISTS `tb_resources`;
CREATE TABLE `tb_resources` (
  `ids` varchar(32) COLLATE utf8_bin NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `osname` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ips` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `hostname` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `cpunumber` bigint(20) DEFAULT NULL,
  `cpuratio` decimal(20,10) DEFAULT NULL,
  `phymemory` bigint(20) DEFAULT NULL,
  `phyfreememory` bigint(20) DEFAULT NULL,
  `jvmtotalmemory` bigint(20) DEFAULT NULL,
  `jvmfreememory` bigint(20) DEFAULT NULL,
  `jvmmaxmemory` bigint(20) DEFAULT NULL,
  `gccount` bigint(20) DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_resources
-- ----------------------------
INSERT INTO `tb_resources` VALUES ('58a43f9bf3fc4e32bdf4f3c9cba7d236', null, 'Windows 8', '192.168.0.172', 'syd-pc', '4', '0.2498351631', '8009', '3468', '365', '205', '1781', '9', '2015-03-12 13:30:00');
INSERT INTO `tb_resources` VALUES ('889495ab47ae410d99f2fc51af71daeb', null, 'Windows 8', '192.168.0.172', 'syd-pc', '4', '0.0774793571', '8009', '3523', '365', '201', '1781', '9', '2015-03-12 13:32:00');

-- ----------------------------
-- Table structure for tb_right
-- ----------------------------
DROP TABLE IF EXISTS `tb_right`;
CREATE TABLE `tb_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `resType` varchar(10) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `resLevel` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_right
-- ----------------------------
INSERT INTO `tb_right` VALUES ('1', '用户管理', '1010', 'sys_user', '0', 'user', '1', '用户管理');
INSERT INTO `tb_right` VALUES ('2', '查询用户', '1', 'sys_user_find', '1', '/background/user/query.html', '2', '查询用户');
INSERT INTO `tb_right` VALUES ('3', '新增用户', '1', 'sys_user_addUI', '1', '/background/user/addUI.html', '3', '新增用户');
INSERT INTO `tb_right` VALUES ('4', '角色管理', '1010', 'sys_role', '0', 'role', '4', '角色管理');
INSERT INTO `tb_right` VALUES ('5', '角色列表', '4', 'sys_role_find', '1', '/background/role/query.html', '5', '角色列表');
INSERT INTO `tb_right` VALUES ('6', '资源管理', '1010', 'sys_resc', '0', 'resc', '6', '资源管理');
INSERT INTO `tb_right` VALUES ('7', '资源列表', '6', 'sys_resc_find', '1', '/background/resources/query.html', '7', '资源列表');
INSERT INTO `tb_right` VALUES ('8', '添加资源', '6', 'sys_resc_addUI', '1', '/background/resources/addUI.html', '8', '添加资源');
INSERT INTO `tb_right` VALUES ('11', '新增角色', '4', 'sys_role_add', '1', '/background/role/addUI.html', '5', '新增角色');
INSERT INTO `tb_right` VALUES ('18', '服务器配置管理', '1010', 'server', '0', 'server', '16', '服务器配置管理');
INSERT INTO `tb_right` VALUES ('19', '预警设置', '18', 'ser_warn', '1', '/background/serverInfo/forecast.html', '17', '预警设置');
INSERT INTO `tb_right` VALUES ('20', '状态列表', '18', 'ser_list', '1', '/background/serverInfo/query.html', '18', '状态列表');
INSERT INTO `tb_right` VALUES ('21', '服务器状态', '18', 'ser_statu', '1', '/background/serverInfo/show.html', '19', '服务器状态');
INSERT INTO `tb_right` VALUES ('22', '登陆信息管理', '1010', 'login', '0', 'login', '20', '登陆信息管理');
INSERT INTO `tb_right` VALUES ('23', '用户登录记录', '22', 'log_list', '1', '/background/userLoginList/query.html', '21', '用户登录记录');
INSERT INTO `tb_right` VALUES ('39', '操作日志管理', '1010', 'log', '0', 'log', '30', '操作日志管理');
INSERT INTO `tb_right` VALUES ('40', '日志查询', '39', 'log_find', '1', '/background/log/query.html', '31', '日志查询');
INSERT INTO `tb_right` VALUES ('41', '分配角色', '2', 'sys_user_fenpeirole', '2', 'sys_user_fenpeirole', '32', '分配角色');
INSERT INTO `tb_right` VALUES ('42', '分配权限', '2', 'sys_user_permissions', '2', 'sys_user_permissions', '33', '分配权限');
INSERT INTO `tb_right` VALUES ('43', '编辑用户', '2', 'sys_user_edit', '2', '/background/user/getById.html', '34', '编辑');
INSERT INTO `tb_right` VALUES ('44', '删除用户', '2', 'sys_user_delete', '2', '/background/user/deleteById.html', '36', '删除用户');
INSERT INTO `tb_right` VALUES ('45', '分配权限', '5', 'sys_role_permissions', '2', 'sys_role_permissions', '37', '分配权限');
INSERT INTO `tb_right` VALUES ('46', '显示详细信息', '5', 'sys_role_show', '2', 'sys_role_show', '39', '显示详细信息');
INSERT INTO `tb_right` VALUES ('47', '编辑角色', '5', 'sys_role_edit', '2', '/background/role/getById.html', '40', '编辑角色');
INSERT INTO `tb_right` VALUES ('48', '删除角色', '5', 'sys_role_delete', '2', '/background/role/deleteById.html', '41', '删除角色');
INSERT INTO `tb_right` VALUES ('49', '显示详细信息', '7', 'sys_res_show', '2', 'sys_res_show', '43', '显示详细信息');
INSERT INTO `tb_right` VALUES ('50', '编辑权限资源', '7', 'sys_res_edit', '2', '/background/resources/getById.html', '44', '编辑权限资源');
INSERT INTO `tb_right` VALUES ('51', '删除权限资源', '7', 'sys_res_delete', '2', '/background/resources/deleteById.html', '45', '删除权限资源');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '用户角色', 'ROLE_USER', '用户角色', '0');
INSERT INTO `tb_role` VALUES ('2', '管理员角色', 'ROLE_ADMIN', '这是管理员的角色', '1');
INSERT INTO `tb_role` VALUES ('6', '超级管理员', 'ROLE_ROOT', '超级管理员', '0');

-- ----------------------------
-- Table structure for tb_role_right
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_right`;
CREATE TABLE `tb_role_right` (
  `right_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`right_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_right
-- ----------------------------
INSERT INTO `tb_role_right` VALUES ('1', '1');
INSERT INTO `tb_role_right` VALUES ('1', '3');
INSERT INTO `tb_role_right` VALUES ('1', '6');
INSERT INTO `tb_role_right` VALUES ('2', '1');
INSERT INTO `tb_role_right` VALUES ('2', '3');
INSERT INTO `tb_role_right` VALUES ('2', '6');
INSERT INTO `tb_role_right` VALUES ('3', '1');
INSERT INTO `tb_role_right` VALUES ('3', '3');
INSERT INTO `tb_role_right` VALUES ('3', '6');
INSERT INTO `tb_role_right` VALUES ('4', '1');
INSERT INTO `tb_role_right` VALUES ('4', '3');
INSERT INTO `tb_role_right` VALUES ('4', '6');
INSERT INTO `tb_role_right` VALUES ('5', '1');
INSERT INTO `tb_role_right` VALUES ('5', '3');
INSERT INTO `tb_role_right` VALUES ('5', '6');
INSERT INTO `tb_role_right` VALUES ('6', '1');
INSERT INTO `tb_role_right` VALUES ('6', '3');
INSERT INTO `tb_role_right` VALUES ('6', '6');
INSERT INTO `tb_role_right` VALUES ('7', '1');
INSERT INTO `tb_role_right` VALUES ('7', '3');
INSERT INTO `tb_role_right` VALUES ('7', '6');
INSERT INTO `tb_role_right` VALUES ('8', '1');
INSERT INTO `tb_role_right` VALUES ('8', '3');
INSERT INTO `tb_role_right` VALUES ('8', '6');
INSERT INTO `tb_role_right` VALUES ('11', '1');
INSERT INTO `tb_role_right` VALUES ('11', '3');
INSERT INTO `tb_role_right` VALUES ('11', '6');
INSERT INTO `tb_role_right` VALUES ('18', '1');
INSERT INTO `tb_role_right` VALUES ('18', '3');
INSERT INTO `tb_role_right` VALUES ('18', '6');
INSERT INTO `tb_role_right` VALUES ('19', '1');
INSERT INTO `tb_role_right` VALUES ('19', '3');
INSERT INTO `tb_role_right` VALUES ('19', '6');
INSERT INTO `tb_role_right` VALUES ('20', '1');
INSERT INTO `tb_role_right` VALUES ('20', '3');
INSERT INTO `tb_role_right` VALUES ('20', '6');
INSERT INTO `tb_role_right` VALUES ('21', '1');
INSERT INTO `tb_role_right` VALUES ('21', '3');
INSERT INTO `tb_role_right` VALUES ('21', '6');
INSERT INTO `tb_role_right` VALUES ('22', '1');
INSERT INTO `tb_role_right` VALUES ('22', '3');
INSERT INTO `tb_role_right` VALUES ('22', '6');
INSERT INTO `tb_role_right` VALUES ('23', '1');
INSERT INTO `tb_role_right` VALUES ('23', '3');
INSERT INTO `tb_role_right` VALUES ('23', '6');
INSERT INTO `tb_role_right` VALUES ('39', '1');
INSERT INTO `tb_role_right` VALUES ('39', '6');
INSERT INTO `tb_role_right` VALUES ('40', '1');
INSERT INTO `tb_role_right` VALUES ('40', '6');
INSERT INTO `tb_role_right` VALUES ('41', '1');
INSERT INTO `tb_role_right` VALUES ('41', '6');
INSERT INTO `tb_role_right` VALUES ('42', '1');
INSERT INTO `tb_role_right` VALUES ('42', '6');
INSERT INTO `tb_role_right` VALUES ('43', '1');
INSERT INTO `tb_role_right` VALUES ('43', '6');
INSERT INTO `tb_role_right` VALUES ('44', '1');
INSERT INTO `tb_role_right` VALUES ('44', '6');
INSERT INTO `tb_role_right` VALUES ('45', '1');
INSERT INTO `tb_role_right` VALUES ('45', '6');
INSERT INTO `tb_role_right` VALUES ('46', '1');
INSERT INTO `tb_role_right` VALUES ('46', '6');
INSERT INTO `tb_role_right` VALUES ('47', '1');
INSERT INTO `tb_role_right` VALUES ('47', '6');
INSERT INTO `tb_role_right` VALUES ('48', '1');
INSERT INTO `tb_role_right` VALUES ('48', '6');
INSERT INTO `tb_role_right` VALUES ('49', '1');
INSERT INTO `tb_role_right` VALUES ('49', '6');
INSERT INTO `tb_role_right` VALUES ('50', '1');
INSERT INTO `tb_role_right` VALUES ('50', '6');
INSERT INTO `tb_role_right` VALUES ('51', '1');
INSERT INTO `tb_role_right` VALUES ('51', '6');
INSERT INTO `tb_role_right` VALUES ('1010', '1');
INSERT INTO `tb_role_right` VALUES ('1010', '3');
INSERT INTO `tb_role_right` VALUES ('1010', '6');

-- ----------------------------
-- Table structure for tb_syslog
-- ----------------------------
DROP TABLE IF EXISTS `tb_syslog`;
CREATE TABLE `tb_syslog` (
  `ids` varchar(32) NOT NULL COMMENT '主键',
  `loginName` varchar(100) DEFAULT NULL COMMENT '登录名称',
  `ipAddress` varchar(100) DEFAULT NULL COMMENT '客户端ip地址',
  `contextPath` varchar(255) DEFAULT NULL COMMENT '访问完整上下文路径',
  `requestPath` varchar(255) DEFAULT NULL COMMENT '请求路径和参数',
  `requestMethod` varchar(10) DEFAULT NULL COMMENT '请求方法post或get',
  `methodName` varchar(50) DEFAULT NULL COMMENT '请求的方法名称',
  `methodRemark` varchar(4000) DEFAULT NULL COMMENT '请求的方法描述',
  `packagePath` varchar(255) DEFAULT NULL COMMENT '请求类的包路径全称',
  `startTime` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'action开始时间',
  `endTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'action结束时间',
  `costTime` bigint(20) DEFAULT NULL COMMENT '请求action从开始到结束时间',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_syslog
-- ----------------------------
INSERT INTO `tb_syslog` VALUES ('0ab39ef59b394802a07bf999fcf4d6d4', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=treeview', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:13', '2015-03-12 13:29:13', '0');
INSERT INTO `tb_syslog` VALUES ('0cf380e68e9347c28550fc0a5eed2fd2', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=user', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:32', '2015-03-12 13:29:32', '16');
INSERT INTO `tb_syslog` VALUES ('11dde5c5477649ceb91562ec70d36025', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=datasource', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:09', '2015-03-12 13:29:09', '0');
INSERT INTO `tb_syslog` VALUES ('2bc767d019334649a535d4b9705399d0', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=welcome', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:28:49', '2015-03-12 13:28:49', '0');
INSERT INTO `tb_syslog` VALUES ('2d9a1f54b5e94dbea0846f74a52626c7', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:25', '2015-03-12 13:29:25', '0');
INSERT INTO `tb_syslog` VALUES ('3124ada39d0b4f2aaa02f0135fdb98eb', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=syslog', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:16', '2015-03-12 13:29:16', '0');
INSERT INTO `tb_syslog` VALUES ('37f1fb2419624e04b4bb9aa65c14af45', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:28:48', '2015-03-12 13:28:48', '34');
INSERT INTO `tb_syslog` VALUES ('38a85e5b3eee4efe8e33f9f0e0c4b525', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=user', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:25', '2015-03-12 13:29:25', '1');
INSERT INTO `tb_syslog` VALUES ('3de2f3f6d4834d78b9a7142ac00986e4', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=right', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:06', '2015-03-12 13:29:06', '1');
INSERT INTO `tb_syslog` VALUES ('406d4cd57c744d9a9a58f3b8a447bf18', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=syslog', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:10', '2015-03-12 13:29:10', '0');
INSERT INTO `tb_syslog` VALUES ('5cd973d59fdf43caa47dbbd04a5e5483', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=role', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:31', '2015-03-12 13:29:31', '1');
INSERT INTO `tb_syslog` VALUES ('5e054aea18554a1b852ee47226c3ae71', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=role', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:28:59', '2015-03-12 13:28:59', '0');
INSERT INTO `tb_syslog` VALUES ('6613ba41aea94392a6a8e6012ffa550f', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=datasource', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:04', '2015-03-12 13:29:04', '0');
INSERT INTO `tb_syslog` VALUES ('801b15998b54463d8fb4d03a94ef5033', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=user', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:28:58', '2015-03-12 13:28:58', '0');
INSERT INTO `tb_syslog` VALUES ('8641b08bad52499987d5f767285ca39f', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=right', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:01', '2015-03-12 13:29:01', '0');
INSERT INTO `tb_syslog` VALUES ('b6efe479e8fc44a395043525984e5a97', '匿名用户', '0:0:0:0:0:0:0:1', 'http://localhost:8080/SpringMyBatis', '/SpringMyBatis/sys/index/toUrl?page=user', 'GET', 'index', '跳转页面===============', 'com.bsc.controller.IndexController$$EnhancerBySpringCGLIB$$56aa77ab', '2015-03-12 13:29:19', '2015-03-12 13:29:19', '1');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('2', '张三', '123123', '北京', '24', '女');
INSERT INTO `tb_user` VALUES ('3', '李四', '123123', '北京', '26', '男');
INSERT INTO `tb_user` VALUES ('4', '王五', '123123', '北京', '31', '男');
INSERT INTO `tb_user` VALUES ('5', '赵六', '123123', '上海', '33', '男');
INSERT INTO `tb_user` VALUES ('6', '陈红', '123456', '北京昌平', '34', '女');

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('1', '1');
INSERT INTO `tb_user_role` VALUES ('3', '3');
INSERT INTO `tb_user_role` VALUES ('4', '6');
