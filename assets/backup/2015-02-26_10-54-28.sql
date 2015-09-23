#
# BroService.com.ua  Database Dump
# MODX Version:1.0.15
# 
# Host: 
# Generation Time: 26-02-2015 10:54:28
# Server version: 5.1.66
# PHP Version: 5.5.21
# Database : `u406003031_bro`
#

# --------------------------------------------------------

#
# Table structure for table `modx_active_users`
#

DROP TABLE IF EXISTS `modx_active_users`;
CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about active users.';

#
# Dumping data for table `modx_active_users`
#

INSERT INTO `modx_active_users` VALUES ('1','manager','1424948068','','93','217.20.170.226');

# --------------------------------------------------------

#
# Table structure for table `modx_categories`
#

DROP TABLE IF EXISTS `modx_categories`;
CREATE TABLE `modx_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

#
# Dumping data for table `modx_categories`
#

INSERT INTO `modx_categories` VALUES ('1','Demo Content');
INSERT INTO `modx_categories` VALUES ('2','Js');
INSERT INTO `modx_categories` VALUES ('3','Login');
INSERT INTO `modx_categories` VALUES ('4','Manager and Admin');
INSERT INTO `modx_categories` VALUES ('5','Search');
INSERT INTO `modx_categories` VALUES ('6','Navigation');
INSERT INTO `modx_categories` VALUES ('7','Content');
INSERT INTO `modx_categories` VALUES ('8','Forms');
INSERT INTO `modx_categories` VALUES ('9','SEO');

# --------------------------------------------------------

#
# Table structure for table `modx_document_groups`
#

DROP TABLE IF EXISTS `modx_document_groups`;
CREATE TABLE `modx_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_document_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_documentgroup_names`
#

DROP TABLE IF EXISTS `modx_documentgroup_names`;
CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_documentgroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `modx_event_log`
#

DROP TABLE IF EXISTS `modx_event_log`;
CREATE TABLE `modx_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

#
# Dumping data for table `modx_event_log`
#

