# --- WireDatabaseBackup {"time":"2019-02-23 17:21:33","user":"","dbName":"start","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '160');

DROP TABLE IF EXISTS `field_adress`;
CREATE TABLE `field_adress` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_adress` (`pages_id`, `data`) VALUES('1019', 'Alexandria, VA USA 22303');

DROP TABLE IF EXISTS `field_aos_column_break`;
CREATE TABLE `field_aos_column_break` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<h3><a href=\"https://processwire.com/\" title=\"ProcessWire is a free PHP open source CMS\">ProcessWire</a> is a free PHP content management system and framework (open source CMS/CMF) built to save you time and work the way you do.</h3>\n\n<blockquote>\n<p>Your design and development process won\'t be interrupted by <a href=\"https://processwire.com/\" title=\"ProcessWire is a free PHP open source CMS\">ProcessWire</a> – it\'s built to adapt to your way of doing things, not the other way around.<a href=\"https://processwire.com/docs/tutorials/\" title=\"ProcessWire Tutorials\"><img alt=\"\" class=\"align_right\"	src=\"/site/assets/files/1/rocket.svg\" width=\"222\" /></a></p>\n</blockquote>\n\n<p><a href=\"https://processwire.com/\" title=\"ProcessWire is a free PHP open source CMS\">ProcessWire</a> gives you the tools to get at your data, but you make the markup. You never have to design a site for ProcessWire, and the system won\'t impose any limitations upon your site\'s design or the designer.</p>\n\n<p><strong>Security is our number one priority with ProcessWire.</strong><a href=\"https://processwire.com/docs/security/\" title=\"Processwire Security\"><img alt=\"\" class=\"align_left\"	src=\"/site/assets/files/1/ssl-security.svg\" width=\"159\" /></a></p>\n\n<p>Make it your number one priority too. In this section we attempt to cover some of the more important aspects in maintaining a secure installation. Two-factor (or multi-factor) authentication gives you an extra layer of account security relative to just using a password. ProcessWire versions 3.0.109 and newer include core support for two-factor authentication.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1015', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>\n\n<h3>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</h3>\n\n<blockquote>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\n</blockquote>\n\n<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1019', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1020', '<h2>Who we are</h2>\n\n<p>Our website address is: https://starter.com</p>\n\n<h2>What personal data we collect and why we collect it</h2>\n\n<h3>Comments</h3>\n\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n\n<h3>Media</h3>\n\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n\n<h3>Contact forms</h3>\n\n<h3>Cookies</h3>\n\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n\n<p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n\n<h3>Embedded content from other websites</h3>\n\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n\n<h3>Analytics</h3>\n\n<h2>Who we share your data with</h2>\n\n<h2>How long we retain your data</h2>\n\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n\n<h2>What rights you have over your data</h2>\n\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n\n<h2>Where we send your data</h2>\n\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n\n<h2>Your contact information</h2>\n\n<h2>Additional information</h2>\n\n<h3>How we protect your data</h3>\n\n<h3>What data breach procedures we have in place</h3>\n\n<h3>What third parties we receive data from</h3>\n\n<h3>What automated decision making and/or profiling we do with user data</h3>\n\n<h3>Industry regulatory disclosure requirements</h3>\n\n<p> </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1032', '<h3><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</h3>\n\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n\n<hr />\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<p> </p>\n\n<p> </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1054', '<h4>Name:</h4> Alex\n                        <h4>E-Mail:</h4> alex@gmail.com\n                        <h4>Message:</h4> Hello Frends ...');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1074', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>\n\n<h4>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</h4>\n\n<blockquote>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\n</blockquote>\n\n<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<img alt=\"\" class=\"align_left\"	src=\"/site/assets/files/1074/bullseye.svg\" width=\"191\" />It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<p> </p>\n\n<p> </p>\n\n<p> </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1075', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>\n\n<h3>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</h3>\n\n<blockquote>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\n</blockquote>\n\n<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1079', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>\n\n<h3>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</h3>\n\n<blockquote>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\n</blockquote>\n\n<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1080', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>\n\n<h3>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</h3>\n\n<blockquote>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\n</blockquote>\n\n<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1092', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1099', '<h3>What is Lorem Ipsum? Lorem Ipsum is simply dummy text ...</h3>\n\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\n\n<p><a	data-pwid=1101	href=\"/blog/posts/starter-profile/\">SOME PAGE LINKS</a></p>\n\n<p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1100', '<h3>What is Lorem Ipsum? Lorem Ipsum is simply dummy text ...</h3>\n\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\n\n<blockquote>\n<p>When an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n</blockquote>\n\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1101', '<h3><strong>Starter Site Profile For <a href=\"https://processwire.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Processwire 3x</a> ...</strong></h3>\n\n<h4>With include functions like</h4>\n\n<ul>\n	<li><a href=\"https://processwire.com/blog/posts/processwire-3.0.119-and-new-site-updates/\" target=\"_blank\" rel=\"noreferrer noopener\">API setting()</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/processwire-3.0.49-introduces-a-new-template-file-strategy/\" target=\"_blank\" rel=\"noreferrer noopener\">MarkupRegions</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/processwire-3.0.39-core-updates/\" target=\"_blank\" rel=\"noreferrer noopener\">FunctionsAPI</a></li>\n</ul>\n\n<h3><strong>Essentially, this structure uses minimalist CSS framework <a href=\"https://milligram.io/\" target=\"_blank\" rel=\"noreferrer noopener\">Milligram</a></strong></h3>\n\n<h3>Installed Modules:</h3>\n\n<p><a href=\"https://modules.processwire.com/modules/seo-maestro/\" rel=\"nofollow\">SeoMaestro</a></p>\n\n<h3><strong>Essentially, this structure uses minimalist CSS framework:</strong></h3>\n\n<p><a href=\"https://milligram.io/\" rel=\"nofollow\">Milligram</a></p>\n\n<h3><strong>Additionally, you can use the icon font that are included:</strong></h3>\n\n<p><a href=\"https://feathericons.com/\" rel=\"nofollow\">Feather Icons</a></p>\n\n<h3><strong>All images ( svg ) on the pages come from:</strong></h3>\n\n<p><a href=\"https://icofont.com/\" rel=\"nofollow\">Icofont</a></p>\n\n<p><a href=\"https://ionicons.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Ionicons</a></p>\n\n<h3><strong>In order to speed up the loading of pages, it was used:</strong></h3>\n\n<p><a href=\"https://github.com/turbolinks/turbolinks\">Turbolinks</a></p>\n\n<h4><strong>### How To Install</strong></h4>\n\n<p>1. Download the <a href=\"https://github.com/rafaoski/site-starter/archive/master.zip\">zip file</a> at Github or clone directly the repo:<strong> </strong></p>\n\n<p><code>git clone https://github.com/rafaoski/site-starter.git</code></p>\n\n<p>2. Extract the folder <strong>site-starter-master</strong> into a fresh ProcessWire installation root folder.</p>\n\n<p>3. During the installation of ProcessWire, choose the profile <strong>Starter Profile for Processwire 3x</strong>.</p>\n\n<h4><strong>#### If you want to use <a href=\"https://github.com/JeffreyWay/laravel-mix\" target=\"_blank\" rel=\"noreferrer noopener\">Laravel Mix</a> you must first ensure that <a href=\"https://nodejs.org/en/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Node.js</a> and <a href=\"https://www.npmjs.com/get-npm\" target=\"_blank\" rel=\"noreferrer noopener\">NPM</a> are installed on your machine.</strong></h4>\n\n<p>Basic example to Debian and Ubuntu based Linux distributions:</p>\n\n<h4><strong>#### Node.js</strong></h4>\n\n<p>curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -</p>\n\n<p>sudo apt-get install -y nodejs</p>\n\n<p>See more installation options <a href=\"https://nodejs.org/en/download/package-manager/\" target=\"_blank\" rel=\"noreferrer noopener\">LINK</a></p>\n\n<h4><strong>#### npm is installed with Node.js just check in linux terminal like below:</strong></h4>\n\n<ul>\n	<li>node -v</li>\n	<li>npm -v</li>\n</ul>\n\n<h4><strong>#### Set BrowserSync inside folder /templates/webpack.mix.js and change your dev url</strong></h4>\n\n<ul>\n	<li>proxy: \'http://localhost/starter/\', to your installation processwire folder like:</li>\n	<li>proxy: \'http://localhost/your-processwire-installation-folder/\'</li>\n</ul>\n\n<p>Next install npm packages in your templates folder with command <strong>npm install</strong></p>\n\n<p>Now, boot up the dev server <strong>npm run watch</strong>, and you\'re all set go!</p>\n\n<p>On completion, use the command <strong>npm run production</strong> to build styles and scripts in the dist folder</p>\n\n<p><strong>#### Simple Usage ( Basic Command ) </strong></p>\n\n<ul>\n	<li>Run =&gt; <strong>npm install</strong></li>\n	<li>Watch =&gt;<strong> npm run watch</strong></li>\n	<li>Build =&gt; <strong>npm run production</strong></li>\n</ul>\n\n<h4><strong>#### All files to Webpack build steps is inside file ( webpack.mix.js )</strong></h4>\n\n<h4><strong>#### Folder With all SCSS files is inside templates/assets/src/scss</strong></h4>\n\n<h4><strong>#### All build styles and scripts is inside the ( templates/assets/ ) css or js folders</strong></h4>\n\n<h4><strong>#### References:</strong></h4>\n\n<ul>\n	<li><a href=\"https://milligram.io/\" target=\"_blank\" rel=\"noreferrer noopener\">Milligram</a></li>\n	<li><a href=\"https://github.com/turbolinks/turbolinks\" target=\"_blank\" rel=\"noreferrer noopener\">Turbolinks</a></li>\n	<li><a href=\"https://feathericons.com/\" rel=\"nofollow\">Feather Icons</a></li>\n	<li><a href=\"https://icofont.com/\" rel=\"nofollow\">Icofont</a></li>\n	<li><a href=\"https://ionicons.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Ionicons</a></li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1107', '<h3><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</h3>\n\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1126', '<p><img alt=\"\"	src=\"/site/assets/files/1126/space.svg\" width=\"97\" />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.<img alt=\"\" class=\"align_right\"	src=\"/site/assets/files/1126/megaphone-alt.svg\" width=\"193\" /> Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>\n\n<h2>Where does it come from?</h2>\n\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one <img alt=\"\" class=\"align_left\"	src=\"/site/assets/files/1126/pixels.svg\" width=\"49\" />of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>');

DROP TABLE IF EXISTS `field_categories`;
CREATE TABLE `field_categories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1100', '1094', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1099', '1095', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1101', '1116', '0');

