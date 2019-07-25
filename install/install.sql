# --- WireDatabaseBackup {"time":"2019-07-25 22:46:13","user":"","dbName":"wireframe_boilerplate","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '160');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_fieldset_tab_media`;
CREATE TABLE `field_fieldset_tab_media` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_media_end`;
CREATE TABLE `field_fieldset_tab_media_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_meta`;
CREATE TABLE `field_fieldset_tab_meta` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_meta_end`;
CREATE TABLE `field_fieldset_tab_meta_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_site_settings`;
CREATE TABLE `field_fieldset_tab_site_settings` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_tab_site_settings_end`;
CREATE TABLE `field_fieldset_tab_site_settings_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_files`;
CREATE TABLE `field_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_footer_1`;
CREATE TABLE `field_footer_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_footer_1` (`pages_id`, `data`) VALUES('1', '<h2>Lorem ipsum dolor sit amet</h2>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. Nullam accumsan lacus eu lacus vehicula, consectetur vestibulum eros sollicitudin.</p>\n\n<p>Donec ultricies urna vel purus convallis hendrerit. Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis.</p>');

DROP TABLE IF EXISTS `field_footer_2`;
CREATE TABLE `field_footer_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_footer_2` (`pages_id`, `data`) VALUES('1', '<h2>Pellentesque</h2>\n\n<p>Pellentesque vehicula tellus vel ex dapibus pulvinar. Curabitur eu vestibulum augue. Proin non neque erat. Suspendisse elit mauris, fermentum quis ultricies convallis.</p>\n\n<h2>Nam pharetra</h2>\n\n<p>Nam pharetra in elit sit amet vestibulum. Ut scelerisque malesuada orci, eget pellentesque felis finibus sed. Nulla vel mi ac erat venenatis.</p>');

DROP TABLE IF EXISTS `field_footer_3`;
CREATE TABLE `field_footer_3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_footer_3` (`pages_id`, `data`) VALUES('1', '<p>Website © 2019 Lorem Ipsum – dolor sit amet, consectetur adipiscing elit</p>\n\n<p><small>Lorem Ipsum is Open Source, licensed under <a href=\"http://mozilla.org/MPL/2.0/\">Mozilla Public License v2.0</a></small></p>');

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'What is Lorem Ipsum?');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1038', 'About Lorem Ipsum');

DROP TABLE IF EXISTS `field_highlights`;
CREATE TABLE `field_highlights` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_highlights` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1031,1032,1033,1040', '4', '1030');
INSERT INTO `field_highlights` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1019', '1035,1036', '2', '1034');

