/*
Navicat MySQL Data Transfer

Source Server         : zhuxiuxuan
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : companyoa

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-01-12 15:44:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `d_id` varchar(255) NOT NULL,
  `d_name` varchar(20) DEFAULT NULL,
  `d_position` varchar(255) DEFAULT NULL COMMENT '职位',
  `d_date` datetime DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司部门';

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('zxx0f845794e2a0d9bb4a', '经理办', '经理,副经理', '2018-01-12 10:44:55');
INSERT INTO `department` VALUES ('zxx1d903886ad33c77e1a', '技术部', '主管,员工,实习生', '2018-01-16 10:45:00');
INSERT INTO `department` VALUES ('zxx20adab04f09eb29eb3', '市场部', '主管,员工,实习生', '2018-01-30 10:45:03');
INSERT INTO `department` VALUES ('zxx3cbf841fdbba354cf8', '课程研发部', '主管,员工,实习生', '2018-02-03 10:45:06');
INSERT INTO `department` VALUES ('zxx4a9b713cb179af8f07', '栏目组', '主管,员工,实习生', '2018-01-07 10:45:10');
INSERT INTO `department` VALUES ('zxx5898015daa77bb3e7f', '人事部', '主管,员工,实习生', '2018-01-12 10:45:14');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `module_id` varchar(255) NOT NULL,
  `module_name` varchar(30) DEFAULT NULL,
  `module_like` varchar(255) DEFAULT NULL COMMENT '模块链接地址',
  `module_style` varchar(100) DEFAULT NULL COMMENT '模块图标样式',
  `module_level` varchar(10) DEFAULT NULL COMMENT '显示级别，普通职员为2',
  `module_istwomodule` varchar(255) DEFAULT NULL COMMENT '是否为二级模块。若有一级ID为是，否为空',
  `module_showmodule` int(1) DEFAULT NULL COMMENT '模块是否显示1显示，0不显示，-1是一级模块',
  `module_date` datetime DEFAULT NULL COMMENT '模块创建时间',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('zxx0cb255e3315dede91c', '公司管理', '', 'am-icon-institution', '-1,0', null, '-1', '2017-12-22 10:09:41');
INSERT INTO `module` VALUES ('zxx10391d794e210c60c88', null, null, null, null, null, '0', null);
INSERT INTO `module` VALUES ('zxx110897d317dada057e2', null, null, null, null, null, '0', null);
INSERT INTO `module` VALUES ('zxx123acde6277e2c62288', null, null, null, null, null, '0', null);
INSERT INTO `module` VALUES ('zxx17a55333a09cac8d96', '员工管理', 'staff/pl55yL.action?pageNo=1', 'am-icon-group', '-1,0,2', null, '1', '2017-12-22 10:09:44');
INSERT INTO `module` VALUES ('zxx208d176ace038ee418', '考&nbsp;&nbsp;&nbsp;&nbsp;勤', '', 'am-icon-star', '-1,0,1,2', null, '1', '2017-12-22 10:09:46');
INSERT INTO `module` VALUES ('zxx3c9b6643c6a374ff13', '周&nbsp;&nbsp;&nbsp;&nbsp;报', '', 'am-icon-wpforms', '-1,0,1,2', null, '-1', '2017-12-22 10:09:48');
INSERT INTO `module` VALUES ('zxx4c90ed24b88f6c3a31', '个人中心', '', 'am-icon-user', '-1,0,1,2', null, '1', '2017-12-22 10:09:52');
INSERT INTO `module` VALUES ('zxx5bbb11b27ea550d6aa', '写&nbsp;周&nbsp;报', 'staff/YOo6Zeo6auY5bGC.action', 'am-icon-star', '1,2', 'zxx3c9b6643c6a374ff13', '1', '2017-12-26 10:43:10');
INSERT INTO `module` VALUES ('zxx66a31c9c3f1a828add', '历史周报', null, 'am-icon-star', '-1,0,1,2', 'zxx3c9b6643c6a374ff13', '1', '2017-12-26 10:43:13');
INSERT INTO `module` VALUES ('zxx75832767482231e555', '周报审阅', 'weekly/a6h6ZiF.action?pageNo=1&write_data=', 'am-icon-star', '-1,0,2', 'zxx3c9b6643c6a374ff13', '1', '2017-12-27 17:19:58');
INSERT INTO `module` VALUES ('zxx86960c262ed95449c6', '周报统计', null, 'am-icon-star', '-1,0,2', 'zxx3c9b6643c6a374ff13', '1', '2017-12-26 10:43:16');
INSERT INTO `module` VALUES ('zxx90b2f4a862c3402789', '部门设置', 'department/pl6Ki6YOo6Zeo.action?opr=0af78c2dd98551845', 'am-icon-star', '-1,0', 'zxx0cb255e3315dede91c', '1', '2018-01-11 11:49:26');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `p_id` varchar(255) NOT NULL,
  `p_name` varchar(50) DEFAULT NULL,
  `p_department` varchar(255) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职位表';

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('zxx029e7109d8bc909125', '主管', 'zxx1d903886ad33c77e1a,zxx20adab04f09eb29eb3,zxx3cbf841fdbba354cf8,zxx4a9b713cb179af8f07,zxx5898015daa77bb3e7f');
INSERT INTO `position` VALUES ('zxx1ba619ca9e59c8afba', '助理', 'zxx1d903886ad33c77e1a');
INSERT INTO `position` VALUES ('zxx2fa291137d29a6104d', '员工', 'zxx1d903886ad33c77e1a,zxx20adab04f09eb29eb3,zxx3cbf841fdbba354cf8,zxx4a9b713cb179af8f07');
INSERT INTO `position` VALUES ('zxx3bb1c8edc0bbfe24af', '实习生', 'zxx1d903886ad33c77e1a,zxx3cbf841fdbba354cf8,zxx4a9b713cb179af8f07');
INSERT INTO `position` VALUES ('zxx4e82b3c612efe72652', '经理', 'zxx0f845794e2a0d9bb4a');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staff_id` varchar(255) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `staff_pwd` varchar(100) DEFAULT NULL,
  `staff_info` varchar(255) DEFAULT NULL COMMENT '用户详细信息',
  `staff_level` int(1) DEFAULT NULL COMMENT '平台级别',
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司员工表';

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('zxx1992b7c2a9f3f8ab5', 'haowei', 'E10ADC3949BA59ABBE56E057F20F883E', 'zxx886342e15f02e511f', '1');
INSERT INTO `staff` VALUES ('zxx282c7de90b77caba9', 'zhaoheqiao', 'E10ADC3949BA59ABBE56E057F20F883E', 'zxx4b0a1c8c5ad788791', '2');
INSERT INTO `staff` VALUES ('zxx4b5068a503ec76aa6', 'zhuxiuxuan', '96E79218965EB72C92A549DD5A330112', 'zxx49bb940245e5e8e4e', '1');
INSERT INTO `staff` VALUES ('zxx4b8a16338f61bae6b', 'liqiang', 'E10ADC3949BA59ABBE56E057F20F883E', 'zxx69799837504abbc6b', '2');
INSERT INTO `staff` VALUES ('zxx8988b29dca5e1f746', 'lihuan', 'E10ADC3949BA59ABBE56E057F20F883E', 'zxx2b829736ba122696b', '2');
INSERT INTO `staff` VALUES ('zxx9a96c3d9b05677b1e', 'wangying', 'E10ADC3949BA59ABBE56E057F20F883E', 'zxx2b4dbd14e57b5a8ef', '2');
INSERT INTO `staff` VALUES ('zxx9aa42a78b133a6149', 'shihongjun', 'E10ADC3949BA59ABBE56E057F20F883E', 'zxxd92ce89f7ab121de5', '2');
INSERT INTO `staff` VALUES ('zxxaa7a19d1c9acbe90c', 'weidong', 'E10ADC3949BA59ABBE56E057F20F883E', 'zxx185d5db9f6858e296', '1');
INSERT INTO `staff` VALUES ('zxxb8f3f94c4b291750a', 'wangxuanhao', 'E10ADC3949BA59ABBE56E057F20F883E', 'zxxeabe4b42075e93644', '1');
INSERT INTO `staff` VALUES ('zxxe911bbff15186d670', 'jiajia', 'CD611A31EA969B908932D44D126D195B', 'zxxe963e8e0557621f26', '-1');

-- ----------------------------
-- Table structure for staff_info
-- ----------------------------
DROP TABLE IF EXISTS `staff_info`;
CREATE TABLE `staff_info` (
  `info_id` varchar(255) NOT NULL,
  `info_name` varchar(50) DEFAULT NULL,
  `info_photo` varchar(255) DEFAULT NULL,
  `info_department` varchar(255) DEFAULT NULL COMMENT '部门',
  `info_position` varchar(255) DEFAULT NULL COMMENT '职位',
  `info_entry` date DEFAULT NULL COMMENT '入职时间',
  `info_phone` varchar(11) DEFAULT NULL,
  `info_WeChat` varchar(100) DEFAULT NULL,
  `staff_level` int(1) DEFAULT NULL,
  `c_date` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工详细信息表';

-- ----------------------------
-- Records of staff_info
-- ----------------------------
INSERT INTO `staff_info` VALUES ('zxx185d5db9f6858e296', '魏东', 'photoFolder/zxxa98da42caea637fdd.jpg', 'zxx4a9b713cb179af8f07', 'zxx2fa291137d29a6104d', '2018-01-05', '', '', '1', '2018-01-05 11:31:23');
INSERT INTO `staff_info` VALUES ('zxx2b4dbd14e57b5a8ef', '王莹', 'photoFolder/zxxeaf7dc61ca26aefca.jpg', 'zxx5898015daa77bb3e7f', 'zxx029e7109d8bc909125', '2018-01-05', '', '', '2', '2018-01-05 11:28:08');
INSERT INTO `staff_info` VALUES ('zxx2b829736ba122696b', '栗欢', 'photoFolder/zxxe92795e9b073c6048.jpg', 'zxx1d903886ad33c77e1a', 'zxx029e7109d8bc909125', '2018-01-05', '', '', '2', '2018-01-05 11:27:14');
INSERT INTO `staff_info` VALUES ('zxx49bb940245e5e8e4e', '朱修轩', 'photoFolder/zxx68be1f652919fbd47.jpg', 'zxx1d903886ad33c77e1a', 'zxx1ba619ca9e59c8afba', '2017-08-01', '18738596041', 'qq019931466', '1', '2018-01-05 11:25:45');
INSERT INTO `staff_info` VALUES ('zxx4b0a1c8c5ad788791', '赵合巧', 'photoFolder/zxx3a9f5aee43fdc2a74.jpg', 'zxx4a9b713cb179af8f07', 'zxx029e7109d8bc909125', '2018-01-05', '', '', '2', '2018-01-05 11:30:58');
INSERT INTO `staff_info` VALUES ('zxx69799837504abbc6b', '李强', 'photoFolder/zxx69d8012e9303fa12a.jpg', 'zxx20adab04f09eb29eb3', 'zxx029e7109d8bc909125', '2018-01-04', '', '', '2', '2018-01-05 11:27:38');
INSERT INTO `staff_info` VALUES ('zxx886342e15f02e511f', '郝巍', 'photoFolder/zxx9a44897e72cec1432.jpg', 'zxx3cbf841fdbba354cf8', 'zxx2fa291137d29a6104d', '2018-01-05', '', '', '1', '2018-01-05 11:30:21');
INSERT INTO `staff_info` VALUES ('zxxd92ce89f7ab121de5', '石红军', 'photoFolder/zxx2823ab6a28cccaeb4.jpg', 'zxx3cbf841fdbba354cf8', 'zxx029e7109d8bc909125', '2018-01-05', '', '', '2', '2018-01-05 11:29:17');
INSERT INTO `staff_info` VALUES ('zxxe963e8e0557621f26', '贾佳', 'photoFolder/zxxda61e3818bc84906d.jpg', 'zxx0f845794e2a0d9bb4a', 'zxx4e82b3c612efe72652', '2017-05-10', '18412322345', 'dsgaaa', '-1', '2018-01-03 17:33:52');
INSERT INTO `staff_info` VALUES ('zxxeabe4b42075e93644', '王炫浩', 'photoFolder/zxxb9a94b8d25e0b49ca.jpg', 'zxx4a9b713cb179af8f07', 'zxx2fa291137d29a6104d', '2018-01-05', '18336081129', '', '1', '2018-01-05 11:31:48');

-- ----------------------------
-- Table structure for weekly_info
-- ----------------------------
DROP TABLE IF EXISTS `weekly_info`;
CREATE TABLE `weekly_info` (
  `weekly_id` varchar(255) NOT NULL,
  `weekly_sender` varchar(255) DEFAULT NULL,
  `weekly_recipient` varchar(255) DEFAULT NULL,
  `weekly_date` date DEFAULT NULL,
  `weekly_complete` text,
  `weekly_problem` text,
  `weekly_plan` text,
  `weekly_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`weekly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='周报表';

-- ----------------------------
-- Records of weekly_info
-- ----------------------------
INSERT INTO `weekly_info` VALUES ('zxx086747e1d0bb8d43c', 'zxxd92ce89f7ab121de5', 'zxxe963e8e0557621f26', '2018-01-05', '1.修改新乡市中小学社会实践基地申报表；2、与世纪明德对接、沟通线路设计；3.完成公司派遣的文档任务；4、在智联和boss上招聘。5、完善南太行的主题课程。', '', '1、与世纪明德沟通、合作，围绕着国家中小学研学基地设计出省内的五天四夜和三天两夜的研学旅行路线和课程；2、进一步完善市内的主题研学课程；3、与主题线路设计老师或单位沟通课程设施的情况。（二天一夜、三天两夜、五天四夜的课程能否实现？）1.', '2');
INSERT INTO `weekly_info` VALUES ('zxx28fd92ec496c5b57a', 'zxx185d5db9f6858e296', 'zxx4b0a1c8c5ad788791', '2018-01-05', '本周工作内容每天学习摄像机的拍摄方法从而达到熟练的掌握拍摄技巧。对拍过的片子进行探讨从而改正不足。日常维护摄像机和对车辆的保养。', '', '', '2');
INSERT INTO `weekly_info` VALUES ('zxx29659e06bb2869336', 'zxxeabe4b42075e93644', 'zxx4b0a1c8c5ad788791', '2018-01-05', '1.跟制作部张主任去外国语小学录制班主任大赛的彩排，学习了很多拍摄技巧和构图方式，深刻体会到摄像师对观众观看效果的影响;\r\n2，跟孙主任去扫雪;\r\n3.保养擦拭摄影机', '1.认识到自己对摄影技巧的不足', '1.学习灯光效果的使用;\r\n2.进一步加深摄影技巧以及构图;\r\n3.学习专业的拍摄方式', '2');
INSERT INTO `weekly_info` VALUES ('zxx48859234381e62574', 'zxx49bb940245e5e8e4e', 'zxx2b829736ba122696b', '2018-01-05', '1.确定服务器购买，并购买成功。并购买了1万条短信包;\r\n2.找段主任沟通信息发布平台logo和名称的确定;\r\n3.协助网裕开发微信平台;\r\n4.开发公司OA办公系统。实现员工的修改，删除，权限设置，周报的优化。页面的美观等功能;\r\n5.为公司微官网录入信息;\r\n6.日常扫码', '1.公司微官网录入信息缺少一些资料', '1.下周一把本周未录入完的信息全部完成录入;\r\n2.协助网裕开发微信平台;\r\n3.开发OA办公系统', '2');
INSERT INTO `weekly_info` VALUES ('zxx4a23a6af2043f51c2', 'zxx49bb940245e5e8e4e', 'zxx2b829736ba122696b', '2018-01-11', '1.胜多负少;\r\n2.下次不错VB农村女厕v功能;\r\n3.撒地方好几年沙发不能把不烦恼', '1.胜多负少;\r\n2.下次不错VB农村女厕v功能;\r\n3.撒地方好几年沙发不能把不烦恼', '1.胜多负少;\r\n2.下次不错VB农村女厕v功能;\r\n3.撒地方好几年沙发不能把不烦恼', '2');
INSERT INTO `weekly_info` VALUES ('zxx596e2cfe36a8b37dc', 'zxx2b4dbd14e57b5a8ef', 'zxxe963e8e0557621f26', '2018-01-05', '1.完成现金报销工作;\r\n2.学习员工管理制度;\r\n3.现金的支取', '暂没有什么问题', '1.根据公司需要再进行安排', '2');