DROP TABLE IF EXISTS `field_checkbox`;
CREATE TABLE `field_checkbox` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1015', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1018', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1019', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1020', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1032', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1033', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1074', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1075', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1079', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1080', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1090', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1091', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1092', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1093', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1094', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1095', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1098', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1099', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1100', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1101', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1103', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1107', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1131', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1132', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1133', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1134', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1135', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1136', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1141', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1142', '1');
INSERT INTO `field_checkbox` (`pages_id`, `data`) VALUES('1143', '1');

DROP TABLE IF EXISTS `field_checkbox_1`;
CREATE TABLE `field_checkbox_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_comments`;
CREATE TABLE `field_comments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `cite` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL,
  `created_users_id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `website` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(128) DEFAULT NULL,
  `subcode` varchar(40) DEFAULT NULL,
  `upvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `downvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `stars` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_id_sort` (`pages_id`,`sort`),
  KEY `status` (`status`,`email`),
  KEY `pages_id` (`pages_id`,`status`,`created`),
  KEY `created` (`created`,`status`),
  KEY `code` (`code`),
  KEY `subcode` (`subcode`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1101', 'Hello Processwire Followers ...', '2', '6', '1', 'rafaoski', 'test@gmail.com', '1549868851', '41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', '', '0', '0', '19KJv18QhSWVexZSXEt1Lrx_cmNBW9w1fkmrcLCWoZKWFIRCNL1ERRNdsdG7Z67dv6ktw_E_iaC4qV_telD2dYR_QPyoZjt3ZzvE3JP_UXnF9EL4_37RlJ8wKjav7Odh', 'aR697bn2jVl5ae_39ccvGnIlqx9QSKRoRXnLxBzT', '0', '0', NULL);

DROP TABLE IF EXISTS `field_comments_votes`;
CREATE TABLE `field_comments_votes` (
  `comment_id` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `created` timestamp NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`,`ip`,`vote`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_date`;
CREATE TABLE `field_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1099', '2019-01-03 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1101', '2019-01-11 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1100', '2019-01-15 00:00:00');

DROP TABLE IF EXISTS `field_e_mail`;
CREATE TABLE `field_e_mail` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_e_mail` (`pages_id`, `data`) VALUES('1019', 'admin@gmail.com');
INSERT INTO `field_e_mail` (`pages_id`, `data`) VALUES('1054', 'alex@gmail.com');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_email_subject`;
CREATE TABLE `field_email_subject` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_email_subject` (`pages_id`, `data`) VALUES('1019', 'Your Subject');

DROP TABLE IF EXISTS `field_external_link`;
CREATE TABLE `field_external_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_external_link` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1016', '1131,1132,1133,1134,1135,1136', '6', '1130');
INSERT INTO `field_external_link` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1092', '1141,1142,1143', '3', '1140');

DROP TABLE IF EXISTS `field_favicon`;
CREATE TABLE `field_favicon` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_favicon` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1016', 'favicon.png', '0', '', '2018-11-23 18:59:07', '2018-11-23 18:59:07', '');

DROP TABLE IF EXISTS `field_fieldset_map`;
CREATE TABLE `field_fieldset_map` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_map_end`;
CREATE TABLE `field_fieldset_map_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_seo`;
CREATE TABLE `field_fieldset_seo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_seo_end`;
CREATE TABLE `field_fieldset_seo_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_get_user`;
CREATE TABLE `field_get_user` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_get_user` (`pages_id`, `data`, `sort`) VALUES('1092', '41', '0');

DROP TABLE IF EXISTS `field_home_sections`;
CREATE TABLE `field_home_sections` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_home_sections` (`pages_id`, `data`, `sort`) VALUES('1', '1082', '0');
INSERT INTO `field_home_sections` (`pages_id`, `data`, `sort`) VALUES('1', '1119', '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'processwire.svg', '0', 'Processwire CMS', '2019-02-07 17:45:07', '2019-02-06 14:02:24', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'rocket.svg', '1', '', '2019-02-08 21:43:43', '2019-02-08 21:43:43', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'ssl-security.svg', '2', '', '2019-02-08 22:00:33', '2019-02-08 22:00:33', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1015', 'meteor.svg', '0', '', '2019-02-06 20:01:56', '2019-02-06 20:01:56', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'map.svg', '0', '', '2019-02-06 20:03:31', '2019-02-06 20:03:31', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1019', 'email.svg', '0', '', '2019-02-06 20:02:18', '2019-02-06 20:02:18', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1019', 'ionicons_svg_md-compass.svg', '1', '', '2019-02-18 14:59:22', '2019-02-18 14:59:22', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1020', 'ui-lock.svg', '0', '', '2019-02-09 06:22:26', '2019-02-09 06:22:26', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1032', 'light-bulb.svg', '0', '', '2019-02-06 22:49:54', '2019-02-06 22:49:54', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1033', 'search-document.svg', '0', '', '2019-02-09 20:19:32', '2019-02-09 20:19:32', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1074', 'robot.svg', '0', '', '2019-02-08 21:48:24', '2019-02-08 21:48:24', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1074', 'bullseye.svg', '1', '', '2019-02-08 21:55:19', '2019-02-08 21:55:19', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1075', 'badge.svg', '0', '', '2019-02-09 14:35:04', '2019-02-09 14:35:04', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1079', 'beverage.svg', '0', '', '2019-02-08 15:07:39', '2019-02-08 15:07:39', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1080', 'bucket1.svg', '0', '', '2019-02-08 15:57:24', '2019-02-08 15:57:24', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1090', 'archive.svg', '0', '', '2019-02-10 12:39:36', '2019-02-10 12:39:36', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1091', 'users-alt-2.svg', '0', '', '2019-02-10 12:39:36', '2019-02-10 12:39:36', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1092', 'businessman.svg', '0', '', '2019-02-10 12:39:36', '2019-02-10 12:39:36', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1093', 'layout.svg', '0', '', '2019-02-10 12:39:36', '2019-02-10 12:39:36', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1098', 'pen-nib.svg', '0', '', '2019-02-10 12:39:36', '2019-02-10 12:39:36', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1099', 'ionicons_svg_ios-jet.svg', '0', '', '2019-02-10 12:39:36', '2019-02-10 12:39:36', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1100', 'ionicons_svg_md-airplane.svg', '0', '', '2019-02-10 12:39:36', '2019-02-10 12:39:36', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1101', 'megaphone-alt.svg', '0', '', '2019-02-11 08:19:27', '2019-02-11 08:19:27', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1103', 'tags.svg', '0', '', '2019-02-10 12:39:36', '2019-02-10 12:39:36', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1107', 'magic-alt.svg', '0', '', '2019-02-10 18:19:05', '2019-02-10 18:19:05', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1126', 'space.svg', '0', '', '2019-02-17 23:14:32', '2019-02-17 23:14:32', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1126', 'megaphone-alt.svg', '1', '', '2019-02-17 23:14:32', '2019-02-17 23:14:32', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1126', 'pixels.svg', '2', '', '2019-02-17 23:14:32', '2019-02-17 23:14:32', '');

DROP TABLE IF EXISTS `field_latitude`;
CREATE TABLE `field_latitude` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_latitude` (`pages_id`, `data`) VALUES('1019', '52.231764');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_logo` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1016', 'lens.svg', '0', 'svg-lighten', '2019-02-12 09:41:20', '2019-02-12 09:30:34', '');

DROP TABLE IF EXISTS `field_longitude`;
CREATE TABLE `field_longitude` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_longitude` (`pages_id`, `data`) VALUES('1019', '21.005800');