DROP TABLE IF EXISTS `field_icon`;
CREATE TABLE `field_icon` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1031', 'layer-group');
INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1032', 'sliders-h');
INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1033', 'plug');
INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1035', 'code');
INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1036', 'hat-wizard');
INSERT INTO `field_icon` (`pages_id`, `data`) VALUES('1040', 'user-astronaut');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_left`;
CREATE TABLE `field_left` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_logo`;
CREATE TABLE `field_logo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_main`;
CREATE TABLE `field_main` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_main` (`pages_id`, `data`) VALUES('27', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget purus ex. Curabitur commodo massa convallis urna fermentum, id consequat lectus consectetur. Ut id nisl gravida, finibus urna eget, dapibus est. Suspendisse a pulvinar lorem, eu eleifend arcu. Etiam eget nisi blandit, tincidunt purus at, feugiat erat.</p>');
INSERT INTO `field_main` (`pages_id`, `data`) VALUES('1019', '<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h2>\n\n<p>Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis.</p>\n\n<p>Pellentesque vehicula tellus vel ex dapibus pulvinar. Curabitur eu vestibulum augue. Proin non neque erat. Suspendisse elit mauris, fermentum quis ultricies convallis, convallis eget massa. Vestibulum eu aliquet tortor. Quisque dictum dolor faucibus, dictum augue sit amet, semper massa. Etiam ac nulla pellentesque, tincidunt dui nec, sodales velit. Mauris ac risus et justo posuere congue quis vitae nisl. Praesent consectetur volutpat tempor. Donec tellus massa, condimentum sed rhoncus eget, suscipit ut mauris. Curabitur pharetra at nibh tempus sodales. Donec molestie arcu ac vulputate faucibus. Donec ac imperdiet elit, eu sollicitudin nisl. Sed molestie vulputate neque eget aliquam.</p>\n\n<p>Nam pharetra in elit sit amet vestibulum. Ut scelerisque malesuada orci, eget pellentesque felis finibus sed. Nulla vel mi ac erat venenatis mattis quis sit amet tellus. Ut eget est vel libero cursus maximus. Sed diam quam, malesuada a lorem ut, elementum efficitur lectus. Curabitur egestas sem quis turpis pharetra hendrerit. Aenean sed varius nunc. Vivamus suscipit tincidunt augue nec laoreet. Aliquam imperdiet accumsan egestas. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\n\n<p>Etiam imperdiet facilisis vestibulum. In eleifend lorem sed nisl euismod, at bibendum orci rutrum. Aliquam nibh nisl, ultrices molestie accumsan id, imperdiet ullamcorper dui. Duis non tellus vestibulum, posuere diam eu, rhoncus quam. Quisque facilisis tempus lorem, a faucibus neque tincidunt eu. Sed tortor quam, maximus ultrices pellentesque sed, rutrum et orci.</p>\n\n<p> </p>');
INSERT INTO `field_main` (`pages_id`, `data`) VALUES('1038', '<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h2>\n\n<p>Proin eget purus ex. Curabitur commodo massa convallis urna fermentum, id consequat lectus consectetur. Ut id nisl gravida, finibus urna eget, dapibus est. Suspendisse a pulvinar lorem, eu eleifend arcu. Etiam eget nisi blandit, tincidunt purus at, feugiat erat. Curabitur ac massa nisl. Fusce a feugiat neque, sit amet porta mi. Cras neque sem, convallis et dui ac, laoreet laoreet risus. Aenean scelerisque risus ligula, ac lacinia sem blandit tempus.</p>\n\n<h2>Etiam commodo arcu ac leo malesuada consectetur</h2>\n\n<p>Curabitur elementum purus at dignissim elementum. Maecenas sagittis erat vel urna posuere, vel pretium velit elementum. Nunc quis risus enim. Cras ornare lorem sed gravida malesuada. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce volutpat eget ante at elementum. Aliquam a dolor non justo varius pharetra. Quisque at condimentum dolor.</p>\n\n<h3>Cras et fringilla lorem, porta aliquam felis</h3>\n\n<p>Etiam malesuada tincidunt neque, id vestibulum sem maximus a. Nam rutrum, sem eu luctus lobortis, magna lorem hendrerit sapien, at vulputate eros sapien in urna. Aliquam porta urna at felis eleifend, sit amet volutpat urna cursus. Nunc et semper metus, in imperdiet leo. Praesent vulputate magna elementum mi viverra congue. Etiam sit amet risus tristique, consequat elit quis, pharetra felis.</p>\n\n<h2>Nam fermentum nisl at placerat hendrerit</h2>\n\n<p>Ut et felis massa. Proin lobortis eget ex at lobortis. Duis vehicula et lacus vitae ornare. In hac habitasse platea dictumst. Curabitur congue scelerisque viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat.</p>\n\n<p><em>/site/​templates/​lorem-ipsum.php</em></p>\n\n<p>```php<br />\n&lt;?php namespace ProcessWire;<br />\n  <br />\n// Say hello to the world<br />\necho \"Hello World!\";<br />\n```</p>');
INSERT INTO `field_main` (`pages_id`, `data`) VALUES('1041', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. Nullam accumsan lacus eu lacus vehicula, consectetur vestibulum eros sollicitudin.</p>\n\n<h2>Donec ultricies urna vel purus convallis hendrerit!</h2>\n\n<p>Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis.</p>\n\n<ul><li><strong>Pellentesque</strong> vehicula tellus vel ex dapibus pulvinar.</li>\n	<li><strong>Curabitur</strong> eu vestibulum augue.</li>\n	<li><strong>Proin</strong> non neque erat.</li>\n</ul><p>Suspendisse elit mauris, fermentum quis ultricies convallis, convallis eget massa. Vestibulum eu aliquet tortor. Quisque dictum dolor faucibus, dictum augue sit amet, semper massa. Etiam ac nulla pellentesque, tincidunt dui nec, sodales velit.</p>\n\n<p>Mauris ac risus et justo posuere congue quis vitae nisl. Praesent consectetur volutpat tempor. Donec tellus massa, condimentum sed rhoncus eget, suscipit ut mauris. Curabitur pharetra at nibh tempus sodales. Donec molestie arcu ac vulputate faucibus. Donec ac imperdiet elit, eu sollicitudin nisl. Sed molestie vulputate neque eget aliquam.</p>');
INSERT INTO `field_main` (`pages_id`, `data`) VALUES('1042', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna.</p>\n\n<ul><li><strong>Maecenas sollicitudin augue in justo interdum. </strong><br />\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet.</li>\n	<li><strong>Donec ultricies urna vel purus. </strong><br />\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet.</li>\n	<li><strong>Ut ultrices felis non molestie dignissim. </strong><br />\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet.</li>\n</ul>');
INSERT INTO `field_main` (`pages_id`, `data`) VALUES('1063', '<p>Nullam accumsan lacus eu lacus vehicula, consectetur vestibulum eros sollicitudin. Donec ultricies urna vel purus convallis hendrerit. Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis.</p>\n\n<h2>Pellentesque vehicula tellus vel ex dapibus pulvinar</h2>\n\n<p>Pellentesque vehicula tellus vel ex dapibus pulvinar. Curabitur eu vestibulum augue. Proin non neque erat. Suspendisse elit mauris, fermentum quis ultricies convallis, convallis eget massa. Vestibulum eu aliquet tortor. Quisque dictum dolor faucibus, dictum augue sit amet, semper massa. Etiam ac nulla pellentesque, tincidunt dui nec, sodales velit.</p>\n\n<h3>Mauris ac risus et justo posuere congue quis vitae nisl</h3>\n\n<p>Mauris ac risus et justo posuere congue quis vitae nisl. Praesent consectetur volutpat tempor. Donec tellus massa, condimentum sed rhoncus eget, suscipit ut mauris. Curabitur pharetra at nibh tempus sodales. Donec molestie arcu ac vulputate faucibus. Donec ac imperdiet elit, eu sollicitudin nisl. Sed molestie vulputate neque eget aliquam.</p>\n\n<h3>Nam pharetra in elit sit amet vestibulum</h3>\n\n<p>Nam pharetra in elit sit amet vestibulum. Ut scelerisque malesuada orci, eget pellentesque felis finibus sed. Nulla vel mi ac erat venenatis mattis quis sit amet tellus. Ut eget est vel libero cursus maximus. Sed diam quam, malesuada a lorem ut, elementum efficitur lectus. Curabitur egestas sem quis turpis pharetra hendrerit. Aenean sed varius nunc. Vivamus suscipit tincidunt augue nec laoreet. Aliquam imperdiet accumsan egestas. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\n\n<ol><li><strong>Etiam imperdiet facilisis vestibulum.</strong><br />\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna.</li>\n	<li><strong>In eleifend lorem sed nisl euismod, at bibendum orci rutrum.</strong><br />\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna.</li>\n	<li><strong>Aliquam nibh nisl, ultrices molestie accumsan id, imperdiet ullamcorper dui.</strong><br />\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna.</li>\n	<li><strong>Duis non tellus vestibulum, posuere diam eu, rhoncus quam.</strong><br />\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna.</li>\n</ol><p><em>Quisque facilisis tempus lorem, a faucibus neque tincidunt eu. Sed tortor quam, maximus ultrices pellentesque sed, rutrum et orci.</em></p>');

DROP TABLE IF EXISTS `field_meta_description`;
CREATE TABLE `field_meta_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_meta_keywords`;
CREATE TABLE `field_meta_keywords` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_meta_title`;
CREATE TABLE `field_meta_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1', 'Lorem Ipsum – dolor sit amet, consectetur adipiscing elit');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');

DROP TABLE IF EXISTS `field_right`;
CREATE TABLE `field_right` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_search_index`;
CREATE TABLE `field_search_index` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_search_index` (`pages_id`, `data`) VALUES('1074', 'Search ');
INSERT INTO `field_search_index` (`pages_id`, `data`) VALUES('1', 'Home What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. Nullam accumsan lacus eu lacus vehicula? Nullam accumsan lacus eu lacus vehicula, consectetur vestibulum eros sollicitudin. Donec ultricies urna vel purus convallis hendrerit. Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis. Learn more about Lorem Ipsum Lorem Ipsum – dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. Nullam accumsan lacus eu lacus vehicula, consectetur vestibulum eros sollicitudin. Donec ultricies urna vel purus convallis hendrerit. Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis. Pellentesque Pellentesque vehicula tellus vel ex dapibus pulvinar. Curabitur eu vestibulum augue. Proin non neque erat. Suspendisse elit mauris, fermentum quis ultricies convallis. Nam pharetra Nam pharetra in elit sit amet vestibulum. Ut scelerisque malesuada orci, eget pellentesque felis finibus sed. Nulla vel mi ac erat venenatis. Website © 2019 Lorem Ipsum – dolor sit amet, consectetur adipiscing elit Lorem Ipsum is Open Source, licensed under Mozilla Public License v2.0 link:/about/ link:http://mozilla.org/MPL/2.0/');
INSERT INTO `field_search_index` (`pages_id`, `data`) VALUES('1041', 'Why use Lorem Ipsum? Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. Nullam accumsan lacus eu lacus vehicula, consectetur vestibulum eros sollicitudin. Donec ultricies urna vel purus convallis hendrerit! Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis. Pellentesque vehicula tellus vel ex dapibus pulvinar. Curabitur eu vestibulum augue. Proin non neque erat. Suspendisse elit mauris, fermentum quis ultricies convallis, convallis eget massa. Vestibulum eu aliquet tortor. Quisque dictum dolor faucibus, dictum augue sit amet, semper massa. Etiam ac nulla pellentesque, tincidunt dui nec, sodales velit. Mauris ac risus et justo posuere congue quis vitae nisl. Praesent consectetur volutpat tempor. Donec tellus massa, condimentum sed rhoncus eget, suscipit ut mauris. Curabitur pharetra at nibh tempus sodales. Donec molestie arcu ac vulputate faucibus. Donec ac imperdiet elit, eu sollicitudin nisl. Sed molestie vulputate neque eget aliquam. ');
INSERT INTO `field_search_index` (`pages_id`, `data`) VALUES('1042', 'Lorem Ipsum vs. dolor sit amet Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. Donec ultricies urna vel purus.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. Ut ultrices felis non molestie dignissim.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. ');
INSERT INTO `field_search_index` (`pages_id`, `data`) VALUES('1038', 'About About Lorem Ipsum Nunc vel nunc imperdiet, congue est vel, pretium turpis. In tempus massa ac erat hendrerit convallis. Ut fringilla id odio vitae facilisis? Lorem ipsum dolor sit amet, consectetur adipiscing elit Proin eget purus ex. Curabitur commodo massa convallis urna fermentum, id consequat lectus consectetur. Ut id nisl gravida, finibus urna eget, dapibus est. Suspendisse a pulvinar lorem, eu eleifend arcu. Etiam eget nisi blandit, tincidunt purus at, feugiat erat. Curabitur ac massa nisl. Fusce a feugiat neque, sit amet porta mi. Cras neque sem, convallis et dui ac, laoreet laoreet risus. Aenean scelerisque risus ligula, ac lacinia sem blandit tempus. Etiam commodo arcu ac leo malesuada consectetur Curabitur elementum purus at dignissim elementum. Maecenas sagittis erat vel urna posuere, vel pretium velit elementum. Nunc quis risus enim. Cras ornare lorem sed gravida malesuada. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce volutpat eget ante at elementum. Aliquam a dolor non justo varius pharetra. Quisque at condimentum dolor. Cras et fringilla lorem, porta aliquam felis Etiam malesuada tincidunt neque, id vestibulum sem maximus a. Nam rutrum, sem eu luctus lobortis, magna lorem hendrerit sapien, at vulputate eros sapien in urna. Aliquam porta urna at felis eleifend, sit amet volutpat urna cursus. Nunc et semper metus, in imperdiet leo. Praesent vulputate magna elementum mi viverra congue. Etiam sit amet risus tristique, consequat elit quis, pharetra felis. Nam fermentum nisl at placerat hendrerit Ut et felis massa. Proin lobortis eget ex at lobortis. Duis vehicula et lacus vitae ornare. In hac habitasse platea dictumst. Curabitur congue scelerisque viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat. /site/​templates/​lorem-ipsum.php ```php &lt;?php namespace ProcessWire;    // Say hello to the world echo \"Hello World!\"; ``` ');
INSERT INTO `field_search_index` (`pages_id`, `data`) VALUES('1019', 'Getting started Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. Nullam accumsan lacus eu lacus vehicula, consectetur vestibulum eros sollicitudin. Donec ultricies urna vel purus convallis hendrerit. Lorem ipsum dolor sit amet Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis. Consectetur adipiscing elit Pellentesque vehicula tellus vel ex dapibus pulvinar. Curabitur eu vestibulum augue. Proin non neque erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis. Pellentesque vehicula tellus vel ex dapibus pulvinar. Curabitur eu vestibulum augue. Proin non neque erat. Suspendisse elit mauris, fermentum quis ultricies convallis, convallis eget massa. Vestibulum eu aliquet tortor. Quisque dictum dolor faucibus, dictum augue sit amet, semper massa. Etiam ac nulla pellentesque, tincidunt dui nec, sodales velit. Mauris ac risus et justo posuere congue quis vitae nisl. Praesent consectetur volutpat tempor. Donec tellus massa, condimentum sed rhoncus eget, suscipit ut mauris. Curabitur pharetra at nibh tempus sodales. Donec molestie arcu ac vulputate faucibus. Donec ac imperdiet elit, eu sollicitudin nisl. Sed molestie vulputate neque eget aliquam. Nam pharetra in elit sit amet vestibulum. Ut scelerisque malesuada orci, eget pellentesque felis finibus sed. Nulla vel mi ac erat venenatis mattis quis sit amet tellus. Ut eget est vel libero cursus maximus. Sed diam quam, malesuada a lorem ut, elementum efficitur lectus. Curabitur egestas sem quis turpis pharetra hendrerit. Aenean sed varius nunc. Vivamus suscipit tincidunt augue nec laoreet. Aliquam imperdiet accumsan egestas. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam imperdiet facilisis vestibulum. In eleifend lorem sed nisl euismod, at bibendum orci rutrum. Aliquam nibh nisl, ultrices molestie accumsan id, imperdiet ullamcorper dui. Duis non tellus vestibulum, posuere diam eu, rhoncus quam. Quisque facilisis tempus lorem, a faucibus neque tincidunt eu. Sed tortor quam, maximus ultrices pellentesque sed, rutrum et orci.   ');
INSERT INTO `field_search_index` (`pages_id`, `data`) VALUES('1063', 'Docs Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. Nullam accumsan lacus eu lacus vehicula, consectetur vestibulum eros sollicitudin. Donec ultricies urna vel purus convallis hendrerit. Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis. Pellentesque vehicula tellus vel ex dapibus pulvinar Pellentesque vehicula tellus vel ex dapibus pulvinar. Curabitur eu vestibulum augue. Proin non neque erat. Suspendisse elit mauris, fermentum quis ultricies convallis, convallis eget massa. Vestibulum eu aliquet tortor. Quisque dictum dolor faucibus, dictum augue sit amet, semper massa. Etiam ac nulla pellentesque, tincidunt dui nec, sodales velit. Mauris ac risus et justo posuere congue quis vitae nisl Mauris ac risus et justo posuere congue quis vitae nisl. Praesent consectetur volutpat tempor. Donec tellus massa, condimentum sed rhoncus eget, suscipit ut mauris. Curabitur pharetra at nibh tempus sodales. Donec molestie arcu ac vulputate faucibus. Donec ac imperdiet elit, eu sollicitudin nisl. Sed molestie vulputate neque eget aliquam. Nam pharetra in elit sit amet vestibulum Nam pharetra in elit sit amet vestibulum. Ut scelerisque malesuada orci, eget pellentesque felis finibus sed. Nulla vel mi ac erat venenatis mattis quis sit amet tellus. Ut eget est vel libero cursus maximus. Sed diam quam, malesuada a lorem ut, elementum efficitur lectus. Curabitur egestas sem quis turpis pharetra hendrerit. Aenean sed varius nunc. Vivamus suscipit tincidunt augue nec laoreet. Aliquam imperdiet accumsan egestas. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam imperdiet facilisis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. In eleifend lorem sed nisl euismod, at bibendum orci rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Aliquam nibh nisl, ultrices molestie accumsan id, imperdiet ullamcorper dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Duis non tellus vestibulum, posuere diam eu, rhoncus quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Quisque facilisis tempus lorem, a faucibus neque tincidunt eu. Sed tortor quam, maximus ultrices pellentesque sed, rutrum et orci. ');
INSERT INTO `field_search_index` (`pages_id`, `data`) VALUES('27', '404 Not Found Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget purus ex. Curabitur commodo massa convallis urna fermentum, id consequat lectus consectetur. Ut id nisl gravida, finibus urna eget, dapibus est. Suspendisse a pulvinar lorem, eu eleifend arcu. Etiam eget nisi blandit, tincidunt purus at, feugiat erat. ');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1019', '<p>Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet. Nullam accumsan lacus eu lacus vehicula, consectetur vestibulum eros sollicitudin. Donec ultricies urna vel purus convallis hendrerit.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1031', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1032', '<p>Donec non justo ultrices, venenatis est nec, facilisis magna.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1033', '<p>Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1035', '<p>Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1036', '<p>Pellentesque vehicula tellus vel ex dapibus pulvinar. Curabitur eu vestibulum augue. Proin non neque erat.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1063', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non justo ultrices, venenatis est nec, facilisis magna. Maecenas sollicitudin augue in justo interdum, vel consequat nunc imperdiet.</p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1040', '<p>Nullam accumsan lacus eu lacus vehicula, consectetur vestibulum eros sollicitudin. Donec ultricies urna vel purus convallis hendrerit. Morbi convallis finibus rutrum. Ut ultrices felis non molestie dignissim. Cras laoreet orci eget magna condimentum, vel feugiat elit sagittis.</p>\n\n<p><a class=\"button\"	data-pwid=1038	href=\"/about/\">Learn more about Lorem Ipsum</a></p>');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1038', '<p>Nunc vel nunc imperdiet, congue est vel, pretium turpis. In tempus massa ac erat hendrerit convallis. Ut fringilla id odio vitae facilisis?</p>');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Getting started');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Use the front-end page editor');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'highlights');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Lorem Ipsum');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'Donec non justo ultrices');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Maecenas sollicitudin augue');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'getting-started');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'Lorem ipsum dolor sit amet');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1036', 'Consectetur adipiscing elit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1038', 'About');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Why use Lorem Ipsum?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'Nullam accumsan lacus eu lacus vehicula?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'Lorem Ipsum vs. dolor sit amet');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1045', 'output-framework-vs-output-strategy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'why-use-wireframe');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'about');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1063', 'Docs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1074', 'Search');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'repeater_highlights');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'wide-basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'search');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '123', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '115', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '111', '20', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '108', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '107', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '110', '19', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '116', '18', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '113', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '102', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '123', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '108', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '107', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '120', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '101', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '104', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '120', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '101', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '104', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '106', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '105', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '103', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '121', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '106', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '103', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '118', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '117', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '98', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '121', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '100', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '100', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '104', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '100', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '103', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '105', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '102', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '114', '22', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '122', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '101', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '120', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '107', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '108', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '123', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '102', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '100', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '103', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '105', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '104', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '101', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '120', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '107', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '108', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '123', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '102', '13', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeTextarea', 'main', '0', 'Main', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4,8,16],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":1,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2],\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"imageFields\":[\"images\"],\"textformatters\":[\"TextformatterCodeBlocks\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeTextarea', 'summary', '0', 'Summary', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"rows\":5,\"htmlOptions\":[2],\"toolbar\":\"Bold, Italic, -, RemoveFormat\\nPWLink, Unlink, Anchor\\nSpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":1,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2,4,8],\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeText', 'headline', '0', 'Headline', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"stripTags\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeFieldsetTabOpen', 'fieldset_tab_meta', '0', 'Meta', '{\"closeFieldID\":102,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeFieldsetClose', 'fieldset_tab_meta_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_tab_meta\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":101}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeFieldsetTabOpen', 'fieldset_tab_media', '0', 'Images and files', '{\"closeFieldID\":104,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeFieldsetClose', 'fieldset_tab_media_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_tab_media\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":103}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeImage', 'images', '0', 'Images', '{\"textformatters\":[\"TextformatterEntities\"],\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"left\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxWidth\":1920,\"maxHeight\":1920,\"unzip\":1,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeFile', 'files', '0', 'Files', '{\"textformatters\":[\"TextformatterEntities\"],\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png ppt pptx\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":1,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeTextarea', 'meta_description', '0', 'Description', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeText', 'meta_keywords', '0', 'Keywords', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeTextarea', 'footer_1', '0', 'Footer 1', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4,8,16],\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":1,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2,4,8],\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"imageFields\":[\"images\"],\"collapsed\":0,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeTextarea', 'footer_2', '0', 'Footer 2', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4,8,16],\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":1,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2,4,8],\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"imageFields\":[\"images\"],\"collapsed\":0,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeFieldsetTabOpen', 'fieldset_tab_site_settings', '0', 'Site settings', '{\"closeFieldID\":114,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeFieldsetClose', 'fieldset_tab_site_settings_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_tab_site_settings\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":113}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeTextarea', 'left', '0', 'Left', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4,8,16],\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":1,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2,4,8],\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"imageFields\":[\"images\"],\"collapsed\":0,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeImage', 'logo', '0', 'Logo', '{\"extensions\":\"gif jpg jpeg png svg\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"left\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"textformatters\":[\"TextformatterEntities\"],\"maxWidth\":1920,\"maxHeight\":1920,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeTextarea', 'footer_3', '0', 'Footer 3', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4,8,16],\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":1,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2,4,8],\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"imageFields\":[\"images\"],\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeTextarea', 'right', '0', 'Right', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"htmlOptions\":[2,4,8,16],\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":1,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2,4,8],\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"imageFields\":[\"images\"],\"collapsed\":0,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeText', 'meta_title', '0', 'Title', '{\"description\":\"If defined, the value of this field is placed in the <title> tag of the page.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeRepeater', 'highlights', '0', 'Highlights', '{\"template_id\":44,\"parent_id\":1029,\"repeaterAddLabel\":\"Add New Highlight\",\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"repeaterFields\":[1,99,122]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeText', 'icon', '0', 'Icon', '{\"description\":\"Provide an icon name from https:\\/\\/fontawesome.com\\/icons, without a prefix.\",\"notes\":\"Example: accessible-icon\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypeTextarea', 'search_index', '0', '', '{\"collapsed\":4,\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '{\"classOptions\":\"button\\nbutton--inverse\\nbutton--plain\",\"relOptions\":\"nofollow\",\"targetOptions\":\"_blank\",\"extLinkClass\":\"\",\"extLinkRel\":\"\",\"extLinkTarget\":\"\",\"urlType\":\"0\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\"]}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.123\"}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2019-01-03 21:34:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2019-01-03 21:34:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2019-01-03 21:34:44');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2019-01-03 21:34:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2019-01-03 21:34:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'Wireframe', '1', '', '2019-01-03 21:45:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1015}', '2019-01-05 21:06:39');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'InputfieldRepeater', '0', '', '2019-01-05 21:06:39');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'FieldtypeFieldsetPage', '35', '{\"repeatersRootPageID\":1015}', '2019-01-05 21:07:03');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'InputfieldPageAutocomplete', '0', '', '2019-01-13 19:21:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'MarkupSimpleNavigation', '0', '', '2019-01-14 19:31:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'TextformatterCodeBlocks', '1', '', '2019-01-15 07:58:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'PageFrontEdit', '2', '{\"inlineEditFields\":[110,111,115,100,117,98,118,99],\"inlineLimitPage\":\"1\",\"buttonLocation\":\"auto\",\"buttonType\":\"auto\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-01-20 18:43:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('189', 'MarkupMenu', '0', '', '2019-06-23 20:08:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('190', 'SeoMaestro', '3', '{\"sitemapEnable\":1,\"sitemapPath\":\"sitemap.xml\",\"sitemapCache\":\"120\",\"baseUrl\":\"\",\"defaultLanguage\":\"en\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-06-30 22:00:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('191', 'FieldtypeSeoMaestro', '1', '', '2019-06-30 22:00:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('192', 'InputfieldSeoMaestro', '0', '', '2019-06-30 22:00:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('193', 'FieldtypeMapMarker', '1', '', '2019-07-11 18:25:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('194', 'InputfieldMapMarker', '0', '', '2019-07-11 18:25:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('195', 'SearchEngine', '3', '{\"indexed_fields\":[\"title\",\"headline\",\"summary\",\"main\",\"left\",\"right\",\"footer_1\",\"footer_2\",\"footer_3\",\"highlights\",\"images\",\"files\",\"meta_description\",\"meta_keywords\",\"meta_title\"],\"index_pages_now_selector\":\"\",\"index_field\":\"search_index\",\"override_compatible_fieldtypes\":\"\",\"compatible_fieldtypes\":[\"FieldtypeEmail\",\"FieldtypeDatetime\",\"FieldtypeText\",\"FieldtypeTextLanguage\",\"FieldtypeTextarea\",\"FieldtypeTextareaLanguage\",\"FieldtypePageTitle\",\"FieldtypePageTitleLanguage\",\"FieldtypeCheckbox\",\"FieldtypeInteger\",\"FieldtypeFloat\",\"FieldtypeURL\",\"FieldtypeModule\",\"FieldtypeFile\",\"FieldtypeImage\",\"FieldtypeSelector\",\"FieldtypeOptions\",\"FieldtypeRepeater\",\"FieldtypeRepeaterMatrix\",\"FieldtypePageTable\"],\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-07-25 22:40:04');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1076 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2019-07-25 22:43:42', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2019-06-23 20:08:54', '40', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2019-01-03 21:35:00', '40', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2019-01-03 21:35:08', '40', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2019-01-03 21:35:05', '40', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '45', 'http404', '1035', '2019-07-25 22:43:42', '41', '2019-01-03 21:34:17', '3', '2019-01-03 21:34:17', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2019-06-23 20:08:54', '40', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '2', '2019-01-03 21:34:17', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '41', '2019-01-03 21:34:17', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2019-01-03 21:34:17', '40', '2019-01-03 21:34:17', '40', '2019-01-03 21:34:17', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2019-01-03 21:34:17', '40', '2019-01-03 21:34:17', '40', '2019-01-03 21:34:17', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2019-01-03 21:34:43', '40', '2019-01-03 21:34:43', '40', '2019-01-03 21:34:43', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2019-01-03 21:34:43', '40', '2019-01-03 21:34:43', '40', '2019-01-03 21:34:43', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2019-01-03 21:34:51', '40', '2019-01-03 21:34:51', '40', '2019-01-03 21:34:51', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2019-01-03 21:34:51', '40', '2019-01-03 21:34:51', '40', '2019-01-03 21:34:51', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2019-01-03 21:34:51', '40', '2019-01-03 21:34:51', '40', '2019-01-03 21:34:51', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '2', '2', 'repeaters', '1036', '2019-01-05 21:06:39', '41', '2019-01-05 21:06:39', '41', '2019-01-05 21:06:39', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '1', '29', 'getting-started', '1', '2019-07-25 22:43:42', '41', '2019-01-13 20:17:17', '41', '2019-01-13 20:17:20', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '31', '5', 'page-edit-front', '1', '2019-01-20 18:43:27', '41', '2019-01-20 18:43:27', '41', '2019-01-20 18:43:27', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1015', '2', 'for-field-121', '17', '2019-02-10 17:58:07', '41', '2019-02-10 17:58:07', '41', '2019-02-10 17:58:07', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '1029', '2', 'for-page-1', '17', '2019-02-10 17:59:51', '41', '2019-02-10 17:59:51', '41', '2019-02-10 17:59:51', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '1030', '44', '1549814393-8206-1', '1', '2019-05-30 17:21:42', '41', '2019-02-10 17:59:53', '41', '2019-02-10 18:13:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1030', '44', '1549814661-8901-1', '1', '2019-05-30 17:21:42', '41', '2019-02-10 18:04:21', '41', '2019-02-10 18:13:19', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1030', '44', '1549814813-0351-1', '1', '2019-05-30 17:21:42', '41', '2019-02-10 18:06:53', '41', '2019-02-10 18:13:19', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1034', '1029', '2', 'for-page-1019', '17', '2019-02-10 21:31:45', '41', '2019-02-10 21:31:45', '41', '2019-02-10 21:31:45', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1034', '44', '1549827110-1015-1', '1', '2019-05-30 17:30:53', '41', '2019-02-10 21:31:50', '41', '2019-02-10 21:37:48', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '1034', '44', '1549827368-6291-1', '1', '2019-05-30 17:30:53', '41', '2019-02-10 21:36:08', '41', '2019-02-10 21:37:48', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1038', '1', '29', 'about', '1', '2019-07-25 22:43:42', '41', '2019-02-10 22:52:54', '41', '2019-02-10 22:53:01', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1038', '29', 'why-use-lorem-ipsum', '1', '2019-07-25 22:43:42', '41', '2019-05-05 10:59:42', '41', '2019-05-05 11:00:04', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1030', '44', '1549834473-0493-1', '1', '2019-05-30 17:21:42', '41', '2019-02-10 23:34:33', '41', '2019-02-10 23:36:15', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '1038', '29', 'lorem-ipsum-vs-dolor-sit-amet', '1', '2019-07-25 22:43:42', '41', '2019-05-05 11:00:22', '41', '2019-05-05 11:00:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1045', '1029', '2', 'for-page-1042', '17', '2019-05-05 11:01:24', '41', '2019-05-05 11:01:24', '41', '2019-05-05 11:01:24', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1046', '1029', '2', 'for-page-1041', '17', '2019-05-05 11:01:39', '41', '2019-05-05 11:01:39', '41', '2019-05-05 11:01:39', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1047', '1029', '2', 'for-page-1038', '17', '2019-05-05 11:01:50', '41', '2019-05-05 11:01:50', '41', '2019-05-05 11:01:50', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1063', '1', '45', 'docs', '1', '2019-07-25 22:43:42', '41', '2019-05-30 17:29:00', '41', '2019-05-30 17:29:12', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1074', '1', '46', 'search', '1025', '2019-07-25 22:43:42', '41', '2019-07-25 22:43:08', '41', '2019-07-25 22:43:16', '6');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2019-01-03 21:34:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2019-01-03 21:34:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2019-01-03 21:34:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2019-01-03 21:34:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('27', '1', '2019-05-30 17:42:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '1', '2019-01-13 20:17:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '2', '2019-01-20 18:43:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '2', '2019-02-10 17:59:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '2', '2019-02-10 18:04:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '2', '2019-02-10 18:06:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1035', '2', '2019-02-10 21:31:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '2', '2019-02-10 21:36:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '1', '2019-02-10 22:52:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '2', '2019-02-10 23:34:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1063', '1', '2019-05-30 17:29:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1074', '1', '2019-07-25 22:43:08');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('7', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1015', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1029', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1029', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1030', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1030', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1030', '1029');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1034', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1034', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1034', '1029');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1561309671,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"urlSegments\":[\"data.json\"],\"slashUrls\":1,\"slashUrlSegments\":-1,\"altFilename\":\"wireframe\",\"pageLabelField\":\"fa-home title\",\"compile\":3,\"label\":\"Home\",\"modified\":1562518873,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"altFilename\":\"wireframe\",\"pageLabelField\":\"fa-file-o title\",\"compile\":3,\"label\":\"Basic page\",\"modified\":1562518873,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'repeater_highlights', '98', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1549814287}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'wide-basic-page', '99', '0', '0', '{\"slashUrls\":1,\"altFilename\":\"wireframe\",\"pageLabelField\":\"fa-file-word-o title\",\"compile\":3,\"label\":\"Wide basic page\",\"modified\":1562518873,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'search', '100', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"parentTemplates\":[1],\"allowPageNum\":1,\"slashUrls\":1,\"slashPageNum\":1,\"altFilename\":\"wireframe\",\"pageLabelField\":\"fa-search title\",\"noShortcut\":1,\"compile\":3,\"label\":\"Search\",\"modified\":1564083772,\"ns\":\"ProcessWire\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":35,"numCreateTables":41,"numInserts":467,"numSeconds":0}