INSERT INTO `modx_event_log` VALUES ('30','0','1423934336','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('31','0','1423934343','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('32','0','1423936407','3','0','0','Parser - Editing resource','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/manager/index.php?a=27&amp;id=3</td></tr><tr><td valign=\"top\">Manager action : </td><td>27 - Editing resource</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>3.0290 s</td></tr><tr><td>Total : </td><td>3.0290 s</td></tr><tr><td>Memory : </td><td>1.1602172851562 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->connect()<br />manager/index.php on line 143</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('33','0','1423936407','3','0','0','Parser - Editing resource','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/manager/index.php?a=27&amp;id=2</td></tr><tr><td valign=\"top\">Manager action : </td><td>27 - Editing resource</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/manager/index.php?a=1&amp;amp;f=tree</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>3.0268 s</td></tr><tr><td>Total : </td><td>3.0268 s</td></tr><tr><td>Memory : </td><td>1.1602172851562 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->connect()<br />manager/index.php on line 143</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('34','0','1423960368','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('35','0','1424114922','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('36','0','1424114972','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('37','0','1424188101','3','0','0','Parser -           else            $this-&gt;conn ','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : mysql_connect(): Can\'t connect to MySQL server on \'mysql.hostinger.com.ua\' (4 &quot;Interrupted system call&quot;)</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/home/u406003031/public_html/manager/includes/extenders/dbapi.mysql.class.inc.php</td></tr><tr><td>Line : </td><td>93</td></tr><tr><td>Source : </td><td>          else            $this-&gt;conn = mysql_connect($host, $uid, $pwd, true);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/remont-skuterov.html</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/manager/index.php?a=27&amp;amp;id=2&amp;amp;r=1&amp;amp;stay=2&amp;amp;dir=&amp;amp;sort=createdon&amp;amp;page=0</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>10.0184 s</td></tr><tr><td>Total : </td><td>10.0184 s</td></tr><tr><td>Memory : </td><td>1.2234573364258 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1493</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('38','0','1424339955','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('39','0','1424347341','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/manager/index.php</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>3.0396 s</td></tr><tr><td>Total : </td><td>3.0396 s</td></tr><tr><td>Memory : </td><td>1.1587371826172 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->connect()<br />manager/index.php on line 143</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('40','0','1424347869','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/manager/index.php</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>6.0811 s</td></tr><tr><td>Total : </td><td>6.0811 s</td></tr><tr><td>Memory : </td><td>1.1549682617188 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->connect()<br />manager/index.php on line 143</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('41','0','1424347870','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>3.0499 s</td></tr><tr><td>Total : </td><td>3.0499 s</td></tr><tr><td>Memory : </td><td>1.2277603149414 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1493</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('42','0','1424560864','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/remont-skuterov.html</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>11.8018 s</td></tr><tr><td>Total : </td><td>11.8018 s</td></tr><tr><td>Memory : </td><td>1.2272109985352 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1493</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('43','0','1424560876','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/manager/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>7.8790 s</td></tr><tr><td>Total : </td><td>7.8790 s</td></tr><tr><td>Memory : </td><td>1.1614303588867 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->connect()<br />manager/index.php on line 143</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('44','0','1424623640','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('45','0','1424690641','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('46','0','1424701759','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('47','0','1424774285','3','0','0','Parser','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/manager/index.php</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>26.0328 s</td></tr><tr><td>Total : </td><td>26.0328 s</td></tr><tr><td>Memory : </td><td>1.1549377441406 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->connect()<br />manager/index.php on line 143</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('48','0','1424884665','3','0','0','Parser -           else            $this-&gt;conn ','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : mysql_connect(): User \'u406003031_kim\' has exceeded the \'max_user_connections\' resource (current value: 3)</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/home/u406003031/public_html/manager/includes/extenders/dbapi.mysql.class.inc.php</td></tr><tr><td>Line : </td><td>93</td></tr><tr><td>Source : </td><td>          else            $this-&gt;conn = mysql_connect($host, $uid, $pwd, true);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25</td></tr><tr><td>IP : </td><td>66.249.93.203</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0292 s</td></tr><tr><td>Total : </td><td>0.0292 s</td></tr><tr><td>Memory : </td><td>1.2292404174805 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 144</td><tr><td valign=\"top\">2</td><td>DBAPI->connect()<br />manager/includes/document.parser.class.inc.php on line 1493</td><tr><td valign=\"top\">3</td><td>mysql_connect()<br />manager/includes/extenders/dbapi.mysql.class.inc.php on line 93</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('49','0','1424889393','3','0','0','Parser - Loading a frame(set)','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/manager/index.php?a=1&amp;f=menu</td></tr><tr><td valign=\"top\">Manager action : </td><td>1 - Loading a frame(set)</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/manager/index.php</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>3.0216 s</td></tr><tr><td>Total : </td><td>3.0216 s</td></tr><tr><td>Memory : </td><td>1.1564483642578 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->connect()<br />manager/index.php on line 143</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('50','0','1424889393','3','0','0','Parser - Loading a frame(set)','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/manager/index.php?a=1&amp;f=tree</td></tr><tr><td valign=\"top\">Manager action : </td><td>1 - Loading a frame(set)</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/manager/index.php</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>6.1364 s</td></tr><tr><td>Total : </td><td>6.1364 s</td></tr><tr><td>Memory : </td><td>1.1564483642578 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->connect()<br />manager/index.php on line 143</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('51','0','1424889393','3','0','0','Parser - Loading a frame(set)','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n	                <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n	                <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n	                <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; Failed to create the database connection! &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://broservice.com.ua/manager/index.php?a=1&amp;f=menu</td></tr><tr><td valign=\"top\">Manager action : </td><td>1 - Loading a frame(set)</td></tr><tr><td>Referer : </td><td>http://broservice.com.ua/manager/index.php</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36</td></tr><tr><td>IP : </td><td>217.20.170.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0000 s (0 Requests)</td></tr><tr><td>PHP : </td><td>3.0250 s</td></tr><tr><td>Total : </td><td>3.0250 s</td></tr><tr><td>Memory : </td><td>1.1564483642578 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DBAPI->connect()<br />manager/index.php on line 143</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('52','0','1424945920','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');

# --------------------------------------------------------

#
# Table structure for table `modx_keyword_xref`
#

DROP TABLE IF EXISTS `modx_keyword_xref`;
CREATE TABLE `modx_keyword_xref` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cross reference bewteen keywords and content';

#
# Dumping data for table `modx_keyword_xref`
#


# --------------------------------------------------------

#
# Table structure for table `modx_manager_log`
#

DROP TABLE IF EXISTS `modx_manager_log`;
CREATE TABLE `modx_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4308 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `modx_manager_log`
#

INSERT INTO `modx_manager_log` VALUES ('1401','1423737453','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1402','1423741461','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1403','1423741468','1','manager','5','18','Быстро!','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1404','1423741469','1','manager','3','18','Быстро!','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1405','1423743373','1','manager','27','16','Сантехник','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1406','1423743380','1','manager','27','16','Сантехник','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1407','1423743381','1','manager','5','16','Сантехник','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1408','1423743383','1','manager','3','16','Сантехник','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1409','1423743576','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1410','1423743579','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1411','1423743591','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1412','1423743591','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1413','1423748532','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1414','1423748536','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1415','1423748538','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1416','1423748538','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1417','1423748541','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1418','1423748542','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1419','1423748544','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1420','1423748545','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1421','1423748547','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1422','1423748550','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1423','1423748553','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1424','1423748557','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1425','1423748566','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1426','1423748566','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1427','1423749407','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1428','1423749410','1','manager','101','-','Новый плагин','Create new plugin');
INSERT INTO `modx_manager_log` VALUES ('1429','1423749512','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1430','1423749516','1','manager','102','8','TransAlias','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1431','1423749557','1','manager','103','8','TransAlias','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1432','1423749557','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1433','1423750219','1','manager','101','-','Новый плагин','Create new plugin');
INSERT INTO `modx_manager_log` VALUES ('1434','1423750390','1','manager','103','-','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1435','1423750390','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1436','1423750405','1','manager','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('1437','1423750418','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1438','1423750421','1','manager','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('1439','1423750446','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1440','1423750452','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1441','1423750476','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1442','1423750476','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1443','1423750599','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1444','1423750603','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1445','1423750603','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1446','1423750619','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1447','1423750663','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1448','1423750663','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1449','1423750674','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1450','1423750711','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1451','1423750711','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1452','1423750754','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1453','1423750770','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1454','1423750770','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1455','1423750791','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1456','1423750801','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1457','1423750801','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1458','1423750909','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1459','1423750970','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1460','1423750971','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1461','1423751011','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1462','1423751019','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1463','1423751019','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1464','1423751032','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1465','1423751039','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1466','1423751039','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1467','1423751214','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1468','1423751223','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1469','1423751223','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1470','1423751266','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1471','1423751305','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1472','1423751305','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1473','1423751380','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1474','1423751388','1','manager','103','9','SASS','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('1475','1423751388','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1476','1423751398','1','manager','102','9','SASS','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1477','1423751431','1','manager','104','9','SASS','Delete plugin');
INSERT INTO `modx_manager_log` VALUES ('1478','1423751431','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1479','1423753191','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1480','1423753196','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1481','1423753199','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1482','1423753219','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1483','1423753219','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1484','1423755240','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1485','1423755243','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1486','1423755245','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1487','1423755276','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1488','1423755276','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1489','1423755416','1','manager','78','7','HEAD_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1490','1423755429','1','manager','79','7','HEAD_PRODUCTS','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1491','1423755429','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1492','1423755796','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1493','1423755840','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1494','1423755840','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1495','1423755844','1','manager','78','7','HEAD_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1496','1423755851','1','manager','79','7','HEAD_PRODUCTS','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1497','1423755851','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1498','1423756189','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1499','1423756798','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1500','1423756801','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1501','1423757830','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1502','1423757830','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1503','1423757861','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1504','1423757867','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1505','1423757868','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1506','1423757893','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1507','1423757893','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1508','1423758001','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1509','1423758014','1','manager','20','3','Главная','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1510','1423758014','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1511','1423758030','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1512','1423758039','1','manager','20','3','Главная','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1513','1423758039','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1514','1423758046','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1515','1423758050','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1516','1423758067','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1517','1423758077','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1518','1423758077','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1519','1423758116','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1520','1423758127','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1521','1423758127','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1522','1423759750','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1523','1423759755','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1524','1423759758','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1525','1423825343','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1526','1423825346','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1527','1423825349','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1528','1423825354','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1529','1423825354','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1530','1423837871','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1531','1423837878','1','manager','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1532','1423837880','1','manager','13','-','-','Viewing logging');
INSERT INTO `modx_manager_log` VALUES ('1533','1423837881','1','manager','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('1534','1423837888','1','manager','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('1535','1423837889','1','manager','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('1536','1423837891','1','manager','116','-','-','Delete event log');
INSERT INTO `modx_manager_log` VALUES ('1537','1423837891','1','manager','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('1538','1423837892','1','manager','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('1539','1423837900','1','manager','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('1540','1423837901','1','manager','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('1541','1423837911','1','manager','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1542','1423837928','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1543','1423837931','1','manager','107','-','Новый модуль','Create new module');
INSERT INTO `modx_manager_log` VALUES ('1544','1423837963','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1545','1423837964','1','manager','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1546','1423838007','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1547','1423838031','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1548','1423838042','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1549','1423838048','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1550','1423838073','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1551','1423838077','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1552','1423838082','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1553','1423838083','1','manager','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1554','1423838092','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1555','1423838111','1','manager','101','-','Новый плагин','Create new plugin');
INSERT INTO `modx_manager_log` VALUES ('1556','1423838120','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1557','1423838124','1','manager','101','-','Новый плагин','Create new plugin');
INSERT INTO `modx_manager_log` VALUES ('1558','1423838127','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1559','1423838289','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1560','1423838312','1','manager','31','-','/Applications/MAMP/htdocs/broservice.com.ua/bootstrap-1.0.18-pl.transport.zip','Uploaded File');
INSERT INTO `modx_manager_log` VALUES ('1561','1423838329','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1562','1423838332','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1563','1423838349','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1564','1423838353','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1565','1423838355','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1566','1423838356','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1567','1423838358','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1568','1423838364','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1569','1423838428','1','manager','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1570','1423838453','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1571','1423838456','1','manager','107','-','Новый модуль','Create new module');
INSERT INTO `modx_manager_log` VALUES ('1572','1423838468','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1573','1423838470','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1574','1423838472','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1575','1423838473','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1576','1423838474','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1577','1423838479','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1578','1423838803','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1579','1423838808','1','manager','107','-','Новый модуль','Create new module');
INSERT INTO `modx_manager_log` VALUES ('1580','1423839044','1','manager','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1581','1423839048','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1582','1423839086','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1583','1423839091','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1584','1423839097','1','manager','31','-','/Applications/MAMP/htdocs/broservice.com.ua/bootstrap-1.0.18-pl.transport.zip','Deleted File');
INSERT INTO `modx_manager_log` VALUES ('1585','1423839100','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1586','1423839101','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1587','1423839108','1','manager','31','-','/Applications/MAMP/htdocs/broservice.com.ua/codemirror-2.2.1-pl.transport.zip','Uploaded File');
INSERT INTO `modx_manager_log` VALUES ('1588','1423839113','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1589','1423839115','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1590','1423839121','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1591','1423839123','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1592','1423839128','1','manager','31','-','/Applications/MAMP/htdocs/broservice.com.ua/codemirror-2.2.1-pl.transport.zip','Deleted File');
INSERT INTO `modx_manager_log` VALUES ('1593','1423839559','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1594','1423839566','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1595','1423839583','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1596','1423839586','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1597','1423839595','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1598','1423839600','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1599','1423839741','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1600','1423839741','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1601','1423839750','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1602','1423839756','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1603','1423839756','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1604','1423839778','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1605','1423839789','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1606','1423839789','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1607','1423839799','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1608','1423839831','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1609','1423839831','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1610','1423839839','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1611','1423839849','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1612','1423839849','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1613','1423839956','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1614','1423839964','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1615','1423839964','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1616','1423839973','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1617','1423839983','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1618','1423839983','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1619','1423840006','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1620','1423840016','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1621','1423840017','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1622','1423840036','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1623','1423840036','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1624','1423840057','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1625','1423840061','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1626','1423840061','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1627','1423840090','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1628','1423840094','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1629','1423840094','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1630','1423840115','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1631','1423840120','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1632','1423840120','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1633','1423840147','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1634','1423840152','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1635','1423840152','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1636','1423840174','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1637','1423840179','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1638','1423840180','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1639','1423840192','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1640','1423840215','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1641','1423840215','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1642','1423840242','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1643','1423840280','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1644','1423840280','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1645','1423840304','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1646','1423840311','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1647','1423840311','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1648','1423840319','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1649','1423840323','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1650','1423840323','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1651','1423840336','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1652','1423840341','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1653','1423840341','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1654','1423840388','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1655','1423840393','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1656','1423840393','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1657','1423840439','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1658','1423840451','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1659','1423840451','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1660','1423840496','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1661','1423840711','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1662','1423840711','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1663','1423840890','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1664','1423840902','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1665','1423840902','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1666','1423840904','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1667','1423840911','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1668','1423840941','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1669','1423840942','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1670','1423840948','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1671','1423840948','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1672','1423841035','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1673','1423841042','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1674','1423841042','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1675','1423841129','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1676','1423841146','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1677','1423841146','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1678','1423841306','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1679','1423841485','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1680','1423841486','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1681','1423841500','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1682','1423841506','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1683','1423841506','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1684','1423841910','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1685','1423842261','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1686','1423842261','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1687','1423842301','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1688','1423842309','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1689','1423842309','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1690','1423842761','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1691','1423842765','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1692','1423842767','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1693','1423844909','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1694','1423844909','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1695','1423844922','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1696','1423844950','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1697','1423844950','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1698','1423913316','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1699','1423913319','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1700','1423913320','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1701','1423913391','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1702','1423913391','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1703','1423913406','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1704','1423913408','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1705','1423913409','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1706','1423913414','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1707','1423913414','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1708','1423913422','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1709','1423913427','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1710','1423913427','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1711','1423913448','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1712','1423913452','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1713','1423913452','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1714','1423913494','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1715','1423913617','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1716','1423913619','1','manager','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1717','1423913639','1','manager','79','-','thank-tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1718','1423913639','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1719','1423913662','1','manager','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1720','1423913696','1','manager','79','-','report-tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1721','1423913696','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1722','1423913717','1','manager','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1723','1423913749','1','manager','79','-','form','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1724','1423913749','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1725','1423913788','1','manager','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1726','1423913801','1','manager','79','-','contacty','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1727','1423913801','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1728','1423913814','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1729','1423913822','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1730','1423913822','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1731','1423913845','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1732','1423913854','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1733','1423913854','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1734','1423914101','1','manager','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1735','1423914115','1','manager','79','-','form-tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1736','1423914115','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1737','1423914383','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1738','1423914390','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1739','1423914391','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1740','1423914402','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1741','1423914420','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1742','1423914420','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1743','1423914429','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1744','1423914463','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1745','1423914463','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1746','1423914470','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1747','1423914494','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1748','1423914494','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1749','1423914565','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1750','1423914571','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1751','1423914571','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1752','1423914582','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1753','1423914844','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1754','1423914850','1','manager','78','19','form-tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1755','1423914854','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1756','1423914855','1','manager','78','17','form','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1757','1423914866','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1758','1423914868','1','manager','78','19','form-tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1759','1423915413','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1760','1423915424','1','manager','300','-','Новый параметр (TV)','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1761','1423915496','1','manager','302','-','keywords','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1762','1423915496','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1763','1423915498','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1764','1423915526','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1765','1423915529','1','manager','301','5','keywords','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1766','1423915549','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1767','1423915571','1','manager','5','10','Ремонт ноутбуков','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1768','1423915573','1','manager','3','10','Ремонт ноутбуков','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1769','1423915575','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1770','1423915579','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1771','1423915581','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1772','1423915590','1','manager','5','10','Ремонт ноутбуков','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1773','1423915591','1','manager','3','10','Ремонт ноутбуков','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1774','1423915596','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1775','1423918697','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1776','1423918702','1','manager','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1777','1423919986','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1778','1423919988','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1779','1423919990','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1780','1423934335','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1781','1423934342','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1782','1423934474','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1783','1423934523','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1784','1423934646','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1785','1423934673','1','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1786','1423935083','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1787','1423935147','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1788','1423935149','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1789','1423935152','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1790','1423935158','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1791','1423935162','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1792','1423935178','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1793','1423935178','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1794','1423935223','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1795','1423935232','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1796','1423935235','1','manager','78','12','MENU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1797','1423935239','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1798','1423935406','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1799','1423935515','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1800','1423935543','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1801','1423935654','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1802','1423935662','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1803','1423935678','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1804','1423935678','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1805','1423935694','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1806','1423935701','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1807','1423935701','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1808','1423935738','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1809','1423935819','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1810','1423935819','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1811','1423935836','1','manager','78','12','MENU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1812','1423935837','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1813','1423935840','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1814','1423935866','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1815','1423935866','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1816','1423935884','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1817','1423935904','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1818','1423935904','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1819','1423935921','1','manager','78','12','MENU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1820','1423935927','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1821','1423935938','1','manager','22','14','Wayfinder','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('1822','1423935950','1','manager','24','14','Wayfinder','Saving Snippet');
INSERT INTO `modx_manager_log` VALUES ('1823','1423935950','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1824','1423935958','1','manager','27','1','О сервисе','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1825','1423935965','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1826','1423936066','1','manager','27','12','Прокат скутеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1827','1423936077','1','manager','5','12','Прокат скутеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1828','1423936080','1','manager','3','12','Прокат скутеров Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1829','1423936087','1','manager','27','12','Прокат скутеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1830','1423936100','1','manager','5','12','Прокат скутеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1831','1423936101','1','manager','62','2','Ремонт скутеров','Un-publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('1832','1423936103','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1833','1423936108','1','manager','61','2','Ремонт скутеров','Publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('1834','1423936109','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1835','1423936223','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1836','1423936307','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1837','1423936320','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1838','1423936323','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1839','1423936337','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1840','1423936342','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1841','1423936356','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1842','1423936358','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1843','1423936385','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1844','1423936396','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1845','1423936397','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1846','1423936398','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1847','1423936406','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1848','1423936419','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1849','1423936486','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1850','1423936538','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1851','1423936563','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1852','1423936565','1','manager','27','16','Сантехник','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1853','1423936567','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1854','1423936573','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1855','1423936576','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1856','1423936577','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1857','1423936578','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1858','1423936579','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1859','1423936581','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1860','1423936583','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1861','1423936584','1','manager','27','16','Сантехник','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1862','1423936605','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1863','1423936622','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1864','1423936630','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1865','1423936635','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1866','1423936636','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1867','1423936646','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1868','1423936646','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1869','1423936658','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1870','1423936660','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1871','1423936661','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1872','1423936723','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1873','1423937076','1','manager','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1874','1423937087','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1875','1423937088','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1876','1423937103','1','manager','78','12','MENU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1877','1423937113','1','manager','79','12','MENU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1878','1423937113','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1879','1423937123','1','manager','78','12','MENU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1880','1423937128','1','manager','79','12','MENU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1881','1423937128','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1882','1423937203','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1883','1423937219','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1884','1423943001','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1885','1423943010','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1886','1423943027','1','manager','31','-','/home/u406003031/public_html/.htaccess','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1887','1423943036','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1888','1423943044','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1889','1423943048','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1890','1423943072','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1891','1423943091','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1892','1423943245','1','manager','27','1','О сервисе','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1893','1423943255','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1894','1423943264','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1895','1423943354','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1896','1423943415','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1897','1423943436','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1898','1423943470','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1899','1423943599','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1900','1423943605','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1901','1423957895','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1902','1423957915','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1903','1423957941','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1904','1423958230','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1905','1423958245','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1906','1423958590','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1907','1423958598','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1908','1423958972','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1909','1423959007','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1910','1423959012','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1911','1423959032','1','manager','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('1912','1423959037','1','manager','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1913','1423960378','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1914','1423960519','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1915','1423960540','1','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1916','1423961061','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1917','1423961065','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1918','1423961068','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1919','1423961071','1','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1920','1423961083','1','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1921','1423961084','1','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1922','1423961085','1','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1923','1423961087','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1924','1423961092','1','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1925','1423961098','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1926','1423961190','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1927','1423961277','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1928','1423961295','1','manager','78','12','MENU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1929','1423961307','1','manager','79','12','MENU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1930','1423961307','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1931','1423961319','1','manager','78','12','MENU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1932','1423961324','1','manager','79','12','MENU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1933','1423961324','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1934','1423961379','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1935','1423961387','1','manager','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('1936','1423961395','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1937','1423961559','1','manager','27','1','О сервисе','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1938','1423961571','1','manager','81','-','-','Managing keywords');
INSERT INTO `modx_manager_log` VALUES ('1939','1423961575','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1940','1423961584','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1941','1423961660','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1942','1423961731','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1943','1423961743','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1944','1423961751','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1945','1424000041','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1946','1424000049','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1947','1424000055','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1948','1424000058','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1949','1424000159','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1950','1424000163','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1951','1424000463','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1952','1424001144','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1953','1424001164','1','manager','5','10','Ремонт ноутбуков','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1954','1424001166','1','manager','3','10','Ремонт ноутбуков','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1955','1424001222','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1956','1424001228','1','manager','78','8','HEADER_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1957','1424001237','1','manager','79','8','HEADER_PRODUCTS','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1958','1424001238','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1959','1424001332','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1960','1424001357','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1961','1424001357','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1962','1424001371','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1963','1424001381','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1964','1424001398','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1965','1424001399','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1966','1424001413','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1967','1424001422','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1968','1424001422','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1969','1424001451','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1970','1424001455','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1971','1424001471','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1972','1424001477','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1973','1424001480','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1974','1424001490','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1975','1424001493','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1976','1424001504','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1977','1424001507','1','manager','78','8','HEADER_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1978','1424001515','1','manager','79','8','HEADER_PRODUCTS','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1979','1424001515','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1980','1424001699','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1981','1424001705','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1982','1424001708','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1983','1424001720','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1984','1424003557','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1985','1424003561','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1986','1424003580','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1987','1424003580','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1988','1424114920','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1989','1424114930','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1990','1424114960','1','manager','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1991','1424114970','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1992','1424114979','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1993','1424114999','1','manager','81','-','-','Managing keywords');
INSERT INTO `modx_manager_log` VALUES ('1994','1424115052','1','manager','82','-','-','Idle (unknown)');
INSERT INTO `modx_manager_log` VALUES ('1995','1424115052','1','manager','81','-','-','Managing keywords');
INSERT INTO `modx_manager_log` VALUES ('1996','1424115065','1','manager','82','-','-','Idle (unknown)');
INSERT INTO `modx_manager_log` VALUES ('1997','1424115065','1','manager','81','-','-','Managing keywords');
INSERT INTO `modx_manager_log` VALUES ('1998','1424115086','1','manager','82','-','-','Idle (unknown)');
INSERT INTO `modx_manager_log` VALUES ('1999','1424115086','1','manager','81','-','-','Managing keywords');
INSERT INTO `modx_manager_log` VALUES ('2000','1424115199','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2001','1424115212','1','manager','81','-','-','Managing keywords');
INSERT INTO `modx_manager_log` VALUES ('2002','1424115220','1','manager','82','-','-','Idle (unknown)');
INSERT INTO `modx_manager_log` VALUES ('2003','1424115221','1','manager','81','-','-','Managing keywords');
INSERT INTO `modx_manager_log` VALUES ('2004','1424115272','1','manager','82','-','-','Idle (unknown)');
INSERT INTO `modx_manager_log` VALUES ('2005','1424115272','1','manager','81','-','-','Managing keywords');
INSERT INTO `modx_manager_log` VALUES ('2006','1424115274','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2007','1424181176','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2008','1424181209','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2009','1424181210','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2010','1424186511','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2011','1424186525','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2012','1424186526','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2013','1424186569','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2014','1424186569','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2015','1424187318','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2016','1424187332','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2017','1424187332','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2018','1424187360','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2019','1424187363','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2020','1424187412','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2021','1424187415','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2022','1424187417','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2023','1424187422','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2024','1424187424','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2025','1424187426','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2026','1424187450','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2027','1424187455','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2028','1424187456','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2029','1424187458','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2030','1424187460','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2031','1424187462','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2032','1424187470','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2033','1424187472','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2034','1424187481','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('2035','1424187483','1','manager','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2036','1424187547','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2037','1424187958','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2038','1424187976','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2039','1424187977','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2040','1424189615','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2041','1424189615','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2042','1424190601','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2043','1424200985','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2044','1424201067','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2045','1424201396','1','manager','5','3','Ремонт велосипеда','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2046','1424201397','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2047','1424201479','1','manager','5','3','Ремонт велосипеда','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2048','1424201479','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2049','1424201620','1','manager','5','3','Ремонт велосипеда','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2050','1424201620','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2051','1424201687','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2052','1424272418','1','manager','27','1','О сервисе','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2053','1424293052','1','manager','27','1','О сервисе','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2054','1424293236','1','manager','5','1','О сервисе','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2055','1424293237','1','manager','27','1','О сервисе','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2056','1424293267','1','manager','5','1','О сервисе','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2057','1424293267','1','manager','27','1','О сервисе','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2058','1424294505','1','manager','27','1','Сервисный цент Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2059','1424295419','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2060','1424339719','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2061','1424339950','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2062','1424339974','1','manager','27','18','Быстро!','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2063','1424339979','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2064','1424339979','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2065','1424340220','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2066','1424340220','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2067','1424340409','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2068','1424340409','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2069','1424340628','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2070','1424340739','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2071','1424340843','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2072','1424340876','1','manager','81','-','-','Managing keywords');
INSERT INTO `modx_manager_log` VALUES ('2073','1424341068','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2074','1424341068','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2075','1424341154','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2076','1424341155','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2077','1424341159','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2078','1424341161','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2079','1424341186','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2080','1424341198','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2081','1424341198','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2082','1424341204','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('2083','1424341216','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2084','1424341323','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2085','1424341323','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2086','1424341389','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2087','1424341390','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2088','1424341402','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2089','1424341421','1','manager','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2090','1424341423','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2091','1424341425','1','manager','78','1','mm_rules','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2092','1424341443','1','manager','79','1','mm_rules','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2093','1424341443','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2094','1424341445','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2095','1424341451','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2096','1424341452','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2097','1424341481','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2098','1424341484','1','manager','300','-','Новый параметр (TV)','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2099','1424341559','1','manager','302','-','Мета дескрипшин','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2100','1424341559','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2101','1424341561','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2102','1424341569','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2103','1424341589','1','manager','300','-','Новый параметр (TV)','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2104','1424341606','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2105','1424341606','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2106','1424341632','1','manager','302','-','Ключевые слова','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2107','1424341632','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2108','1424341635','1','manager','300','-','Новый параметр (TV)','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2109','1424341695','1','manager','302','-','Индексировать страницу','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2110','1424341695','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2111','1424341707','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2112','1424341707','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2113','1424341714','1','manager','300','-','Новый параметр (TV)','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2114','1424341734','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2115','1424341734','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2116','1424341753','1','manager','300','-','Новый параметр (TV)','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2117','1424341782','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2118','1424341782','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2119','1424341787','1','manager','302','-','Мета тайтл','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2120','1424341787','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2121','1424341790','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2122','1424341821','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2123','1424341821','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2124','1424341859','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2125','1424341861','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2126','1424341861','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2127','1424341871','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2128','1424341871','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2129','1424341890','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2130','1424341904','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2131','1424341904','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2132','1424341919','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2133','1424341926','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2134','1424341937','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2135','1424341938','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2136','1424341942','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2137','1424341970','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2138','1424341971','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2139','1424342044','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2140','1424342052','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2141','1424342052','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2142','1424342064','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2143','1424342072','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2144','1424342086','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2145','1424342086','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2146','1424342129','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2147','1424342129','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2148','1424342140','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2149','1424342145','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2150','1424342170','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2151','1424342171','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2152','1424342190','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2153','1424342196','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2154','1424342199','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2155','1424342209','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2156','1424342209','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2157','1424342237','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2158','1424342270','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2159','1424342328','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2160','1424342328','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2161','1424342330','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2162','1424342330','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2163','1424342352','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2164','1424342360','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2165','1424342389','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('2166','1424342395','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2167','1424342395','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2168','1424342402','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2169','1424342418','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('2170','1424342450','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2171','1424342520','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('2172','1424342525','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2173','1424342528','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2174','1424342529','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2175','1424342542','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2176','1424342549','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2177','1424342658','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2178','1424342661','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2179','1424342719','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2180','1424342719','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2181','1424342727','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2182','1424342737','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2183','1424342742','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2184','1424342799','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2185','1424342800','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2186','1424342805','1','manager','78','7','HEAD_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2187','1424342820','1','manager','79','7','HEAD_PRODUCTS','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2188','1424342820','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2189','1424342992','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2190','1424342996','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2191','1424343025','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2192','1424343040','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2193','1424343040','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2194','1424343040','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2195','1424343043','1','manager','78','7','HEAD_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2196','1424343049','1','manager','79','7','HEAD_PRODUCTS','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2197','1424343049','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2198','1424343083','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2199','1424343085','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2200','1424343086','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2201','1424343117','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2202','1424343185','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2203','1424343185','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2204','1424343461','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2205','1424343464','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2206','1424343544','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2207','1424343840','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2208','1424343843','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2209','1424343911','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2210','1424343911','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2211','1424343925','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2212','1424343932','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2213','1424343934','1','manager','78','7','HEAD_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2214','1424343969','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2215','1424343972','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2216','1424343982','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2217','1424343982','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2218','1424343997','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2219','1424344002','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2220','1424344004','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2221','1424344012','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2222','1424344014','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2223','1424344017','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2224','1424344020','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2225','1424344035','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2226','1424344035','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2227','1424344070','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2228','1424344073','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2229','1424344076','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2230','1424344144','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2231','1424344144','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2232','1424344202','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2233','1424344203','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2234','1424344224','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2235','1424344230','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2236','1424344237','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2237','1424344248','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2238','1424344249','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2239','1424344272','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2240','1424344272','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2241','1424344303','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2242','1424344303','1','manager','78','10','FOOTER_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2243','1424344306','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2244','1424344306','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2245','1424344306','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2246','1424344309','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2247','1424344342','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2248','1424344344','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2249','1424344367','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2250','1424344367','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2251','1424344396','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2252','1424344419','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2253','1424344419','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2254','1424344431','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2255','1424344449','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2256','1424344449','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2257','1424344484','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2258','1424344923','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2259','1424344923','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2260','1424344938','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2261','1424344955','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2262','1424344955','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2263','1424345066','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2264','1424345207','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2265','1424345209','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2266','1424345373','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2267','1424345373','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2268','1424345410','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2269','1424345414','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2270','1424345421','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2271','1424345426','1','manager','78','12','MENU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2272','1424345429','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2273','1424345492','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2274','1424345496','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2275','1424345542','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2276','1424345542','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2277','1424345596','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2278','1424345596','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2279','1424345686','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2280','1424345686','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2281','1424345706','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2282','1424345706','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2283','1424345857','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2284','1424345857','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2285','1424345960','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2286','1424345960','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2287','1424346303','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2288','1424346312','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2289','1424346330','1','manager','79','3','HEAD','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2290','1424346330','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2291','1424346342','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2292','1424346811','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2293','1424346814','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2294','1424346818','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2295','1424346823','1','manager','78','6','FOOTER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2296','1424346878','1','manager','79','6','FOOTER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2297','1424346878','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2298','1424346916','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2299','1424346942','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2300','1424346945','1','manager','78','6','FOOTER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2301','1424346966','1','manager','79','6','FOOTER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2302','1424346967','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2303','1424346984','1','manager','78','6','FOOTER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2304','1424347006','1','manager','79','6','FOOTER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2305','1424347006','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2306','1424347028','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2307','1424347057','1','manager','20','3','Главная','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2308','1424347058','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2309','1424347099','1','manager','78','11','CONTENT','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2310','1424347101','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2311','1424347122','1','manager','78','11','CONTENT','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2312','1424347124','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2313','1424347128','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2314','1424347140','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2315','1424347146','1','manager','78','9','CONTENT_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2316','1424347161','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2317','1424347163','1','manager','78','11','CONTENT','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2318','1424347166','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2319','1424347170','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2320','1424347219','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2321','1424347222','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2322','1424347225','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2323','1424347238','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2324','1424347243','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('2325','1424347247','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2326','1424347258','1','manager','22','14','Wayfinder','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('2327','1424347280','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2328','1424347297','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('2329','1424347299','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2330','1424347305','1','manager','78','12','MENU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2331','1424347515','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2332','1424347515','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2333','1424347688','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2334','1424347736','1','manager','27','18','Быстро!','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2335','1424347745','1','manager','27','18','Быстро!','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2336','1424347775','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2337','1424347778','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2338','1424347786','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2339','1424347787','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2340','1424347795','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2341','1424347799','1','manager','78','5','COLUMN','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2342','1424347806','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2343','1424347808','1','manager','78','14','column_tpl_last','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2344','1424347819','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2345','1424347830','1','manager','79','14','column_tpl_last','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2346','1424347830','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2347','1424347845','1','manager','78','13','column_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2348','1424347868','1','manager','79','13','column_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2349','1424347870','1','manager','79','13','column_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2350','1424347870','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2351','1424347926','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2352','1424347926','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2353','1424348042','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2354','1424348042','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2355','1424348085','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2356','1424348085','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2357','1424348187','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2358','1424348288','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2359','1424348298','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2360','1424348304','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2361','1424348310','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2362','1424348312','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2363','1424348346','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2364','1424348364','1','manager','78','7','HEAD_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2365','1424348373','1','manager','79','7','HEAD_PRODUCTS','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2366','1424348373','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2367','1424348623','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2368','1424348640','1','manager','5','10','Ремонт ноутбуков','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2369','1424348642','1','manager','3','10','Ремонт ноутбуков','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2370','1424348681','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2371','1424348752','1','manager','5','10','Ремонт ноутбуков','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2372','1424348753','1','manager','3','10','Ремонт ноутбуков','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2373','1424348801','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2374','1424348808','1','manager','5','10','Ремонт ноутбуков','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2375','1424348810','1','manager','3','10','Ремонт ноутбуков','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2376','1424348819','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2377','1424348829','1','manager','5','10','Ремонт ноутбуков','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2378','1424348831','1','manager','3','10','Ремонт ноутбуков','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2379','1424352407','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2380','1424352414','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2381','1424352582','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2382','1424352582','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2383','1424352624','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2384','1424352624','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2385','1424352953','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2386','1424352953','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2387','1424362042','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2388','1424362043','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2389','1424362559','1','manager','22','14','Wayfinder','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('2390','1424362659','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2391','1424362659','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2392','1424362697','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2393','1424362698','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2394','1424362902','1','manager','27','18','Быстро!','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2395','1424363190','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2396','1424363636','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2397','1424363636','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2398','1424366593','1','manager','27','18','Быстро!','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2399','1424366645','1','manager','5','18','Быстро!','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2400','1424366645','1','manager','27','18','Быстро!','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2401','1424366672','1','manager','27','19','Качествено','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2402','1424366757','1','manager','5','19','Качествено','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2403','1424366757','1','manager','27','19','Качествено','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2404','1424367579','1','manager','27','20','Надежно ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2405','1424367711','1','manager','5','20','Надежно ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2406','1424367712','1','manager','27','20','Надежно ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2407','1424367781','1','manager','27','18','Быстро!','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2408','1424367882','1','manager','5','18','Быстро!','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2409','1424367882','1','manager','27','18','Быстро!','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2410','1424367914','1','manager','5','18','Быстро','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2411','1424367914','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2412','1424367979','1','manager','5','18','Быстро','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2413','1424367979','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2414','1424368032','1','manager','5','18','Быстро','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2415','1424368032','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2416','1424368081','1','manager','5','18','Быстро','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2417','1424368081','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2418','1424368159','1','manager','5','18','Быстро','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2419','1424368159','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2420','1424368232','1','manager','27','19','Качествено','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2421','1424368236','1','manager','27','20','Надежно ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2422','1424368306','1','manager','5','20','Надежно ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2423','1424368306','1','manager','27','20','Надежно ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2424','1424368334','1','manager','5','20','Надежно ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2425','1424368334','1','manager','27','20','Надежно ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2426','1424368362','1','manager','27','19','Качествено','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2427','1424368472','1','manager','5','19','Качествено','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2428','1424368472','1','manager','27','19','Качествено','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2429','1424368582','1','manager','5','19','Качествено','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2430','1424368582','1','manager','27','19','Качествено','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2431','1424368719','1','manager','5','19','Качество','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2432','1424368719','1','manager','27','19','Качество','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2433','1424368723','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2434','1424368731','1','manager','5','18','Время','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2435','1424368733','1','manager','27','20','Надежно ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2436','1424368734','1','manager','3','18','Время','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2437','1424368740','1','manager','5','20','Надежность','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2438','1424368742','1','manager','3','20','Надежность','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2439','1424368766','1','manager','27','20','Надежность','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2440','1424368775','1','manager','5','20','Надежно','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2441','1424368776','1','manager','3','20','Надежно','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2442','1424368777','1','manager','27','18','Время','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2443','1424368785','1','manager','5','18','Быстро','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2444','1424368786','1','manager','27','19','Качество','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2445','1424368818','1','manager','5','19','Качественно','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2446','1424368820','1','manager','3','19','Качественно','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2447','1424368855','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2448','1424368872','1','manager','5','18','Быстро','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2449','1424368873','1','manager','3','18','Быстро','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2450','1424390592','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2451','1424390600','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2452','1424390629','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2453','1424390632','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2454','1424390648','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2455','1424390650','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2456','1424390834','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2457','1424390834','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2458','1424390851','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2459','1424390855','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2460','1424390858','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2461','1424391292','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2462','1424391292','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2463','1424391301','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2464','1424391343','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2465','1424391343','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2466','1424391349','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2467','1424391362','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2468','1424391362','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2469','1424391362','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2470','1424391373','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2471','1424391378','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2472','1424391391','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2473','1424391391','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2474','1424391406','1','manager','27','20','Надежно','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2475','1424391490','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2476','1424391556','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2477','1424391556','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2478','1424391577','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2479','1424391582','1','manager','5','20','Надежно','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2480','1424391584','1','manager','3','20','Надежно','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2481','1424391632','1','manager','27','19','Качественно','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2482','1424391671','1','manager','5','19','Качественно','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2483','1424391673','1','manager','3','19','Качественно','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2484','1424391684','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2485','1424391687','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2486','1424391707','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2487','1424391708','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2488','1424391717','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2489','1424391731','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2490','1424391731','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2491','1424392100','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2492','1424392179','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2493','1424392182','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2494','1424392301','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2495','1424392309','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2496','1424392312','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2497','1424392345','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2498','1424392345','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2499','1424392381','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2500','1424392504','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2501','1424392505','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2502','1424392797','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2503','1424393366','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2504','1424393366','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2505','1424393432','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2506','1424393455','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2507','1424393455','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2508','1424393468','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2509','1424393482','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2510','1424393482','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2511','1424397427','1','manager','78','15','thank-tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2512','1424397431','1','manager','80','15','thank-tpl','Deleting Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2513','1424397431','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2514','1424397438','1','manager','78','16','report-tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2515','1424397442','1','manager','80','16','report-tpl','Deleting Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2516','1424397442','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2517','1424397461','1','manager','78','17','form','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2518','1424397464','1','manager','80','17','form','Deleting Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2519','1424397464','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2520','1424397476','1','manager','78','18','contacty','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2521','1424397479','1','manager','80','18','contacty','Deleting Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2522','1424397480','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2523','1424397542','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2524','1424397548','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2525','1424397549','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2526','1424397606','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2527','1424397610','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2528','1424397611','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2529','1424397686','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2530','1424397703','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2531','1424397703','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2532','1424397716','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2533','1424397742','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2534','1424397742','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2535','1424397817','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2536','1424397839','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2537','1424397839','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2538','1424397856','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2539','1424398131','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2540','1424398131','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2541','1424398153','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2542','1424398165','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2543','1424398165','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2544','1424398191','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2545','1424398197','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2546','1424398197','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2547','1424398215','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2548','1424398222','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2549','1424398222','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2550','1424398243','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2551','1424398252','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2552','1424398253','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2553','1424398273','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2554','1424398273','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2555','1424398285','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2556','1424398313','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2557','1424398313','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2558','1424398464','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2559','1424398608','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2560','1424398626','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2561','1424398628','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2562','1424398674','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2563','1424398674','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2564','1424398687','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2565','1424398690','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2566','1424398699','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2567','1424398713','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2568','1424398715','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2569','1424398727','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2570','1424398727','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2571','1424398739','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2572','1424398839','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2573','1424398840','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2574','1424428300','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2575','1424428303','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2576','1424428306','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2577','1424428317','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2578','1424428317','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2579','1424428337','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2580','1424428410','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2581','1424428410','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2582','1424428428','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2583','1424428443','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2584','1424428443','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2585','1424428459','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2586','1424428471','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2587','1424428473','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2588','1424428492','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2589','1424428492','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2590','1424428509','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2591','1424428511','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2592','1424428519','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2593','1424428519','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2594','1424428532','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2595','1424428543','1','manager','20','3','Главная','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2596','1424428543','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2597','1424428545','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2598','1424428646','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2599','1424428646','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2600','1424428789','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2601','1424428815','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2602','1424428815','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2603','1424428968','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2604','1424428996','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2605','1424428996','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2606','1424429009','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2607','1424429083','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2608','1424429083','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2609','1424429112','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2610','1424429162','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2611','1424429162','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2612','1424429293','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2613','1424429311','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2614','1424429311','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2615','1424429323','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2616','1424429334','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2617','1424429334','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2618','1424429348','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2619','1424429375','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2620','1424429376','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2621','1424429439','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2622','1424429457','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2623','1424429457','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2624','1424429466','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2625','1424429505','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2626','1424429505','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2627','1424429529','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2628','1424429537','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2629','1424429537','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2630','1424429546','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2631','1424429555','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2632','1424429556','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2633','1424429579','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2634','1424429600','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2635','1424429600','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2636','1424429615','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2637','1424429623','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2638','1424429623','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2639','1424429635','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2640','1424429648','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2641','1424429648','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2642','1424429659','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2643','1424429676','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2644','1424429677','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2645','1424429685','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2646','1424429718','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2647','1424429718','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2648','1424429727','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2649','1424429740','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2650','1424429741','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2651','1424429752','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2652','1424429763','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2653','1424429763','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2654','1424429785','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2655','1424429815','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2656','1424429815','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2657','1424429874','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2658','1424429883','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2659','1424429883','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2660','1424429899','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2661','1424429909','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2662','1424429909','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2663','1424429978','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2664','1424429982','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2665','1424429982','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2666','1424430017','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2667','1424430025','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2668','1424430026','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2669','1424430038','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2670','1424430044','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2671','1424430044','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2672','1424430049','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2673','1424430077','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2674','1424430077','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2675','1424430099','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2676','1424430109','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2677','1424430109','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2678','1424430125','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2679','1424430154','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2680','1424430154','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2681','1424430178','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2682','1424430192','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2683','1424430192','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2684','1424430213','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2685','1424430213','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2686','1424430289','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2687','1424430290','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2688','1424430517','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2689','1424430517','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2690','1424430542','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2691','1424430542','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2692','1424430562','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2693','1424430562','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2694','1424430576','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2695','1424430576','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2696','1424430755','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2697','1424430757','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2698','1424430761','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2699','1424430761','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2700','1424430895','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2701','1424430906','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2702','1424430907','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2703','1424430927','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2704','1424430959','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2705','1424430960','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2706','1424431373','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2707','1424431385','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2708','1424431429','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2709','1424431431','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2710','1424431442','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2711','1424431473','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2712','1424431474','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2713','1424431503','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2714','1424431503','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2715','1424431515','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2716','1424431518','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2717','1424431539','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2718','1424431542','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2719','1424431552','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2720','1424431640','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2721','1424431642','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2722','1424431667','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2723','1424431676','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2724','1424431811','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2725','1424431815','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2726','1424431823','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2727','1424431827','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2728','1424431829','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2729','1424431834','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2730','1424431865','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2731','1424431866','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2732','1424431884','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2733','1424431912','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2734','1424431914','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2735','1424431929','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2736','1424431960','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2737','1424431962','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2738','1424431968','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2739','1424432066','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2740','1424432069','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2741','1424432071','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2742','1424432105','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2743','1424432105','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2744','1424432122','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2745','1424432160','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2746','1424432160','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2747','1424432197','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2748','1424432207','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2749','1424432219','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2750','1424432220','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2751','1424432229','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2752','1424432259','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2753','1424432261','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2754','1424432276','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2755','1424432301','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2756','1424432303','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2757','1424432309','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2758','1424432379','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2759','1424432380','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2760','1424432396','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2761','1424432453','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2762','1424432454','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2763','1424432465','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2764','1424432738','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2765','1424432738','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2766','1424432784','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2767','1424432787','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2768','1424432787','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2769','1424432815','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2770','1424432815','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2771','1424432846','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2772','1424432846','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2773','1424432867','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2774','1424432867','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2775','1424432896','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2776','1424432896','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2777','1424432944','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2778','1424432946','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2779','1424432993','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2780','1424432993','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2781','1424433066','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2782','1424433066','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2783','1424433109','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2784','1424433109','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2785','1424433148','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2786','1424433149','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2787','1424433209','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2788','1424433210','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2789','1424433279','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2790','1424433279','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2791','1424433299','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2792','1424433299','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2793','1424433333','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2794','1424433333','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2795','1424433374','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2796','1424433374','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2797','1424433475','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2798','1424433475','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2799','1424433534','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2800','1424433535','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2801','1424433572','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2802','1424433572','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2803','1424433624','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2804','1424433624','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2805','1424433624','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2806','1424433910','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2807','1424433910','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2808','1424433942','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2809','1424433942','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2810','1424434084','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2811','1424434084','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2812','1424434187','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2813','1424434187','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2814','1424434221','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2815','1424434221','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2816','1424434296','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2817','1424434297','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2818','1424434374','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2819','1424434374','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2820','1424434390','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2821','1424434390','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2822','1424434815','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2823','1424434815','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2824','1424434840','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2825','1424434969','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2826','1424435050','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2827','1424435053','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2828','1424435154','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2829','1424435198','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2830','1424435201','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2831','1424435215','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2832','1424435270','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2833','1424435274','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2834','1424435280','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2835','1424435336','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2836','1424435339','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2837','1424435434','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2838','1424435565','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2839','1424435568','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2840','1424435577','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2841','1424435756','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2842','1424435758','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2843','1424435819','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2844','1424436712','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2845','1424436715','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2846','1424436739','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2847','1424436769','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2848','1424436770','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2849','1424436803','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2850','1424436866','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2851','1424436868','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2852','1424436876','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2853','1424436884','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2854','1424436885','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2855','1424436913','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2856','1424436921','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2857','1424436923','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2858','1424436931','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2859','1424437149','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2860','1424437166','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2861','1424437168','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2862','1424437485','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2863','1424437486','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2864','1424437516','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2865','1424437618','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2866','1424437622','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2867','1424437706','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2868','1424437756','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2869','1424437758','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2870','1424437798','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2871','1424437814','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2872','1424437816','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2873','1424437836','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2874','1424437880','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2875','1424437896','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2876','1424437898','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2877','1424437913','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2878','1424437922','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2879','1424437924','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2880','1424437937','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2881','1424437977','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2882','1424437980','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2883','1424438018','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2884','1424438068','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2885','1424438121','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2886','1424438125','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2887','1424438134','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2888','1424438142','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2889','1424438144','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2890','1424438155','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2891','1424438177','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2892','1424438178','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2893','1424438193','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2894','1424438203','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2895','1424438206','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2896','1424438213','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2897','1424438223','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2898','1424438227','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2899','1424438233','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2900','1424438306','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2901','1424438306','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2902','1424438373','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2903','1424438373','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2904','1424438438','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2905','1424438438','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2906','1424438485','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2907','1424438485','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2908','1424438500','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2909','1424438501','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2910','1424438554','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2911','1424438554','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2912','1424438577','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2913','1424438577','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2914','1424438600','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2915','1424438600','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2916','1424438617','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2917','1424438617','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2918','1424438785','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2919','1424438786','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2920','1424438946','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2921','1424438946','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2922','1424438974','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2923','1424438974','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2924','1424438998','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2925','1424439000','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2926','1424439021','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2927','1424439023','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2928','1424439279','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2929','1424439281','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2930','1424439297','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2931','1424439299','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2932','1424439303','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2933','1424439303','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2934','1424439311','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2935','1424439327','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2936','1424439327','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2937','1424439341','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2938','1424439345','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2939','1424439347','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2940','1424439350','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2941','1424439372','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2942','1424439377','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2943','1424439381','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2944','1424439384','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2945','1424439396','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2946','1424439400','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2947','1424439404','1','manager','96','9','Duplicate of FAQ (ШАБЛОН ДЛЯ страниц текстов)','Duplicate Template');
INSERT INTO `modx_manager_log` VALUES ('2948','1424439404','1','manager','16','10','Duplicate of FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2949','1424439419','1','manager','20','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2950','1424439419','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2951','1424439420','1','manager','16','8','Шаблон для контактов','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2952','1424439424','1','manager','20','8','Шаблон для контактов','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2953','1424439425','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2954','1424439426','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2955','1424439430','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2956','1424439432','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2957','1424439435','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2958','1424439447','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2959','1424439449','1','manager','16','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2960','1424439458','1','manager','20','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2961','1424439459','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2962','1424439496','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2963','1424439500','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2964','1424439505','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2965','1424439509','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2966','1424439516','1','manager','16','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2967','1424439530','1','manager','20','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2968','1424439530','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2969','1424439549','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2970','1424439551','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2971','1424439552','1','manager','16','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2972','1424439563','1','manager','20','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2973','1424439563','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2974','1424439576','1','manager','16','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2975','1424439606','1','manager','20','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2976','1424439606','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2977','1424439836','1','manager','16','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2978','1424439894','1','manager','20','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2979','1424439894','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2980','1424440066','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2981','1424440074','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2982','1424440077','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2983','1424440153','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2984','1424440161','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2985','1424440164','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2986','1424440180','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2987','1424440249','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2988','1424440253','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2989','1424440307','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2990','1424440309','1','manager','16','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2991','1424440329','1','manager','20','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2992','1424440329','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2993','1424440343','1','manager','16','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2994','1424440365','1','manager','20','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2995','1424440365','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2996','1424440387','1','manager','16','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2997','1424440411','1','manager','20','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('2998','1424440411','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2999','1424441409','1','manager','27','16','Сантехник','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3000','1424441432','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3001','1424441437','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3002','1424441438','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3003','1424441480','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3004','1424441494','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3005','1424441496','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3006','1424441532','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3007','1424441534','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3008','1424441538','1','manager','16','10','Duplicate of FAQ (ШАБЛОН ДЛЯ Контактов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3009','1424441613','1','manager','20','10','FAQ (ШАБЛОН ДЛЯ Контактов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3010','1424441613','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3011','1424453063','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3012','1424453074','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3013','1424454879','1','manager','5','18','Быстро','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3014','1424454880','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3015','1424454907','1','manager','27','20','Надежно','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3016','1424458908','1','manager','27','15','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3017','1424458931','1','manager','61','15','Сантехник Бровары','Publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('3018','1424458932','1','manager','3','15','Сантехник Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3019','1424458937','1','manager','62','15','Сантехник Бровары','Un-publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('3020','1424458939','1','manager','3','15','Сантехник Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3021','1424458941','1','manager','27','16','Сантехник','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3022','1424461582','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3023','1424461583','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3024','1424461609','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3025','1424461609','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3026','1424463948','1','manager','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3027','1424463980','1','manager','79','-','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3028','1424463980','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3029','1424464111','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3030','1424464115','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3031','1424464126','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3032','1424464140','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3033','1424464141','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3034','1424464279','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3035','1424464288','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3036','1424464288','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3037','1424464298','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3038','1424464310','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3039','1424464311','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3040','1424464318','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3041','1424464325','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3042','1424464326','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3043','1424464937','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3044','1424464989','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3045','1424464992','1','manager','3','4','Контакты ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3046','1424466051','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3047','1424466052','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3048','1424472308','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3049','1424472309','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3050','1424472332','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3051','1424472336','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3052','1424472336','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3053','1424472347','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3054','1424472350','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3055','1424472350','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3056','1424472435','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3057','1424472436','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3058','1424472531','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3059','1424472531','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3060','1424474143','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3061','1424474143','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3062','1424484013','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3063','1424484016','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3064','1424484024','1','manager','16','3','Главная','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3065','1424484033','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3066','1424484037','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3067','1424484045','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3068','1424484047','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3069','1424484062','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3070','1424484062','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3071','1424484084','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3072','1424484143','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3073','1424484143','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3074','1424484218','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3075','1424484224','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3076','1424484224','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3077','1424484239','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3078','1424484283','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3079','1424484283','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3080','1424484433','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3081','1424484435','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3082','1424484437','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3083','1424520226','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3084','1424520241','1','manager','78','13','column_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3085','1424520250','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3086','1424520253','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3087','1424520256','1','manager','97','20','Duplicate of KRU','Duplicate Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3088','1424520256','1','manager','78','21','Duplicate of KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3089','1424520260','1','manager','79','21','Duplicate of KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3090','1424520260','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3091','1424520263','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3092','1424520283','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3093','1424520283','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3094','1424520286','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3095','1424520308','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3096','1424520308','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3097','1424520320','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3098','1424520320','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3099','1424520333','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3100','1424520334','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3101','1424520375','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3102','1424520376','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3103','1424520489','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3104','1424520490','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3105','1424520526','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3106','1424520526','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3107','1424520554','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3108','1424520554','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3109','1424520564','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3110','1424520564','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3111','1424520581','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3112','1424520581','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3113','1424521615','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3114','1424521617','1','manager','78','21','Duplicate of KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3115','1424521621','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3116','1424521625','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3117','1424521632','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3118','1424521632','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3119','1424521867','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3120','1424523109','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3121','1424523109','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3122','1424523132','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3123','1424523132','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3124','1424523171','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3125','1424523171','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3126','1424523238','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3127','1424523238','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3128','1424523285','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3129','1424523285','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3130','1424523303','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3131','1424523303','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3132','1424525581','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3133','1424525606','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3134','1424525625','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3135','1424525625','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3136','1424525635','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3137','1424525712','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3138','1424525712','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3139','1424525727','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3140','1424525729','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3141','1424525778','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3142','1424525778','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3143','1424525830','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3144','1424525860','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3145','1424525860','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3146','1424526219','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3147','1424526253','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3148','1424526253','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3149','1424526276','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3150','1424526276','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3151','1424526927','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3152','1424526927','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3153','1424529435','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3154','1424529445','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3155','1424529450','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3156','1424529452','1','manager','3','16','Сантехник Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3157','1424529481','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3158','1424529571','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3159','1424529571','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3160','1424529607','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3161','1424529607','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3162','1424529624','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3163','1424529625','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3164','1424529636','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3165','1424529645','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3166','1424529663','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3167','1424529663','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3168','1424529685','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3169','1424529685','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3170','1424529822','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3171','1424529822','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3172','1424529827','1','manager','27','3','Ремонт велосипеда','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3173','1424529868','1','manager','5','3','Ремонт велосипеда в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3174','1424529868','1','manager','27','3','Ремонт велосипеда в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3175','1424530035','1','manager','5','3','Ремонт велосипеда в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3176','1424530035','1','manager','27','3','Ремонт велосипеда в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3177','1424530411','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3178','1424530411','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3179','1424530493','1','manager','5','3','Ремонт велосипеда в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3180','1424530493','1','manager','27','3','Ремонт велосипеда в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3181','1424530560','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3182','1424530560','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3183','1424530597','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3184','1424530597','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3185','1424530645','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3186','1424530645','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3187','1424530750','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3188','1424530750','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3189','1424531220','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3190','1424531220','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3191','1424532526','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3192','1424532526','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3193','1424532575','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3194','1424532593','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3195','1424532593','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3196','1424532814','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3197','1424532814','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3198','1424533774','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3199','1424533774','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3200','1424534272','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3201','1424534272','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3202','1424535476','1','manager','27','10','Ремонт ноутбуков','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3203','1424535557','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3204','1424535655','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3205','1424535667','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3206','1424535668','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3207','1424536625','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3208','1424536625','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3209','1424536763','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3210','1424536765','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3211','1424536788','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3212','1424536789','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3213','1424536804','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3214','1424536873','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3215','1424536875','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3216','1424536877','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3217','1424536902','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3218','1424536902','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3219','1424536913','1','manager','78','8','HEADER_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3220','1424536923','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3221','1424536926','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3222','1424536974','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3223','1424536974','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3224','1424536988','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3225','1424537001','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3226','1424537001','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3227','1424537010','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3228','1424537077','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3229','1424537078','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3230','1424537086','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3231','1424537100','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3232','1424537101','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3233','1424537690','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3234','1424537771','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3235','1424537771','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3236','1424538340','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3237','1424538452','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3238','1424538452','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3239','1424538457','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3240','1424538748','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3241','1424538749','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3242','1424538767','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3243','1424538767','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3244','1424538790','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3245','1424538790','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3246','1424539097','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3247','1424539130','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3248','1424539130','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3249','1424539157','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3250','1424539181','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3251','1424539181','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3252','1424539225','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3253','1424539266','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3254','1424539266','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3255','1424539286','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3256','1424539316','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3257','1424539316','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3258','1424539601','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3259','1424539602','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3260','1424539604','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3261','1424539720','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3262','1424539720','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3263','1424539736','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3264','1424539745','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3265','1424539745','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3266','1424539754','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3267','1424539886','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3268','1424539887','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3269','1424540163','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3270','1424540339','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3271','1424540339','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3272','1424540492','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3273','1424540559','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3274','1424540562','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3275','1424540598','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3276','1424540598','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3277','1424540725','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3278','1424541117','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3279','1424541117','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3280','1424541157','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3281','1424541176','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3282','1424541176','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3283','1424541190','1','manager','78','5','COLUMN','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3284','1424541198','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3285','1424541238','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3286','1424541246','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3287','1424541246','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3288','1424541258','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3289','1424541292','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3290','1424541293','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3291','1424541617','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3292','1424541617','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3293','1424541698','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3294','1424541699','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3295','1424544161','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3296','1424544162','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3297','1424544378','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3298','1424544378','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3299','1424544398','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3300','1424544427','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3301','1424544427','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3302','1424546567','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3303','1424548092','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3304','1424548093','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3305','1424548423','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3306','1424548497','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3307','1424548497','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3308','1424548544','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3309','1424548544','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3310','1424548589','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3311','1424548589','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3312','1424548615','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3313','1424548615','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3314','1424548653','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3315','1424548653','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3316','1424549023','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3317','1424549023','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3318','1424549195','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3319','1424549196','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3320','1424549239','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3321','1424549239','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3322','1424549319','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3323','1424549319','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3324','1424549371','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3325','1424549371','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3326','1424549412','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3327','1424549412','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3328','1424549428','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3329','1424549428','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3330','1424554877','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3331','1424554885','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3332','1424554900','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3333','1424554913','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3334','1424554914','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3335','1424554915','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3336','1424554920','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3337','1424554942','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3338','1424554944','1','manager','3','10','Ремонт ноутбуков и компьютеров г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3339','1424554955','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3340','1424554955','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3341','1424554968','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3342','1424555091','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3343','1424555094','1','manager','3','10','Ремонт ноутбуков и компьютеров г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3344','1424555174','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3345','1424555213','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3346','1424555215','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3347','1424555219','1','manager','3','10','Ремонт ноутбуков и компьютеров г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3348','1424556104','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3349','1424556322','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3350','1424556322','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3351','1424556323','1','manager','3','10','Ремонт ноутбуков и компьютеров г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3352','1424556336','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3353','1424556372','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3354','1424556374','1','manager','3','10','Ремонт ноутбуков и компьютеров г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3355','1424556453','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3356','1424556476','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3357','1424556476','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3358','1424556513','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3359','1424556514','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3360','1424556582','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3361','1424556582','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3362','1424556594','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3363','1424556595','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3364','1424556614','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3365','1424556614','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3366','1424556723','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3367','1424556723','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3368','1424556745','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3369','1424556745','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3370','1424556775','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3371','1424556776','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3372','1424556792','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3373','1424556792','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3374','1424556865','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3375','1424556865','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3376','1424556923','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3377','1424556924','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3378','1424557002','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3379','1424557013','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3380','1424557014','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3381','1424557018','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3382','1424557041','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3383','1424557041','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3384','1424557059','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3385','1424557087','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3386','1424557087','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3387','1424557112','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3388','1424557235','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3389','1424557239','1','manager','78','21','Duplicate of KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3390','1424557246','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3391','1424557248','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3392','1424557254','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3393','1424557255','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3394','1424557283','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3395','1424557296','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3396','1424557297','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3397','1424557306','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3398','1424557341','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3399','1424557341','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3400','1424557344','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3401','1424557347','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3402','1424557349','1','manager','3','10','Ремонт ноутбуков и компьютеров г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3403','1424557351','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3404','1424557353','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3405','1424557402','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3406','1424557402','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3407','1424557414','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3408','1424557414','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3409','1424557444','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3410','1424557444','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3411','1424557452','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3412','1424557452','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3413','1424557470','1','manager','79','20','KRU','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3414','1424557470','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3415','1424557501','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3416','1424557501','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3417','1424557565','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3418','1424557565','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3419','1424558136','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3420','1424558149','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3421','1424558153','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3422','1424558164','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3423','1424558164','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3424','1424558170','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3425','1424558172','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3426','1424558181','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3427','1424558182','1','manager','78','12','MENU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3428','1424558185','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3429','1424558194','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3430','1424558211','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3431','1424558220','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3432','1424558225','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3433','1424558230','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3434','1424558262','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3435','1424558367','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3436','1424558367','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3437','1424558641','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3438','1424558642','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3439','1424558709','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3440','1424558719','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3441','1424558719','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3442','1424558906','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3443','1424558906','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3444','1424558919','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3445','1424558925','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3446','1424558926','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3447','1424559065','1','manager','27','3','Ремонт велосипеда в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3448','1424559067','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3449','1424559069','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3450','1424559075','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3451','1424559075','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3452','1424559085','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3453','1424559089','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3454','1424559090','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3455','1424559103','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3456','1424559117','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3457','1424559117','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3458','1424559123','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3459','1424559132','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3460','1424559132','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3461','1424559136','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3462','1424559137','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3463','1424559138','1','manager','27','3','Ремонт велосипеда в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3464','1424559237','1','manager','5','3','Ремонт велосипеда в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3465','1424559238','1','manager','3','3','Ремонт велосипеда в г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3466','1424559239','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3467','1424559244','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3468','1424559264','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3469','1424559265','1','manager','3','16','Сантехник Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3470','1424559279','1','manager','27','3','Ремонт велосипеда в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3471','1424559410','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3472','1424559426','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3473','1424559426','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3474','1424559461','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3475','1424559468','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3476','1424559471','1','manager','3','10','Ремонт ноутбуков и компьютеров г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3477','1424559506','1','manager','5','3','Ремонт велосипеда в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3478','1424559507','1','manager','3','3','Ремонт велосипеда в г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3479','1424559546','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3480','1424559665','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3481','1424559665','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3482','1424559689','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3483','1424559689','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3484','1424559716','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3485','1424559716','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3486','1424559768','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3487','1424559775','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3488','1424559777','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3489','1424559778','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3490','1424559779','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3491','1424559787','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3492','1424559787','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3493','1424559787','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3494','1424559822','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3495','1424559931','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3496','1424559931','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3497','1424559978','1','manager','27','3','Ремонт велосипеда в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3498','1424560081','1','manager','5','3','Ремонт велосипеда в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3499','1424560082','1','manager','3','3','Ремонт велосипеда в г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3500','1424560106','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3501','1424560140','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3502','1424560232','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3503','1424560233','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3504','1424560247','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3505','1424560273','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3506','1424560273','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3507','1424560281','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3508','1424560288','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3509','1424560353','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3510','1424560358','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3511','1424560374','1','manager','27','3','Ремонт велосипеда в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3512','1424560387','1','manager','5','3','Ремонт велосипеда в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3513','1424560388','1','manager','3','3','Ремонт велосипеда в г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3514','1424560390','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3515','1424560396','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3516','1424560609','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3517','1424560614','1','manager','78','6','FOOTER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3518','1424560625','1','manager','79','6','FOOTER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3519','1424560625','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3520','1424560708','1','manager','78','5','COLUMN','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3521','1424560713','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3522','1424560715','1','manager','78','13','column_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3523','1424560740','1','manager','79','13','column_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3524','1424560740','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3525','1424560815','1','manager','78','13','column_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3526','1424560865','1','manager','79','13','column_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3527','1424560984','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3528','1424561015','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3529','1424561017','1','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3530','1424561018','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3531','1424561021','1','manager','78','14','column_tpl_last','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3532','1424561034','1','manager','79','14','column_tpl_last','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3533','1424561034','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3534','1424561036','1','manager','78','14','column_tpl_last','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3535','1424561041','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3536','1424561043','1','manager','78','13','column_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3537','1424561093','1','manager','79','13','column_tpl','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3538','1424561093','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3539','1424561154','1','manager','78','13','column_tpl','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3540','1424561160','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3541','1424561162','1','manager','78','14','column_tpl_last','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3542','1424561171','1','manager','79','14','column_tpl_last','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3543','1424561171','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3544','1424561173','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3545','1424561178','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3546','1424561199','1','manager','5','18','Быстро','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3547','1424561201','1','manager','3','18','Быстро','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3548','1424561205','1','manager','27','18','Быстро','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3549','1424561213','1','manager','5','18','Быстро!!!','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3550','1424561216','1','manager','3','18','Быстро!!!','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3551','1424561222','1','manager','27','18','Быстро!!!','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3552','1424561229','1','manager','5','18','Быстро!','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3553','1424561231','1','manager','3','18','Быстро!','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3554','1424561251','1','manager','27','19','Качественно','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3555','1424561258','1','manager','5','19','Качественно!','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3556','1424561260','1','manager','3','19','Качественно!','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3557','1424561260','1','manager','27','20','Надежно','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3558','1424561263','1','manager','5','20','Надежно!','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3559','1424561265','1','manager','3','20','Надежно!','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3560','1424561930','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3561','1424561935','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3562','1424562048','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3563','1424562048','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3564','1424562096','1','manager','78','3','HEAD','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3565','1424601941','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3566','1424601942','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3567','1424601959','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3568','1424601959','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3569','1424601968','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3570','1424601981','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3571','1424601981','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3572','1424602693','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3573','1424602705','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3574','1424602706','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3575','1424602728','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3576','1424602728','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3577','1424602760','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3578','1424602760','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3579','1424603288','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3580','1424603288','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3581','1424603316','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3582','1424603316','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3583','1424604117','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3584','1424604117','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3585','1424604388','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3586','1424604388','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3587','1424617343','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3588','1424617360','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3589','1424617364','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3590','1424617370','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3591','1424617393','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3592','1424617395','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3593','1424618435','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3594','1424620417','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3595','1424620581','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3596','1424620589','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3597','1424620619','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3598','1424620619','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3599','1424620640','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3600','1424620736','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3601','1424620738','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3602','1424620749','1','manager','79','4','HEADER','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3603','1424620749','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3604','1424620750','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3605','1424620782','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3606','1424620798','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3607','1424620801','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3608','1424620812','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3609','1424620864','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3610','1424620865','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3611','1424622667','1','manager','27','12','Прокат скутеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3612','1424623642','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3613','1424623744','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3614','1424623747','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3615','1424623759','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3616','1424623772','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3617','1424623772','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3618','1424624712','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3619','1424624713','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3620','1424624795','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3621','1424624809','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3622','1424624811','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3623','1424624816','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3624','1424624844','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3625','1424624846','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3626','1424624866','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3627','1424624871','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3628','1424624873','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3629','1424627932','1','manager','27','12','Прокат скутеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3630','1424629041','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3631','1424629474','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3632','1424629474','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3633','1424629804','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3634','1424629804','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3635','1424629848','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3636','1424629848','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3637','1424629921','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3638','1424629921','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3639','1424629988','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3640','1424629989','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3641','1424630066','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3642','1424630066','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3643','1424630099','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3644','1424630099','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3645','1424630129','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3646','1424630129','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3647','1424630193','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3648','1424630194','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3649','1424630230','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3650','1424630230','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3651','1424630267','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3652','1424630268','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3653','1424630292','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3654','1424630292','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3655','1424630307','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3656','1424630307','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3657','1424630328','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3658','1424630328','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3659','1424630347','1','manager','5','4','Контакты ','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3660','1424630347','1','manager','27','4','Контакты ','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3661','1424689520','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3662','1424690639','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3663','1424690650','1','manager','27','12','Прокат скутеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3664','1424690793','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3665','1424690793','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3666','1424690839','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3667','1424690839','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3668','1424690867','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3669','1424690867','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3670','1424690904','1','manager','27','11','Прокат волосипедов Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3671','1424690917','1','manager','5','11','Прокат волосипедов Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3672','1424690919','1','manager','3','11','Прокат волосипедов Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3673','1424690920','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3674','1424690932','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3675','1424690934','1','manager','3','12','Прокат мотоциклов и скутеров Бровары Киев','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3676','1424690972','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3677','1424690996','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3678','1424690999','1','manager','3','12','Прокат мотоциклов и скутеров Бровары Киев','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3679','1424691057','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3680','1424691091','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3681','1424691093','1','manager','3','12','Прокат мотоциклов и скутеров Бровары Киев','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3682','1424697698','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3683','1424701757','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3684','1424701765','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3685','1424705399','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3686','1424705400','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3687','1424705485','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3688','1424705695','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3689','1424705695','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3690','1424705713','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3691','1424705728','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3692','1424705799','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3693','1424705800','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3694','1424705817','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3695','1424705827','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3696','1424705857','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3697','1424705858','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3698','1424705969','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3699','1424705969','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3700','1424706093','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3701','1424706791','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3702','1424706791','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3703','1424706821','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3704','1424706821','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3705','1424706891','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3706','1424706891','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3707','1424706913','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3708','1424706913','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3709','1424706925','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3710','1424706926','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3711','1424706938','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3712','1424706938','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3713','1424707063','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3714','1424707083','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3715','1424707085','1','manager','3','12','Прокат мотоциклов и скутеров Бровары Киев','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3716','1424707095','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3717','1424707148','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3718','1424707148','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3719','1424707166','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3720','1424707167','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3721','1424707189','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3722','1424707189','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3723','1424707211','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3724','1424707211','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3725','1424707269','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3726','1424707269','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3727','1424707286','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3728','1424707286','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3729','1424707299','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3730','1424707299','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3731','1424707310','1','manager','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('3732','1424707344','1','manager','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('3733','1424707359','1','manager','5','-','Прокат мотороллеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3734','1424707359','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3735','1424707395','1','manager','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('3736','1424707425','1','manager','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('3737','1424707430','1','manager','5','-','Прокат мопедов и аренда долгострочная','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3738','1424707430','1','manager','27','22','Прокат мопедов и аренда долгострочная','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3739','1424707467','1','manager','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('3740','1424707497','1','manager','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('3741','1424707505','1','manager','5','-','Прокат скутеров Киев и Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3742','1424707505','1','manager','27','23','Прокат скутеров Киев и Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3743','1424707563','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3744','1424707667','1','manager','27','23','Прокат скутеров Киев и Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3745','1424707680','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3746','1424707689','1','manager','27','23','Прокат скутеров Киев и Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3747','1424707696','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3748','1424707699','1','manager','27','23','Прокат скутеров Киев и Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3749','1424707816','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('3750','1424707955','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('3751','1424707956','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('3752','1424707980','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3753','1424707991','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3754','1424708021','1','manager','5','21','Прокат мотороллеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3755','1424708023','1','manager','3','21','Прокат мотороллеров Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3756','1424708049','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3757','1424708074','1','manager','5','21','Прокат мотороллеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3758','1424708075','1','manager','3','21','Прокат мотороллеров Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3759','1424708079','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('3760','1424708090','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('3761','1424708110','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3762','1424708166','1','manager','5','21','Прокат мотороллеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3763','1424708253','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3764','1424708269','1','manager','5','21','Прокат мотороллеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3765','1424708272','1','manager','3','21','Прокат мотороллеров Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3766','1424708287','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3767','1424708304','1','manager','5','21','Прокат мотороллеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3768','1424708306','1','manager','3','21','Прокат мотороллеров Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3769','1424708319','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3770','1424708398','1','manager','5','21','Прокат мотороллеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3771','1424708399','1','manager','3','21','Прокат мотороллеров Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3772','1424708402','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3773','1424708464','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3774','1424708473','1','manager','5','21','Прокат мотороллеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3775','1424708476','1','manager','3','21','Прокат мотороллеров Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3776','1424708476','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('3777','1424708487','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('3778','1424708519','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3779','1424708577','1','manager','5','21','Прокат мотороллеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3780','1424708579','1','manager','3','21','Прокат мотороллеров Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3781','1424708612','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3782','1424708624','1','manager','27','22','Прокат мопедов и аренда долгострочная','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3783','1424708633','1','manager','27','23','Прокат скутеров Киев и Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3784','1424708651','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3785','1424708681','1','manager','27','22','Прокат мопедов и аренда долгострочная','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3786','1424708688','1','manager','27','23','Прокат скутеров Киев и Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3787','1424708697','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3788','1424708702','1','manager','5','21','Прокат мотороллеров Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3789','1424708704','1','manager','3','21','Прокат мотороллеров Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3790','1424708706','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3791','1424708718','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3792','1424708763','1','manager','27','21','Прокат мотороллеров Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3793','1424708906','1','manager','27','22','Прокат мопедов и аренда долгострочная','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3794','1424708993','1','manager','27','23','Прокат скутеров Киев и Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3795','1424709045','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3796','1424709045','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3797','1424709069','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3798','1424709071','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3799','1424709082','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3800','1424709085','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3801','1424709171','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3802','1424709174','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3803','1424709177','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3804','1424709180','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3805','1424709183','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3806','1424709188','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3807','1424709195','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3808','1424709197','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3809','1424709198','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3810','1424709200','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3811','1424709201','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3812','1424709203','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3813','1424709209','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3814','1424709211','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3815','1424709213','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3816','1424709217','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3817','1424709226','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3818','1424709227','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3819','1424709271','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3820','1424709277','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3821','1424709280','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3822','1424709283','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3823','1424709299','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3824','1424710142','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3825','1424710237','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('3826','1424710237','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3827','1424710271','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3828','1424710330','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('3829','1424710330','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3830','1424710572','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('3831','1424710572','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3832','1424711527','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('3833','1424711527','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3834','1424711628','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('3835','1424711628','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3836','1424711808','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3837','1424711809','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3838','1424711888','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3839','1424711888','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3840','1424712248','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3841','1424712248','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3842','1424712364','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('3843','1424712364','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3844','1424712449','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3845','1424712449','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3846','1424712509','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('3847','1424712509','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3848','1424712656','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3849','1424712713','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3850','1424712715','1','manager','3','12','Прокат мотоциклов и скутеров Бровары Киев','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3851','1424712734','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3852','1424712747','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3853','1424712747','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3854','1424712768','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3855','1424712769','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3856','1424712788','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3857','1424712788','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3858','1424712844','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3859','1424712844','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3860','1424712898','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3861','1424712898','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3862','1424712993','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3863','1424712993','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3864','1424713187','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3865','1424713187','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3866','1424713233','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3867','1424713233','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3868','1424713334','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3869','1424713351','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3870','1424713351','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3871','1424713397','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3872','1424713397','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3873','1424713460','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3874','1424713460','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3875','1424713517','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3876','1424713518','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3877','1424713555','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3878','1424713556','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3879','1424713699','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3880','1424713699','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3881','1424713734','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3882','1424713734','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3883','1424713783','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3884','1424713783','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3885','1424713800','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3886','1424713800','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3887','1424713816','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3888','1424713817','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3889','1424713838','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3890','1424713838','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3891','1424713869','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3892','1424713869','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3893','1424713888','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3894','1424713888','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3895','1424713906','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3896','1424713906','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3897','1424713931','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3898','1424713931','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3899','1424713945','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3900','1424713945','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3901','1424713960','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3902','1424713960','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3903','1424713979','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3904','1424713979','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3905','1424713998','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3906','1424713999','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3907','1424719382','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3908','1424719496','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3909','1424719496','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3910','1424720095','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3911','1424720095','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3912','1424720129','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3913','1424720129','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3914','1424720153','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3915','1424720153','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3916','1424720233','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3917','1424720233','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3918','1424720349','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3919','1424720349','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3920','1424720575','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3921','1424720645','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3922','1424720645','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3923','1424720674','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3924','1424720674','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3925','1424720869','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3926','1424720869','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3927','1424720965','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3928','1424720965','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3929','1424721187','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3930','1424721187','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3931','1424721274','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3932','1424721274','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3933','1424721345','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3934','1424721346','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3935','1424721366','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3936','1424721366','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3937','1424721393','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3938','1424721393','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3939','1424721439','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3940','1424721440','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3941','1424721454','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3942','1424721454','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3943','1424721489','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3944','1424721489','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3945','1424721551','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3946','1424721551','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3947','1424721601','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3948','1424721601','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3949','1424721689','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3950','1424721689','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3951','1424721747','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3952','1424721747','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3953','1424721788','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3954','1424721788','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3955','1424721794','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3956','1424721797','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3957','1424721798','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3958','1424721800','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3959','1424721802','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3960','1424721805','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3961','1424721808','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3962','1424721810','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3963','1424721812','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3964','1424721816','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3965','1424721819','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3966','1424721822','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3967','1424721825','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3968','1424721827','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3969','1424721829','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3970','1424721848','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('3971','1424721848','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('3972','1424721870','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3973','1424721884','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3974','1424721884','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3975','1424721966','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3976','1424721967','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3977','1424726982','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3978','1424727235','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3979','1424727235','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3980','1424727268','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3981','1424727268','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3982','1424730056','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3983','1424730057','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3984','1424730098','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3985','1424730098','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3986','1424732643','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3987','1424732646','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3988','1424732650','1','manager','78','20','KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3989','1424732656','1','manager','97','20','Duplicate of KRU','Duplicate Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3990','1424732656','1','manager','78','22','Duplicate of KRU','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3991','1424732667','1','manager','79','22','KRU2','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3992','1424732667','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3993','1424732671','1','manager','78','22','KRU2','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3994','1424732689','1','manager','79','22','KRU2','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3995','1424732689','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3996','1424732694','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3997','1424732701','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3998','1424732703','1','manager','3','12','Прокат мотоциклов и скутеров Бровары Киев','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3999','1424733681','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4000','1424733829','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4001','1424733830','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4002','1424735235','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4003','1424735235','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4004','1424735297','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4005','1424735298','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4006','1424736276','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4007','1424736276','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4008','1424736335','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4009','1424736335','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4010','1424736574','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4011','1424736574','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4012','1424736669','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4013','1424736669','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4014','1424737076','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4015','1424737076','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4016','1424737114','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4017','1424737114','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4018','1424737152','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4019','1424737183','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4020','1424737253','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4021','1424737256','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4022','1424737276','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4023','1424737404','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4024','1424737404','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4025','1424738039','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4026','1424738039','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4027','1424738089','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4028','1424738089','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4029','1424738115','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4030','1424738115','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4031','1424738147','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4032','1424738147','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4033','1424738273','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4034','1424738273','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4035','1424738389','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4036','1424738389','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4037','1424738532','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4038','1424738533','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4039','1424738652','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4040','1424738688','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4041','1424738690','1','manager','3','2','Ремонт скутеров','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4042','1424738692','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4043','1424738762','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4044','1424738762','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4045','1424739105','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4046','1424739105','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4047','1424739252','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4048','1424739252','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4049','1424739276','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4050','1424739276','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4051','1424739301','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4052','1424739301','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4053','1424739366','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4054','1424739366','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4055','1424739540','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4056','1424739540','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4057','1424739604','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4058','1424739605','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4059','1424739678','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4060','1424739678','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4061','1424739708','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4062','1424739708','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4063','1424739753','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4064','1424739753','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4065','1424739785','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4066','1424739785','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4067','1424739831','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4068','1424739831','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4069','1424739856','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4070','1424739856','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4071','1424739893','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4072','1424739893','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4073','1424739930','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4074','1424739930','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4075','1424739958','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4076','1424739958','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4077','1424739995','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4078','1424739996','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4079','1424740033','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4080','1424740033','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4081','1424740107','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4082','1424740107','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4083','1424740177','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4084','1424740178','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4085','1424740201','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4086','1424740201','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4087','1424740247','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4088','1424740247','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4089','1424740336','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4090','1424740336','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4091','1424740385','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4092','1424740385','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4093','1424740416','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4094','1424740416','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4095','1424740539','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4096','1424740560','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4097','1424740560','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4098','1424740588','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4099','1424740589','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4100','1424740609','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4101','1424740609','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4102','1424740627','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4103','1424740627','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4104','1424740671','1','manager','5','12','Прокат мотоциклов и скутеров Бровары Киев','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4105','1424740672','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4106','1424740724','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4107','1424740768','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4108','1424740768','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4109','1424740961','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4110','1424740961','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4111','1424741012','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4112','1424741012','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4113','1424741067','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4114','1424741067','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4115','1424741090','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4116','1424741094','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4117','1424741095','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4118','1424741097','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4119','1424741100','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4120','1424741102','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4121','1424741216','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('4122','1424741216','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4123','1424741273','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4124','1424741276','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4125','1424741281','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4126','1424741282','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4127','1424741284','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4128','1424741287','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4129','1424741324','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('4130','1424741324','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4131','1424741400','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('4132','1424741400','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4133','1424797564','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4134','1424797571','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4135','1424797709','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4136','1424797709','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4137','1424797796','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4138','1424797796','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4139','1424797860','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4140','1424797860','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4141','1424797895','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4142','1424797896','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4143','1424798240','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4144','1424798262','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4145','1424798262','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4146','1424798298','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4147','1424798298','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4148','1424798343','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4149','1424798343','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4150','1424798537','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4151','1424798537','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4152','1424799054','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4153','1424799055','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4154','1424813426','1','manager','27','3','Ремонт велосипеда в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4155','1424813945','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4156','1424813947','1','manager','3','3','Ремонт велосипедов в г Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4157','1424813951','1','manager','27','12','Прокат мотоциклов и скутеров Бровары Киев','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4158','1424813986','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4159','1424813999','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4160','1424814006','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4161','1424814134','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4162','1424814134','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4163','1424814138','1','manager','27','11','Прокат волосипедов Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4164','1424814608','1','manager','5','11','Прокат велосипедов Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4165','1424814608','1','manager','27','11','Прокат велосипедов Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4166','1424817675','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4167','1424819542','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4168','1424819542','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4169','1424819751','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4170','1424819751','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4171','1424819923','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4172','1424819923','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4173','1424819960','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4174','1424819960','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4175','1424819981','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4176','1424819982','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4177','1424820022','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4178','1424820022','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4179','1424820164','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4180','1424820164','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4181','1424820207','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4182','1424820207','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4183','1424820320','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4184','1424820782','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4185','1424820782','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4186','1424820954','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4187','1424820954','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4188','1424821233','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4189','1424821234','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4190','1424821253','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4191','1424821253','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4192','1424821348','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4193','1424821348','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4194','1424821373','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4195','1424821374','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4196','1424821822','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4197','1424821822','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4198','1424821987','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4199','1424821987','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4200','1424822069','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4201','1424822069','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4202','1424822119','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4203','1424822119','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4204','1424822149','1','manager','5','3','Ремонт велосипедов в г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4205','1424822150','1','manager','27','3','Ремонт велосипедов в г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4206','1424822693','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4207','1424823091','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4208','1424823658','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4209','1424823659','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4210','1424876662','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4211','1424876665','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4212','1424876667','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4213','1424876670','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4214','1424876672','1','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4215','1424876676','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4216','1424876866','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('4217','1424876866','1','manager','31','-','/home/u406003031/public_html/assets/templates/Free Website Template Security Project/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4218','1424877461','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4219','1424877642','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4220','1424877821','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4221','1424877829','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4222','1424877829','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4223','1424878052','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4224','1424878052','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4225','1424878254','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4226','1424878255','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4227','1424878281','1','manager','5','2','Ремонт скутеров','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4228','1424878281','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4229','1424878414','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4230','1424879656','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4231','1424880065','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4232','1424880065','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4233','1424880662','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4234','1424880662','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4235','1424880695','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4236','1424880695','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4237','1424880721','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4238','1424880721','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4239','1424880768','1','manager','5','10','Ремонт ноутбуков и компьютеров г Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4240','1424880768','1','manager','27','10','Ремонт ноутбуков и компьютеров г Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4241','1424880802','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4242','1424881160','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4243','1424881160','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4244','1424881243','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4245','1424881243','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4246','1424881342','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4247','1424881342','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4248','1424881372','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4249','1424881373','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4250','1424881405','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4251','1424881405','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4252','1424881443','1','manager','5','16','Сантехник Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4253','1424881443','1','manager','27','16','Сантехник Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4254','1424884263','1','manager','27','11','Прокат велосипедов Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4255','1424884393','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4256','1424884399','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('4257','1424884425','1','manager','5','11','Прокат велосипедов Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4258','1424884426','1','manager','27','11','Прокат велосипедов Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4259','1424884501','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('4260','1424884526','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('4261','1424884548','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('4262','1424884551','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('4263','1424884597','1','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('4264','1424884615','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('4265','1424884859','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4266','1424885214','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4267','1424892427','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4268','1424894366','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4269','1424898154','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4270','1424898256','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4271','1424911744','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4272','1424937178','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4273','1424937325','1','manager','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4274','1424945924','1','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('4275','1424945934','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('4276','1424946292','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4277','1424946296','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4278','1424946301','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4279','1424946316','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4280','1424946317','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4281','1424946331','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4282','1424946346','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4283','1424946348','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4284','1424946371','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4285','1424946378','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4286','1424946380','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4287','1424946381','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4288','1424946393','1','manager','5','1','Сервисный центр Бровары','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4289','1424946395','1','manager','3','1','Сервисный центр Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4290','1424946755','1','manager','27','1','Сервисный центр Бровары','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4291','1424946763','1','manager','27','2','Ремонт скутеров','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4292','1424946928','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4293','1424946942','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('4294','1424946952','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('4295','1424946952','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4296','1424946972','1','manager','16','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('4297','1424946977','1','manager','20','9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','Saving template');
INSERT INTO `modx_manager_log` VALUES ('4298','1424946977','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4299','1424946984','1','manager','78','4','HEADER','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4300','1424946993','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4301','1424946998','1','manager','78','8','HEADER_PRODUCTS','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4302','1424947025','1','manager','79','8','HEADER_PRODUCTS','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4303','1424947025','1','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4304','1424947653','1','manager','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('4305','1424947678','1','manager','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('4306','1424947685','1','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('4307','1424948058','1','manager','93','-','-','Backup Manager');

# --------------------------------------------------------

#
# Table structure for table `modx_manager_users`
#

DROP TABLE IF EXISTS `modx_manager_users`;
CREATE TABLE `modx_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

#
# Dumping data for table `modx_manager_users`
#

INSERT INTO `modx_manager_users` VALUES ('1','manager','uncrypt>950bd56cc25d4fb57017d367aa14a693a992f4dd');

# --------------------------------------------------------

#
# Table structure for table `modx_member_groups`
#

DROP TABLE IF EXISTS `modx_member_groups`;
CREATE TABLE `modx_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_member_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_membergroup_access`
#

DROP TABLE IF EXISTS `modx_membergroup_access`;
CREATE TABLE `modx_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_membergroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_membergroup_names`
#

DROP TABLE IF EXISTS `modx_membergroup_names`;
CREATE TABLE `modx_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_membergroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_content`
#

DROP TABLE IF EXISTS `modx_site_content`;
CREATE TABLE `modx_site_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  KEY `typeidx` (`type`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

#
# Dumping data for table `modx_site_content`
#

INSERT INTO `modx_site_content` VALUES ('1','document','text/html','Сервисный центр Бровары','','','servisnyj_centr_brovary','','1','0','0','0','1','','<p><br /><br /></p>\n<p><span style=\"color: #000000;\">Сервисное обслуживание техники и средств передвижения теперь доступно в Броварах! Высококласные специалисты, работа на профессиональном оборудовании, качественные детали для замены и конечно же 100% гарантия на проделанные работы. Бросервис - это сервисное обслуживание вашей техники и транспорта доступное в г. Бровары.&nbsp;<img src=\"assets/images/service_brovari.png\" width=\"446\" height=\"353\" alt=\"сервис Бровары и в Броварах\" title=\"сервис Бровары обслуживание\" style=\"margin: 5px; float: right;\" /><br /></span></p>\n<p><span style=\"color: #000000;\"><strong>Сервисный центр Бровары</strong>&nbsp;Вroservice&nbsp;предоставляет в аренду велосипеды и мототехнику. Качественные мото и велосипеды, в исправном рабочем состоянии доступны для проката ежедневно. Большой выбор моделей, акционные предложения и упрощенные правила аренды благодаря которым за считанные минуты вы сможете укатить из нашего сервиса на встречу ветру и приятному времяпровождению.</span><br /><br /><span style=\"color: #000000;\">Для технического обслуживания, ремонта, проката или аренды мото- вело- ненужно ехать в Киев. Теперь все в твоем городе!</span><br /><span style=\"color: #000000;\">Ремонтные работы, обслуживание и аренда техники доступны Вам ежедневного, без перерывов и выходных.</span></p>\n<h2><span style=\"color: #000000;\">Перечень услуг которые предоставляет сервисный центр г Бровары</span></h2>\n<p><span style=\"color: #000000;\"> - Ремонт велосипедов и их техническое облуживание</span><br /><span style=\"color: #000000;\"> - Ремонт скутеров, мопедов, мотороллеров, мотоциклов, квадроциклов и прочей мототехники</span><br /><span style=\"color: #000000;\"> - Ремонт ноутбуков и компьютеров</span><br /><span style=\"color: #000000;\"> - Вызов квалифицированного сантехника и электрика</span><br /><span style=\"color: #000000;\"> А также услуги аренды:</span><br /><span style=\"color: #000000;\"> - Прокат велосипедов и самокатов</span><br /><span style=\"color: #000000;\"> - Прокат скутеров, мопедов и морололлеров</span><br /> <br /><span style=\"color: #000000;\"> Все это и многое другое теперь доступно вам в г. Бровары.&nbsp;Высококвалифицированные специалисты Вroservice&nbsp;оперативно и качественно проведут ремонтные работы Вашей техники и дадут консультацию по всем интересующим вас вопросам.&nbsp;По окончанию проведения работ, предоставляем гарантийное и послегарантийное обслуживание.</span></p>\n<h3><span style=\"color: #000000;\">Прокат и аренда которые дает сервисный центр Вroservice</span></h3>\n<p><span style=\"color: #000000;\"> Особенно популярный вид транспорта для поездок в теплый период времени мото. Предоставляем аренду скутеров, мопедов и мотороллеров в г. Бровары. Прокат скутера Бровары это услуга доступная каждому совершеннолетнему ездоку г. Бровары и Киевской области. </span></p>\n<p><span style=\"color: #000000;\">Преимущества которые дает прокат мопеда или скутера Бросервис в Броварах:</span><br /><span style=\"color: #000000;\"> - Для аренды и покатушек Вам ненужно ехать в Киев</span><br /><span style=\"color: #000000;\">- У нас упрощенная система сдачи мото в аренду</span><br /><span style=\"color: #000000;\"> - Мото это лучший транспорт для избежания надоедливых пробок</span><br /><span style=\"color: #000000;\"> - Качественный, рабочий мототранспорт в исправности которого вы можете всегда быть уверенны</span><br /><span style=\"color: #000000;\"> - Дополнительная услуга - Доставки мото к вам по адресу</span></p>\n<p><span style=\"color: #000000;\">Аренда скутера в г Бровары, это уникальная возможность эффектно покатать, круто провести время и получить несравнимое удовольствие от качественной езды на мото.&nbsp;</span></p>\n<h3><span style=\"color: #000000;\">Прокат велосипедов Бровары которые предоставляет сервисный центр Бросервис</span></h3>\n<p><span style=\"color: #000000;\">Зарядиться позитивом, получить максимум положительных эмоций и заряда бодрости, а так же для комфортного перемещения по красивым окресностям города и лесов - прокат велосипедов в г Бровары. Предлагаем в аренду большой выбор моделей велосипедов, разнообразных&nbsp;производителей. Для Вашего удобства предоставляется доставка велосипеда к вам по адресу, или же вы можете забрать любой понравившийся Вам велосипед в нашем сервисном центре Бросервис, который находится в городе Бровары.&nbsp;Все велосипеды в рабочем, исправном состоянии, а это значит что вы можете не переживать за комфорт и безопасность вашей езды!</span><br /><span style=\"color: #000000;\">Обращайтесь, и мы сделаем все для вашего классного времяпровождения и решения технических проблем вашего транспорта!<br /><br /><img src=\"assets/images/servisni_centr_brovari.jpg\" width=\"870\" height=\"295\" alt=\"сервисный центр Бровары и области\" title=\"прокат и сервисный центр Бровары \" style=\"margin-top: 5px; margin-bottom: 5px;\" /><br /></span></p>\n<p class=\"justifyleft\"><span style=\"font-weight: bolder; color: #000000;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size: 220%;\">BroService.com.ua</span></span></p>','1','3','1','1','1','1','1130304721','1','1424946393','0','0','0','1423561336','1','О сервисе','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('2','document','text/html','Ремонт скутеров','Ремонт скутеров','','remont-skuterov','','1','0','0','0','0','','<p align=\"justify\"><img src=\"assets/images/remont_skyterov_moto.jpg\" width=\"445\" height=\"230\" style=\"margin: 5px 17px; float: left;\" class=\"justifyleft\" alt=\"ремонт скутеров г Бровары\" title=\"ремонт скутеров Бровары и мототехники\" />Сервисный цент по ремонту скутеров, мопедов, мотороллеров, квадроциклов, мотоциклов расположен в городе Бровары. Производим любые виды технических работ по ремонту и обслуживанию Вашей техники!&nbsp;<br /><br />Возможен выездной&nbsp;<strong>ремонт скутеров</strong>&nbsp;и прочей мототехники в г. Киев, а так же срочный выезд за город в случае поломки и экстренной необходимости в починке или эвакуации вашего транспорта.&nbsp;При заказе любых услуг мастерской вы получаете&nbsp;гарантиное и послегарантийное обслуживание вашей техники (скутера, мопеда, мотоцикла и прочей мототехники)!</p>\n<h2>Срочный ремонт скутеров и мототехники в Киев и Броварах</h2>\n<p align=\"justify\">Дороги Киевской области, в частности Киева и Броваров оставляют желать лучшего, по этой причине ремонт и диагностику мототехники важно совершать вовремя, а лучше заранее. Теперь для этого вы всегда можете обратиться в мастерскую Broservice находящуюся&nbsp;в г. Бровары.&nbsp;Свою работу мы выполняем вовремя, а главное для вашей безопасности!&nbsp;После получения заказа, мастер по ремонту в городе Бровары качественно и оперативно проведет диагностику вашей техники, и в случае необходимости замены деталей, мы подберем для вас хорошего производителя по доступной цене.&nbsp;Регулярное сервисное обслуживание, своевременный ремонт, а главное использование качественных запчастей и масел значительно повышают надежность и долговечность работы вашего мото.<br /><img src=\"assets/images/broservice.jpg\" width=\"555\" height=\"127\" style=\"vertical-align: middle; margin: 5px auto; display: block;\" alt=\"ремонт мототехники Бросервис\" title=\"ремонт мотоциклов Бросервис\" />Ремонтная мастерская Broservice дает гарантию на проведенные работы и детали купленные в мастерской по ремонту скутеров и мототехники. Сервисное обслуживание и диагностика мототранспорта это принципы бережного ухода за мото которые стоит регулярно выполнять для исправной работы двигательной системы, и безопасности Вашей езды!&nbsp;</p>\n<h3 align=\"justify\">Ремонт скутеров и остальные виды ремонтрых работ которые выполняет Бросервис</h3>\n<p align=\"justify\"><img src=\"assets/images/remont_motociklov.jpg\" width=\"454\" height=\"303\" style=\"float: left; margin: 5px 16px;\" alt=\"ремонт мотоциклов Бровары\" title=\"ремонт мотоциклов в г Бровары от Бросервис\" />- Техническое обслуживание скутеров, мотоциклов, <br />мотороллеров, квадроциклов, мопедов<br />- Диагностика техники<br /><span style=\"font-size: 12px; line-height: 1.5; text-align: left;\">- Арматурные работы<br /></span>- Замена изнашивающихся деталей<br /><span style=\"font-size: 12px; line-height: 1.5; text-align: left;\">- Замена деталей тормозной системы<br /></span>- Замена электрооборудования<br />- Ремонт/замена подвески<br />- Хромирование деталей<br />- Перекрасивание и апгрей&nbsp;<br />- Тюнинг и обклейка<br />- Р<span>емонт | замена цилиндро - поршневой группы<br /><span>- Ремонт | замена коленвала</span><br /><span>- Замена коренных подшипников</span><br /></span></p>\n<p align=\"justify\"><span>В своей работе мы придерживаемся главного правила - Качество залог долговечности и исправности механизмов! Вы всегда можете быть уверенны в ремонте Бросервис!&nbsp;Задать вопрос или проконсультироваться по поводу ремонта скутера, мотоцикла, квадроцикла, мотороллера, мопеда нужно по телефону&nbsp;093-270-46-96.&nbsp;<span>Обращайтесь, и мы обязательно приведем в порядок вашу технику!&nbsp;</span></span></p>\n<hr />\n<p align=\"justify\">{{KRU}}\n<table border=\"0\" style=\"width: 905px; height: 70px;\">\n<tbody>\n<tr>\n<td style=\"font-size: 18px; font-weight: bolder; text-align: center;\">\n<p class=\"justifyleft\" style=\"font-size: 18px; font-weight: bolder; text-align: center;\">&nbsp;High Performance</p>\n</td>\n<td style=\"font-size: 18px; font-weight: bolder; text-align: center;\">\n<p style=\"font-size: 18px; font-weight: bolder; text-align: center;\">High Performane</p>\n</td>\n<td style=\"font-size: 18px; font-weight: bolder; text-align: center;\">\n<p style=\"font-size: 18px; font-weight: bolder; text-align: center;\">High Performance</p>\n</td>\n</tr>\n<tr>\n<td style=\"text-align: center;\">\n<p class=\"justifyleft\">Тюнинг, замена деталей,&nbsp;<span>Тюнинг, замена деталей,&nbsp;</span><span>Тюнинг, замена деталей,</span><span><br /></span></p>\n</td>\n<td style=\"text-align: center;\">\n<p><span>Тюнинг, замена деталей,&nbsp;</span><span>Тюнинг, замена деталей,&nbsp;</span><span>Тюнинг, замена деталей,&nbsp;</span></p>\n</td>\n<td style=\"text-align: center;\">\n<p><span>Тюнинг, замена деталей,&nbsp;</span><span>Тюнинг, замена деталей,&nbsp;</span><span>Тюнинг, замена деталей,&nbsp;</span></p>\n</td>\n</tr>\n</tbody>\n</table>','1','9','2','1','1','1','1423136496','1','1424878280','0','0','0','1423936108','1','Ремонт скутеров','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('3','document','text/html','Ремонт велосипедов в г Бровары','Ремонт велосипеда','','remont_velosipedov_v_g_brovary','','1','0','0','0','0','','<p><img src=\"assets/images/remont_velosipedov.png\" width=\"880\" height=\"236\" style=\"vertical-align: middle; margin-top: 5px; margin-bottom: 5px; display: block;\" alt=\"ремонт велосипеда и тех обслуживание\" title=\"обслуживание и ремонт велосипеда\" />Профессиональная велосипедная мастерская Broservice проводит оперативные и качественные ремонтные работы велосипедов, а так же регулярное техническое обслуживание велосипедов всех моделей. &nbsp;<strong>Ремонт велосипеда</strong> в г Бровары, замена изнашиваемых частей, техническое обслуживание и тюнинг &ndash; все это Вы можете совершить в нашей мастерской \"Бросервис\" в г. Бровары.</p>\n<p><span style=\"color: #111111; font-size: 1.5em; letter-spacing: 1px; line-height: 1.5;\">Профессиональный ремонт велосипедов в г Бровары</span></p>\n<p align=\"justify\">Вело мастера&nbsp;Broservice сделают ремонт и обслуживание Вашего велосипеда на высшем уровне!&nbsp;В своей работе мы используем высококачественные инструменты и приборы, что позволяет увеличивать срок эксплуатации устанавливаемых деталей, а так же улучшает качество тех. обслуживания велосипеда.</p>\n<p align=\"justify\">Чтобы ваша езда была приятной и безопасной, стоит заранее позаботиться о хорошем состоянии своего велосипеда. Для этого наш сервис велосипедов в г.Бровары предлагаем широкий спектр услуг:</p>\n<p><img src=\"assets/images/viravnivanie_vosmerok_brovary.jpg\" width=\"420\" height=\"148\" style=\"float: left; margin: 5px 10px;\" alt=\"ремонт велосипедов Киев и Бровары\" title=\"ремонт велосипедов Киев Бровары ежедневно\" /></p>\n<p align=\"justify\">- Ремонт велосипеда | Работаем со всеми марками велосипедов, моделями и производителями, в не зависимости от сложности поломки или необходимой замены деталей.<br /> - Профилактический ремонт и обслуживание велосипедов | Сезонное обслуживание. Смазка цепи и всех движущих деталей, регулировка руля, тормозных ручек, настройка переключателей и прочее.<br /> - Сбор Вашего велосипеда. <br /> - Тюнинг и модернизация велосипеда.</p>\n<p align=\"justify\">Так же предоставляем комплексную услугу категории &laquo;техобслуживание велосипеда&raquo; - полная переборка велосипеда и профилактика перед началом сезона!&nbsp;Такая услуга включает в себя полную диагностику, пересмотр всех деталей, тщательную настройку, подтяжку и смазку высококачественным маслом всех компонентов строения вашего велосипеда. Так же, подтяжка, настройка и исправление выкривлений (восьмерок).</p>\n<p align=\"justify\"><img src=\"assets/images/remont_velosipedov_brovary.jpg\" width=\"880\" height=\"310\" style=\"vertical-align: middle; margin: 5px auto; display: block;\" alt=\"велоремонт Киев от Бросервис \" title=\"Бросервис велоремонт Киев и Бровары\" /></p>\n<p align=\"justify\">Ремонт велосипедов и их сервисное обслуживание мы совершаем ежедневно, поэтому обращайтесь в любое время!<br /><span>*** Велосипедная мастерская принимает к обслуживанию ТОЛЬКО чистые велосипеды! Спасибо за понимание!</span></p>\n<hr />\n<p><br /> {{KRU}}\n<table border=\"0\" style=\"width: 905px; height: 70px;\">\n<tbody>\n<tr>\n<td>\n<p class=\"justifyleft\">&nbsp;High Performance</p>\n<p class=\"justifyleft\"></p>\n</td>\n<td style=\"text-align: center;\">\n<p>High Performance</p>\n<p></p>\n</td>\n<td style=\"text-align: center;\">\n<p>High Performance</p>\n<p></p>\n</td>\n</tr>\n</tbody>\n</table>','1','9','3','1','1','1','1423136551','1','1424822149','0','0','0','1423140257','1','Ремонт велосипедов','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('4','document','text/html','Контакты ','Контакты','','kontakty','','1','0','0','0','0','','<table border=\"0\">\n<tbody>\n<tr>\n<td colspan=\"4\"><img src=\"assets/images/kontakti_service.png\" width=\"899\" height=\"160\" style=\"vertical-align: middle;\" /></td>\n</tr>\n<tr valign=\"top\">\n<td style=\"font-size: 16px; font-weight: bolder; color: #e67f18;\" class=\"justifyleft\">&nbsp; Принимаем заявку</td>\n<td style=\"font-size: 16px; font-weight: bolder; color: #e67f18;\" class=\"justifyleft\">&nbsp; &nbsp; &nbsp; Выезжаем к Вам&nbsp;<br />&nbsp; &nbsp; &nbsp;домой или в офис</td>\n<td style=\"font-size: 16px; font-weight: bolder; color: #e67f18;\" class=\"justifyleft\">&nbsp; &nbsp; &nbsp;Делаем ремонт</td>\n<td style=\"font-size: 16px; font-weight: bolder; color: #e67f18; text-align: center;\">&nbsp;Вы производите <br />рассчет за ремонт</td>\n</tr>\n</tbody>\n</table>\n<table border=\"0\" style=\"font-weight: bolder; width: 1047px; height: 466px;\" align=\"left\">\n<tbody style=\"font-weight: bolder;\">\n<tr align=\"left\" valign=\"top\" style=\"font-weight: bolder; height: 11px;\">\n<td style=\"font-weight: bolder;\">\n<p style=\"font-weight: bolder;\"><span style=\"font-weight: bolder; color: #000000;\">г.Бровары 07400 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BroService.com.ua &nbsp;</span></p>\n<p style=\"font-weight: bolder;\" dir=\"rtl\"><span style=\"color: #000000;\">Life/Viber: &nbsp;093 270 46 96 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Kievstar : &nbsp;097 000 174 </span><span style=\"font-weight: bolder; color: #000000;\">Email:&nbsp;<a href=\"mailto:info@broservice.com.ua\"><span style=\"color: #000000;\">info@broservice.com.ua</span></a></span></p>\n<p><span style=\"color: #000000;\"><img src=\"assets/images/Service4-(1).png\" width=\"204\" height=\"166\" /></span></p>\n<p><span style=\"color: #000000;\">24 часа аварийной буксировки&nbsp;</span><br /><span style=\"color: #000000;\">понедельник - пятница: 8:30 - 21:00&nbsp;</span></p>\n<p><span style=\"color: #000000;\">Лучший сервис в Броварах!</span></p>\n<p><br /><br /></p>\n</td>\n<td><span style=\"color: #000000;\"><iframe width=\"803\" height=\"419\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2537.8306312359236!2d30.758616!3d50.5001099!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4dbd2bc4008fb%3A0x8260f98471929a9a!2z0LLRg9C7LiDQp9C10LvRjtGB0LrRltC90LAsIDE1LCDQkdGA0L7QstCw0YDQuCwg0JrQuNGX0LLRgdGM0LrQsCDQvtCx0LvQsNGB0YLRjCwg0KPQutGA0LDQuNC90LA!5e0!3m2!1sru!2sru!4v1424429867054\" frameborder=\"0\"></iframe></span></td>\n</tr>\n<tr align=\"left\" valign=\"top\" style=\"font-weight: bolder; height: 11px;\">\n<td style=\"font-weight: bolder;\" colspan=\"2\">\n<p style=\"font-weight: bolder;\"></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p><br /><br /></p>\n<p></p>\n<p></p>','1','10','10','1','1','1','1423136596','1','1424630347','0','0','0','1423513916','1','Контакты','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('18','document','text/html','Быстро!','Быстро','','bystro','','1','0','0','1','0','Оперативное выполнение работ любой сложности. Так же услуга \"срочный ремонт\" с возможностью выезда специалиста.\nМы ценим Ваше время!','','1','3','0','1','1','1','1423732681','1','1424561229','0','0','0','1423732703','1','','0','0','0','0','0','0','1','1');
INSERT INTO `modx_site_content` VALUES ('19','document','text/html','Качественно!','Качественно','','kachestvenno','','1','0','0','1','0','Вся работа выполняется на современном профессиональном оборудовании. Оперативно и надежно приведем Вашу технику в рабочее состояние! ','','1','3','1','1','1','1','1423732719','1','1424561258','0','0','0','1423732719','1','','0','0','0','0','0','0','1','1');
INSERT INTO `modx_site_content` VALUES ('20','document','text/html','Надежно!','Надежно ','','nadezhno','','1','0','0','1','0','Предоставляем сервисное гарантийное и послегарантийное обслуживание. Выполняем все виды работ первоклассно и на долго!','','1','3','2','1','1','1','1423732931','1','1424561263','0','0','0','1423732931','1','','0','0','0','0','0','0','1','1');
INSERT INTO `modx_site_content` VALUES ('16','document','text/html','Сантехник Бровары','Сантехник','Сантехник','santehnik_brovary','','1','0','0','0','0','','<p align=\"justify\">Необходима установка новой сантехники, протекает кран или трубопровод засорился через край? Вызов сантехника в г Бровары займет всего несколько минут, зато дело будет сделано навсегда.&nbsp;В сервисном центре Бросервис <strong>сантехник Бровары</strong>&nbsp;оперативно и качетсвенно проведет ремонтные и установочные работы. Благодаря профессиональным услугам сантехника, вы на долгое время обеспечите себе надежную работу оборудования, а так же будете наслаждаться новейшей сантехникой за особенно приемлемую плату.</p>\n<p><img src=\"assets/images/santehnik_brovari.png\" width=\"336\" height=\"314\" style=\"margin: 5px 18px; float: right;\" /></p>\n<h2>Квалифицированный сантехник г Бровары&nbsp;круглосуточно и без выходных</h2>\n<p align=\"justify\">Сервисный центр Бросервис предоставляет к Вашим услугам высоквалифицированных специалистов. Вызов сантехника на дом позволит избежать Вам многих проблем с ремонтом и установкой (или заменой) сантехники, проведет диагностику тем самым предотвратив поломки которые могут привести к фатальным последствиям.</p>\n<p></p>\n<p align=\"justify\">Профессиональный опрятный, а главное трезвый сантехник в Броварах выполнит поставленную задачу качественно, оперативно и выдаст гарантию на услуги. Это в десятки раз лучше, чем сутками ждать сотрудника ЖЭКа, последствиям работы которого не всегда можно доверять.&nbsp;Сантехники слубжы Вroservice это специалисты с многолетним стажем, которые отлично разбираються в особенностях и разновидностях сантехнического оборудования, и выполняют работу по реальной стоимости без накруток.&nbsp;Свою работу мы делаем качественно, а качество - гаратния долговечности!<br />Все вопросы касательно ремонта и переустановки сантехники важно решать вовремя, а лучше заранее. Поэтому заказать услуги сантехника в нашем сервисном центре вы можете в любое время. Просто позвоните нам.&nbsp;</p>\n<p align=\"justify\"></p>\n<p align=\"justify\">Предлагаем полный комплекс сантехнических работ в городе Бровары:<br />- установка водонагревателя,&nbsp;рукомойников, моек,&nbsp;биде, фильтров,&nbsp;полотенцесушителей,&nbsp;батарей,&nbsp;гребенок<br />- установка или щамена унитазов<br />- замена или установка смесителей, ванны и душевых кабин<br />- монтаж и диагностика теплого пола<br />- замена и ремонт радиаторов<br />- установка, подключение и диагностика стиральных машин<br />- установка, подключение и диагностика&nbsp;посудомоющей машины<br />- замена труб (и их мелкий ремонт)<br />- прочистка канализации<br />- мелкий ремонт прочих деталей</p>\n<p align=\"justify\">Сантехник в г Бровары работает ежедневно. Оперативный выезд мастера Бросервис по звонку!</p>\n<p></p>\n{{KRU}}\n<table border=\"0\" style=\"width: 905px; height: 70px;\">\n<tbody>\n<tr>\n<td>\n<p class=\"justifyleft\">&nbsp;High Performance</p>\n<p class=\"justifyleft\"></p>\n</td>\n<td style=\"text-align: center;\">\n<p>High Performance</p>\n<p></p>\n</td>\n<td style=\"text-align: center;\">\n<p>High Performance</p>\n<p></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p></p>\n<p></p>','1','9','5','1','1','1','1423513948','1','1424881436','0','0','0','1423735580','1','Сантехник','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('10','document','text/html','Ремонт ноутбуков и компьютеров г Бровары','Ремонт ноутбуков ','','remont_noutbukov_i_kompyuterov_g_brovary','','1','0','0','0','0','','<p align=\"justify\"><br />Тотальная ошибка и катастрофическая поломка не должны ввести вас в панику или доставить какие-то неудобства с транспортировкой ПК в Киев - теперь вам доступен&nbsp;<strong>ремонт ноутбуков Бровары</strong> в сервисном центре Бросервис. Мы делаем все супер быстро и супер качественно! Сервисный центр Вroservice проводит регулярные ремонтные работы всех видов ПК. Ремонт ноутбука и ремонт компьютера самые частые виды нащих работ.</p>\n<p><img src=\"assets/images/remont_noytbykov.png\" width=\"258\" height=\"348\" style=\"float: right; margin: 5px 18px;\" /></p>\n<p style=\"text-align: justify;\"></p>\n<h2>Оперативный ремонт ноутбуков г Бровары</h2>\n<p align=\"justify\">Бросервис предлагает Вам профессиональную и высококачественную работу по ремонту, диагностике и ангрейду вашего компьютера или ноутбука. Выполняем все виды работ в максимально короткие сроки! Минимальные заказы серии: установка програмного обеспечения, установка и переустановка операционных систем (Windows, Linux, Mac OS), настройка и подключение&nbsp;Wi-Fi роутера и тд, выполняються в течении нескольки часов после Вашего заказа.</p>\n<p align=\"justify\">При поломке компьютера и важнейшей необходимости&nbsp;в его срочной починке, предлагаем выезд мастера Бросервис к Вам на дом. Именно поэтому ремонт ноутбуков и компьютеров в г Бровары так важны и полезны для наших клиентов.<br /><br /></p>\n<p align=\"justify\">Стандарные услуги которые предоставляет мастер по ремонту компьютера: диагностика, проверка аппаратного и програмного обеспечения ПК, подбор и установка подходящих для вашего ПК драйверов, всегда значительно улучшают работу компьютера и максимльно увеличивают скорость загрузки страниц в Интернете, а главное скорость работы програм на компьютере.&nbsp;</p>\n<p align=\"justify\">Так же выполяем сложные технические работы по ремонту или замене шнуров, материнской планы, кулера, системы охлаждения, ремонт внешнего блока питания, спасение при заливании жидкостью, замена деталей компьютера-ноутбука и прочее. Ремонт компьютеров в Броварах специалистами Бросервис это оперативная работа и ее гарантия на договечность!</p>\n<p>Мы выполняем не только ремонт ноутбуков в г Бровары но и такие услуги:</p>\n<p align=\"justify\">- Восстановление данных<br />- Удаление вирусов<br />- Установка Windows<br />- Установка всех видов программ<br />- Полная диагностика<br />- Замена клавиатуры ноутбука<br />- Замена матрицы<br />- Ремонт видеокарты<br />- Ремонтные работы блока питания<br />- Чистка ПК от пыли и загрязнений<br />- Установка и настройка Wi-Fi роутера</p>\n<p>Обращайтесь в любое время и мы оперативно, а главное качественно вернем к работе ваш ноутбук, прямо у вас дома!</p>\n{{KRU}}\n<table border=\"0\" style=\"width: 905px; height: 70px;\">\n<tbody>\n<tr>\n<td>\n<p class=\"justifyleft\">&nbsp;High Performance</p>\n<p class=\"justifyleft\"></p>\n</td>\n<td style=\"text-align: center;\">\n<p>High Performance</p>\n<p></p>\n</td>\n<td style=\"text-align: center;\">\n<p>High Performance</p>\n<p></p>\n</td>\n</tr>\n</tbody>\n</table>','1','9','4','1','1','1','1423156260','1','1424880767','0','0','0','1423156300','1','Ремонт ПК и ноутбуков','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('11','document','text/html','Прокат велосипедов Бровары','Прокат велосипедов Бровары','Прокат велосипедов Бровары','prokat-volosipedov-brovary','','1','0','0','0','0','','','1','9','6','1','1','1','1423236866','1','1424884425','0','0','0','1423236873','1','Прокат велосипедов','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('12','document','text/html','Прокат мотоциклов и скутеров Бровары Киев','Прокат мотоциклов и скутеров Бровары Киев','Прокат мотоциклов и скутеров Бровары Киев','prokat_motociklov_i_skuterov_brovary_kiev','','1','0','0','0','1','','<p align=\"justify\">Медленно ходишь? Быстрее поедишь! Бери в прокат мотоцикл, мотороллер, скутер или мопед и кати на встречу ветру!&nbsp;В насыщенной городской суете мото это залог сбережения времени, комфорта и красоты очущений! Легкость передвижения и отсутсвие преград при езде в виде пробок, это плюсы которые может подарить вам только мото, и никакой другой вид транспорта его не заменит. Для езды по городу, для езды за городом, для поездок на природу и по лсным тропинкам мото это лучший транспорт! Выбирайте прокат мототехники и <strong>прокат мотоциклов</strong>&nbsp;в г.Киев и г. Бровары.</p>\n<h2>Прокат мотоциклов скутеров мопедов Бровары</h2>\n<p><img src=\"assets/images/mo.jpg\" width=\"440\" height=\"282\" style=\"float: right; margin: 5px 16px;\" /></p>\n<p align=\"justify\">Окресности Киевской области преобладают неимоверными красотами, разнообразием ландшавтов, архитектур и исторических мест. Одним из красивых пригородов Киева являются Бровары. Прогулки на свежем воздухе в лесу, или выезд к озерам это лучшие места для отдыха от городской суеты и именно для того чтоб лешить Вас ненужно суеты мы открыли прокат мопедов, мотоциклов, мотороллеров, скутеров и квадроциклов в г. Бровары.</p>\n<p align=\"justify\">Для ежедневных поездок, выезда на мероприятия или просто чтоб круто покатать вам нужна аренда скутера сервисного центра Бросервис. При аренде мопедов, аренде скутеров, а так же если Вам нужна аренда мотоцикла, мы предоставляем особенно удобные и упрощенне условия для сдачи этого транспорта в прокат!<br /><br /></p>\n<p align=\"justify\">Окресности Киевской области преобладают неимоверными красотами, разнообразием ландшавтов, архитектур и исторических мест. Одним из красивых пригородов Киева являются Бровары. Прогулки на свежем воздухе в лесу, или выезд к озерам это лучшие места для отдыха от городской суеты и именно для того чтоб лешить Вас ненужно суеты мы открыли прокат мопедов, мотоциклов, мотороллеров, скутеров и квадроциклов в г. Бровары.</p>\n<p align=\"justify\">Для ежедневных поездок, выезда на мероприятия или просто чтоб круто покатать вам нужна аренда скутера сервисного центра Бросервис. При аренде мопедов, аренде скутеров, а так же если Вам нужна аренда мотоцикла, мы предоставляем особенно удобные и упрощенне условия для сдачи этого транспорта в прокат!</p>\n{{KRU2}}\n<table border=\"0\" style=\"width: 973px; height: 44px;\">\n<tbody>\n<tr>\n<td>\n<p>&nbsp; &nbsp;<a href=\"prokat_skuterov_kiev_i_brovary.html\" class=\"link-3\" title=\"Узнайте про наличие и прокат скутеров в г Бровары\" style=\"font-size: 20px; font-weight: bolder;\">Прокат скутеров</a></p>\n</td>\n<td>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"prokat_mopedov_i_arenda_dolgostrochnaya.html\" class=\"link-3\" title=\"Узнайте про прокат мопедов в г Бровары\" style=\"font-size: 20px; font-weight: bolder;\">Прокат мопедов</a></p>\n</td>\n<td>\n<p class=\"justifyleft\"><a href=\"prokat_motorollerov_brovary.html\" class=\"link-3\" title=\"Узнайте про прокат мотороллеров в г Бровары\" style=\"font-size: 20px; font-weight: bolder;\">Прокат мотороллеров</a></p>\n</td>\n</tr>\n</tbody>\n</table>\n<hr />\n<h3 align=\"justify\"></h3>\n<h3 align=\"justify\">Условия при которых возможен прокат мотоциклов, мопедов, мотороллеров и скутеров</h3>\n<p align=\"justify\">- Абсолютно трезвое состояние водителя! И это гланое условие.&nbsp;<br />&nbsp; Чтобы взять мото вы должно быть абсолютно трезвы (NO алко-, NO&nbsp;нарко-)!<br />- Прокат возможен только при наличии навыков воздения у арендатора.<br />- Вам должно быть не мение 18 лет!<br />- Иметь при себе паспорт + водительские права. Права обязательны для некоторых видов мото.&nbsp;<br />Для аренды скутера или мотороллера достаточно уметь водить. Права будут дополнительным бонусом при аренде.<br />- Сумма залога или документ (обсуждается по телефону, во время заказа)<br />- Отличное настроение! С ним езда будет еще лучше! =)</p>\n<p align=\"justify\">Что вы получаете при аренде мото из сервиса Broservice:<br />- Отличные, исправные мото с полным баком<br />- Шлемы<br />- Чистые подшлемники<br />- Карта местности и аптечка<br />- Инструктаж и позитивный настрой на день!&nbsp;</p>\n<hr />\n<p><span>Вся мототехника выдается по предварительному обсуждению и записи. Передавая мото в аренду, мы полностью уверенным что наша техника Вас не подведет во время эксплуатации и доставит только удовольствие. Звоните и мото в ваших руках!</span></p>\n<p><img src=\"assets/images/motorbike.jpg\" width=\"900\" height=\"405\" style=\"vertical-align: middle;\" /></p>\n<p></p>\n<p></p>\n<p></p>','1','9','7','1','1','1','1423236918','1','1424740671','0','0','0','1423236923','1','Прокат мопедов и мотоциклов','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('15','document','text/html','Сантехник Бровары','Сантехник Бровары','Сантехник Бровары','santehnik-brovary','','0','0','0','0','0','','','1','3','8','1','1','1','1423513029','1','1424458937','0','0','0','0','0','Сантехник Бровары','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('21','document','text/html','Прокат мотороллеров Бровары','','','prokat_motorollerov_brovary','','1','0','0','12','0','','','1','9','9','1','1','1','1424707352','1','1424708702','0','0','0','1424707352','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('22','document','text/html','Прокат мопедов и аренда долгострочная','','','prokat_mopedov_i_arenda_dolgostrochnaya','','1','0','0','12','0','','','1','9','9','1','1','1','1424707430','1','1424707430','0','0','0','1424707430','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('23','document','text/html','Прокат скутеров Киев и Бровары','','','prokat_skuterov_kiev_i_brovary','','1','0','0','12','0','','','1','9','9','1','1','1','1424707504','1','1424707504','0','0','0','1424707504','1','','0','0','0','0','0','0','0','1');

# --------------------------------------------------------

#
# Table structure for table `modx_site_content_metatags`
#

DROP TABLE IF EXISTS `modx_site_content_metatags`;
CREATE TABLE `modx_site_content_metatags` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `metatag_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `metatag_id` (`metatag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reference table between meta tags and content';

#
# Dumping data for table `modx_site_content_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_htmlsnippets`
#

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;
CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `modx_site_htmlsnippets`
#

INSERT INTO `modx_site_htmlsnippets` VALUES ('1','mm_rules','Default ManagerManager rules.','0','2','0','// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n\nmm_widget_showimagetvs(); // Показываем превью ТВ\n\nmm_renameField(\'log\', \'Дочерние ресурсы отображаются в дереве\');\nmm_changeFieldHelp(\'log\', \'Это поле используется для папок с большим числом вложенных страниц\');\n\nmm_createTab(\'Для SEO\', \'seo\', \'\', \'\', \'\', \'\');\nmm_moveFieldsToTab(\'titl,keyw,desc,seoOverride,noIndex,sitemap_changefreq,sitemap_priority,sitemap_exclude\', \'seo\', \'\', \'\');\nmm_widget_tags(\'keyw\',\',\'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n\n\n//mm_createTab(\'Изображения\', \'photos\', \'\', \'\', \'\', \'850\');\n//mm_moveFieldsToTab(\'images,photos\', \'photos\', \'\', \'\');\n\n//mm_hideFields(\'longtitle,description,link_attributes,menutitle,content\', \'\', \'6,7\');\n\n//mm_hideTemplates(\'0,5,8,9,11,12\', \'2,3\');\n\n//mm_hideTabs(\'settings, access\', \'2\');\n\n//mm_widget_evogallery(1, Галерея, \'1,2,3\', 3);   // подключаем галерею \n//mm_galleryLink($fields, $roles, $templates, $moduleid);\n//mm_widget_evogallery($moduleid, $title, $roles, $templates);\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('2','WebLoginSideBar','WebLogin Tpl','0','3','0','<!-- #declare:separator <hr> -->\n<!-- login form section-->\n<form method=\"post\" name=\"loginfrm\" action=\"[+action+]\">\n    <input type=\"hidden\" value=\"[+rememberme+]\" name=\"rememberme\" />\n    <fieldset>\n        <h3>Your Login Details</h3>\n        <label for=\"username\">User: <input type=\"text\" name=\"username\" id=\"username\" tabindex=\"1\" onkeypress=\"return webLoginEnter(document.loginfrm.password);\" value=\"[+username+]\" /></label>\n    	<label for=\"password\">Password: <input type=\"password\" name=\"password\" id=\"password\" tabindex=\"2\" onkeypress=\"return webLoginEnter(document.loginfrm.cmdweblogin);\" value=\"\" /></label>\n    	<input type=\"checkbox\" id=\"checkbox_1\" name=\"checkbox_1\" tabindex=\"3\" size=\"1\" value=\"\" [+checkbox+] onclick=\"webLoginCheckRemember()\" /><label for=\"checkbox_1\" class=\"checkbox\">Remember me</label>\n    	<input type=\"submit\" value=\"[+logintext+]\" name=\"cmdweblogin\" class=\"button\" />\n	<a href=\"#\" onclick=\"webLoginShowForm(2);return false;\" id=\"forgotpsswd\">Forget Your Password?</a>\n	</fieldset>\n</form>\n<hr>\n<!-- log out hyperlink section -->\n<h4>You\'re already logged in</h4>\nDo you wish to <a href=\"[+action+]\" class=\"button\">[+logouttext+]</a>?\n<hr>\n<!-- Password reminder form section -->\n<form name=\"loginreminder\" method=\"post\" action=\"[+action+]\">\n    <fieldset>\n        <h3>It happens to everyone...</h3>\n        <input type=\"hidden\" name=\"txtpwdrem\" value=\"0\" />\n        <label for=\"txtwebemail\">Enter the email address of your account to reset your password: <input type=\"text\" name=\"txtwebemail\" id=\"txtwebemail\" size=\"24\" /></label>\n        <label>To return to the login form, press the cancel button.</label>\n    	<input type=\"submit\" value=\"Submit\" name=\"cmdweblogin\" class=\"button\" /> <input type=\"reset\" value=\"Cancel\" name=\"cmdcancel\" onclick=\"webLoginShowForm(1);\" class=\"button\" style=\"clear:none;display:inline\" />\n    </fieldset>\n</form>\n\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('3','HEAD','','0','0','0','<!DOCTYPE html>\n<html lang=\"en\">\n	<head>\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=[(modx_charset)]\"/>\n<title>[*titl*]</title>\n   \n	<meta name=\"viewport\" content=\"width=device-width\">	\n		\n    <meta charset=\"[(modx_charset)]\">\n		<base href=\"[(site_url)]\" />\n		<meta name=\"keywords\" content=\"[*keyw*]\"/>\n<meta name=\"description\" content=\"[*desc*]\"/>\n    <link href=\"assets/templates/Free%20Website%20Template%20Security%20Project/css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" >\n    <link href=\"assets/templates/Free%20Website%20Template%20Security%20Project/css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\">\n		<script src=\"assets/templates/Free%20Website%20Template%20Security%20Project/js/jquery-1.7.min.js\"></script>\n		<script src=\"assets/templates/Free%20Website%20Template%20Security%20Project/js/jquery.easing.1.3.js\"></script>\n		<script src=\"assets/templates/Free%20Website%20Template%20Security%20Project/js/FF-cash.js\"></script>\n	<!--[if lt IE 8]>\n       <div style=\' clear: both; text-align:center; position: relative;\'>\n         <a href=\"http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode\">\n           <img src=\"http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg\" border=\"0\" height=\"42\" width=\"820\" alt=\"You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.\" />\n        </a>\n      </div>\n    <![endif]-->\n    <!--[if lt IE 9]>\n   		<script type=\"text/javascript\" src=\"js/html5.js\"></script>\n    	<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/ie.css\">\n	<![endif]-->\n	<link rel=\"icon\" href=\"assets/images/favicon.ico\" type=\"image/vnd.microsoft.icon\" />\n</head>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('4','HEADER','','0','0','0','<header>\n  	<div class=\"main\">\n      <div class=\"wrap\">\n		  <div class=\"linkblock\" onclick=\"location.href=\'http://broservice.com.ua/\';\"><a><b>Bro</b>Service.com.ua</a>\n				\n			</div>\n					\n				\n		  <div class=\"slogan\">Лучший сервис в Броварах! <br> <img title=\"Viber\" alt=\"Viber\" class=\"roo\" src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/viber.svg\" onerror=\"this.onerror=null; this.src=\'assets/templates/Free%20Website%20Template%20Security%20Project/images/viber.png\'\"> тел. 093-270-46-96 </div>\n		  \n          <div class=\"tooltips\">\n			  <a href=\"#\"><img class=\"rooo\" src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/icon-1.svg\" alt=\"\"></a><a href=\"#\"><img class=\"roo1\" src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/icon-2.svg\" alt=\"\"></a><a href=\"#\"><img class=\"roo2\" src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/icon-3.svg\" alt=\"\"></a>\n          </div>\n      </div>\n      \n		  {{MENU}}\n		</a>\n    <div class=\"header-content\">\n      <div class=\"wrap main\">\n		  \n      	[!Ditto? &parents=`1` &tpl=`column_tpl` &tplLast=`column_tpl_last` &randomize=`1` &display=`3`!]\n        \n      </div>\n    </div>\n  </header>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('14','column_tpl_last','','0','0','0','<div class=\"block-1\">\n			<img title=\"[+pagetitle+]\" src=\"[+column_img+]\" alt=\"[+pagetitle+]\"  class=\"img-radius\">\n            <div>\n            	<p class=\"color-1 p2\">[+pagetitle+] </p>\n                <p>[+introtext+]</p>\n                <a href=\"#\" class=\"button top-1\">Читать далее...</a>\n            </div>\n        </div>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('12','MENU','','0','0','0','<div class=\"nav-shadow\">\n      	<div>\n          <nav>\n              <ul class=\"menu\">\n				  [!Wayfinder? &startId=`0` &level=`1`!] \n                  \n              </ul>    \n          </nav>\n         </div> \n      </div>\n    </div> \n\n\n  \n\n\n\n  \n\n		\n		\n		\n		\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('5','COLUMN','','0','0','0','<section id=\"content\">\n      <div>\n      	<div class=\"wrap\">\n        	<div class=\"col-1 border-2\">\n            	<h1 class=\"p3\">Who We Are?</h1>\n                <div class=\"wrap\">\n					<img src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/page1-img4.jpg\" alt=\"\" class=\"img-indent img-radius\">\n                    <p class=\"extra-wrap\">Security Group is one of <a href=\"http://blog.templatemonster.com/free-website-templates/\" class=\"link\" target=\"_blank\">free website templates</a> created by TemplateMonster.com. This website template is optimized for 1280X1024 screen resolution. This <a href=\"http://blog.templatemonster.com/2012/03/12/free-website-template-security-project/\" class=\"link\">Security Group Template</a> goes with 2 packages – with PSD source files and without them. PSD source files are available for free for the registered members of TemplateMonster.com.</p>\n                </div>\n                <div class=\"wrap top-2\">\n                	<ul class=\"list-1 fleft\">\n                    	<li><a href=\"#\">Lorem ipsum dolor sit  consetetur</a></li>\n                        <li><a href=\"#\">Sadipscing elitred diam nonumy eirmod</a></li>\n                        <li><a href=\"#\">Tempor invidunt labore dolore magna</a></li>\n                        <li><a href=\"#\">Aliquyam erat, sed diam volupt</a></li>\n                    </ul>\n                    <ul class=\"list-1 fleft\">\n                    	<li><a href=\"#\">At vero eos et accusam et justo duo</a></li>\n                        <li><a href=\"#\">Dolores et ea rebum. stetasd gubergren</a></li>\n                        <li><a href=\"#\">Takimata sanctus est lorem</a></li>\n                        <li><a href=\"#\">Psum dolor sit amet orem ipsum</a></li>\n                    </ul>\n                </div>\n                <a href=\"#\" class=\"button-1 top-3\">Read More</a>\n            </div>\n            <div class=\"col-2\">\n            	<h2 class=\"p2\">Latest News</h2>\n                <a href=\"#\" class=\"link-2\">29.02.2011</a>\n                <p class=\"p4\">At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.</p>\n                <a href=\"#\" class=\"link-2\">27.02.2011</a>\n                <p class=\"p4\">Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.</p>\n                <a href=\"#\" class=\"link-2\">22.02.2011</a>\n                <p>Onvidunt ut labore dolore magna aliquym erat, sed diam voluptua vero eos accusam et justo duo dolores.</p>\n                <a href=\"#\" class=\"button-1 top-1\">Read More</a>\n            </div>    \n        </div>\n      </div>\n  </section>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('6','FOOTER','','0','0','0','<footer style=\"color:#ff6c36\">\n	<p> BroService.com.ua ·  2015 · Все права защищены.</p> \n      <p>Телефон: 067 559 6580 &nbsp; Email: <a href=\"#\" class=\"link\">info@broservice.com.ua</a></p>\n	<a>Партнеры</a> : <a rel=\"nofollow\" href=\"http://crystalwater.kiev.ua/\" class=\"link\" target=\"_blank\">crystalwater.kiev.ua</a>\n\n	 <a rel=\"nofollow\" href=\"http://AdFoto.com.ua\" class=\"link\" target=\"_blank\">AdFoto.com.ua</a>\n</footer>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('7','HEAD_PRODUCTS','','0','0','0','<!DOCTYPE html>\n<html lang=\"en\">\n	<head>\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=[(modx_charset)]\"/>\n<title>[*titl*]</title>\n   \n	<meta name=\"viewport\" content=\"width=device-width\">	\n		\n    <meta charset=\"[(modx_charset)]\">\n		<base href=\"[(site_url)]\" />\n		<meta name=\"keywords\" content=\"[*keyw*]\"/>\n<meta name=\"description\" content=\"[*desc*]\"/>\n    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"assets/templates/Free%20Website%20Template%20Security%20Project/css/reset.css\">\n    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"assets/templates/Free%20Website%20Template%20Security%20Project/css/style.css\">\n    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"assets/templates/Free%20Website%20Template%20Security%20Project/css/style.css\">\n    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"assets/templates/Free%20Website%20Template%20Security%20Project/css/style.css\">\n    <script src=\"assets/templates/Free%20Website%20Template%20Security%20Project/js/jquery-1.7.min.js\"></script>\n    <script src=\"assets/templates/Free%20Website%20Template%20Security%20Project/js/jquery.easing.1.3.js\"></script>\n    <script src=\"assets/templates/Free%20Website%20Template%20Security%20Project/js/FF-cash.js\"></script>\n	<!--[if lt IE 8]>\n       <div style=\' clear: both; text-align:center; position: relative;\'>\n         <a href=\"http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode\">\n           <img src=\"http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg\" border=\"0\" height=\"42\" width=\"820\" alt=\"You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.\" />\n        </a>\n      </div>\n    <![endif]-->\n    <!--[if lt IE 9]>\n   		<script type=\"text/javascript\" src=\"js/html5.js\"></script>\n    	<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/ie.css\">\n	<![endif]-->\n		<link rel=\"icon\" href=\"assets/images/favicon.ico\" type=\"image/vnd.microsoft.icon\" />\n</head>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('8','HEADER_PRODUCTS','','0','0','0','<header>\n	<style type=\"text/css\">\n    b:first-child {\n     color: #d3d3d3; /* Красный цвет текста */\n    }\n  </style>\n  	<div class=\"main\">\n      <div class=\"wrap\">\n		  <div class=\"linkblock\" onclick=\"location.href=\'http://broservice.com.ua/\';\"><a><b>Bro</b>Service.com.ua</a>\n				<div class=\"logo\">	\n				</div>\n			</div>\n					\n				\n<div class=\"slogan\">Лучший сервис в Броварах! <br> <img title=\"Viber\" alt=\"Viber\" class=\"roo\" src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/viber.svg\" onerror=\"this.onerror=null; this.src=\'assets/templates/Free%20Website%20Template%20Security%20Project/images/viber.png\'\"> тел. 093-270-46-96 </div>\n		  \n          <div class=\"tooltips\">\n			  <a href=\"#\"><img class=\"rooo\" src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/icon-1.svg\" alt=\"\"></a><a href=\"#\"><img class=\"roo1\" src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/icon-2.svg\" alt=\"\"></a><a href=\"#\"><img class=\"roo2\" src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/icon-3.svg\" alt=\"\"></a>\n          </div>\n      </div>\n      \n		{{MENU}}\n      </div>\n   \n    <div class=\"header-content header-subpages\"></div>\n  </header><div class=\"ic\">More Website Templates @ TemplateMonster.com - March 12, 2012!</div>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('13','column_tpl','','0','0','0','<div class=\"block-1\">\n	<img title=\"[+pagetitle+]\" src=\"[+column_img+]\" alt=\"[+pagetitle+]\" class=\"img-radius\"/>\n            <div class=\"border-1\">\n            	<p class=\"color-1 p2\">[+pagetitle+]</p>\n                <p>[+introtext+]</p>\n                <a href=\"#\" class=\"button top-1\">Читать далее...</a>\n            </div>\n        </div>\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('9','CONTENT_PRODUCTS','','0','0','0','<section id=\"content\" class=\"content-subpages\">\n      <div>\n      	<div class=\"wrap\">\n        	<div class=\"col-3 border-2 block-2\">\n               <h2 class=\"p3\">Featured Products</h2>\n                <div class=\"wrap\">\n                	<img src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/page3-img1.jpg\" alt=\"\" class=\"img-indent img-radius\">\n                    <div class=\"extra-wrap\">\n                    	<p class=\"p4\"><a href=\"#\" class=\"link\">Imperdiet doming quod mazim placerat facer possim</a></p>\n                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elitsed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam erat volutpat. </p>\n                    </div>\n                 </div>   \n            </div>\n            <div class=\"col-4 block-2\">\n                <div class=\"wrap top-4\">\n                	<img src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/page3-img2.jpg\" alt=\"\" class=\"img-indent img-radius\">\n                    <div class=\"extra-wrap\">\n                    	<p class=\"p4\"><a href=\"#\" class=\"link\">Lorem ipsum dolor sit amet, consectetuer</a></p>\n                        <p>Adipiscing elitsed nonummy nibh euismod tincidunt laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud.</p>\n                    </div>\n                 </div>   \n            </div>\n        </div>\n        <div class=\"wrap top-5\">\n        	<div class=\"col-1 border-2\">\n            	<h2 class=\"p3\">Most Popular</h2>\n                <div class=\"wrap block-3\">\n                	<div class=\"wrap\">\n                        <img src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/page3-img3.jpg\" alt=\"\" class=\"img-indent img-radius\">\n                        <div class=\"extra-wrap\">\n                            <p class=\"p4\"><a href=\"#\" class=\"link\">Lorem ipsum dolor</a></p>\n                            <p>Sit amet, consectetuer adipiscing elitsed diam nonummy nibh.</p>\n                        </div>\n                     </div>\n                     <div class=\"wrap last\">\n                        <img src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/page3-img4.jpg\" alt=\"\" class=\"img-indent img-radius\">\n                        <div class=\"extra-wrap\">\n                            <p class=\"p4\"><a href=\"#\" class=\"link\">Lorem ipsum dolor</a></p>\n                            <p>Sit amet, consectetuer adipiscing elitsed diam nonummy nibh.</p>\n                        </div>\n                     </div>\n                 </div>  \n                 <div class=\"wrap block-3 top-6\">  \n                     <div class=\"wrap\">\n                        <img src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/page3-img5.jpg\" alt=\"\" class=\"img-indent img-radius\">\n                        <div class=\"extra-wrap\">\n                            <p class=\"p4\"><a href=\"#\" class=\"link\">Lorem ipsum dolor</a></p>\n                            <p>Sit amet, consectetuer adipiscing elitsed diam nonummy nibh.</p>\n                        </div>\n                     </div>\n                     <div class=\"wrap last\">\n                        <img src=\"assets/templates/Free%20Website%20Template%20Security%20Project/images/page3-img6.jpg\" alt=\"\" class=\"img-indent img-radius\">\n                        <div class=\"extra-wrap\">\n                            <p class=\"p4\"><a href=\"#\" class=\"link\">Lorem ipsum dolor</a></p>\n                            <p>Sit amet, consectetuer adipiscing elitsed diam nonummy nibh.</p>\n                        </div>\n                     </div>\n                </div>\n                <a href=\"#\" class=\"button-1 top-2\">View All</a>\n            </div>\n            <div class=\"col-2\">\n            	<h2 class=\"p2\">Products List</h2>\n                <ul class=\"list-1\">\n                    <li><a href=\"#\">At vero eos et accusam et justo duo</a></li>\n                    <li><a href=\"#\">Dolores et ea restet clita kasd gubergren</a></li>\n                    <li><a href=\"#\">Lorem ipsum dolor sit amet</a></li>\n                    <li><a href=\"#\">Dorem ipsum dolor sit amet onsetetur</a></li>\n                    <li><a href=\"#\">Sadipscing elitr, sed diam nonumy</a></li>\n                    <li><a href=\"#\">Eirmod tempor invidunt ut labore</a></li>\n                    <li><a href=\"#\">Dolore magna aliquyam erat, sed diam</a></li>\n                </ul>\n                <a href=\"#\" class=\"button-1 top-3\">Read More</a>\n            </div>    \n        </div>\n      </div>\n  </section>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('10','FOOTER_PRODUCTS','','0','0','0','<footer>\n      <p>© 2012 <a href=\"#\" class=\"link\">Security Group Website Template</a> by <a rel=\"nofollow\" href=\"http://templatemonster.com\" class=\"link\" target=\"_blank\">TemplateMonster.com</a></p>\n      <p>Phone: +1 800 559 6580 &nbsp; Email: <a href=\"#\" class=\"link\">info@security.com</a></p>\n  </footer>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('11','CONTENT','','0','0','0','[*content*]','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('20','KRU','','0','0','0','<!--////////// services SECTION //////////-->\n			<section id=\"section-9\" class=\"services page\">\n		   <div id=\"services\" class=\"full-width\">\n			        <div class=\"row\">\n					<div class=\"services-area\">\n							<div class=\"circle\">\n							  <div class=\"icon\">\n								  <img src=\"assets/icons/settings3.png\" alt=\"\">\n							  </div>\n							</div>\n         <div class=\"circle1\">\n               <div class=\"icon\">\n <img src=\"assets/icons/arrow12.png\" alt=\"\">\n </div>\n</div></div></div>\n   <div class=\"circle2\" >\n <div class=\"icon\">\n <img src=\"assets/icons/flashon.png\" alt=\"\">\n </div>\n							</div>						\n		</div>										\n</section>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('21','Duplicate of KRU','','0','0','0','<!--////////// services SECTION //////////-->\n\n			<section id=\"section-9\" class=\"services page\">\n		   <div id=\"services\" class=\"full-width\">\n		        <div class=\"container\">\n			        <div class=\"row\">\n					<div class=\"services-area\">\n						\n							<div class=\"circle\">\n							  <div class=\"icon\">\n								  <img src=\"assets/icons/settings3.png\" alt=\"\">\n							  </div>\n							</div>\n      \n \n         <div class=\"circle1\">\n               <div class=\"icon\">\n <img src=\"assets/icons/arrow12.png\" alt=\"\">\n </div>\n</div></div>\n\n							\n		</div>\n\n   <div class=\"circle2\" >\n <div class=\"icon\">\n <img src=\"assets/icons/flashon.png\" alt=\"\">\n </div>\n							</div>\n							\n		</div>\n						</div>\n			\n		\n</section>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('19','form-tpl','','0','0','0','<div id=\"contact_form\">\n            \n                  <h3>Обратная связь</h3>         \n                       [+validationmessage+]       \n                  <form method=\"post\" action=\"[~[*id*]~]\">\n                    \n                        <input type=\"hidden\" name=\"formid\" value=\"Send\" />\n                        <label for=\"author\">Ваше имя</label> <input type=\"text\" id=\"author\" name=\"author\" class=\"required input_field\" eform=\"Имя::1\" />\n                        <div class=\"cleaner_h10\"></div>\n                        \n                        <label for=\"email\">Email:</label> <input type=\"text\" id=\"email\" name=\"email\" class=\"validate-email required input_field\" eform=\"Адрес электронной почты:email:1\" />\n                        <div class=\"cleaner_h10\"></div>\n                        \n                        <label for=\"otdel\">Тема сообщения</label> \n                        <select name=\"otdel\" class=\"input_field\">\n                            <option value=\"1\">Запрос информации</option>\n                            <option value=\"2\">Техническая поддержка</option>\n                            <option value=\"3\">Предложение</option>\n                        </select>\n                        <div class=\"cleaner_h10\"></div>\n                        \n                        <label for=\"text\">Текст сообщения</label> <textarea id=\"text\" name=\"text\" rows=\"0\" cols=\"0\" class=\"required\" eform=\"Текст сообщения:html:1\"></textarea>\n                        <div class=\"cleaner_h10\"></div>\n                        \n                        <p>Введите этот код: \n                            <img src=\"[+verimageurl+]\" alt=\"Код проверки\" border=\"0\"/></p>\n                            <input type=\"text\" class=\"vericodeform input_field\" name=\"vericode\" /><br /><br />\n                    \n                        \n                        <input type=\"submit\" class=\"submit_btn\" name=\"submit\" id=\"submit\" value=\" Отправить \" />\n                        <input type=\"reset\" class=\"submit_btn\" name=\"reset\" id=\"reset\" value=\" Сбросить \" />\n                    \n                  </form>\n \n            </div>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('22','KRU2','','0','0','0','<!--////////// services SECTION //////////-->\n			<section id=\"section-9\" class=\"services page\">\n		   <div id=\"services\" class=\"full-width\">\n			        <div class=\"row\">\n					<div class=\"services-area\">\n							<div class=\"circle\">\n							  <div class=\"icon\">\n								  <img src=\"assets/icons/flashon.png\" alt=\"\">\n							  </div>\n							</div>\n         <div class=\"circle1\">\n               <div class=\"icon\">\n <img src=\"assets/icons/arrow12.png\" alt=\"\">\n </div>\n</div></div></div>\n   <div class=\"circle2\" >\n <div class=\"icon\">\n <img src=\"assets/icons/flashon.png\" alt=\"\">\n </div>\n							</div>						\n		</div>										\n</section>','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_keywords`
#

DROP TABLE IF EXISTS `modx_site_keywords`;
CREATE TABLE `modx_site_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Site keyword list';

#
# Dumping data for table `modx_site_keywords`
#

INSERT INTO `modx_site_keywords` VALUES ('1','ремонт скутеров');
INSERT INTO `modx_site_keywords` VALUES ('2','ремонт скутеров бровары');
INSERT INTO `modx_site_keywords` VALUES ('3','ремонт скутеров киев');
INSERT INTO `modx_site_keywords` VALUES ('4','ремонт велосипеда');
INSERT INTO `modx_site_keywords` VALUES ('5','ремонт велосипедов бровары');

# --------------------------------------------------------

#
# Table structure for table `modx_site_metatags`
#

DROP TABLE IF EXISTS `modx_site_metatags`;
CREATE TABLE `modx_site_metatags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL DEFAULT '' COMMENT 'tag name',
  `tagvalue` varchar(255) NOT NULL DEFAULT '',
  `http_equiv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - use http_equiv tag style, 0 - use name',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site meta tags';

#
# Dumping data for table `modx_site_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_module_access`
#

DROP TABLE IF EXISTS `modx_site_module_access`;
CREATE TABLE `modx_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

#
# Dumping data for table `modx_site_module_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_module_depobj`
#

DROP TABLE IF EXISTS `modx_site_module_depobj`;
CREATE TABLE `modx_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

#
# Dumping data for table `modx_site_module_depobj`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_modules`
#

DROP TABLE IF EXISTS `modx_site_modules`;
CREATE TABLE `modx_site_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Site Modules';

#
# Dumping data for table `modx_site_modules`
#

INSERT INTO `modx_site_modules` VALUES ('1','Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions','0','0','4','0','0','','0','','0','0','docman435243542tf542t5t','1','','include_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');

# --------------------------------------------------------

#
# Table structure for table `modx_site_plugin_events`
#

DROP TABLE IF EXISTS `modx_site_plugin_events`;
CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

#
# Dumping data for table `modx_site_plugin_events`
#

INSERT INTO `modx_site_plugin_events` VALUES ('1','23','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','29','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','35','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','41','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','47','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','73','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','34','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','35','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','36','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','40','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','41','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','42','0');
INSERT INTO `modx_site_plugin_events` VALUES ('3','80','0');
INSERT INTO `modx_site_plugin_events` VALUES ('3','81','0');
INSERT INTO `modx_site_plugin_events` VALUES ('3','93','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','28','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','29','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','30','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','31','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','35','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','53','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','205','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','3','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','13','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','28','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','31','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','92','0');
INSERT INTO `modx_site_plugin_events` VALUES ('6','3','0');
INSERT INTO `modx_site_plugin_events` VALUES ('7','85','0');
INSERT INTO `modx_site_plugin_events` VALUES ('7','87','0');
INSERT INTO `modx_site_plugin_events` VALUES ('7','88','0');
INSERT INTO `modx_site_plugin_events` VALUES ('8','100','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_plugins`
#

DROP TABLE IF EXISTS `modx_site_plugins`;
CREATE TABLE `modx_site_plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `modx_site_plugins`
#

INSERT INTO `modx_site_plugins` VALUES ('1','CodeMirror','<strong>1.2b</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirrir 3.13','0','4','0','$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');\n\n','0','&theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light; &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;true','0','');
INSERT INTO `modx_site_plugins` VALUES ('2','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','4','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','');
INSERT INTO `modx_site_plugins` VALUES ('3','Forgot Manager Login','<strong>1.1.6</strong> Resets your manager login when you forget your password via email confirmation','0','4','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';','0','','0','');
INSERT INTO `modx_site_plugins` VALUES ('4','ManagerManager','<strong>0.6.2</strong> Customize the MODX Manager to offer bespoke admin functions for end users.','0','4','0','// You can put your ManagerManager rules EITHER in a chunk OR in an external file - whichever suits your development style the best\n\n// To use an external file, put your rules in /assets/plugins/managermanager/mm_rules.inc.php \n// (you can rename default.mm_rules.inc.php and use it as an example)\n// The chunk SHOULD have php opening tags at the beginning and end\n\n// If you want to put your rules in a chunk (so you can edit them through the Manager),\n// create the chunk, and enter its name in the configuration tab.\n// The chunk should NOT have php tags at the beginning or end.\n\n// See also user-friendly module for editing ManagerManager configuration file ddMMEditor (http://code.divandesign.biz/modx/ddmmeditor).\n\n// ManagerManager requires jQuery 1.9.1, which is located in /assets/plugins/managermanager/js/ folder.\n\n// You don\'t need to change anything else from here onwards\n//-------------------------------------------------------\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');','0','&remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules','0','');
INSERT INTO `modx_site_plugins` VALUES ('5','Quick Manager+','<strong>1.5.6</strong> Enables QuickManager+ front end content editing support','0','4','0','// In manager\nif (isset($_SESSION[\'mgrValidated\'])) {\n\n    $show = TRUE;\n\n    if ($disabled  != \'\') {\n        $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n        if (in_array($modx->documentIdentifier, $arr)) {\n            $show = FALSE;\n        }\n    }\n\n    if ($show) {\n        // Replace [*#tv*] with QM+ edit TV button placeholders\n        if ($tvbuttons == \'true\') {\n            $e = $modx->Event;\n            if ($e->name == \'OnParseDocument\') {\n                 $output = &$modx->documentOutput;\n                 $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n                 $modx->documentOutput = $output;\n             }\n         }\n        // In manager\n        if (isset($_SESSION[\'mgrValidated\'])) {\n            include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n            $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass);\n        }\n    }\n}','0','&jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv','1','');
INSERT INTO `modx_site_plugins` VALUES ('6','Search Highlight','<strong>1.5</strong> Used with AjaxSearch to show search terms highlighted on page linked from search results','0','5','0','/*\n  ------------------------------------------------------------------------\n  Plugin: Search_Highlight v1.5\n  ------------------------------------------------------------------------\n  Changes:\n  18/03/10 - Remove possibility of XSS attempts being passed in the URL\n           - look-behind assertion improved\n  29/03/09 - Removed urldecode calls;\n           - Added check for magic quotes - if set, remove slashes\n           - Highlights terms searched for when target is a HTML entity\n  18/07/08 - advSearch parameter and pcre modifier added\n  10/02/08 - Strip_tags added to avoid sql injection and XSS. Use of $_REQUEST\n  01/03/07 - Added fies/updates from forum from users mikkelwe/identity\n  (better highlight replacement, additional div around term/removal message)\n  ------------------------------------------------------------------------\n  Description: When a user clicks on the link from the AjaxSearch results\n    the target page will have the terms highlighted.\n  ------------------------------------------------------------------------\n  Created By:  Susan Ottwell (sottwell@sottwell.com)\n               Kyle Jaebker (kjaebker@muddydogpaws.com)\n\n  Refactored by Coroico (www.evo.wangba.fr) and TS\n  ------------------------------------------------------------------------\n  Based off the the code by Susan Ottwell (www.sottwell.com)\n    http://forums.modx.com/thread/47775/plugin-highlight-search-terms\n  ------------------------------------------------------------------------\n  CSS:\n    The classes used for the highlighting are the same as the AjaxSearch\n  ------------------------------------------------------------------------\n  Notes:\n    To add a link to remove the highlighting and to show the searchterms\n    put the following on your page where you would like this to appear:\n\n      <!--search_terms-->\n\n    Example output for this:\n\n      Search Terms: the, template\n      Remove Highlighting\n\n    Set the following variables to change the text:\n\n      $termText - the text before the search terms\n      $removeText - the text for the remove link\n  ------------------------------------------------------------------------\n*/\nglobal $database_connection_charset;\n// Conversion code name between html page character encoding and Mysql character encoding\n// Some others conversions should be added if needed. Otherwise Page charset = Database charset\n$pageCharset = array(\n  \'utf8\' => \'UTF-8\',\n  \'latin1\' => \'ISO-8859-1\',\n  \'latin2\' => \'ISO-8859-2\'\n);\n\nif (isset($_REQUEST[\'searched\']) && isset($_REQUEST[\'highlight\'])) {\n\n  // Set these to customize the text for the highlighting key\n  // --------------------------------------------------------\n     $termText = \'<div class=\"searchTerms\">Search Terms: \';\n     $removeText = \'Remove Highlighting\';\n  // --------------------------------------------------------\n\n  $highlightText = $termText;\n  $advsearch = \'oneword\';\n\n  $dbCharset = $database_connection_charset;\n  $pgCharset = array_key_exists($dbCharset,$pageCharset) ? $pageCharset[$dbCharset] : $dbCharset;\n\n  // magic quotes check\n  if (get_magic_quotes_gpc()){\n    $searched = strip_tags(stripslashes($_REQUEST[\'searched\']));\n    $highlight = strip_tags(stripslashes($_REQUEST[\'highlight\']));\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags(stripslashes($_REQUEST[\'advsearch\']));\n  }\n  else {\n    $searched = strip_tags($_REQUEST[\'searched\']);\n    $highlight = strip_tags($_REQUEST[\'highlight\']);\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags($_REQUEST[\'advsearch\']);\n  }\n\n  if ($advsearch != \'nowords\') {\n\n    $searchArray = array();\n    if ($advsearch == \'exactphrase\') $searchArray[0] = $searched;\n    else $searchArray = explode(\' \', $searched);\n\n    $searchArray = array_unique($searchArray);\n    $nbterms = count($searchArray);\n    $searchTerms = array();\n    for($i=0;$i<$nbterms;$i++){\n      // Consider all possible combinations\n      $word_ents = array();\n      $word_ents[] = $searchArray[$i];\n      $word_ents[] = htmlentities($searchArray[$i], ENT_NOQUOTES, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_COMPAT, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_QUOTES, $pgCharset);\n      // Avoid duplication\n      $word_ents = array_unique($word_ents);\n      foreach($word_ents as $word) $searchTerms[]= array(\'term\' => $word, \'class\' => $i+1);\n    }\n\n    $output = $modx->documentOutput; // get the parsed document\n    $body = explode(\"<body\", $output); // break out the head\n\n    $highlightClass = explode(\' \',$highlight); // break out the highlight classes\n    /* remove possibility of XSS attempts being passed in URL */\n    foreach ($highlightClass as $key => $value) {\n       $highlightClass[$key] = preg_match(\'/[^A-Za-z0-9_-]/ms\', $value) == 1 ? \'\' : $value;\n    }\n\n    $pcreModifier = ($pgCharset == \'UTF-8\') ? \'iu\' : \'i\';\n    $lookBehind = \'/(?<!&|&[\\w#]|&[\\w#]\\w|&[\\w#]\\w\\w|&[\\w#]\\w\\w\\w|&[\\w#]\\w\\w\\w\\w|&[\\w#]\\w\\w\\w\\w\\w)\';  // avoid a match with a html entity\n    $lookAhead = \'(?=[^>]*<)/\'; // avoid a match with a html tag\n\n    $nbterms = count($searchTerms);\n    for($i=0;$i<$nbterms;$i++){\n      $word = $searchTerms[$i][\'term\'];\n      $class = $highlightClass[0].\' \'.$highlightClass[$searchTerms[$i][\'class\']];\n\n      $highlightText .= ($i > 0) ? \', \' : \'\';\n      $highlightText .= \'<span class=\"\'.$class.\'\">\'.$word.\'</span>\';\n\n      $pattern = $lookBehind . preg_quote($word, \'/\') . $lookAhead . $pcreModifier;\n      $replacement = \'<span class=\"\' . $class . \'\">${0}</span>\';\n      $body[1] = preg_replace($pattern, $replacement, $body[1]);\n    }\n\n    $output = implode(\"<body\", $body);\n\n    $removeUrl = $modx->makeUrl($modx->documentIdentifier);\n    $highlightText .= \'<br /><a href=\"\'.$removeUrl.\'\" class=\"ajaxSearch_removeHighlight\">\'.$removeText.\'</a></div>\';\n\n    $output = str_replace(\'<!--search_terms-->\',$highlightText,$output);\n    $modx->documentOutput = $output;\n  }\n}','0','','1','');
INSERT INTO `modx_site_plugins` VALUES ('7','TinyMCE Rich Text Editor','<strong>3.5.11</strong> Javascript WYSIWYG Editor','0','4','0','require MODX_BASE_PATH.\'assets/plugins/tinymce/plugin.tinymce.php\';\n','0','&customparams=Custom Parameters;textarea;valid_elements : \"*[*]\", &mce_formats=Block Formats;text;p,h1,h2,h3,h4,h5,h6,div,blockquote,code,pre &entity_encoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &mce_path_options=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &mce_resizing=Advanced Resizing;list;true,false;true &disabledButtons=Disabled Buttons;text; &link_list=Link List;list;enabled,disabled;enabled &webtheme=Web Theme;list;simple,editor,creative,custom;simple &webPlugins=Web Plugins;text;style,advimage,advlink,searchreplace,contextmenu,paste,fullscreen,xhtmlxtras,media &webButtons1=Web Buttons 1;text;undo,redo,selectall,|,pastetext,pasteword,|,search,replace,|,hr,charmap,|,image,link,unlink,anchor,media,|,cleanup,removeformat,|,fullscreen,code,help &webButtons2=Web Buttons 2;text;bold,italic,underline,strikethrough,sub,sup,|,|,blockquote,bullist,numlist,outdent,indent,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,|,styleprops &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;500','0','');
INSERT INTO `modx_site_plugins` VALUES ('8','TransAlias','<strong>1.0.2</strong> Human readible URL translation supporting multiple languages and overrides','0','4','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','&table_name=Trans table;list;common,russian,utf8,utf8lowercase;russian &char_restrict=Restrict alias to;list;lowercase alphanumeric,alphanumeric,legal characters;lowercase alphanumeric &remove_periods=Remove Periods;list;Yes,No;Yes &word_separator=Word Separator;list;dash,underscore,none;underscore &override_tv=Override TV name;string;','0',' ');

# --------------------------------------------------------

#
# Table structure for table `modx_site_snippets`
#

DROP TABLE IF EXISTS `modx_site_snippets`;
CREATE TABLE `modx_site_snippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

#
# Dumping data for table `modx_site_snippets`
#

INSERT INTO `modx_site_snippets` VALUES ('1','AjaxSearch','<strong>1.10.1</strong> Ajax and non-Ajax search that supports results highlighting','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/ajaxSearch/snippet.ajaxSearch.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('2','Breadcrumbs','<strong>1.0.4</strong> Configurable breadcrumb page-trail navigation','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/breadcrumbs/snippet.breadcrumbs.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('3','Ditto','<strong>2.1.1</strong> Summarizes and lists pages to create blogs, catalogs, PR archives, bio listings and more','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/ditto/snippet.ditto.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('4','eForm','<strong>1.4.6</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('5','FirstChildRedirect','<strong>2.0</strong> Automatically redirects to the first child of a Container Resource','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('6','if','<strong>1.2</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('7','Jot','<strong>1.1.4</strong> User comments with moderation and email subscription','0','7','0','/*####\n#\n# Author: Armand \"bS\" Pondman (apondman@zerobarrier.nl)\n#\n# Latest Version: http://modx.com/extras/package/jot\n# Jot Demo Site: http://projects.zerobarrier.nl/modx/\n# Documentation: http://wiki.modxcms.com/index.php/Jot (wiki)\n#\n####*/\n\n$jotPath = $modx->config[\'base_path\'] . \'assets/snippets/jot/\';\ninclude_once($jotPath.\'jot.class.inc.php\');\n\n$Jot = new CJot;\n$Jot->VersionCheck(\"1.1.4\");\n$Jot->Set(\"path\",$jotPath);\n$Jot->Set(\"action\", $action);\n$Jot->Set(\"postdelay\", $postdelay);\n$Jot->Set(\"docid\", $docid);\n$Jot->Set(\"tagid\", $tagid);\n$Jot->Set(\"subscribe\", $subscribe);\n$Jot->Set(\"moderated\", $moderated);\n$Jot->Set(\"captcha\", $captcha);\n$Jot->Set(\"badwords\", $badwords);\n$Jot->Set(\"bw\", $bw);\n$Jot->Set(\"sortby\", $sortby);\n$Jot->Set(\"numdir\", $numdir);\n$Jot->Set(\"customfields\", $customfields);\n$Jot->Set(\"guestname\", $guestname);\n$Jot->Set(\"canpost\", $canpost);\n$Jot->Set(\"canview\", $canview);\n$Jot->Set(\"canedit\", $canedit);\n$Jot->Set(\"canmoderate\", $canmoderate);\n$Jot->Set(\"trusted\", $trusted);\n$Jot->Set(\"pagination\", $pagination);\n$Jot->Set(\"placeholders\", $placeholders);\n$Jot->Set(\"subjectSubscribe\", $subjectSubscribe);\n$Jot->Set(\"subjectModerate\", $subjectModerate);\n$Jot->Set(\"subjectAuthor\", $subjectAuthor);\n$Jot->Set(\"notify\", $notify);\n$Jot->Set(\"notifyAuthor\", $notifyAuthor);\n$Jot->Set(\"validate\", $validate);\n$Jot->Set(\"title\", $title);\n$Jot->Set(\"authorid\", $authorid);\n$Jot->Set(\"css\", $css);\n$Jot->Set(\"cssFile\", $cssFile);\n$Jot->Set(\"cssRowAlt\", $cssRowAlt);\n$Jot->Set(\"cssRowMe\", $cssRowMe);\n$Jot->Set(\"cssRowAuthor\", $cssRowAuthor);\n$Jot->Set(\"tplForm\", $tplForm);\n$Jot->Set(\"tplComments\", $tplComments);\n$Jot->Set(\"tplModerate\", $tplModerate);\n$Jot->Set(\"tplNav\", $tplNav);\n$Jot->Set(\"tplNotify\", $tplNotify);\n$Jot->Set(\"tplNotifyModerator\", $tplNotifyModerator);\n$Jot->Set(\"tplNotifyAuthor\", $tplNotifyAuthor);\n$Jot->Set(\"tplSubscribe\", $tplSubscribe);\n$Jot->Set(\"debug\", $debug);\n$Jot->Set(\"output\", $output);\nreturn $Jot->Run();','0','','');
INSERT INTO `modx_site_snippets` VALUES ('8','ListIndexer','<strong>1.0.1</strong> A flexible way to show the most recent Resources and other Resource lists','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/listindexer/snippet.listindexer.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('9','MemberCheck','<strong>1.1</strong> Show chunks based on a logged in Web User\'s group membership','0','3','0','return require MODX_BASE_PATH.\'assets/snippets/membercheck/snippet.membercheck.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('10','Personalize','<strong>2.1</strong> Personalize snippet','0','3','0','return require MODX_BASE_PATH.\'assets/snippets/personalize/snippet.personalize.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('11','phpthumb','<strong>1.2</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','');
INSERT INTO `modx_site_snippets` VALUES ('12','Reflect','<strong>2.1.0</strong> Generates date-based archives using Ditto','0','7','0','/*\n * Author: \n *      Mark Kaplan for MODX CMF\n * \n * Note: \n *      If Reflect is not retrieving its own documents, make sure that the\n *          Ditto call feeding it has all of the fields in it that you plan on\n *       calling in your Reflect template. Furthermore, Reflect will ONLY\n *          show what is currently in the Ditto result set.\n *       Thus, if pagination is on it will ONLY show that page\'s items.\n*/\n \n\n// ---------------------------------------------------\n//  Includes\n// ---------------------------------------------------\n\n$reflect_base = isset($reflect_base) ? $modx->config[\'base_path\'].$reflect_base : $modx->config[\'base_path\'].\"assets/snippets/reflect/\";\n/*\n    Param: ditto_base\n    \n    Purpose:\n    Location of Ditto files\n\n    Options:\n    Any valid folder location containing the Ditto source code with a trailing slash\n\n    Default:\n    [(base_path)]assets/snippets/ditto/\n*/\n\n$config = (isset($config)) ? $config : \"default\";\n/*\n    Param: config\n\n    Purpose:\n    Load a custom configuration\n\n    Options:\n    \"default\" - default blank config file\n    CONFIG_NAME - Other configs installed in the configs folder or in any folder within the MODX base path via @FILE\n\n    Default:\n    \"default\"\n    \n    Related:\n    - <extenders>\n*/\n\nrequire($reflect_base.\"configs/default.config.php\");\nrequire($reflect_base.\"default.templates.php\");\nif ($config != \"default\") {\n    require((substr($config, 0, 5) != \"@FILE\") ? $reflect_base.\"configs/$config.config.php\" : $modx->config[\'base_path\'].trim(substr($config, 5)));\n}\n\n// ---------------------------------------------------\n//  Parameters\n// ---------------------------------------------------\n\n$id = isset($id) ? $id.\"_\" : false;\n/*\n    Param: id\n\n    Purpose:\n    Unique ID for this Ditto instance for connection with other scripts (like Reflect) and unique URL parameters\n\n    Options:\n    Any valid folder location containing the Ditto source code with a trailing slash\n\n    Default:\n    \"\" - blank\n*/\n$getDocuments = isset($getDocuments) ? $getDocuments : 0;\n/*\n    Param: getDocuments\n\n    Purpose:\n    Force Reflect to get documents\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    0 - off\n*/\n$showItems = isset($showItems) ? $showItems : 1;\n/*\n    Param: showItems\n\n    Purpose:\n    Show individual items in the archive\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    1 - on\n*/\n$groupByYears = isset($groupByYears)? $groupByYears : 1;\n/*\n    Param: groupByYears\n\n    Purpose:\n    Group the archive by years\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    1 - on\n*/\n$targetID = isset($targetID) ? $targetID : $modx->documentObject[\'id\'];\n/*\n    Param: targetID\n\n    Purpose:\n    ID for archive links to point to\n\n    Options:\n    Any MODX document with a Ditto call setup with extenders=`dateFilter`\n    \n    Default:\n    Current MODX Document\n*/\n$dateSource = isset($dateSource) ? $dateSource : \"createdon\";\n/*\n    Param: dateSource\n\n    Purpose:\n    Date source to display for archive items\n\n    Options:\n    # - Any UNIX timestamp from MODX fields or TVs such as createdon, pub_date, or editedon\n    \n    Default:\n    \"createdon\"\n    \n    Related:\n    - <dateFormat>\n*/\n$dateFormat = isset($dateFormat) ? $dateFormat : \"%d-%b-%y %H:%M\";  \n/*\n    Param: dateFormat\n\n    Purpose:\n    Format the [+date+] placeholder in human readable form\n\n    Options:\n    Any PHP valid strftime option\n\n    Default:\n    \"%d-%b-%y %H:%M\"\n    \n    Related:\n    - <dateSource>\n*/\n$yearSortDir = isset($yearSortDir) ? $yearSortDir : \"DESC\";\n/*\n    Param: yearSortDir\n\n    Purpose:\n    Direction to sort documents\n\n    Options:\n    ASC - ascending\n    DESC - descending\n\n    Default:\n    \"DESC\"\n    \n    Related:\n    - <monthSortDir>\n*/\n$monthSortDir = isset($monthSortDir) ? $monthSortDir : \"ASC\";\n/*\n    Param: monthSortDir\n\n    Purpose:\n    Direction to sort the months\n\n    Options:\n    ASC - ascending\n    DESC - descending\n\n    Default:\n    \"ASC\"\n    \n    Related:\n    - <yearSortDir>\n*/\n$start = isset($start)? intval($start) : 0;\n/*\n    Param: start\n\n    Purpose:\n    Number of documents to skip in the results\n    \n    Options:\n    Any number\n\n    Default:\n    0\n*/  \n$phx = (isset($phx))? $phx : 1;\n/*\n    Param: phx\n\n    Purpose:\n    Use PHx formatting\n\n    Options:\n    0 - off\n    1 - on\n    \n    Default:\n    1 - on\n*/\n\n// ---------------------------------------------------\n//  Initialize Ditto\n// ---------------------------------------------------\n$placeholder = ($id != false && $getDocuments == 0) ? true : false;\nif ($placeholder === false) {\n    $rID = \"reflect_\".rand(1,1000);\n    $itemTemplate = isset($tplItem) ? $tplItem: \"@CODE:\".$defaultTemplates[\'item\'];\n    $dParams = array(\n        \"id\" => \"$rID\",\n        \"save\" => \"3\",  \n        \"summarize\" => \"all\",\n        \"tpl\" => $itemTemplate,\n    );\n    \n    $source = $dittoSnippetName;\n    $params = $dittoSnippetParameters;\n        // TODO: Remove after 3.0\n        \n    if (isset($params)) {\n        $givenParams = explode(\"|\",$params);\n        foreach ($givenParams as $parameter) {\n            $p = explode(\":\",$parameter);\n            $dParams[$p[0]] = $p[1];\n        }\n    }\n    /*\n        Param: params\n\n        Purpose:\n        Pass parameters to the Ditto instance used to retreive the documents\n\n        Options:\n        Any valid ditto parameters in the format name:value \n        with multiple parameters separated by a pipe (|)\n        \n        Note:\n        This parameter is only needed for config, start, and phx as you can\n        now simply use the parameter as if Reflect was Ditto\n\n        Default:\n        [NULL]\n    */\n    \n    $reflectParameters = array(\'reflect_base\',\'config\',\'id\',\'getDocuments\',\'showItems\',\'groupByYears\',\'targetID\',\'yearSortDir\',\'monthSortDir\',\'start\',\'phx\',\'tplContainer\',\'tplYear\',\'tplMonth\',\'tplMonthInner\',\'tplItem\',\'save\');\n    $params =& $modx->event->params;\n    if(is_array($params)) {\n        foreach ($params as $param=>$value) {\n            if (!in_array($param,$reflectParameters) && substr($param,-3) != \'tpl\') {\n                $dParams[$param] = $value;\n            }\n        }\n    }\n\n    $source = isset($source) ? $source : \"Ditto\";\n    /*\n        Param: source\n\n        Purpose:\n        Name of the Ditto snippet to use\n\n        Options:\n        Any valid snippet name\n\n        Default:\n        \"Ditto\"\n    */\n    $snippetOutput = $modx->runSnippet($source,$dParams);\n    $ditto = $modx->getPlaceholder($rID.\"_ditto_object\");\n    $resource = $modx->getPlaceholder($rID.\"_ditto_resource\");\n} else {\n    $ditto = $modx->getPlaceholder($id.\"ditto_object\");\n    $resource = $modx->getPlaceholder($id.\"ditto_resource\");\n}\nif (!is_object($ditto) || !isset($ditto) || !isset($resource)) {\n    return !empty($snippetOutput) ? $snippetOutput : \"The Ditto object is invalid. Please check it.\";\n}\n\n// ---------------------------------------------------\n//  Templates\n// ---------------------------------------------------\n\n$templates[\'tpl\'] = isset($tplContainer) ? $ditto->template->fetch($tplContainer): $defaultTemplates[\'tpl\'];\n/*\n    Param: tplContainer\n\n    Purpose:\n    Container template for the archive\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[\'year\'] = isset($tplYear) ? $ditto->template->fetch($tplYear): $defaultTemplates[\'year\'];\n/*\n    Param: tplYear\n\n    Purpose:\n    Template for the year item\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[\'year_inner\'] = isset($tplYearInner) ? $ditto->template->fetch($tplYearInner): $defaultTemplates[\'year_inner\'];\n/*\n    Param: tplYearInner\n\n    Purpose:\n    Template for the year item (the ul to hold the year template)\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[\'month\'] = isset($tplMonth) ? $ditto->template->fetch($tplMonth): $defaultTemplates[\'month\'];\n/*\n    Param: tplMonth\n\n    Purpose:\n    Template for the month item\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[\'month_inner\'] = isset($tplMonthInner) ? $ditto->template->fetch($tplMonthInner): $defaultTemplates[\'month_inner\'];\n/*\n    Param: tplMonthInner\n\n    Purpose:\n    Template for the month item  (the ul to hold the month template)\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n$templates[\'item\'] = isset($tplItem) ? $ditto->template->fetch($tplItem): $defaultTemplates[\'item\'];\n/*\n    Param: tplItem\n\n    Purpose:\n    Template for the individual item\n\n    Options:\n    - Any valid chunk name\n    - Code via @CODE:\n    - File via @FILE:\n\n    Default:\n    See default.tempates.php\n*/\n\n$ditto->addField(\"date\",\"display\",\"custom\");\n    // force add the date field if receiving data from a Ditto instance\n\n// ---------------------------------------------------\n//  Reflect\n// ---------------------------------------------------\n\nif (function_exists(\"reflect\") === FALSE) {\nfunction reflect($templatesDocumentID, $showItems, $groupByYears, $resource, $templatesDateSource, $dateFormat, $ditto, $templates,$id,$start,$yearSortDir,$monthSortDir) {\n    global $modx;\n    $cal = array();\n    $output = \'\';\n    $ph = array(\'year\'=>\'\',\'month\'=>\'\',\'item\'=>\'\',\'out\'=>\'\');\n    $build = array();\n    $stop = count($resource);\n\n    // loop and fetch all the results\n    for ($i = $start; $i < $stop; $i++) {\n        $date = getdate($resource[$i][$templatesDateSource]);\n        $year = $date[\"year\"];\n        $month = $date[\"mon\"];\n        $cal[$year][$month][] = $resource[$i];\n    }\n    if ($yearSortDir == \"DESC\") {\n        krsort($cal);\n    } else {\n        ksort($cal);\n    }\n    foreach ($cal as $year=>$months) {\n        if ($monthSortDir == \"ASC\") {\n            ksort($months);\n        } else {\n            krsort($months);\n        }\n        $build[$year] = $months;\n    }\n    \n    foreach ($build as $year=>$months) {\n        $r_year = \'\';\n        $r_month = \'\';\n        $r_month_2 = \'\';\n        $year_count = 0;\n        $items = array();\n        \n        foreach ($months as $mon=>$month) {\n            $month_text = strftime(\"%B\", mktime(10, 10, 10, $mon, 10, $year));\n            $month_url = $ditto->buildURL(\"month=\".$mon.\"&year=\".$year.\"&day=false&start=0\",$templatesDocumentID,$id);\n            $month_count = count($month);\n            $year_count += $month_count;\n            $r_month = $ditto->template->replace(array(\"year\"=>$year,\"month\"=>$month_text,\"url\"=>$month_url,\"count\"=>$month_count),$templates[\'month\']);\n            if ($showItems) {\n                foreach ($month as $item) {\n                    $items[$year][$mon][\'items\'][] = $ditto->render($item, $templates[\'item\'], false, $templatesDateSource, $dateFormat, array(),$phx);\n                }\n                $r_month_2 = $ditto->template->replace(array(\'wrapper\' => implode(\'\',$items[$year][$mon][\'items\'])),$templates[\'month_inner\']);\n                $items[$year][$mon] = $ditto->template->replace(array(\'wrapper\' => $r_month_2),$r_month);\n            } else {\n                $items[$year][$mon] = $r_month;\n            }\n        }\n        if ($groupByYears) {\n            $year_url = $ditto->buildURL(\"year=\".$year.\"&month=false&day=false&start=0\",$templatesDocumentID,$id);\n            $r_year =  $ditto->template->replace(array(\"year\"=>$year,\"url\"=>$year_url,\"count\"=>$year_count),$templates[\'year\']);\n            $var = $ditto->template->replace(array(\'wrapper\'=>implode(\'\',$items[$year])),$templates[\'year_inner\']);\n            $output .= $ditto->template->replace(array(\'wrapper\'=>$var),$r_year);\n        } else {\n            $output .= implode(\'\',$items[$year]);\n        }\n    }\n\n    $output = $ditto->template->replace(array(\'wrapper\'=>$output),$templates[\'tpl\']);\n    $modx->setPlaceholder($id.\'reset\',$ditto->buildURL(\'year=false&month=false&day=false\',$templatesDocumentID,$id));\n\nreturn $output;\n    \n}\n}\n\nreturn reflect($targetID, $showItems, $groupByYears, $resource, $dateSource, $dateFormat, $ditto, $templates,$id,$start,$yearSortDir,$monthSortDir);','0','','');
INSERT INTO `modx_site_snippets` VALUES ('13','UltimateParent','<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('14','Wayfinder','<strong>2.0.4</strong> Completely template-driven and highly flexible menu builder','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/wayfinder/snippet.wayfinder.php\';','0','',' ');
INSERT INTO `modx_site_snippets` VALUES ('15','WebChangePwd','<strong>1.0.1</strong> Allows Web User to change their password from the front-end of the website','0','3','0','# Created By Raymond Irving April, 2005\n#::::::::::::::::::::::::::::::::::::::::\n# Params:	\n#\n#	&tpl			- (Optional)\n#		Chunk name or document id to use as a template\n#				  \n#	Note: Templats design:\n#			section 1: change pwd template\n#			section 2: notification template \n#\n# Examples:\n#\n#	[[WebChangePwd? &tpl=`ChangePwd`]] \n\n# Set Snippet Paths \n$snipPath  = (($modx->isBackend())? \"../\":\"\");\n$snipPath .= \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n	return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl		= isset($tpl)? $tpl:\"\";\n\n# System settings\n$isPostBack		= count($_POST) && isset($_POST[\'cmdwebchngpwd\']);\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/webchangepwd.inc.php\";\n\n# Return\nreturn $output;\n\n\n\n','0','','');
INSERT INTO `modx_site_snippets` VALUES ('16','WebLogin','<strong>1.1.1</strong> Allows webusers to login to protected pages in the website, supporting multiple user groups','0','3','0','# Created By Raymond Irving 2004\n#::::::::::::::::::::::::::::::::::::::::\n# Params:	\n#\n#	&loginhomeid 	- (Optional)\n#		redirects the user to first authorized page in the list.\n#		If no id was specified then the login home page id or \n#		the current document id will be used\n#\n#	&logouthomeid 	- (Optional)\n#		document id to load when user logs out	\n#\n#	&pwdreqid 	- (Optional)\n#		document id to load after the user has submited\n#		a request for a new password\n#\n#	&pwdactid 	- (Optional)\n#		document id to load when the after the user has activated\n#		their new password\n#\n#	&logintext		- (Optional) \n#		Text to be displayed inside login button (for built-in form)\n#\n#	&logouttext 	- (Optional)\n#		Text to be displayed inside logout link (for built-in form)\n#	\n#	&tpl			- (Optional)\n#		Chunk name or document id to as a template\n#				  \n#	Note: Templats design:\n#			section 1: login template\n#			section 2: logout template \n#			section 3: password reminder template \n#\n#			See weblogin.tpl for more information\n#\n# Examples:\n#\n#	[[WebLogin? &loginhomeid=`8` &logouthomeid=`1`]] \n#\n#	[[WebLogin? &loginhomeid=`8,18,7,5` &tpl=`Login`]] \n\n# Set Snippet Paths \n$snipPath = $modx->config[\'base_path\'] . \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n	return \'\'; # don\'t go any further when inside manager\n}\n\n# deprecated params - only for backward compatibility\nif(isset($loginid)) $loginhomeid=$loginid;\nif(isset($logoutid)) $logouthomeid = $logoutid;\nif(isset($template)) $tpl = $template;\n\n# Snippet customize settings\n$liHomeId	= isset($loginhomeid)? array_filter(array_map(\'intval\', explode(\',\', $loginhomeid))):array($modx->config[\'login_home\'],$modx->documentIdentifier);\n$loHomeId	= isset($logouthomeid)? $logouthomeid:$modx->documentIdentifier;\n$pwdReqId	= isset($pwdreqid)? $pwdreqid:0;\n$pwdActId	= isset($pwdactid)? $pwdactid:0;\n$loginText	= isset($logintext)? $logintext:\'Login\';\n$logoutText	= isset($logouttext)? $logouttext:\'Logout\';\n$tpl		= isset($tpl)? $tpl:\"\";\n\n# System settings\n$webLoginMode = isset($_REQUEST[\'webloginmode\'])? $_REQUEST[\'webloginmode\']: \'\';\n$isLogOut		= $webLoginMode==\'lo\' ? 1:0;\n$isPWDActivate	= $webLoginMode==\'actp\' ? 1:0;\n$isPostBack		= count($_POST) && (isset($_POST[\'cmdweblogin\']) || isset($_POST[\'cmdweblogin_x\']));\n$txtPwdRem 		= isset($_REQUEST[\'txtpwdrem\'])? $_REQUEST[\'txtpwdrem\']: 0;\n$isPWDReminder	= $isPostBack && $txtPwdRem==\'1\' ? 1:0;\n\n$site_id = isset($site_id)? $site_id: \'\';\n$cookieKey = substr(md5($site_id.\"Web-User\"),0,15);\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once ($modx->config[\'site_manager_path\'] . \"includes/crypt.class.inc.php\");\n\nif ($isPWDActivate || $isPWDReminder || $isLogOut || $isPostBack) {\n	# include the logger class\n	include_once $modx->config[\'site_manager_path\'] . \"includes/log.class.inc.php\";\n	include_once $snipPath.\"weblogin/weblogin.processor.inc.php\";\n}\n\ninclude_once $snipPath.\"weblogin/weblogin.inc.php\";\n\n# Return\nreturn $output;\n','0','&loginhomeid=Login Home Id;string; &logouthomeid=Logout Home Id;string; &logintext=Login Button Text;string; &logouttext=Logout Button Text;string; &tpl=Template;string;','');
INSERT INTO `modx_site_snippets` VALUES ('17','WebSignup','<strong>1.1.1</strong> Basic Web User account creation/signup system','0','3','0','# Created By Raymond Irving April, 2005\n#::::::::::::::::::::::::::::::::::::::::\n# Usage:     \n#    Allows a web user to signup for a new web account from the website\n#    This snippet provides a basic set of form fields for the signup form\n#    You can customize this snippet to create your own signup form\n#\n# Params:    \n#\n#    &tpl        - (Optional) Chunk name or document id to use as a template\n#	    		   If custom template AND captcha on AND using WebSignup and \n#                  WebLogin on the same page make sure you have a field named\n#                  cmdwebsignup. In the default template it is the submit button \n#                  One can use a hidden field.\n#    &groups     - Web users groups to be assigned to users\n#    &useCaptcha - (Optional) Determine to use (1) or not to use (0) captcha\n#                  on signup form - if not defined, will default to system\n#                  setting. GD is required for this feature. If GD is not \n#                  available, useCaptcha will automatically be set to false;\n#                  \n#    Note: Templats design:\n#        section 1: signup template\n#        section 2: notification template \n#\n# Examples:\n#\n#    [[WebSignup? &tpl=`SignupForm` &groups=`NewsReaders,WebUsers`]] \n\n# Set Snippet Paths \n$snipPath = $modx->config[\'base_path\'] . \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n    return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl = isset($tpl)? $tpl:\"\";\n$useCaptcha = isset($useCaptcha)? $useCaptcha : $modx->config[\'use_captcha\'] ;\n// Override captcha if no GD\nif ($useCaptcha && !gd_info()) $useCaptcha = 0;\n\n# setup web groups\n$groups = isset($groups) ? array_filter(array_map(\'trim\', explode(\',\', $groups))):array();\n\n# System settings\n$isPostBack        = count($_POST) && isset($_POST[\'cmdwebsignup\']);\n\n$output = \'\';\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/websignup.inc.php\";\n\n# Return\nreturn $output;','0','&tpl=Template;string;','');

# --------------------------------------------------------

#
# Table structure for table `modx_site_templates`
#

DROP TABLE IF EXISTS `modx_site_templates`;
CREATE TABLE `modx_site_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `modx_site_templates`
#

INSERT INTO `modx_site_templates` VALUES ('3','Главная','Шаблон для главной страницы','0','0','','0','{{HEAD}}\n<body>\n	{{HEADER}}\n	\n	<section id=\"content\" class=\"content-subpages\">\n      <div>\n      	<div class=\"wrap\">\n            <h1 class=\"p2\">[*pagetitle*]  </h1>\n			{{CONTENT}}\n        </div>\n      </div>\n  </section> \n<!--==============================header=================================-->\n  \n<!--==============================content================================-->\n	{{FOOTER}}\n<!--==============================footer=================================-->\n  \n</body>\n</html>','0');
INSERT INTO `modx_site_templates` VALUES ('6','Products (ШАБЛОН ДЛЯ страниц 1)','','0','0','','0','{{HEAD}}\n<body>\n\n	{{HEADER_PRODUCTS}}\n<!--==============================header=================================-->\n  \n  {{CONTENT}}\n<!--==============================content================================-->\n	{{CONTENT_PRODUCTS}}\n<!--==============================footer=================================-->\n	{{FOOTER_PRODUCTS}}\n</body>\n</html>','0');
INSERT INTO `modx_site_templates` VALUES ('8','Шаблон для контактов','Шаблон для контактов','0','0','','0','{{HEAD_PRODUCTS}}\n<body>\n	{{HEADER_PRODUCTS}}\n			  \n	\n<section id=\"content\" class=\"content-subpages\">\n      <div>\n		\n      	<div class=\"wrap\">\n        	<div class=\"col-1 border-2\">\n            <h2>Feedback</h2>\n				{{CONTENT}}\n              <div class=\"wrap\">\n        	<div class=\"col-1 border-2\">\n            <h2>Feedback</h2>\n				{{contacty}}\n                <form id=\"form\" method=\"post\" >\n                  <fieldset>\n                    <label><strong>Name:</strong><input type=\"text\" value=\"\"></label>\n                    <label><strong>Email:</strong><input type=\"text\" value=\"\"></label>\n                    <label><strong>Phone:</strong><input type=\"text\" value=\"\"></label>\n                    <label><strong>Message:</strong><textarea></textarea></label>\n                    <div class=\"btns\"><a href=\"#\" class=\"link\">Clear</a><a href=\"#\" class=\"link\" onClick=\"document.getElementById(\'form\').submit()\">Send</a></div>\n                  </fieldset>  \n                </form> 	\n            </div>\n				\n                <form id=\"form\" method=\"post\" >\n                  <fieldset>\n                    <label><strong>Name:</strong><input type=\"text\" value=\"\"></label>\n                    <label><strong>Email:</strong><input type=\"text\" value=\"\"></label>\n                    <label><strong>Phone:</strong><input type=\"text\" value=\"\"></label>\n                    <label><strong>Message:</strong><textarea></textarea></label>\n                    <div class=\"btns\"><a href=\"#\" class=\"link\">Clear</a><a href=\"#\" class=\"link\" onClick=\"document.getElementById(\'form\').submit()\">Send</a></div>\n                  </fieldset>  \n                </form> 	\n            </div>\n        </div>\n      </div>\n  </section> \n<!--==============================header=================================-->\n  <div class=\"ic\">More Website Templates @ TemplateMonster.com - March 12, 2012!</div>\n<!--==============================content================================-->\n	{{FOOTER}}\n<!--==============================footer=================================-->\n  \n</body>\n</html>','0');
INSERT INTO `modx_site_templates` VALUES ('10','FAQ (ШАБЛОН ДЛЯ Контактов)','','0','0','','0','{{HEAD}}\n<body>\n	{{HEADER_PRODUCTS}}\n<!--==============================header=================================-->\n  \n	<!--==============================content================================-->\n  <section id=\"content\" class=\"content-subpages\">\n      <div>\n      	<div class=\"wrap\">\n            <h1 class=\"p2\">[*pagetitle*]  </h1>\n			<br> {{CONTENT}}\n			\n			\n        	\n           \n\n                <form id=\"form\" method=\"post\" >\n					<!-- <h2 class=\"p2\">Обратная связь</h2>\n                  <fieldset>\n                    <label><strong>Имя:</strong><input type=\"text\" value=\"\"></label>\n                    <label><strong>Email:</strong><input type=\"text\" value=\"\"></label>\n                    <label><strong>Тел.:</strong><input type=\"text\" value=\"\"></label>\n                    <label><strong>Вопрос:</strong><textarea></textarea></label>\n                    <div class=\"btns\"><a href=\"#\" class=\"link\">Очистить</a><a href=\"#\" class=\"link\" onClick=\"document.getElementById(\'form\').submit()\">Отправить</a></div>\n                  </fieldset> --> \n                </form> \n            </div>\n        </div>\n  </section> \n<!--==============================content================================-->\n	\n<!--==============================footer=================================-->\n	{{FOOTER}}\n</body>\n</html>','0');
INSERT INTO `modx_site_templates` VALUES ('9','FAQ (ШАБЛОН ДЛЯ страниц текстов)','','0','0','','0','{{HEAD}}\n<body>\n	{{HEADER_PRODUCTS}}\n<!--==============================header=================================-->\n  \n	<!--==============================content================================-->\n  <section id=\"content\" class=\"content-subpages\">\n      <div>\n      	<div class=\"wrap\">\n            <h1>[*pagetitle*] </h1>\n			<br><br>\n			\n			\n			{{CONTENT}}\n        </div>\n      </div>\n  </section> \n<!--==============================content================================-->\n	\n<!--==============================footer=================================-->\n	{{FOOTER}}\n</body>\n</html>','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_access`
#

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;
CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

#
# Dumping data for table `modx_site_tmplvar_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_contentvalues`
#

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;
CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

#
# Dumping data for table `modx_site_tmplvar_contentvalues`
#

INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('1','4','18','assets/images/page1-img1.jpg');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('2','4','19','assets/images/page1-img2.jpg');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('3','4','20','assets/images/page1-img3.jpg');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('4','9','1','Сервисный центр Бровары делает ремонт велосипедов и скутеров а также прокат  [(site_name)]');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('5','9','2','Ремонт скутеров Бровары и мотоциклов');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('6','6','2','ывм');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('7','7','2','ремонт скутеров, ремонт скутеров бровары, ремонт мотоциклов, ремонт мопедов, ремонт квадроциклов');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('8','7','1','сервисный центр Бровары, сервисный центр в Броварах, ремонт Бровары');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('9','7','16','сантехник Бровары, сантехник в Броварах, вызов сантехника Бровары, услуги сантехника, сантехнические работы, сантехник на дом');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('11','6','16','Мастер сантехник в г Бровары оперативно выполняет работу на выезд по звонку и круглосуточно. Это удобно, просто позвоните 093-270-46-96');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('10','9','16','Квалифицированный сантехник г Бровары круглосуточно-[(site_name)]');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('12','6','3','Ремонт велосипеда в г Бровары на современном оборудовании. Обещаем Вам качество и долговечность на ремонт велосипедов');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('13','7','3','ремонт велосипеда, ремонт велосипедов бровары, ремонт велосипедов, велосипед бровары, обслуживание велосипедов, сервис велосипедов, техобслуживание велосипеда, ');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('14','9','3','Оперативный ремонт велосипедов Бровары по доступной цене - [(site_name)]');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('15','6','12','Аренда и прокат мотоциклов, мопедов, мотороллеров, скутеров и квадроциклов в г Бровары для крутой езды в Киев и по Киевской области. Качественная мототехника по доступным ценам');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('16','7','12','прокат мотоциклов, прокат мотоциклов Киев, прокат мотоциклов Бровары, аренда мотоцикла, ');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('17','9','12','Прокат мотоциклов и прочих мото в г Бровары и г Киев - [(site_name)]');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('18','6','11','Качественный прокат велосипедов Бровары для Вашего комфорта передвижения по лесу и городу');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('19','7','11','прокат велосипедов бровары, прокат велосипедов в броварах');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('20','9','11','Крутой прокат велосипедов г Бровары и Киев - [(site_name)]');

# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_templates`
#

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;
CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

#
# Dumping data for table `modx_site_tmplvar_templates`
#

INSERT INTO `modx_site_tmplvar_templates` VALUES ('5','6','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('5','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('4','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('5','8','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('5','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('6','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('6','6','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('6','8','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('6','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('7','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('7','6','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('7','8','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('7','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('8','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('8','6','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('8','8','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('8','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('9','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('9','6','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('9','8','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('9','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('5','10','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('6','10','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('7','10','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('8','10','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('9','10','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvars`
#

DROP TABLE IF EXISTS `modx_site_tmplvars`;
CREATE TABLE `modx_site_tmplvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  PRIMARY KEY (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `modx_site_tmplvars`
#

INSERT INTO `modx_site_tmplvars` VALUES ('1','richtext','blogContent','blogContent','RTE for the new blog entries','0','1','0','','0','RichText','&w=383px&h=450px&edt=TinyMCE','');
INSERT INTO `modx_site_tmplvars` VALUES ('2','text','documentTags','Tags','Space delimited tags for the current document','0','1','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('3','text','loginName','loginName','Conditional name for the Login menu item','0','1','0','','0','','','@EVAL if ($modx->getLoginUserID()) return \'Logout\'; else return \'Login\';');
INSERT INTO `modx_site_tmplvars` VALUES ('4','image','column_img','Иконка:','Иконка для вывода картинки в 3-х блоках','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('5','text','keywords','keywords','Список ключевых слов через запятую','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('6','textarea','desc','Мета дескрипшин','Мета дескрипшин','0','9','0','','0','','','[*introtext*]');
INSERT INTO `modx_site_tmplvars` VALUES ('7','text','keyw','Ключевые слова','Ключевые слова','0','9','0','','0','','','[*pagetitle*]');
INSERT INTO `modx_site_tmplvars` VALUES ('8','checkbox','noIndex','Индексировать страницу','Управление URL','0','9','0','Нет==<meta name=\"robots\" content=\"noindex, nofollow\">','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('9','text','titl','Мета тайтл','Мета тайтл','0','9','0','','0','','','[*pagetitle*] - [(site_name)]');

# --------------------------------------------------------

#
# Table structure for table `modx_system_eventnames`
#

DROP TABLE IF EXISTS `modx_system_eventnames`;
CREATE TABLE `modx_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

#
# Dumping data for table `modx_system_eventnames`
#

INSERT INTO `modx_system_eventnames` VALUES ('1','OnDocPublished','5','');
INSERT INTO `modx_system_eventnames` VALUES ('2','OnDocUnPublished','5','');
INSERT INTO `modx_system_eventnames` VALUES ('3','OnWebPagePrerender','5','');
INSERT INTO `modx_system_eventnames` VALUES ('4','OnWebLogin','3','');
INSERT INTO `modx_system_eventnames` VALUES ('5','OnBeforeWebLogout','3','');
INSERT INTO `modx_system_eventnames` VALUES ('6','OnWebLogout','3','');
INSERT INTO `modx_system_eventnames` VALUES ('7','OnWebSaveUser','3','');
INSERT INTO `modx_system_eventnames` VALUES ('8','OnWebDeleteUser','3','');
INSERT INTO `modx_system_eventnames` VALUES ('9','OnWebChangePassword','3','');
INSERT INTO `modx_system_eventnames` VALUES ('10','OnWebCreateGroup','3','');
INSERT INTO `modx_system_eventnames` VALUES ('11','OnManagerLogin','2','');
INSERT INTO `modx_system_eventnames` VALUES ('12','OnBeforeManagerLogout','2','');
INSERT INTO `modx_system_eventnames` VALUES ('13','OnManagerLogout','2','');
INSERT INTO `modx_system_eventnames` VALUES ('14','OnManagerSaveUser','2','');
INSERT INTO `modx_system_eventnames` VALUES ('15','OnManagerDeleteUser','2','');
INSERT INTO `modx_system_eventnames` VALUES ('16','OnManagerChangePassword','2','');
INSERT INTO `modx_system_eventnames` VALUES ('17','OnManagerCreateGroup','2','');
INSERT INTO `modx_system_eventnames` VALUES ('18','OnBeforeCacheUpdate','4','');
INSERT INTO `modx_system_eventnames` VALUES ('19','OnCacheUpdate','4','');
INSERT INTO `modx_system_eventnames` VALUES ('20','OnLoadWebPageCache','4','');
INSERT INTO `modx_system_eventnames` VALUES ('21','OnBeforeSaveWebPageCache','4','');
INSERT INTO `modx_system_eventnames` VALUES ('22','OnChunkFormPrerender','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('23','OnChunkFormRender','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('24','OnBeforeChunkFormSave','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('25','OnChunkFormSave','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('26','OnBeforeChunkFormDelete','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('27','OnChunkFormDelete','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('28','OnDocFormPrerender','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('29','OnDocFormRender','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('30','OnBeforeDocFormSave','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('31','OnDocFormSave','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('32','OnBeforeDocFormDelete','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('33','OnDocFormDelete','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('34','OnPluginFormPrerender','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('35','OnPluginFormRender','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('36','OnBeforePluginFormSave','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('37','OnPluginFormSave','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('38','OnBeforePluginFormDelete','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('39','OnPluginFormDelete','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('40','OnSnipFormPrerender','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('41','OnSnipFormRender','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('42','OnBeforeSnipFormSave','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('43','OnSnipFormSave','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('44','OnBeforeSnipFormDelete','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('45','OnSnipFormDelete','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('46','OnTempFormPrerender','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('47','OnTempFormRender','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('48','OnBeforeTempFormSave','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('49','OnTempFormSave','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('50','OnBeforeTempFormDelete','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('51','OnTempFormDelete','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('52','OnTVFormPrerender','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('53','OnTVFormRender','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('54','OnBeforeTVFormSave','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('55','OnTVFormSave','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('56','OnBeforeTVFormDelete','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('57','OnTVFormDelete','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('58','OnUserFormPrerender','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('59','OnUserFormRender','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('60','OnBeforeUserFormSave','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('61','OnUserFormSave','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('62','OnBeforeUserFormDelete','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('63','OnUserFormDelete','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('64','OnWUsrFormPrerender','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('65','OnWUsrFormRender','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('66','OnBeforeWUsrFormSave','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('67','OnWUsrFormSave','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('68','OnBeforeWUsrFormDelete','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('69','OnWUsrFormDelete','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('70','OnSiteRefresh','1','');
INSERT INTO `modx_system_eventnames` VALUES ('71','OnFileManagerUpload','1','');
INSERT INTO `modx_system_eventnames` VALUES ('72','OnModFormPrerender','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('73','OnModFormRender','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('74','OnBeforeModFormDelete','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('75','OnModFormDelete','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('76','OnBeforeModFormSave','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('77','OnModFormSave','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('78','OnBeforeWebLogin','3','');
INSERT INTO `modx_system_eventnames` VALUES ('79','OnWebAuthentication','3','');
INSERT INTO `modx_system_eventnames` VALUES ('80','OnBeforeManagerLogin','2','');
INSERT INTO `modx_system_eventnames` VALUES ('81','OnManagerAuthentication','2','');
INSERT INTO `modx_system_eventnames` VALUES ('82','OnSiteSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('83','OnFriendlyURLSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('84','OnUserSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('85','OnInterfaceSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('86','OnMiscSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('87','OnRichTextEditorRegister','1','RichText Editor');
INSERT INTO `modx_system_eventnames` VALUES ('88','OnRichTextEditorInit','1','RichText Editor');
INSERT INTO `modx_system_eventnames` VALUES ('89','OnManagerPageInit','2','');
INSERT INTO `modx_system_eventnames` VALUES ('90','OnWebPageInit','5','');
INSERT INTO `modx_system_eventnames` VALUES ('101','OnLoadDocumentObject','5','');
INSERT INTO `modx_system_eventnames` VALUES ('91','OnLoadWebDocument','5','');
INSERT INTO `modx_system_eventnames` VALUES ('92','OnParseDocument','5','');
INSERT INTO `modx_system_eventnames` VALUES ('93','OnManagerLoginFormRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('94','OnWebPageComplete','5','');
INSERT INTO `modx_system_eventnames` VALUES ('95','OnLogPageHit','5','');
INSERT INTO `modx_system_eventnames` VALUES ('96','OnBeforeManagerPageInit','2','');
INSERT INTO `modx_system_eventnames` VALUES ('97','OnBeforeEmptyTrash','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('98','OnEmptyTrash','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('99','OnManagerLoginFormPrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('100','OnStripAlias','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('200','OnCreateDocGroup','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('201','OnManagerWelcomePrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('202','OnManagerWelcomeHome','2','');
INSERT INTO `modx_system_eventnames` VALUES ('203','OnManagerWelcomeRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('204','OnBeforeDocDuplicate','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('205','OnDocDuplicate','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('206','OnManagerMainFrameHeaderHTMLBlock','2','');
INSERT INTO `modx_system_eventnames` VALUES ('207','OnManagerPreFrameLoader','2','');
INSERT INTO `modx_system_eventnames` VALUES ('208','OnManagerFrameLoader','2','');
INSERT INTO `modx_system_eventnames` VALUES ('209','OnManagerTreeInit','2','');
INSERT INTO `modx_system_eventnames` VALUES ('210','OnManagerTreePrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('211','OnManagerTreeRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('212','OnManagerNodePrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('213','OnManagerNodeRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('999','OnPageUnauthorized','1','');
INSERT INTO `modx_system_eventnames` VALUES ('1000','OnPageNotFound','1','');

# --------------------------------------------------------

#
# Table structure for table `modx_system_settings`
#

DROP TABLE IF EXISTS `modx_system_settings`;
CREATE TABLE `modx_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

#
# Dumping data for table `modx_system_settings`
#

INSERT INTO `modx_system_settings` VALUES ('manager_theme','MODxRE');
INSERT INTO `modx_system_settings` VALUES ('settings_version','1.0.15');
INSERT INTO `modx_system_settings` VALUES ('show_meta','0');
INSERT INTO `modx_system_settings` VALUES ('server_offset_time','0');
INSERT INTO `modx_system_settings` VALUES ('server_protocol','http');
INSERT INTO `modx_system_settings` VALUES ('manager_language','russian-UTF8');
INSERT INTO `modx_system_settings` VALUES ('modx_charset','UTF-8');
INSERT INTO `modx_system_settings` VALUES ('site_name','BroService.com.ua ');
INSERT INTO `modx_system_settings` VALUES ('site_start','1');
INSERT INTO `modx_system_settings` VALUES ('error_page','1');
INSERT INTO `modx_system_settings` VALUES ('unauthorized_page','1');
INSERT INTO `modx_system_settings` VALUES ('site_status','1');
INSERT INTO `modx_system_settings` VALUES ('site_unavailable_message','The site is currently unavailable');
INSERT INTO `modx_system_settings` VALUES ('track_visitors','0');
INSERT INTO `modx_system_settings` VALUES ('top_howmany','10');
INSERT INTO `modx_system_settings` VALUES ('auto_template_logic','parent');
INSERT INTO `modx_system_settings` VALUES ('default_template','3');
INSERT INTO `modx_system_settings` VALUES ('old_template','3');
INSERT INTO `modx_system_settings` VALUES ('publish_default','1');
INSERT INTO `modx_system_settings` VALUES ('cache_default','1');
INSERT INTO `modx_system_settings` VALUES ('search_default','1');
INSERT INTO `modx_system_settings` VALUES ('friendly_urls','1');
INSERT INTO `modx_system_settings` VALUES ('friendly_url_prefix','');
INSERT INTO `modx_system_settings` VALUES ('friendly_url_suffix','.html');
INSERT INTO `modx_system_settings` VALUES ('friendly_alias_urls','1');
INSERT INTO `modx_system_settings` VALUES ('use_alias_path','0');
INSERT INTO `modx_system_settings` VALUES ('use_udperms','1');
INSERT INTO `modx_system_settings` VALUES ('udperms_allowroot','0');
INSERT INTO `modx_system_settings` VALUES ('failed_login_attempts','3');
INSERT INTO `modx_system_settings` VALUES ('blocked_minutes','60');
INSERT INTO `modx_system_settings` VALUES ('use_captcha','0');
INSERT INTO `modx_system_settings` VALUES ('captcha_words','MODX,Access,Better,BitCode,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Tattoo,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');
INSERT INTO `modx_system_settings` VALUES ('emailsender','');
INSERT INTO `modx_system_settings` VALUES ('email_method','mail');
INSERT INTO `modx_system_settings` VALUES ('smtp_auth','0');
INSERT INTO `modx_system_settings` VALUES ('smtp_host','');
INSERT INTO `modx_system_settings` VALUES ('smtp_port','25');
INSERT INTO `modx_system_settings` VALUES ('smtp_username','');
INSERT INTO `modx_system_settings` VALUES ('emailsubject','Your login details');
INSERT INTO `modx_system_settings` VALUES ('number_of_logs','100');
INSERT INTO `modx_system_settings` VALUES ('number_of_messages','30');
INSERT INTO `modx_system_settings` VALUES ('number_of_results','20');
INSERT INTO `modx_system_settings` VALUES ('use_editor','1');
INSERT INTO `modx_system_settings` VALUES ('use_browser','1');
INSERT INTO `modx_system_settings` VALUES ('rb_base_dir','/home/u406003031/public_html/assets/');
INSERT INTO `modx_system_settings` VALUES ('rb_base_url','assets/');
INSERT INTO `modx_system_settings` VALUES ('which_editor','TinyMCE');
INSERT INTO `modx_system_settings` VALUES ('fe_editor_lang','russian-UTF8');
INSERT INTO `modx_system_settings` VALUES ('fck_editor_toolbar','standard');
INSERT INTO `modx_system_settings` VALUES ('fck_editor_autolang','0');
INSERT INTO `modx_system_settings` VALUES ('editor_css_path','');
INSERT INTO `modx_system_settings` VALUES ('editor_css_selectors','');
INSERT INTO `modx_system_settings` VALUES ('strip_image_paths','1');
INSERT INTO `modx_system_settings` VALUES ('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff');
INSERT INTO `modx_system_settings` VALUES ('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv');
INSERT INTO `modx_system_settings` VALUES ('upload_flash','fla,flv,swf');
INSERT INTO `modx_system_settings` VALUES ('upload_files','aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip');
INSERT INTO `modx_system_settings` VALUES ('upload_maxsize','1048576');
INSERT INTO `modx_system_settings` VALUES ('new_file_permissions','0644');
INSERT INTO `modx_system_settings` VALUES ('new_folder_permissions','0755');
INSERT INTO `modx_system_settings` VALUES ('filemanager_path','/home/u406003031/public_html/');
INSERT INTO `modx_system_settings` VALUES ('theme_refresher','');
INSERT INTO `modx_system_settings` VALUES ('manager_layout','4');
INSERT INTO `modx_system_settings` VALUES ('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json');
INSERT INTO `modx_system_settings` VALUES ('auto_menuindex','1');
INSERT INTO `modx_system_settings` VALUES ('session.cookie.lifetime','604800');
INSERT INTO `modx_system_settings` VALUES ('mail_check_timeperiod','60');
INSERT INTO `modx_system_settings` VALUES ('manager_direction','ltr');
INSERT INTO `modx_system_settings` VALUES ('tinymce_editor_theme','full');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_plugins','style,advimage,advlink,searchreplace,print,contextmenu,paste,fullscreen,nonbreaking,xhtmlxtras,visualchars,media');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons1','undo,redo,selectall,separator,pastetext,pasteword,separator,search,replace,separator,nonbreaking,hr,charmap,separator,image,link,unlink,anchor,media,separator,cleanup,removeformat,separator,fullscreen,print,code,help');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons2','bold,italic,underline,strikethrough,sub,sup,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,separator,styleprops');
INSERT INTO `modx_system_settings` VALUES ('tree_show_protected','0');
INSERT INTO `modx_system_settings` VALUES ('rss_url_news','http://feeds.feedburner.com/modx-announce');
INSERT INTO `modx_system_settings` VALUES ('rss_url_security','http://feeds.feedburner.com/modxsecurity');
INSERT INTO `modx_system_settings` VALUES ('validate_referer','1');
INSERT INTO `modx_system_settings` VALUES ('datepicker_offset','-10');
INSERT INTO `modx_system_settings` VALUES ('xhtml_urls','1');
INSERT INTO `modx_system_settings` VALUES ('allow_duplicate_alias','0');
INSERT INTO `modx_system_settings` VALUES ('automatic_alias','1');
INSERT INTO `modx_system_settings` VALUES ('datetime_format','dd-mm-YYYY');
INSERT INTO `modx_system_settings` VALUES ('warning_visibility','1');
INSERT INTO `modx_system_settings` VALUES ('remember_last_tab','0');
INSERT INTO `modx_system_settings` VALUES ('enable_bindings','1');
INSERT INTO `modx_system_settings` VALUES ('seostrict','1');
INSERT INTO `modx_system_settings` VALUES ('cache_type','1');
INSERT INTO `modx_system_settings` VALUES ('maxImageWidth','1600');
INSERT INTO `modx_system_settings` VALUES ('maxImageHeight','1200');
INSERT INTO `modx_system_settings` VALUES ('thumbWidth','150');
INSERT INTO `modx_system_settings` VALUES ('thumbHeight','150');
INSERT INTO `modx_system_settings` VALUES ('thumbsDir','.thumbs');
INSERT INTO `modx_system_settings` VALUES ('jpegQuality','90');
INSERT INTO `modx_system_settings` VALUES ('denyZipDownload','0');
INSERT INTO `modx_system_settings` VALUES ('denyExtensionRename','0');
INSERT INTO `modx_system_settings` VALUES ('showHiddenFiles','0');
INSERT INTO `modx_system_settings` VALUES ('docid_incrmnt_method','0');
INSERT INTO `modx_system_settings` VALUES ('make_folders','0');
INSERT INTO `modx_system_settings` VALUES ('site_id','54d13bd1ac03d');
INSERT INTO `modx_system_settings` VALUES ('site_unavailable_page','');
INSERT INTO `modx_system_settings` VALUES ('reload_site_unavailable','');
INSERT INTO `modx_system_settings` VALUES ('siteunavailable_message_default','В настоящее время сайт недоступен.');
INSERT INTO `modx_system_settings` VALUES ('check_files_onlogin','index.php\n.htaccess\nmanager/index.php\nmanager/includes/config.inc.php');
INSERT INTO `modx_system_settings` VALUES ('error_reporting','1');
INSERT INTO `modx_system_settings` VALUES ('send_errormail','0');
INSERT INTO `modx_system_settings` VALUES ('pwd_hash_algo','UNCRYPT');
INSERT INTO `modx_system_settings` VALUES ('reload_captcha_words','');
INSERT INTO `modx_system_settings` VALUES ('captcha_words_default','MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');
INSERT INTO `modx_system_settings` VALUES ('smtp_secure','none');
INSERT INTO `modx_system_settings` VALUES ('reload_emailsubject','');
INSERT INTO `modx_system_settings` VALUES ('emailsubject_default','Данные для авторизации');
INSERT INTO `modx_system_settings` VALUES ('reload_signupemail_message','');
INSERT INTO `modx_system_settings` VALUES ('signupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('system_email_signup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('reload_websignupemail_message','');
INSERT INTO `modx_system_settings` VALUES ('websignupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('system_email_websignup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('reload_system_email_webreminder_message','');
INSERT INTO `modx_system_settings` VALUES ('webpwdreminder_message','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('system_email_webreminder_default','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('tree_page_click','27');
INSERT INTO `modx_system_settings` VALUES ('resource_tree_node_name','pagetitle');
INSERT INTO `modx_system_settings` VALUES ('mce_editor_skin','default');
INSERT INTO `modx_system_settings` VALUES ('mce_template_docs','');
INSERT INTO `modx_system_settings` VALUES ('mce_template_chunks','');
INSERT INTO `modx_system_settings` VALUES ('mce_entermode','p');
INSERT INTO `modx_system_settings` VALUES ('mce_element_format','xhtml');
INSERT INTO `modx_system_settings` VALUES ('mce_schema','html4');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons3','');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons4','');
INSERT INTO `modx_system_settings` VALUES ('tinymce_css_selectors','left=justifyleft;right=justifyright');
INSERT INTO `modx_system_settings` VALUES ('rb_webuser','0');
INSERT INTO `modx_system_settings` VALUES ('clean_uploaded_filename','0');
INSERT INTO `modx_system_settings` VALUES ('sys_files_checksum','a:4:{s:38:\"/home/u406003031/public_html/index.php\";s:32:\"c6f73908b7b0a58acfe95b0f844d134e\";s:38:\"/home/u406003031/public_html/.htaccess\";s:32:\"5e05ebf5ee95a8c719c9dc89c00fbb09\";s:46:\"/home/u406003031/public_html/manager/index.php\";s:32:\"30df65e2d71987b65a4258e318c21aaf\";s:60:\"/home/u406003031/public_html/manager/includes/config.inc.php\";s:32:\"5c34ff61a6a54949207803bceed4d40f\";}');

# --------------------------------------------------------

#
# Table structure for table `modx_user_attributes`
#

DROP TABLE IF EXISTS `modx_user_attributes`;
CREATE TABLE `modx_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

#
# Dumping data for table `modx_user_attributes`
#

INSERT INTO `modx_user_attributes` VALUES ('1','1','Default admin account','1','','','','0','0','0','60','1424937178','1424937325','0','300cc48b13e96b6924f04eba8b51ee72','0','0','','','','','','','','');

# --------------------------------------------------------

#
# Table structure for table `modx_user_messages`
#

DROP TABLE IF EXISTS `modx_user_messages`;
CREATE TABLE `modx_user_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

#
# Dumping data for table `modx_user_messages`
#


# --------------------------------------------------------

#
# Table structure for table `modx_user_roles`
#

DROP TABLE IF EXISTS `modx_user_roles`;
CREATE TABLE `modx_user_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `manage_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

#
# Dumping data for table `modx_user_roles`
#

INSERT INTO `modx_user_roles` VALUES ('2','Editor','Limited to managing content','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0','1','1','1','1','1','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','1','0','0','1');
INSERT INTO `modx_user_roles` VALUES ('3','Publisher','Editor with expanded permissions including manage users, update Elements and site settings','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','0','0','1','1','1','1','1','1','0','0','0','0','1','1','1','1','1','1','1','1','1','1','1','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','0','0','0','1','1','1','1','0','1','0','0','1');
INSERT INTO `modx_user_roles` VALUES ('1','Administrator','Site administrators have full access to all functions','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');

# --------------------------------------------------------

#
# Table structure for table `modx_user_settings`
#

DROP TABLE IF EXISTS `modx_user_settings`;
CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

#
# Dumping data for table `modx_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_groups`
#

DROP TABLE IF EXISTS `modx_web_groups`;
CREATE TABLE `modx_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_web_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_user_attributes`
#

DROP TABLE IF EXISTS `modx_web_user_attributes`;
CREATE TABLE `modx_web_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `modx_web_user_attributes`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_user_settings`
#

DROP TABLE IF EXISTS `modx_web_user_settings`;
CREATE TABLE `modx_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

#
# Dumping data for table `modx_web_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_users`
#

DROP TABLE IF EXISTS `modx_web_users`;
CREATE TABLE `modx_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `modx_web_users`
#


# --------------------------------------------------------

#
# Table structure for table `modx_webgroup_access`
#

DROP TABLE IF EXISTS `modx_webgroup_access`;
CREATE TABLE `modx_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_webgroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_webgroup_names`
#

DROP TABLE IF EXISTS `modx_webgroup_names`;
CREATE TABLE `modx_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_webgroup_names`
#