DROP TABLE IF EXISTS `field_marker_text`;
CREATE TABLE `field_marker_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_marker_text` (`pages_id`, `data`) VALUES('1019', 'Welcome to the Palace of Culture :)');

DROP TABLE IF EXISTS `field_meta_description`;
CREATE TABLE `field_meta_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1', 'Your design and development process won\'t be interrupted by ProcessWire – it\'s built to adapt to your way of doing things, not the other way around.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1015', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1016', 'ProcessWire 3x / Starter Profile');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1018', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1019', 'Contact between 10am and 6pm ... Call: 577 40 329');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1020', 'When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1032', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1074', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1075', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1079', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1080', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1090', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1091', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1092', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1093', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1098', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1099', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1100', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1101', 'Starter Site Profile For Processwire3x');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1103', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1107', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets ...');

DROP TABLE IF EXISTS `field_meta_title`;
CREATE TABLE `field_meta_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1', 'ProcessWire CMS will rise to any task');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1015', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1016', 'Site Starter');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1018', 'Lorem Ipsum has been the industry\'s standard dummy text.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1019', 'The time for a response is a maximum of 5 hours after submitting the form.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1020', 'What personal data we collect and why we collect it');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1032', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1074', 'Lorem Ipsum has been the industry\'s standard dummy text.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1075', 'Lorem Ipsum has been the industry\'s standard dummy text.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1079', 'Lorem Ipsum has been the industry\'s standard dummy text.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1080', 'Lorem Ipsum has been the industry\'s standard dummy text.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1090', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1091', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1092', 'What is Lorem Ipsum?');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1093', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1098', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1099', 'What is Lorem Ipsum? Lorem Ipsum is simply dummy text ...');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1100', 'What is Lorem Ipsum? Lorem Ipsum is simply dummy text ...');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1101', 'Starter / Basic Profile');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1103', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1107', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');

DROP TABLE IF EXISTS `field_option_switch`;
CREATE TABLE `field_option_switch` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_option_switch` (`pages_id`, `data`, `sort`) VALUES('1016', '1066', '1');
INSERT INTO `field_option_switch` (`pages_id`, `data`, `sort`) VALUES('1016', '1108', '0');
INSERT INTO `field_option_switch` (`pages_id`, `data`, `sort`) VALUES('1016', '1122', '2');
INSERT INTO `field_option_switch` (`pages_id`, `data`, `sort`) VALUES('1016', '1139', '3');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_phits`;
CREATE TABLE `field_phits` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_phone`;
CREATE TABLE `field_phone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_phone` (`pages_id`, `data`) VALUES('1019', '+1 (409) 987–5874');

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1017', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1120', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1032', '164');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1033', '164');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1034', '164');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1035', '166');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1055', '167');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1076', '175');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1086', '178');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1087', '181');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1138', '194');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_save_message`;
CREATE TABLE `field_save_message` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_save_message` (`pages_id`, `data`) VALUES('1019', '1');

DROP TABLE IF EXISTS `field_seo`;
CREATE TABLE `field_seo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `meta_inherit` tinyint(3) unsigned NOT NULL,
  `opengraph_inherit` tinyint(3) unsigned NOT NULL,
  `twitter_inherit` tinyint(3) unsigned NOT NULL,
  `robots_inherit` tinyint(3) unsigned NOT NULL,
  `sitemap_inherit` tinyint(3) unsigned NOT NULL,
  `sitemap_include` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_session_ip`;
CREATE TABLE `field_session_ip` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_session_ip` (`pages_id`, `data`) VALUES('1054', '127.0.0.1');

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1015', '<blockquote>\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\n</blockquote>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1018', '<blockquote>\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\n</blockquote>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1019', '<h3>WHERE WE ARE</h3>\n\n<p><strong>WE ARE GLOBAL</strong><br />\nLorem Ipsum is simply dummy text of the printing and typesetting industry.<br />\n<br />\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1032', '<blockquote>\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\n</blockquote>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1074', '<blockquote>\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\n</blockquote>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1079', '<blockquote>\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\n</blockquote>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1080', '<blockquote>\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p>\n</blockquote>');

DROP TABLE IF EXISTS `field_sidebar_code`;
CREATE TABLE `field_sidebar_code` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar_code` (`pages_id`, `data`) VALUES('1127', '<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Sunsets don&#39;t get much better than this one over <a href=\"https://twitter.com/GrandTetonNPS?ref_src=twsrc%5Etfw\">@GrandTetonNPS</a>. <a href=\"https://twitter.com/hashtag/nature?src=hash&amp;ref_src=twsrc%5Etfw\">#nature</a> <a href=\"https://twitter.com/hashtag/sunset?src=hash&amp;ref_src=twsrc%5Etfw\">#sunset</a> <a href=\"http://t.co/YuKy2rcjyU\">pic.twitter.com/YuKy2rcjyU</a></p>&mdash; US Department of the Interior (@Interior) <a href=\"https://twitter.com/Interior/status/463440424141459456?ref_src=twsrc%5Etfw\">May 5, 2014</a></blockquote> <script async src=\"https://platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>');

DROP TABLE IF EXISTS `field_sidebars`;
CREATE TABLE `field_sidebars` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebars` (`pages_id`, `data`, `sort`) VALUES('1', '1126', '0');
INSERT INTO `field_sidebars` (`pages_id`, `data`, `sort`) VALUES('1074', '1127', '0');

DROP TABLE IF EXISTS `field_sticky`;
CREATE TABLE `field_sticky` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tags`;
CREATE TABLE `field_tags` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1099', '1104', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1101', '1118', '0');

DROP TABLE IF EXISTS `field_text_1`;
CREATE TABLE `field_text_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1016', 'Powered by ProcessWire CMS / CMF');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1069', 'GW_VERIFICATION_CODE');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1070', 'GA_TRACKING_ID');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1082', 'Find out more about us');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1119', 'See the latest news from our blog');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1131', 'facebook');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1132', 'twitter');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1133', 'youtube');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1134', 'activity');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1135', 'link');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1136', 'rss');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1141', 'twitter');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1142', 'facebook');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1143', 'instagram');

DROP TABLE IF EXISTS `field_text_2`;
CREATE TABLE `field_text_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_text_2` (`pages_id`, `data`) VALUES('1016', 'en');

DROP TABLE IF EXISTS `field_text_3`;
CREATE TABLE `field_text_3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_text_3` (`pages_id`, `data`) VALUES('1131', 'See what\'s new on Facebook');
INSERT INTO `field_text_3` (`pages_id`, `data`) VALUES('1132', 'See what\'s new on Twitter');
INSERT INTO `field_text_3` (`pages_id`, `data`) VALUES('1133', 'See what\'s new on Youtube');
INSERT INTO `field_text_3` (`pages_id`, `data`) VALUES('1134', 'See what\'s new on ProcessWire Weekly');
INSERT INTO `field_text_3` (`pages_id`, `data`) VALUES('1135', 'See what\'s new on ProcessWire CMS / CMF');
INSERT INTO `field_text_3` (`pages_id`, `data`) VALUES('1136', 'See what\'s new on Blog RSS');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
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
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Basic Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Sitemap');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Contact');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Privacy Policy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'Sub Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1054', 'alex@gmail.com - 2018.10.22 | 22:01');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1055', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1056', 'Sidebars');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1062', 'Basic Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1064', 'Advanced Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1065', 'Minify HTML ( To enable, select Option 1 )');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1066', 'Enable Small Admin Panels Margin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1069', 'Google Webmaster Tools Verification Code ( To enable, select Option 1 )');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1070', 'Google Analytics Tracking Code ( To enable, select Option 1 )');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1074', 'About us');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1075', 'About 1 Children');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1076', 'Clone');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1077', 'Clone a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1078', 'Clone a tree of pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1079', 'About 2 Children');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1080', 'About 3 Children');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1081', 'Home Sections');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1082', 'Section About');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1086', 'Export/Import');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1087', 'Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1088', 'Use the comments manager');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1090', 'Archives');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1091', 'Authors');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1092', 'John Doe');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1093', 'Categories');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1094', 'Airlines');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1095', 'Airplanes');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1098', 'Posts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1099', 'Best Jet Fighter');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1100', 'Popular Airlines');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1101', 'Starter Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1102', 'RSS');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1103', 'Tags');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1104', 'F 16');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1107', 'Blog');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1108', 'Enable Blog Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1116', 'CSS Frameworks');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1118', 'Milligram');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1119', 'Section Blog Posts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1120', 'Blog Posts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1122', 'Enable Share Buttons');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1126', 'Custom Content');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1127', 'My Last Tweets');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1128', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1129', 'external_link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1130', 'options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1138', 'Adminer');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1139', 'Enable Turbolinks');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1140', 'john-doe');

