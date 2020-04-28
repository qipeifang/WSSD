/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : wssd

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-07-03 11:05:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookclassification
-- ----------------------------
DROP TABLE IF EXISTS `bookclassification`;
CREATE TABLE `bookclassification` (
  `bookclass_id` int(11) DEFAULT NULL,
  `bookclass_classification` varchar(50) DEFAULT NULL,
  `bookclass_addtime` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookclassification
-- ----------------------------
INSERT INTO `bookclassification` VALUES ('16', '哲学', '2019-6-29 3:10:44');
INSERT INTO `bookclassification` VALUES ('17', '经济学', '2019-6-29 3:10:51');
INSERT INTO `bookclassification` VALUES ('19', '社会科学', '2019-6-29 3:11:12');
INSERT INTO `bookclassification` VALUES ('21', '自然科学', '2019-6-29 3:11:48');
INSERT INTO `bookclassification` VALUES ('18', '计算机', '2019-6-29 3:11:03');
INSERT INTO `bookclassification` VALUES ('20', '政治读物', '2019-6-29 3:11:35');
INSERT INTO `bookclassification` VALUES ('22', '科学技术', '2007-4-18 3:12:06');

-- ----------------------------
-- Table structure for bookcomment
-- ----------------------------
DROP TABLE IF EXISTS `bookcomment`;
CREATE TABLE `bookcomment` (
  `bookcomment_id` int(11) NOT NULL AUTO_INCREMENT,
  `bookcomment_content` varchar(255) DEFAULT NULL,
  `bookcomment_sender` varchar(50) DEFAULT NULL,
  `bookcomment_sendtime` varchar(50) DEFAULT NULL,
  `bookcomment_bookid` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookcomment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookcomment
-- ----------------------------
INSERT INTO `bookcomment` VALUES ('5', 'rqwerewqqqr', 'aa', '2019-6-29 17:31:42', '21');
INSERT INTO `bookcomment` VALUES ('6', '111111111111', 'aa', '2019-6-29 17:31:47', '21');
INSERT INTO `bookcomment` VALUES ('8', '33333333333333333333', 'aa', '2019-6-29 17:31:53', '21');
INSERT INTO `bookcomment` VALUES ('9', '4444444444444444444', 'aa', '2019-6-29 17:31:56', '21');
INSERT INTO `bookcomment` VALUES ('10', '5555555555555555555555', 'aa', '2019-6-29 17:32:00', '21');
INSERT INTO `bookcomment` VALUES ('11', '6666666666666666666666', 'aa', '2019-6-29 17:32:04', '21');
INSERT INTO `bookcomment` VALUES ('29', '好书', '1', '2019-6-29 20:13:30', '31');
INSERT INTO `bookcomment` VALUES ('30', '好书', '1', '2019-6-29 20:13:38', '31');
INSERT INTO `bookcomment` VALUES ('31', '好书', '1', '2019-6-29 20:13:45', '31');
INSERT INTO `bookcomment` VALUES ('32', '不错', '1', '2019-6-29 20:13:52', '31');
INSERT INTO `bookcomment` VALUES ('33', '这本书不错，推荐！！！', 'qpf', '2019-7-3 8:35:26', '33');

-- ----------------------------
-- Table structure for bookinformation
-- ----------------------------
DROP TABLE IF EXISTS `bookinformation`;
CREATE TABLE `bookinformation` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(50) DEFAULT NULL,
  `book_picturepath` varchar(50) DEFAULT NULL,
  `book_author` varchar(50) DEFAULT NULL,
  `book_publisher` varchar(50) DEFAULT NULL,
  `book_price` varchar(50) DEFAULT NULL,
  `book_classification` varchar(50) DEFAULT NULL,
  `book_discountok` char(10) DEFAULT NULL,
  `book_discount` char(10) DEFAULT NULL,
  `book_recommendlevel` varchar(50) DEFAULT NULL,
  `book_storeamount` int(11) DEFAULT NULL,
  `book_type` char(10) DEFAULT NULL,
  `book_addtime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookinformation
-- ----------------------------
INSERT INTO `bookinformation` VALUES ('15', 'JAVA基础入门', '/WSSD/pic\\1176998222711damo.jpg', '张飞', '北京出版社', '12', '社会科学', '是', '1', '★★', '1000', '最新', '2019-6-29 23:57:02');
INSERT INTO `bookinformation` VALUES ('16', '天下第一神算', '/WSSD/pic\\1176998289377pj.jpg', '普京', '俄罗斯出版社', '100', '哲学', '是', '1', '★★', '2000', '最新', '2019-6-29 23:58:09');
INSERT INTO `bookinformation` VALUES ('17', '杀死比尔', '/WSSD/pic\\1176998354140T90.jpg', '李红', '铁道出版社', '43', '哲学', '是', '1', '★', '23232', '最新', '2019-6-29 23:59:14');
INSERT INTO `bookinformation` VALUES ('18', '神秘探奇', '/WSSD/pic\\11769984042221031.jpg', '范伟', '辽宁出版社', '21', '哲学', '是', '1', '★', '1222', '特价', '2019-6-29 0:00:04');
INSERT INTO `bookinformation` VALUES ('19', 'SQL编程', '/WSSD/pic\\1176998471609http_imgload.jpg', '杨冬青', '机械工业出版社', '11', '计算机', '是', '1', '★', '10', '普通', '2019-6-29 0:01:11');
INSERT INTO `bookinformation` VALUES ('20', '股票交易大全', '/WSSD/pic\\1176998569270FOUNDER.JPG', '喃喃', '南方出版社', '43', '哲学', '是', '1', '★', '111', '普通', '2019-6-29 0:02:49');
INSERT INTO `bookinformation` VALUES ('21', '网络安全管理实践', '/WSSD/pic\\117700126547710040057b.jpg', '李维', '清华大学出版社', '21', '哲学', '是', '1', '★★', '11111', '特价', '2019-6-29 0:47:45');
INSERT INTO `bookinformation` VALUES ('22', 'Photoshop插画大师', '/WSSD/pic\\117700133050010039911a.jpg', '张雅涵', '电子工业出版社', '67', '哲学', '是', '1', '★★', '321321', '普通', '2019-6-29 0:48:50');
INSERT INTO `bookinformation` VALUES ('23', 'HTML&XHTML权威指南第六版', '/WSSD/pic\\117700138724210039929a.jpg', '经典', '中国电力出版社', '13', '哲学', '是', '1', '★★', '900', '特价', '2019-6-29 0:49:47');
INSERT INTO `bookinformation` VALUES ('24', '多核程序设计', '/WSSD/pic\\117700145197510040079a.jpg', '提升性能', '中国电力出版社', '45', '哲学', '是', '1', '★★', '4442', '普通', '2019-6-29 0:50:51');
INSERT INTO `bookinformation` VALUES ('25', '网管员必读', '/WSSD/pic\\117700152761410033678b.jpg', '网络', '中国电力出版社', '23', '哲学', '是', '1', '★', '700', '普通', '2019-6-29 0:52:07');
INSERT INTO `bookinformation` VALUES ('26', '《Excel实战技巧精粹》', '/WSSD/pic\\117700157664410038591b.jpg', '中国', '中国电力出版社', '12', '哲学', '是', '1', '★★★', '1000', '特价', '2019-6-29 0:52:56');
INSERT INTO `bookinformation` VALUES ('27', '《Ajax与PHP', '/WSSD/pic\\1177001649949BYD0000924b.jpg', '张友生', '华中科技大学出版社', '78', '哲学', '是', '1', '★', '800', '普通', '2019-6-29 0:54:09');
INSERT INTO `bookinformation` VALUES ('31', 'JSP动态网站开发', '/WSSD/pic\\118113721542110037572a.jpg', '唐有明', '清华大学出版社', '35', '计算机', '是', '0.8', '★★', '50', '特价', '2019-6-29 21:40:15');
INSERT INTO `bookinformation` VALUES ('33', '数据库设计', '/WSSD/pic1562033742146数据库.jpg', '罗斌', '江财出版社', '29', '计算机', '是', '1', '★★★', '78', '最新', '2019-7-2 10:15:42');

-- ----------------------------
-- Table structure for bookorderform
-- ----------------------------
DROP TABLE IF EXISTS `bookorderform`;
CREATE TABLE `bookorderform` (
  `bookorderform_id` int(11) NOT NULL AUTO_INCREMENT,
  `bookorderform_formnumber` varchar(50) DEFAULT NULL,
  `bookorderform_bookid` int(11) DEFAULT NULL,
  `bookorderform_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookorderform_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookorderform
-- ----------------------------
INSERT INTO `bookorderform` VALUES ('13', '1176970244118', '8', '4');
INSERT INTO `bookorderform` VALUES ('14', '1176970244118', '9', '1');
INSERT INTO `bookorderform` VALUES ('15', '1176970244118', '3', '1');
INSERT INTO `bookorderform` VALUES ('16', '1176970593761', '9', '3');
INSERT INTO `bookorderform` VALUES ('17', '1176970593761', '4', '2');
INSERT INTO `bookorderform` VALUES ('18', '1176970593761', '2', '2');
INSERT INTO `bookorderform` VALUES ('19', '1178252928142', '20', '2');
INSERT INTO `bookorderform` VALUES ('67', '1562093539401', '33', '1');
INSERT INTO `bookorderform` VALUES ('68', '1562121995442', '18', '1');
INSERT INTO `bookorderform` VALUES ('69', '1562121995442', '17', '1');

-- ----------------------------
-- Table structure for commonmember
-- ----------------------------
DROP TABLE IF EXISTS `commonmember`;
CREATE TABLE `commonmember` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_loginname` varchar(50) DEFAULT NULL,
  `member_password` varchar(50) DEFAULT NULL,
  `member_truename` varchar(50) DEFAULT NULL,
  `member_sex` char(10) DEFAULT NULL,
  `member_email` varchar(50) DEFAULT NULL,
  `member_tel` varchar(50) DEFAULT NULL,
  `member_level` double DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commonmember
-- ----------------------------
INSERT INTO `commonmember` VALUES ('10', 'aa', '123456', '111111', '男', 'haha@163.com', '88776765', '10000');
INSERT INTO `commonmember` VALUES ('16', '1', '123', '123', '男', '13', '13', '0');
INSERT INTO `commonmember` VALUES ('22', 'd', '123456', 'd', '女', 'd@163.com', '1', '0');
INSERT INTO `commonmember` VALUES ('23', 'e', '123456', 'e', '男', 'e@163.com', '1', '0');
INSERT INTO `commonmember` VALUES ('44', 't', '123456', 't', '男', 't@163.com', '1', '0');
INSERT INTO `commonmember` VALUES ('45', 'u', '123456', 'u', '女', 'u@163.com', '1', '0');
INSERT INTO `commonmember` VALUES ('53', 'abc', '123', '张三', '男', '123466789@qq.com', '18970123456', '0');
INSERT INTO `commonmember` VALUES ('54', 'qpf', '123456', '张三', '男', '123456789@qq.com', '18970123456', '0');
INSERT INTO `commonmember` VALUES ('55', 'qpf', '123456', '张三123', '女', '123456789@qq.com', '18970136326', '0');

-- ----------------------------
-- Table structure for ordersendingform
-- ----------------------------
DROP TABLE IF EXISTS `ordersendingform`;
CREATE TABLE `ordersendingform` (
  `ordersendingform_id` int(11) NOT NULL AUTO_INCREMENT,
  `ordersendingform_formnumber` varchar(50) DEFAULT NULL,
  `ordersendingform_userid` varchar(50) DEFAULT NULL,
  `ordersendingform_sendok` char(10) DEFAULT NULL,
  `fangshi` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ordersendingform_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordersendingform
-- ----------------------------
INSERT INTO `ordersendingform` VALUES ('20', '1176970593761', 'aa', '已经发货', '工商银行', '正常');
INSERT INTO `ordersendingform` VALUES ('25', '1179455056935', '11', '已经发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('27', '1180702694150', 'aa', '已经发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('28', '1180853337335', 'aa', '已经发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('29', '1180853464999', 'aa', '未发货', '工商银行', '用户已删除');
INSERT INTO `ordersendingform` VALUES ('30', '1180853654982', 'aa', '未发货', '工商银行', '正常');
INSERT INTO `ordersendingform` VALUES ('34', '1180853933933', 'aa', '已经发货', '工商银行', '正常');
INSERT INTO `ordersendingform` VALUES ('37', '1180857840481', 'aa', '已经发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('41', '1181400847567', 'aa', '未发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('42', '1181401903205', 'aa', '未发货', '邮局汇款', '用户已删除');
INSERT INTO `ordersendingform` VALUES ('43', '1181464489767', 'aa', '未发货', '建设银行', '用户已删除');
INSERT INTO `ordersendingform` VALUES ('44', '1556280778736', '1', '未发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('45', '1556281366117', '1', '未发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('46', '1558520250235', 'qqqq', '未发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('47', '1562075603396', 'qpf', '已经发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('48', '1562075663745', 'qpf', '已经发货', '工商银行', '正常');
INSERT INTO `ordersendingform` VALUES ('49', '1562081364647', 'aa', '未发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('50', '1562084628844', 'aa', '未发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('51', '1562087490012', 'aa', '未发货', '建设银行', '正常');
INSERT INTO `ordersendingform` VALUES ('52', '1562093539401', 'qpf', '未发货', '邮局汇款', '正常');
INSERT INTO `ordersendingform` VALUES ('53', '1562121995442', 'aa', '未发货', '农业银行', '正常');

-- ----------------------------
-- Table structure for shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar` (
  `shoppingcar_id` int(11) NOT NULL AUTO_INCREMENT,
  `shoppingcar_bookid` int(11) DEFAULT NULL,
  `shoppingcar_amount` int(11) DEFAULT NULL,
  `shoppingcar_addtime` varchar(50) DEFAULT NULL,
  `shoppingcar_userid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`shoppingcar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcar
-- ----------------------------
INSERT INTO `shoppingcar` VALUES ('1', '17', '2', '2019-6-29 18:13:17', 'qqqq');
INSERT INTO `shoppingcar` VALUES ('2', '16', '2', '2019-5-22 18:17:14', 'qqqq');
INSERT INTO `shoppingcar` VALUES ('5', '26', '1', '2019-7-2 22:10:48', 'admin');
INSERT INTO `shoppingcar` VALUES ('6', '17', '2', '2019-7-2 22:26:23', 'a');
INSERT INTO `shoppingcar` VALUES ('15', '21', '2', '2019-7-3 10:54:15', 'aa');

-- ----------------------------
-- Table structure for systemadministrator
-- ----------------------------
DROP TABLE IF EXISTS `systemadministrator`;
CREATE TABLE `systemadministrator` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_password` varchar(50) DEFAULT NULL,
  `admin_addtime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemadministrator
-- ----------------------------
INSERT INTO `systemadministrator` VALUES ('1', 'admin', '111111', '2019-6-29 17:32:34');
INSERT INTO `systemadministrator` VALUES ('3', 'qqqqqq', 'qqqqqq', '2019-6-29 20:53:53');
INSERT INTO `systemadministrator` VALUES ('4', 'manager', '111111', '2007-6-3 13:58:38');

-- ----------------------------
-- Table structure for webnews
-- ----------------------------
DROP TABLE IF EXISTS `webnews`;
CREATE TABLE `webnews` (
  `webnews_id` int(11) NOT NULL AUTO_INCREMENT,
  `webnews_title` varchar(100) DEFAULT NULL,
  `webnews_content` varchar(255) DEFAULT NULL,
  `webnews_sendtime` varchar(50) DEFAULT NULL,
  `webnews_sender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`webnews_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webnews
-- ----------------------------
INSERT INTO `webnews` VALUES ('7', '2', 'test3333333333', '2019-6-29 13:57:19', 'admin');
INSERT INTO `webnews` VALUES ('8', '1212', '1212', '2019-6-30 14:30:12', 'admin');
INSERT INTO `webnews` VALUES ('9', '新书推荐', '本店最近上架了《数据库设计》，欢迎大家选购', '2019-7-3 8:39:18', 'qpf');