DROP TABLE IF EXISTS `field_url_1`;
CREATE TABLE `field_url_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1016', 'https://processwire.com/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1131', 'https://facebook.com');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1132', 'https://twitter.com');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1133', 'https://www.youtube.com/watch?v=j7Qr9CExatY');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1134', 'https://weekly.pw/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1135', 'https://processwire.com/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1141', 'https://twitter.com');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1142', 'https://facebook.com');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1143', 'https://www.instagram.com/');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'about');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'about-item');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('134', 'basic-404');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('133', 'basic-privacy');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'basic-search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'basic-sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('121', 'blog');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('122', 'blog-archives');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('123', 'blog-author');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('124', 'blog-authors');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('125', 'blog-categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('126', 'blog-category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('127', 'blog-post');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('128', 'blog-posts');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('129', 'blog-rss');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('130', 'blog-tag');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('131', 'blog-tags');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'contact');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'contact-item');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'more-options');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'options');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('132', 'repeater_external_link');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'section');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'sidebar-ckeditor');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'sidebar-textarea');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'sidebars');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'toggle-options');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '98', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '99', '1', '{\"rows\":19}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '104', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '105', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '108', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '109', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '119', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '125', '5', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '128', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '129', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '140', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '142', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '143', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '101', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '102', '4', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '104', '2', '{\"label\":\"Site Description\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '105', '1', '{\"label\":\"Site Name\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '120', '9', '{\"columnWidth\":50,\"label\":\"Powered Text\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '121', '10', '{\"columnWidth\":50,\"label\":\"Powered URL\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '122', '8', '{\"description\":\"[HTML ISO Language Code Reference](https:\\/\\/www.w3schools.com\\/tags\\/ref_language_codes.asp)\",\"label\":\"HTML lang Attribute\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '124', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '135', '7', '{\"description\":\"Move categories and tags to the trash ( which are not linked to any pages of the blog )\",\"label\":\"Clear Categories and Tags\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '139', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '142', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '98', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '104', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '105', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '106', '6', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '108', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '109', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '111', '18', '{\"columnWidth\":50,\"description\":\"[Get Latitude -> ](https:\\/\\/www.latlong.net\\/)\",\"placeholder\":\"33.748997\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '112', '19', '{\"columnWidth\":50,\"description\":\"[Get Longitude -> ](https:\\/\\/www.latlong.net\\/)\",\"placeholder\":\"-84.387985\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '113', '20', '{\"notes\":\"[OpenStreetMap](https:\\/\\/www.openstreetmap.org\\/) is a world map created by people like you and with the possibility of using under an open license.\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '114', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '115', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '116', '4', '{\"description\":\"Turn on saving Messages\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '117', '5', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '119', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '125', '9', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '128', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '137', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '138', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '140', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '141', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '142', '22', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '143', '23', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '99', '3', '{\"label\":\"Message\",\"maxlength\":2048,\"rows\":12}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '107', '2', '{\"columnWidth\":50,\"maxlength\":2048,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '117', '1', '{\"columnWidth\":50,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '142', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '142', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '118', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '142', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '120', '2', '{\"label\":\"Option 2\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '125', '1', '{\"label\":\"Option 1\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '142', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '142', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '142', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '120', '1', '{\"label\":\"Home Section Title\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '142', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '143', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '98', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '104', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '105', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '108', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '109', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '119', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '125', '5', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '128', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '133', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '139', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '140', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '142', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('124', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '98', '5', '{\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '99', '1', '{\"rows\":19}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '104', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '105', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '108', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '109', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '119', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '125', '6', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '128', '9', '{\"collapsed\":\"1\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '130', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '132', '4', '{\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '134', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '136', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '140', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '141', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '142', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '143', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '143', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '142', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '104', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '105', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '108', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '109', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '119', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '128', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '140', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '142', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '125', '4', '{\"label\":\"Resize the background image to make sure the image is visible\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '120', '0', '{\"label\":\"Icon\",\"notes\":\"[Icons From](https:\\/\\/feathericons.com\\/)\",\"placeholder\":\"Add Icon\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '121', '1', '{\"label\":\"Link to page\",\"placeholder\":\"https:\\/\\/processwire.com\\/\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '122', '2', '{\"label\":\"Link Label\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '123', '3', '{\"label\":\"Link title\",\"notes\":\"More Info [Link TITLE Attribute](https:\\/\\/www.w3.org\\/TR\\/WCAG20-TECHS\\/H33.html)\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '125', '4', '{\"label\":\"Open in a new window\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '135', '5', '{\"label\":\"Rel ( rel=\\u201dnofollow\\u201d )\",\"notes\":\"The NoFollow tag is an HTML attribute that instructs Search Engines not to follow a hyperlink.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '104', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '105', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '109', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '125', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '128', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '140', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '142', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '1', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '98', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '104', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '105', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '108', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '109', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '119', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '125', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '128', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '140', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '141', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '142', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '143', '13', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"icon\":\"circle-thin\",\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1,\"showNoneOption\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"icon\":\"envelope-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png svg\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0,\"themeOffset\":\"s\",\"icon\":\"file-image-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":12,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"icon\":\"file-text\",\"htmlOptions\":[2],\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeImage', 'logo', '32768', 'Logo', '{\"extensions\":\"gif jpg jpeg png svg\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0,\"icon\":\"dot-circle-o\",\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeImage', 'favicon', '0', 'Favicon', '{\"fileSchema\":6,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":0,\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"icon\":\"bullseye\",\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeTextarea', 'meta_description', '32768', 'Meta description', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":1,\"rows\":1,\"themeBorder\":\"none\",\"icon\":\"circle-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeText', 'meta_title', '0', 'Meta title', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":1,\"size\":0,\"themeBorder\":\"none\",\"icon\":\"circle-o-notch\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeText', 'email_subject', '0', 'Email Subject', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"hand-lizard-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeText', 'session_ip', '0', 'Session IP Adress', '{\"zeroNotEmpty\":0,\"inputType\":\"text\",\"size\":10,\"icon\":\"ellipsis-h\",\"precision\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeFieldsetTabOpen', 'fieldset_seo', '0', 'SEO', '{\"closeFieldID\":109,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeFieldsetClose', 'fieldset_seo_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_seo\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":108}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeText', 'latitude', '0', 'Map Latitude', '{\"zeroNotEmpty\":0,\"inputType\":\"text\",\"size\":10,\"icon\":\"sort-amount-asc\",\"precision\":9,\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"pattern\":\"-?\\\\d{1,3}\\\\.\\\\d+\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeText', 'longitude', '0', 'Map Longitude', '{\"precision\":2,\"zeroNotEmpty\":0,\"inputType\":\"text\",\"size\":10,\"icon\":\"sort-amount-desc\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"pattern\":\"-?\\\\d{1,3}\\\\.\\\\d+\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeText', 'marker_text', '0', 'Map Markrer Text', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"map-marker\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeFieldsetTabOpen', 'fieldset_map', '0', 'Open Street Map', '{\"closeFieldID\":115,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeFieldsetClose', 'fieldset_map_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_map\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":114}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeCheckbox', 'save_message', '0', 'Save Message', '{\"collapsed\":0,\"icon\":\"check\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeEmail', 'e_mail', '0', 'E-Mail', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":512,\"showCount\":0,\"size\":0,\"icon\":\"envelope-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeTextarea', 'sidebar_code', '0', 'Add Custom Sidebars', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"icon\":\"terminal\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypePageTable', 'sidebars', '0', 'Sidebars', '{\"template_id\":[54,49],\"parent_id\":1056,\"trashOnDelete\":1,\"unpubOnTrash\":1,\"unpubOnUnpub\":1,\"collapsed\":0,\"noclose\":0,\"columns\":\"title\\ntemplate.label\",\"icon\":\"th\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeText', 'text_1', '0', 'Text 1', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"textformatters\":[\"TextformatterEntities\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeURL', 'url_1', '0', 'URL 1', '{\"textformatters\":[\"TextformatterEntities\"],\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeText', 'text_2', '0', 'Text 2', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypeText', 'text_3', '0', 'Text 3', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypePage', 'option_switch', '0', 'Basic Options', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":1062,\"labelFieldName\":\"title\",\"collapsed\":0,\"optionColumns\":0,\"icon\":\"toggle-off\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('125', 'FieldtypeCheckbox', 'checkbox', '0', 'Checkbox', '{\"collapsed\":0,\"icon\":\"check-circle-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('128', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":0,\"collapsed\":2,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"icon\":\"th-large\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('129', 'FieldtypePage', 'home_sections', '0', 'Home Sections', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":1081,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('130', 'FieldtypePage', 'categories', '0', 'Categories', '{\"inputfield\":\"InputfieldAsmSelect\",\"labelFieldName\":\"title\",\"addable\":1,\"icon\":\"sitemap\",\"derefAsPage\":0,\"usePageEdit\":0,\"parent_id\":1093,\"template_id\":72,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('132', 'FieldtypeDatetime', 'date', '32768', 'Date', '{\"dateOutputFormat\":\"j F Y\",\"size\":25,\"datepicker\":3,\"dateInputFormat\":\"Y\\/m\\/d\",\"defaultToday\":1,\"placeholder\":\"yyyy\\/mm\\/dd\",\"icon\":\"calendar\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('133', 'FieldtypePage', 'get_user', '32768', 'Select the user who added entries', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldSelect\",\"labelFieldName\":\"title\",\"template_id\":3,\"icon\":\"user-plus\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('134', 'FieldtypePage', 'tags', '0', 'Tags', '{\"inputfield\":\"InputfieldPageAutocomplete\",\"parent_id\":1103,\"template_id\":76,\"labelFieldName\":\"title\",\"icon\":\"tags\",\"operator\":\"%=\",\"searchFields\":\"title\",\"addable\":1,\"derefAsPage\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('135', 'FieldtypeCheckbox', 'checkbox_1', '0', 'Checkbox 1', '{\"collapsed\":0,\"icon\":\"check-circle-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('136', 'FieldtypeComments', 'comments', '0', 'Comments', '{\"moderate\":1,\"useNotify\":0,\"deleteSpamDays\":3,\"depth\":0,\"dateFormat\":\"relative\",\"useVotes\":0,\"useStars\":0,\"schemaVersion\":6,\"icon\":\"comment\",\"collapsed\":0,\"useGravatar\":\"g\",\"redirectAfterPost\":1,\"quietSave\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('137', 'FieldtypeText', 'phone', '0', 'Phone', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"mobile\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('138', 'FieldtypeText', 'adress', '0', 'Adress', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"map-marker\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('139', 'FieldtypeRepeater', 'external_link', '0', 'External Link', '{\"repeaterFields\":[120,121,122,123,125,135],\"repeaterLoading\":1,\"repeaterTitle\":\"{text_1}\",\"icon\":\"external-link\",\"template_id\":78,\"parent_id\":1129,\"repeaterCollapse\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('140', 'FieldtypeSeoMaestro', 'seo', '0', 'SeoMaestro', '{\"meta_title\":\"{meta_title|title}\",\"meta_description\":\"{meta_description}\",\"opengraph_title\":\"{meta_title|title}\",\"opengraph_description\":\"{meta_description}\",\"opengraph_image\":\"{images}\",\"opengraph_imageAlt\":\"{images.description}\",\"opengraph_type\":\"website\",\"opengraph_locale\":\"en_US\",\"opengraph_siteName\":\"Site Starter\",\"twitter_card\":\"summary\",\"robots_noIndex\":0,\"robots_noFollow\":0,\"sitemap_include\":1,\"sitemap_priority\":\"0.5\",\"sitemap_changeFrequency\":\"monthly\",\"collapsed\":0,\"inputfield_meta_show\":1,\"inputfield_meta\":[\"title\",\"description\",\"keywords\"],\"inputfield_opengraph_show\":1,\"inputfield_opengraph\":[\"title\",\"description\",\"image\",\"imageAlt\",\"type\",\"locale\",\"siteName\"],\"inputfield_twitter_show\":1,\"inputfield_twitter\":[\"card\",\"site\",\"creator\"],\"inputfield_robots_show\":1,\"inputfield_robots\":[\"noIndex\",\"noFollow\"],\"inputfield_sitemap_show\":1,\"inputfield_sitemap\":[\"include\",\"priority\",\"changeFrequency\"],\"icon\":\"dot-circle-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('141', 'FieldtypeText', 'aos_column_break', '0', '', '{\"skipLabel\":true,\"collapsed\":8,\"tags\":\"-aos\",\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('142', 'FieldtypeInteger', 'sticky', '4', 'Sticky position', '{\"inputType\":\"number\",\"collapsed\":2,\"description\":\"The higher the value the higher on the pagelist will the page appear.\",\"tags\":\"-aos\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('143', 'FieldtypePageHitCounter', 'phits', '0', 'Page hits', '{\"collapsed\":4,\"tags\":\"-pagehits\",\"icon\":\"eye\"}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '{\"shortcutSort\":[53,73,72,76,46],\"bookmarks\":{\"_0\":[]}}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\"]}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.126\"}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2018-10-13 20:10:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2018-10-13 20:11:13');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '{\"useAsLogin\":\"\",\"userAvatar\":\"icon.user-circle\",\"userLabel\":\"{Name}\",\"logoURL\":\"\",\"logoAction\":\"0\",\"layout\":\"\",\"noGrid\":\"0\",\"maxWidth\":1600,\"groupNotices\":\"1\",\"cssURL\":\"\",\"inputSize\":\"m\",\"noBorderTypes\":[],\"offsetTypes\":[],\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2018-10-13 20:11:13');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2018-10-13 20:11:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2018-10-13 20:11:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'InputfieldPageAutocomplete', '0', '', '2018-10-15 11:48:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'TextformatterMarkdownExtra', '1', '', '2018-10-22 16:40:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'FieldtypePageTable', '3', '', '2019-02-04 19:43:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'InputfieldPageTable', '0', '', '2019-02-04 19:43:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'ProcessPageClone', '11', '', '2019-02-08 15:05:07');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'ProcessPagesExportImport', '1', '', '2019-02-10 11:48:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('179', 'FieldtypeComments', '1', '', '2019-02-10 12:21:01');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('180', 'InputfieldCommentsAdmin', '0', '', '2019-02-10 12:21:01');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('181', 'ProcessCommentsManager', '1', '', '2019-02-10 12:21:14');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('184', 'MarkupRSS', '0', '', '2019-02-10 23:28:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('185', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1128,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-02-17 23:23:47');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('186', 'InputfieldRepeater', '0', '', '2019-02-17 23:23:47');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('188', 'SeoMaestro', '3', '{\"sitemapEnable\":1,\"sitemapPath\":\"sitemap.xml\",\"sitemapCache\":\"120\",\"baseUrl\":\"\",\"defaultLanguage\":\"en\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-02-19 14:43:04');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('189', 'FieldtypeSeoMaestro', '1', '', '2019-02-19 14:43:04');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('190', 'InputfieldSeoMaestro', '0', '', '2019-02-19 14:43:04');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('191', 'AdminOnSteroids', '11', '{\"enabled\":1,\"enabledSubmodules\":[\"Misc\",\"PageListTweaks\"],\"AddNewChildFirst_enabledTemplates\":[],\"AdminTweaks\":[],\"AsmTweaks\":[],\"CKEaddons_plugins\":[],\"CKEaddons_enabledFields\":[],\"CKEaddons_skin\":\"default\",\"ListerTweaks_find\":[\"\"],\"ListerTweaks_users\":[\"\"],\"ListerTweaks_options\":[],\"DeselectRadios\":[\"adminOnly\"],\"FieldAndTemplateEditLinks\":\"pw-blank\",\"FileFieldTweaks\":[],\"FieldOverrides\":\"\",\"FocusInputOnLangTabSwitch\":\"focus\",\"FocusInputOnLangTabSwitchCKE\":\"focus\",\"Hotkeys\":[],\"IUC_mode\":[\"button\"],\"IUC_buttonPosition\":\"button-left\",\"IUC_target\":\"pw-blank\",\"IUC_forceHttp\":\"\",\"IUC_enabledTemplates\":[],\"IUC_enabledFields\":[],\"LongClickDuration\":\"600\",\"Misc\":[\"adminColumns\",\"iconsFilter\",\"stickyCKE\",\"prevNextLinks\",\"checkAllCheckboxes\"],\"ModuleTweaks\":[],\"NavItems_pages_submenu\":null,\"NavItems_pages\":[],\"NavItems_custom\":\"\",\"PageListIcons\":\"\",\"PageListThumbs_style\":\"circle\",\"PageListThumbs_items\":\"\",\"PageListThumbs_options\":[],\"PageListTweaks\":[\"highlightRows\",\"pListIDs\",\"refreshBtn\",\"deleteBtn\",\"stickyBtn\",\"pListUnselect\",\"pListIconOnly\",\"pListMiddleClick\",\"pListActiveBold\",\"pListShowActions\",\"pListShowExtras\",\"pListMarkup\",\"pListCounters\",\"pListFullRowHover\"],\"PagePreviewBtn\":\"pw-blank\",\"RenoTweaks\":[],\"RestrictTreeDropdown\":[],\"Tooltips\":[],\"UikitTweaks\":[],\"AdminStyle\":\"\",\"AdminScript\":\"\",\"CKEStyle\":\"\",\"CKEScript\":\"\",\"CKEtemplates\":\"\",\"FieldOverridesFile\":\"\",\"BrandingLogo\":\"\",\"restore\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\",\"PageListTweaksRoles\":[],\"MiscRoles\":[]}', '2019-02-22 16:47:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('192', 'PageTableExtraActions', '10', '', '2019-02-22 16:47:14');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('193', 'TracyDebugger', '3', '{\"apiDataVersion\":\"3.0.126\"}', '2019-02-22 16:47:28');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('194', 'ProcessTracyAdminer', '1', '', '2019-02-22 16:47:28');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('195', 'TemplateFieldWidths', '10', '{\"tfw_collapsed\":\"1\",\"field_identifier\":\"name\",\"show_original_width\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-02-22 16:47:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('196', 'MarkupSocialShareButtons', '1', '{\"namespace\":\"mssb-\",\"char_limit\":100,\"char_limit_sypnosis\":\"\\u2026\",\"title_fields\":\"meta_title|title\",\"text_fields\":\"meta_headline|body\",\"theme\":\"\",\"show\":[\"email\",\"facebook\",\"twitter\",\"linkedin\"],\"email_url\":\"mailto:\",\"email_params\":\"?subject={title}&body=%0A%0A{url}%0A%0A{text}\",\"email_icon\":\"<i data-feather=\'mail\'><\\/i>\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/sharer\\/sharer.php\",\"facebook_params\":\"?u={url}\",\"facebook_icon\":\"<i data-feather=\'facebook\'><\\/i>\",\"googleplus_url\":\"https:\\/\\/plus.google.com\\/share\",\"googleplus_params\":\"?url={url}\",\"googleplus_icon\":\"<i style=\'font-weight: bold; font-size: 3rem; \'>G+<\\/i>\",\"twitter_url\":\"https:\\/\\/twitter.com\\/intent\\/tweet\",\"twitter_params\":\"?url={url}&text={text}&hashtags={tags}\",\"twitter_icon\":\"<i data-feather=\'twitter\'><\\/i>\",\"linkedin_url\":\"http:\\/\\/www.linkedin.com\\/shareArticle\",\"linkedin_params\":\"?mini=true&url={url}&title={title}&summary={text}&source={source}\",\"linkedin_icon\":\"<i data-feather=\'linkedin\'><\\/i>\",\"tumblr_url\":\"http:\\/\\/www.tumblr.com\\/share\\/link\",\"tumblr_params\":\"?url={url}&name={title}&description={text}\",\"tumblr_icon\":\"<i data-feather=\'tumblr\'><\\/i>\",\"reddit_url\":\"http:\\/\\/www.reddit.com\\/submit\",\"reddit_params\":\"?url={url}&title={title}\",\"reddit_icon\":\"<i data-feather=\'reddit\'><\\/i>\",\"pinterest_url\":\"https:\\/\\/pinterest.com\\/pin\\/create\\/bookmarklet\\/\",\"pinterest_params\":\"?media={media}&url={url}&description={text}\",\"pinterest_icon\":\"<i data-feather=\'pinterest\'><\\/i>\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-02-22 16:59:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('197', 'PageHitCounter', '3', '{\"forTemplates\":[\"home\",\"contact\",\"blog\",\"blog-posts\",\"blog-post\",\"basic-404\"],\"forAPITemplates\":[],\"sessionLifetime\":\"1200\",\"showForBackend\":1,\"excludeTemplates\":[],\"botFilter\":1,\"ipValidation\":1,\"customAttributes\":\"defer\",\"thousandSeperator\":\".\",\"forRoles\":[],\"ipFilter\":\"\",\"resetSelector\":\"\",\"dryRun\":1,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-02-23 16:36:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('198', 'FieldtypePageHitCounter', '1', '', '2019-02-23 16:36:58');

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
) ENGINE=InnoDB AUTO_INCREMENT=1145 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2019-02-23 17:20:07', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'proc', '1035', '2019-02-15 18:06:43', '40', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2018-10-13 20:11:21', '40', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2018-10-13 20:11:23', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2018-10-13 20:11:22', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '80', 'http404', '1035', '2019-02-23 17:20:07', '41', '2018-10-13 20:10:55', '3', '2018-10-13 20:10:55', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'test', '1', '2019-02-15 18:06:43', '40', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '2', '2018-10-13 20:10:55', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '41', '2018-10-13 20:10:55', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2018-10-13 20:10:55', '40', '2018-10-13 20:10:55', '40', '2018-10-13 20:10:55', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2018-10-13 20:10:55', '40', '2018-10-13 20:10:55', '40', '2018-10-13 20:10:55', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2018-10-13 20:11:13', '40', '2018-10-13 20:11:13', '40', '2018-10-13 20:11:13', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2018-10-13 20:11:13', '40', '2018-10-13 20:11:13', '40', '2018-10-13 20:11:13', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2018-10-13 20:11:17', '40', '2018-10-13 20:11:17', '40', '2018-10-13 20:11:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2018-10-13 20:11:17', '40', '2018-10-13 20:11:17', '40', '2018-10-13 20:11:17', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2018-10-13 20:11:17', '40', '2018-10-13 20:11:17', '40', '2018-10-13 20:11:17', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '1', '29', 'basic-page', '1', '2019-02-17 23:00:52', '41', '2018-10-13 20:12:27', '41', '2018-10-13 20:12:29', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '1', '43', 'options', '1025', '2019-02-22 18:04:33', '41', '2018-10-14 14:09:44', '41', '2018-10-14 14:09:49', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '2', '2', 'options', '1', '2018-10-14 14:14:44', '41', '2018-10-14 14:14:33', '41', '2018-10-14 14:14:44', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1', '44', 'sitemap', '1', '2019-02-23 17:19:36', '41', '2018-10-14 15:03:21', '41', '2018-10-14 15:03:35', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '1', '45', 'contact', '1', '2019-02-23 17:19:58', '41', '2018-10-14 18:42:38', '41', '2018-10-14 18:49:17', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '1', '79', 'privacy-policy', '1025', '2019-02-19 16:32:14', '41', '2018-10-14 18:56:33', '41', '2019-02-12 11:25:56', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1015', '29', 'sub-page', '1', '2019-02-17 23:01:07', '41', '2018-10-20 17:28:17', '41', '2018-10-20 17:28:22', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1', '47', 'search', '1025', '2019-02-09 20:19:40', '41', '2018-10-21 19:26:49', '41', '2018-10-21 19:26:53', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1054', '1019', '46', 'alex-gmail.com-2018.10.22-22-01', '1029', '2018-10-22 22:01:01', '41', '2018-10-22 22:01:01', '41', '2018-10-22 22:01:01', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1056', '1016', '48', 'sidebars', '1029', '2019-02-05 19:31:27', '41', '2019-02-04 19:47:29', '41', '2019-02-04 19:47:29', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1062', '1016', '51', 'basic-options', '1025', '2019-02-10 14:50:15', '41', '2019-02-05 18:37:21', '41', '2019-02-05 18:37:25', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1064', '1016', '51', 'advanced-options', '1029', '2019-02-10 14:52:12', '41', '2019-02-05 18:47:01', '41', '2019-02-05 18:47:03', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1065', '1064', '50', 'minify-html', '1025', '2019-02-12 19:01:57', '41', '2019-02-05 18:47:20', '41', '2019-02-05 18:54:24', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1066', '1062', '50', 'enable-small-admin-margin', '1029', '2019-02-10 14:41:28', '41', '2019-02-05 19:51:45', '41', '2019-02-05 19:51:48', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1069', '1064', '50', 'gw-code', '1025', '2019-02-10 23:54:52', '41', '2019-02-07 08:57:09', '41', '2019-02-07 08:57:24', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1070', '1064', '50', 'ga-code', '1025', '2019-02-10 23:54:59', '41', '2019-02-07 08:58:18', '41', '2019-02-07 09:00:03', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1074', '1', '52', 'about-us', '1', '2019-02-17 23:18:36', '41', '2019-02-08 14:50:30', '41', '2019-02-08 14:50:39', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1075', '1074', '53', 'about-1-children', '1', '2019-02-18 11:45:40', '41', '2019-02-08 15:04:22', '41', '2019-02-08 15:04:27', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1076', '3', '2', 'clone', '1024', '2019-02-08 15:05:07', '41', '2019-02-08 15:05:07', '41', '2019-02-08 15:05:07', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1077', '31', '5', 'page-clone', '1', '2019-02-08 15:05:07', '41', '2019-02-08 15:05:07', '41', '2019-02-08 15:05:07', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1078', '31', '5', 'page-clone-tree', '1', '2019-02-08 15:05:07', '41', '2019-02-08 15:05:07', '41', '2019-02-08 15:05:07', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1079', '1074', '53', 'about-2-children', '1', '2019-02-17 23:00:22', '41', '2019-02-08 15:04:22', '41', '2019-02-08 15:05:38', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1080', '1074', '53', 'about-3-children', '1', '2019-02-17 23:00:34', '41', '2019-02-08 15:04:22', '41', '2019-02-08 15:08:00', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1081', '1016', '51', 'home-sections', '1029', '2019-02-11 19:52:58', '41', '2019-02-08 17:09:30', '41', '2019-02-08 17:09:32', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1082', '1081', '55', 'about', '1025', '2019-02-09 19:29:47', '41', '2019-02-08 17:10:48', '41', '2019-02-08 17:10:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1086', '3', '2', 'export-import', '1', '2019-02-10 11:48:51', '41', '2019-02-10 11:48:51', '41', '2019-02-10 11:48:51', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1087', '22', '2', 'comments', '1', '2019-02-10 12:21:14', '41', '2019-02-10 12:21:14', '41', '2019-02-10 12:21:14', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1088', '31', '5', 'comments-manager', '1', '2019-02-10 12:21:14', '41', '2019-02-10 12:21:14', '41', '2019-02-10 12:21:14', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1090', '1107', '68', 'archives', '1', '2019-02-19 15:45:56', '41', '2018-12-17 13:48:10', '41', '2019-02-10 12:39:35', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1091', '1107', '70', 'authors', '1', '2019-02-10 14:40:04', '41', '2018-12-13 18:52:22', '41', '2019-02-10 12:39:36', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1092', '1091', '69', 'john-doe', '1', '2019-02-23 10:31:55', '41', '2019-01-29 16:32:21', '41', '2019-02-10 12:39:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1093', '1107', '71', 'categories', '1', '2019-02-10 14:39:12', '41', '2017-01-26 05:54:06', '41', '2019-02-10 12:39:36', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1094', '1093', '72', 'airlines', '1', '2019-02-10 14:39:20', '41', '2019-01-05 15:50:09', '41', '2019-02-10 12:39:36', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1095', '1093', '72', 'airplanes', '1', '2019-02-10 14:39:27', '41', '2019-01-05 15:54:51', '41', '2019-02-10 12:39:36', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1098', '1107', '74', 'posts', '1', '2019-02-10 14:38:33', '41', '2018-12-09 19:36:24', '41', '2019-02-10 12:39:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1099', '1098', '73', 'best-jet-fighter', '1', '2019-02-19 15:59:38', '41', '2018-12-12 23:10:20', '41', '2019-02-10 12:39:36', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1100', '1098', '73', 'popular-airlines', '1', '2019-02-23 13:15:24', '41', '2019-01-05 15:48:36', '41', '2019-02-10 12:39:36', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1101', '1098', '73', 'starter-profile', '1', '2019-02-19 16:18:11', '41', '2018-12-13 10:08:37', '41', '2019-02-10 12:39:36', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1102', '1107', '75', 'rss', '1025', '2019-02-10 12:40:43', '41', '2018-12-26 19:56:56', '41', '2019-02-10 12:39:36', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1103', '1107', '77', 'tags', '1', '2019-02-10 14:39:53', '41', '2018-12-11 20:26:22', '41', '2019-02-10 12:39:36', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1104', '1103', '76', 'f-16', '1', '2019-01-07 12:23:25', '41', '2019-01-07 12:23:25', '41', '2019-02-10 12:39:36', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1107', '1', '67', 'blog', '1', '2019-02-17 23:02:35', '41', '2019-02-10 12:40:01', '41', '2019-02-10 12:40:04', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1108', '1062', '50', 'enable-comments', '1029', '2019-02-10 14:54:41', '41', '2019-02-10 14:46:52', '41', '2019-02-10 14:46:56', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1116', '1093', '72', 'css-frameworks', '1', '2019-02-10 23:19:00', '41', '2019-02-10 23:19:00', '41', '2019-02-10 23:19:00', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1118', '1103', '76', 'milligram', '1', '2019-02-11 08:16:35', '41', '2019-02-11 08:16:35', '41', '2019-02-11 08:16:35', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1119', '1081', '55', 'blog-posts', '1025', '2019-02-11 19:52:58', '41', '2019-02-11 19:35:01', '41', '2019-02-11 19:35:05', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1120', '2', '2', 'blog-posts', '1', '2019-02-12 08:10:27', '41', '2019-02-12 08:10:19', '41', '2019-02-12 08:10:27', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1122', '1062', '50', 'enable-share-buttons', '1029', '2019-02-12 19:48:05', '41', '2019-02-12 19:47:54', '41', '2019-02-12 19:47:57', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1126', '1056', '54', 'custom-content', '1', '2019-02-17 23:17:06', '41', '2019-02-17 23:12:10', '41', '2019-02-17 23:12:12', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1127', '1056', '49', 'my-last-tweets', '1', '2019-02-17 23:20:55', '41', '2019-02-17 23:18:31', '41', '2019-02-17 23:18:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1128', '2', '2', 'repeaters', '1036', '2019-02-17 23:23:47', '41', '2019-02-17 23:23:47', '41', '2019-02-17 23:23:47', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1129', '1128', '2', 'for-field-139', '17', '2019-02-17 23:24:04', '41', '2019-02-17 23:24:04', '41', '2019-02-17 23:24:04', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1130', '1129', '2', 'for-page-1016', '17', '2019-02-17 23:24:47', '41', '2019-02-17 23:24:47', '41', '2019-02-17 23:24:47', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1131', '1130', '78', '1550442290-5998-1', '1', '2019-02-22 16:39:44', '41', '2019-02-17 23:24:50', '41', '2019-02-17 23:25:07', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1132', '1130', '78', '1550514272-4189-1', '1', '2019-02-22 16:41:24', '41', '2019-02-18 19:24:32', '41', '2019-02-18 19:25:37', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1133', '1130', '78', '1550514312-1782-1', '1', '2019-02-22 16:41:24', '41', '2019-02-18 19:25:12', '41', '2019-02-18 19:25:37', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1134', '1130', '78', '1550514339-9468-1', '1', '2019-02-22 16:41:24', '41', '2019-02-18 19:25:39', '41', '2019-02-18 19:26:29', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1135', '1130', '78', '1550514375-1019-1', '1', '2019-02-22 16:42:42', '41', '2019-02-18 19:26:15', '41', '2019-02-18 19:26:29', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1136', '1130', '78', '1550514392-7332-1', '1', '2019-02-22 16:42:42', '41', '2019-02-18 19:26:32', '41', '2019-02-18 19:26:46', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1138', '22', '2', 'adminer', '1', '2019-02-22 16:47:28', '41', '2019-02-22 16:47:28', '41', '2019-02-22 16:47:28', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1139', '1062', '50', 'enable-turbolinks', '1029', '2019-02-22 18:04:24', '41', '2019-02-22 18:04:13', '41', '2019-02-22 18:04:16', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1140', '1129', '2', 'for-page-1092', '17', '2019-02-23 10:07:00', '41', '2019-02-23 10:07:00', '41', '2019-02-23 10:07:00', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1141', '1140', '78', '1550912824-1422-1', '1', '2019-02-23 10:29:46', '41', '2019-02-23 10:07:04', '41', '2019-02-23 10:10:48', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1142', '1140', '78', '1550912926-5891-1', '1', '2019-02-23 10:29:46', '41', '2019-02-23 10:08:46', '41', '2019-02-23 10:10:48', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1143', '1140', '78', '1550912980-7097-1', '1', '2019-02-23 10:31:24', '41', '2019-02-23 10:09:40', '41', '2019-02-23 10:10:48', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1144', '1140', '78', '1550913993-0554-1', '3073', '2019-02-23 10:26:33', '41', '2019-02-23 10:26:33', '41', NULL, '3');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('27', '1', '2019-02-23 16:44:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2018-10-13 20:10:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2018-10-13 20:11:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2018-10-13 20:11:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2018-10-13 20:11:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '1', '2018-10-13 20:12:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '1', '2018-10-14 14:09:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '1', '2018-10-14 15:03:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '1', '2018-10-14 18:42:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '1', '2018-10-14 18:56:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '1', '2018-10-20 17:28:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '1', '2018-10-21 19:26:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '1', '2018-10-22 22:01:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1056', '1', '2019-02-04 19:47:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1062', '1', '2019-02-05 18:37:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1064', '1', '2019-02-05 18:47:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1065', '1', '2019-02-05 18:47:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1066', '1', '2019-02-05 19:51:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1069', '1', '2019-02-07 08:57:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1070', '1', '2019-02-07 08:58:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1074', '1', '2019-02-08 14:50:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1075', '1', '2019-02-08 15:04:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1077', '2', '2019-02-08 15:05:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1078', '2', '2019-02-08 15:05:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1079', '1', '2019-02-08 15:05:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1080', '1', '2019-02-08 15:07:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1081', '1', '2019-02-08 17:09:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1082', '1', '2019-02-08 17:10:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1088', '2', '2019-02-10 12:21:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1090', '1', '2019-02-10 12:39:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1091', '1', '2019-02-10 12:39:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1093', '1', '2019-02-10 12:39:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1098', '1', '2019-02-10 12:39:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1102', '1', '2019-02-10 12:39:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1103', '1', '2019-02-10 12:39:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1107', '1', '2019-02-10 12:40:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1108', '1', '2019-02-10 14:46:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1116', '1', '2019-02-10 23:19:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1118', '1', '2019-02-11 08:16:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1119', '1', '2019-02-11 19:35:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1122', '1', '2019-02-12 19:47:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1126', '1', '2019-02-17 23:12:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1127', '1', '2019-02-17 23:18:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1131', '2', '2019-02-17 23:24:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1132', '2', '2019-02-18 19:24:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1133', '2', '2019-02-18 19:25:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1134', '2', '2019-02-18 19:25:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1135', '2', '2019-02-18 19:26:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1136', '2', '2019-02-18 19:26:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1139', '1', '2019-02-22 18:04:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1141', '2', '2019-02-23 10:07:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1142', '2', '2019-02-23 10:08:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1143', '2', '2019-02-23 10:09:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1144', '2', '2019-02-23 10:26:33');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
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
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1056', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1062', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1064', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1081', '1016');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1091', '1107');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1093', '1107');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1098', '1107');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1103', '1107');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1128', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1129', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1129', '1128');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1130', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1130', '1128');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1130', '1129');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1140', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1140', '1128');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1140', '1129');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages_sortfields` (`pages_id`, `sortfield`) VALUES('1093', 'name');

DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-home title\",\"compile\":3,\"modified\":1550919371,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1550156393,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-book title\",\"compile\":3,\"tags\":\"-basic\",\"modified\":1550862011,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'options', '97', '0', '0', '{\"noParents\":-1,\"childTemplates\":[48,51],\"slashUrls\":1,\"pageLabelField\":\"fa-cogs title\",\"compile\":3,\"tags\":\"-options\",\"modified\":1550442277}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'basic-sitemap', '98', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-map title\",\"compile\":3,\"tags\":\"-basic\",\"modified\":1550862237,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'contact', '99', '0', '0', '{\"sortfield\":\"-created\",\"noParents\":-1,\"childTemplates\":[46],\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-envelope-square title\",\"compile\":3,\"tags\":\"-contact\",\"modified\":1550862646,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'contact-item', '100', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[45],\"slashUrls\":1,\"pageLabelField\":\"fa-envelope-open-o title\",\"compile\":3,\"label\":\"Contact Item\",\"tags\":\"-contact\",\"modified\":1549790476}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'basic-search', '101', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-search title\",\"compile\":3,\"tags\":\"-basic\",\"modified\":1550862225,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'sidebars', '102', '0', '0', '{\"noParents\":-1,\"childTemplates\":[49,54],\"parentTemplates\":[43],\"slashUrls\":1,\"pageLabelField\":\"fa-th-list title\",\"compile\":3,\"tags\":\"-sidebar\",\"modified\":1549613787}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'sidebar-textarea', '103', '0', '0', '{\"parentTemplates\":[48],\"slashUrls\":1,\"pageLabelField\":\"fa-stop title\",\"noShortcut\":1,\"compile\":3,\"label\":\"Block Code\",\"tags\":\"-sidebar\",\"modified\":1549739246}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'toggle-options', '104', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[51],\"slashUrls\":1,\"pageLabelField\":\"fa-toggle-on title\",\"noShortcut\":1,\"compile\":3,\"tags\":\"-options\",\"modified\":1549739262}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'more-options', '105', '0', '0', '{\"childTemplates\":[50,55],\"parentTemplates\":[43],\"slashUrls\":1,\"pageLabelField\":\"fa-cog title\",\"noShortcut\":1,\"compile\":3,\"tags\":\"-options\",\"modified\":1549739190}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'about', '106', '0', '0', '{\"noParents\":-1,\"childTemplates\":[53],\"allowPageNum\":1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-black-tie title\",\"compile\":3,\"tags\":\"-about\",\"modified\":1550861954,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'about-item', '107', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[52],\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-lightbulb-o title\",\"compile\":3,\"label\":\"About Item\",\"tags\":\"-about\",\"modified\":1550861994,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'sidebar-ckeditor', '108', '0', '0', '{\"parentTemplates\":[48],\"slashUrls\":1,\"pageLabelField\":\"fa-stop title\",\"noShortcut\":1,\"compile\":3,\"label\":\"Content Ckeditor\",\"tags\":\"-sidebar\",\"modified\":1549739232}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'section', '109', '0', '0', '{\"parentTemplates\":[51],\"slashUrls\":1,\"pageLabelField\":\"fa-crosshairs title\",\"noShortcut\":1,\"compile\":3,\"tags\":\"-options\",\"modified\":1549739203}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('67', 'blog', '121', '0', '0', '{\"sortfield\":\"sort\",\"noParents\":-1,\"allowPageNum\":1,\"urlSegments\":[\"rss\"],\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-pencil title\",\"compile\":3,\"label\":\"Blog\",\"tags\":\"-blog\",\"modified\":1550862252,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('68', 'blog-archives', '122', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"allowPageNum\":1,\"urlSegments\":1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-archive title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1550862264,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('69', 'blog-author', '123', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[70],\"allowPageNum\":1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-user-circle-o title\",\"noShortcut\":1,\"compile\":3,\"label\":\"Blog Author\",\"tags\":\"-blog\",\"modified\":1550912813,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('70', 'blog-authors', '124', '0', '0', '{\"noParents\":-1,\"childTemplates\":[69],\"allowPageNum\":1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-users title\",\"compile\":3,\"label\":\"Blog Authors\",\"tags\":\"-blog\",\"modified\":1550862302,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('71', 'blog-categories', '125', '0', '0', '{\"noParents\":-1,\"childTemplates\":[72],\"parentTemplates\":[67],\"allowPageNum\":1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-sitemap title\",\"compile\":3,\"label\":\"Categories\",\"tags\":\"-blog\",\"modified\":1550862319,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('72', 'blog-category', '126', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[71],\"allowPageNum\":1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-simplybuilt title\",\"compile\":3,\"label\":\"Blog Category\",\"tags\":\"-blog\",\"modified\":1550862418,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('73', 'blog-post', '127', '0', '0', '{\"parentTemplates\":[74],\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-quote-left {title}\",\"compile\":3,\"label\":\"Blog Post\",\"tags\":\"-blog\",\"modified\":1550863198,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('74', 'blog-posts', '128', '0', '0', '{\"noParents\":-1,\"childTemplates\":[73],\"allowPageNum\":1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-list title\",\"compile\":3,\"label\":\"Posts\",\"tags\":\"-blog\",\"modified\":1550862446,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('75', 'blog-rss', '129', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-rss title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1550156393,\"noAppendTemplateFile\":1,\"contentType\":\"xml\",\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('76', 'blog-tag', '130', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[77],\"allowPageNum\":1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-tag title\",\"compile\":3,\"label\":\"Blog Tag\",\"tags\":\"-blog\",\"modified\":1550862462,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('77', 'blog-tags', '131', '0', '0', '{\"noParents\":-1,\"childTemplates\":[76],\"allowPageNum\":1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-tags title\",\"compile\":3,\"label\":\"Tags\",\"tags\":\"-blog\",\"modified\":1550862476,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('78', 'repeater_external_link', '132', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1550442248}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('79', 'basic-privacy', '133', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-lock title\",\"compile\":3,\"tags\":\"-basic\",\"modified\":1550862216,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('80', 'basic-404', '134', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"altFilename\":\"_view-controller\",\"pageLabelField\":\"fa-exclamation-circle title\",\"compile\":3,\"tags\":\"-basic\",\"modified\":1550936678,\"ns\":\"ProcessWire\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":53,"numCreateTables":59,"numInserts":1074,"numSeconds":0}