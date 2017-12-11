-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 11 2017 г., 19:37
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `craftwood.com`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-19 12:24:11', '2017-11-19 09:24:11', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_geot_countries`
--

CREATE TABLE `wp_geot_countries` (
  `id` int(1) UNSIGNED ZEROFILL NOT NULL,
  `iso_code` varchar(2) NOT NULL,
  `country` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_geot_countries`
--

INSERT INTO `wp_geot_countries` (`id`, `iso_code`, `country`) VALUES
(1, 'AD', 'Andorra'),
(234, 'AE', 'United Arab Emirates'),
(2, 'AF', 'Afghanistan'),
(10, 'AG', 'Antigua and Barbuda'),
(8, 'AI', 'Anguilla'),
(4, 'AL', 'Albania'),
(12, 'AM', 'Armenia'),
(7, 'AO', 'Angola'),
(9, 'AQ', 'Antarctica'),
(11, 'AR', 'Argentina'),
(6, 'AS', 'American Samoa'),
(15, 'AT', 'Austria'),
(14, 'AU', 'Australia'),
(13, 'AW', 'Aruba'),
(3, 'AX', 'Åland Islands'),
(16, 'AZ', 'Azerbaijan'),
(29, 'BA', 'Bosnia and Herzegovina'),
(20, 'BB', 'Barbados'),
(19, 'BD', 'Bangladesh'),
(22, 'BE', 'Belgium'),
(36, 'BF', 'Burkina Faso'),
(35, 'BG', 'Bulgaria'),
(18, 'BH', 'Bahrain'),
(37, 'BI', 'Burundi'),
(24, 'BJ', 'Benin'),
(185, 'BL', 'Saint Barthélemy'),
(25, 'BM', 'Bermuda'),
(34, 'BN', 'Brunei Darussalam'),
(27, 'BO', 'Bolivia (Plurinational State of)'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba'),
(32, 'BR', 'Brazil'),
(17, 'BS', 'Bahamas'),
(26, 'BT', 'Bhutan'),
(31, 'BV', 'Bouvet Island'),
(30, 'BW', 'Botswana'),
(21, 'BY', 'Belarus'),
(23, 'BZ', 'Belize'),
(41, 'CA', 'Canada'),
(48, 'CC', 'Cocos (Keeling) Islands'),
(52, 'CD', 'Congo (Democratic Republic of the)'),
(43, 'CF', 'Central African Republic'),
(51, 'CG', 'Congo'),
(216, 'CH', 'Switzerland'),
(55, 'CI', 'Côte d\'Ivoire'),
(53, 'CK', 'Cook Islands'),
(45, 'CL', 'Chile'),
(40, 'CM', 'Cameroon'),
(46, 'CN', 'China'),
(49, 'CO', 'Colombia'),
(54, 'CR', 'Costa Rica'),
(57, 'CU', 'Cuba'),
(38, 'CV', 'Cabo Verde'),
(58, 'CW', 'Curaçao'),
(47, 'CX', 'Christmas Island'),
(59, 'CY', 'Cyprus'),
(60, 'CZ', 'Czech Republic'),
(83, 'DE', 'Germany'),
(62, 'DJ', 'Djibouti'),
(61, 'DK', 'Denmark'),
(63, 'DM', 'Dominica'),
(64, 'DO', 'Dominican Republic'),
(5, 'DZ', 'Algeria'),
(65, 'EC', 'Ecuador'),
(70, 'EE', 'Estonia'),
(66, 'EG', 'Egypt'),
(246, 'EH', 'Western Sahara'),
(69, 'ER', 'Eritrea'),
(209, 'ES', 'Spain'),
(71, 'ET', 'Ethiopia'),
(75, 'FI', 'Finland'),
(74, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands (Malvinas)'),
(145, 'FM', 'Micronesia (Federated States of)'),
(73, 'FO', 'Faroe Islands'),
(76, 'FR', 'France'),
(80, 'GA', 'Gabon'),
(235, 'GB', 'United Kingdom of Great Britain and Northern Ireland'),
(88, 'GD', 'Grenada'),
(82, 'GE', 'Georgia'),
(77, 'GF', 'French Guiana'),
(92, 'GG', 'Guernsey'),
(84, 'GH', 'Ghana'),
(85, 'GI', 'Gibraltar'),
(87, 'GL', 'Greenland'),
(81, 'GM', 'Gambia'),
(93, 'GN', 'Guinea'),
(89, 'GP', 'Guadeloupe'),
(68, 'GQ', 'Equatorial Guinea'),
(86, 'GR', 'Greece'),
(207, 'GS', 'South Georgia and the South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(90, 'GU', 'Guam'),
(94, 'GW', 'Guinea-Bissau'),
(95, 'GY', 'Guyana'),
(100, 'HK', 'Hong Kong'),
(97, 'HM', 'Heard Island and McDonald Islands'),
(99, 'HN', 'Honduras'),
(56, 'HR', 'Croatia'),
(96, 'HT', 'Haiti'),
(101, 'HU', 'Hungary'),
(104, 'ID', 'Indonesia'),
(107, 'IE', 'Ireland'),
(109, 'IL', 'Israel'),
(108, 'IM', 'Isle of Man'),
(103, 'IN', 'India'),
(33, 'IO', 'British Indian Ocean Territory'),
(106, 'IQ', 'Iraq'),
(105, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(113, 'JE', 'Jersey'),
(111, 'JM', 'Jamaica'),
(114, 'JO', 'Jordan'),
(112, 'JP', 'Japan'),
(116, 'KE', 'Kenya'),
(121, 'KG', 'Kyrgyzstan'),
(39, 'KH', 'Cambodia'),
(117, 'KI', 'Kiribati'),
(50, 'KM', 'Comoros'),
(187, 'KN', 'Saint Kitts and Nevis'),
(118, 'KP', 'Korea (Democratic People\'s Republic of)'),
(119, 'KR', 'Korea (Republic of)'),
(120, 'KW', 'Kuwait'),
(42, 'KY', 'Cayman Islands'),
(115, 'KZ', 'Kazakhstan'),
(122, 'LA', 'Lao People\'s Democratic Republic'),
(124, 'LB', 'Lebanon'),
(188, 'LC', 'Saint Lucia'),
(128, 'LI', 'Liechtenstein'),
(210, 'LK', 'Sri Lanka'),
(126, 'LR', 'Liberia'),
(125, 'LS', 'Lesotho'),
(129, 'LT', 'Lithuania'),
(130, 'LU', 'Luxembourg'),
(123, 'LV', 'Latvia'),
(127, 'LY', 'Libya'),
(151, 'MA', 'Morocco'),
(147, 'MC', 'Monaco'),
(146, 'MD', 'Moldova (Republic of)'),
(149, 'ME', 'Montenegro'),
(189, 'MF', 'Saint Martin (French part)'),
(133, 'MG', 'Madagascar'),
(139, 'MH', 'Marshall Islands'),
(132, 'MK', 'Macedonia (the former Yugoslav Republic of)'),
(137, 'ML', 'Mali'),
(153, 'MM', 'Myanmar'),
(148, 'MN', 'Mongolia'),
(131, 'MO', 'Macao'),
(165, 'MP', 'Northern Mariana Islands'),
(140, 'MQ', 'Martinique'),
(141, 'MR', 'Mauritania'),
(150, 'MS', 'Montserrat'),
(138, 'MT', 'Malta'),
(142, 'MU', 'Mauritius'),
(136, 'MV', 'Maldives'),
(134, 'MW', 'Malawi'),
(144, 'MX', 'Mexico'),
(135, 'MY', 'Malaysia'),
(152, 'MZ', 'Mozambique'),
(154, 'NA', 'Namibia'),
(158, 'NC', 'New Caledonia'),
(161, 'NE', 'Niger'),
(164, 'NF', 'Norfolk Island'),
(162, 'NG', 'Nigeria'),
(160, 'NI', 'Nicaragua'),
(157, 'NL', 'Netherlands'),
(166, 'NO', 'Norway'),
(156, 'NP', 'Nepal'),
(155, 'NR', 'Nauru'),
(163, 'NU', 'Niue'),
(159, 'NZ', 'New Zealand'),
(167, 'OM', 'Oman'),
(171, 'PA', 'Panama'),
(174, 'PE', 'Peru'),
(78, 'PF', 'French Polynesia'),
(172, 'PG', 'Papua New Guinea'),
(175, 'PH', 'Philippines'),
(168, 'PK', 'Pakistan'),
(177, 'PL', 'Poland'),
(190, 'PM', 'Saint Pierre and Miquelon'),
(176, 'PN', 'Pitcairn'),
(179, 'PR', 'Puerto Rico'),
(170, 'PS', 'Palestine, State of'),
(178, 'PT', 'Portugal'),
(169, 'PW', 'Palau'),
(173, 'PY', 'Paraguay'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Réunion'),
(182, 'RO', 'Romania'),
(197, 'RS', 'Serbia'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(195, 'SA', 'Saudi Arabia'),
(204, 'SB', 'Solomon Islands'),
(198, 'SC', 'Seychelles'),
(211, 'SD', 'Sudan'),
(215, 'SE', 'Sweden'),
(200, 'SG', 'Singapore'),
(186, 'SH', 'Saint Helena, Ascension and Tristan da Cunha'),
(203, 'SI', 'Slovenia'),
(213, 'SJ', 'Svalbard and Jan Mayen'),
(202, 'SK', 'Slovakia'),
(199, 'SL', 'Sierra Leone'),
(193, 'SM', 'San Marino'),
(196, 'SN', 'Senegal'),
(205, 'SO', 'Somalia'),
(212, 'SR', 'Suriname'),
(208, 'SS', 'South Sudan'),
(194, 'ST', 'Sao Tome and Principe'),
(67, 'SV', 'El Salvador'),
(201, 'SX', 'Sint Maarten (Dutch part)'),
(217, 'SY', 'Syrian Arab Republic'),
(214, 'SZ', 'Swaziland'),
(230, 'TC', 'Turks and Caicos Islands'),
(44, 'TD', 'Chad'),
(79, 'TF', 'French Southern Territories'),
(223, 'TG', 'Togo'),
(221, 'TH', 'Thailand'),
(219, 'TJ', 'Tajikistan'),
(224, 'TK', 'Tokelau'),
(222, 'TL', 'Timor-Leste'),
(229, 'TM', 'Turkmenistan'),
(227, 'TN', 'Tunisia'),
(225, 'TO', 'Tonga'),
(228, 'TR', 'Turkey'),
(226, 'TT', 'Trinidad and Tobago'),
(231, 'TV', 'Tuvalu'),
(218, 'TW', 'Taiwan, Province of China'),
(220, 'TZ', 'Tanzania, United Republic of'),
(233, 'UA', 'Ukraine'),
(232, 'UG', 'Uganda'),
(236, 'UM', 'United States Minor Outlying Islands'),
(237, 'US', 'United States of America'),
(238, 'UY', 'Uruguay'),
(239, 'UZ', 'Uzbekistan'),
(98, 'VA', 'Holy See'),
(191, 'VC', 'Saint Vincent and the Grenadines'),
(241, 'VE', 'Venezuela (Bolivarian Republic of)'),
(243, 'VG', 'Virgin Islands (British)'),
(244, 'VI', 'Virgin Islands (U.S.)'),
(242, 'VN', 'Viet Nam'),
(240, 'VU', 'Vanuatu'),
(245, 'WF', 'Wallis and Futuna'),
(192, 'WS', 'Samoa'),
(247, 'YE', 'Yemen'),
(143, 'YT', 'Mayotte'),
(206, 'ZA', 'South Africa'),
(248, 'ZM', 'Zambia'),
(249, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://craftwood.com', 'yes'),
(2, 'home', 'http://craftwood.com', 'yes'),
(3, 'blogname', 'scaffold', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'siteodessa.com@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:73:\"allow-comments-on-pages-by-default/allow-comments-on-pages-by-default.php\";i:2;s:55:\"contact-form-7-datepicker/contact-form-7-datepicker.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:22:\"cyr3lat/cyr-to-lat.php\";i:5;s:33:\"disable-emojis/disable-emojis.php\";i:6;s:33:\"duplicate-post/duplicate-post.php\";i:7;s:21:\"flamingo/flamingo.php\";i:8;s:29:\"geotargeting/geotargeting.php\";i:9;s:29:\"lightgallery/lightgallery.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ss', 'yes'),
(41, 'stylesheet', 'ss', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '1', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1511126652;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1511169880;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1511176408;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1511088151;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1511090473;s:7:\"checked\";a:1:{s:2:\"ss\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(125, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1511126669', 'no'),
(126, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:11:\"WordCamp US\";s:3:\"url\";s:29:\"https://2017.us.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2017-12-01 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Nashville, TN, USA\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:36.15660849999999726378518971614539623260498046875;s:9:\"longitude\";d:-86.7784908999999942125214147381484508514404296875;}}}}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(129, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1511126671', 'no'),
(130, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1511126671', 'no'),
(131, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1511083471', 'no'),
(132, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1511126672', 'no'),
(133, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1511126673', 'no'),
(134, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1511083473', 'no'),
(135, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1511126673', 'no'),
(136, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2017/11/tipton/\'>WordPress 4.9 “Tipton”</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/github-launches-security-alerts-for-javascript-and-ruby-projects-python-support-coming-in-2018\'>WPTavern: GitHub Launches Security Alerts for JavaScript and Ruby Projects, Python Support Coming in 2018</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordcamp-europe-2018-speaker-applications-now-open\'>WPTavern: WordCamp Europe 2018 Speaker Applications Now Open</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/woocommerce-explores-the-possibilities-and-challenges-for-e-commerce-in-the-gutenberg-era\'>WPTavern: WooCommerce Explores the Possibilities and Challenges for E-Commerce in the Gutenberg Era</a></li></ul></div>', 'no'),
(137, '_transient_timeout_plugin_slugs', '1511176830', 'no'),
(138, '_transient_plugin_slugs', 'a:10:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:73:\"allow-comments-on-pages-by-default/allow-comments-on-pages-by-default.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:55:\"contact-form-7-datepicker/contact-form-7-datepicker.php\";i:4;s:22:\"cyr3lat/cyr-to-lat.php\";i:5;s:33:\"disable-emojis/disable-emojis.php\";i:6;s:33:\"duplicate-post/duplicate-post.php\";i:7;s:21:\"flamingo/flamingo.php\";i:8;s:29:\"geotargeting/geotargeting.php\";i:9;s:29:\"lightgallery/lightgallery.php\";}', 'no'),
(139, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'current_theme', 'Twenty Fifteen/ss', 'yes'),
(145, 'theme_mods_ss', 'a:2:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(148, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.9\";s:7:\"version\";s:3:\"4.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1511090447;s:15:\"version_checked\";s:3:\"4.9\";s:12:\"translations\";a:0:{}}', 'no'),
(152, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1511101005;s:7:\"version\";s:3:\"4.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(153, 'cf7dp_ui_theme', 'smoothness', 'yes'),
(154, 'geot_version', '1.3.1', 'yes'),
(155, 'LightGallery', 'a:2:{s:7:\"Version\";s:5:\"1.0.1\";s:7:\"Options\";a:26:{s:4:\"mode\";s:8:\"lg-slide\";s:9:\"cssEasing\";s:4:\"ease\";s:6:\"easing\";s:6:\"linear\";s:5:\"speed\";i:600;s:6:\"height\";s:4:\"100%\";s:5:\"width\";s:4:\"100%\";s:16:\"backdropDuration\";i:150;s:13:\"hideBarsDelay\";i:6000;s:7:\"useLeft\";i:0;s:8:\"closable\";i:1;s:4:\"loop\";i:1;s:6:\"escKey\";i:1;s:8:\"keyPress\";i:1;s:8:\"controls\";i:1;s:17:\"slideEndAnimatoin\";i:1;s:16:\"hideControlOnEnd\";i:0;s:10:\"mousewheel\";i:1;s:24:\"getCaptionFromTitleOrAlt\";i:1;s:7:\"preload\";i:1;s:13:\"showAfterLoad\";i:1;s:5:\"index\";i:0;s:14:\"iframeMaxWidth\";s:4:\"100%\";s:8:\"download\";i:1;s:7:\"counter\";i:1;s:10:\"enableDrag\";i:1;s:11:\"enableTouch\";i:1;}}', 'yes'),
(156, 'acf_version', '4.4.12', 'yes'),
(157, 'duplicate_post_copytitle', '1', 'yes'),
(158, 'duplicate_post_copydate', '0', 'yes'),
(159, 'duplicate_post_copystatus', '0', 'yes'),
(160, 'duplicate_post_copyslug', '1', 'yes'),
(161, 'duplicate_post_copyexcerpt', '1', 'yes'),
(162, 'duplicate_post_copycontent', '1', 'yes'),
(163, 'duplicate_post_copythumbnail', '1', 'yes'),
(164, 'duplicate_post_copytemplate', '1', 'yes'),
(165, 'duplicate_post_copyformat', '1', 'yes'),
(166, 'duplicate_post_copyauthor', '0', 'yes'),
(167, 'duplicate_post_copypassword', '0', 'yes'),
(168, 'duplicate_post_copyattachments', '0', 'yes'),
(169, 'duplicate_post_copychildren', '0', 'yes'),
(170, 'duplicate_post_copycomments', '0', 'yes'),
(171, 'duplicate_post_copymenuorder', '1', 'yes'),
(172, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(173, 'duplicate_post_blacklist', '', 'yes'),
(174, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(175, 'duplicate_post_show_row', '1', 'yes'),
(176, 'duplicate_post_show_adminbar', '1', 'yes'),
(177, 'duplicate_post_show_submitbox', '1', 'yes'),
(178, 'duplicate_post_show_bulkactions', '1', 'yes'),
(182, '_site_transient_timeout_theme_roots', '1511092248', 'no'),
(183, '_site_transient_theme_roots', 'a:1:{s:2:\"ss\";s:7:\"/themes\";}', 'no'),
(186, 'duplicate_post_version', '3.2', 'no'),
(187, 'duplicate_post_show_notice', '1', 'no'),
(188, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1511090471;s:8:\"response\";a:0:{}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.1\";s:7:\"updated\";s:19:\"2017-11-02 23:29:54\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.9.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"duplicate-post\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2017-08-07 12:21:11\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/duplicate-post/3.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:8:\"flamingo\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.7\";s:7:\"updated\";s:19:\"2017-11-04 09:29:34\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/plugin/flamingo/1.7/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:10:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:73:\"allow-comments-on-pages-by-default/allow-comments-on-pages-by-default.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/allow-comments-on-pages-by-default\";s:4:\"slug\";s:34:\"allow-comments-on-pages-by-default\";s:6:\"plugin\";s:73:\"allow-comments-on-pages-by-default/allow-comments-on-pages-by-default.php\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/allow-comments-on-pages-by-default/\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/plugin/allow-comments-on-pages-by-default.1.1.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.9.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:55:\"contact-form-7-datepicker/contact-form-7-datepicker.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/contact-form-7-datepicker\";s:4:\"slug\";s:25:\"contact-form-7-datepicker\";s:6:\"plugin\";s:55:\"contact-form-7-datepicker/contact-form-7-datepicker.php\";s:11:\"new_version\";s:5:\"2.6.0\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/contact-form-7-datepicker/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/contact-form-7-datepicker.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr3lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr3lat\";s:4:\"slug\";s:7:\"cyr3lat\";s:6:\"plugin\";s:22:\"cyr3lat/cyr-to-lat.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr3lat/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:33:\"disable-emojis/disable-emojis.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/disable-emojis\";s:4:\"slug\";s:14:\"disable-emojis\";s:6:\"plugin\";s:33:\"disable-emojis/disable-emojis.php\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/disable-emojis/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/disable-emojis.1.7.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:3:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-emojis/assets/banner-1544x500.png?rev=1145188\";s:2:\"1x\";s:69:\"https://ps.w.org/disable-emojis/assets/banner-772x250.png?rev=1145188\";s:7:\"default\";s:70:\"https://ps.w.org/disable-emojis/assets/banner-1544x500.png?rev=1145188\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:7:\"default\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";s:7:\"default\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"flamingo/flamingo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/flamingo\";s:4:\"slug\";s:8:\"flamingo\";s:6:\"plugin\";s:21:\"flamingo/flamingo.php\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/flamingo/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/flamingo.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/flamingo/assets/icon-128x128.png?rev=1540977\";s:7:\"default\";s:61:\"https://ps.w.org/flamingo/assets/icon-128x128.png?rev=1540977\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:62:\"https://ps.w.org/flamingo/assets/banner-772x250.png?rev=544829\";s:7:\"default\";s:62:\"https://ps.w.org/flamingo/assets/banner-772x250.png?rev=544829\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"geotargeting/geotargeting.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/geotargeting\";s:4:\"slug\";s:12:\"geotargeting\";s:6:\"plugin\";s:29:\"geotargeting/geotargeting.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/geotargeting/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/geotargeting.1.3.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:65:\"https://ps.w.org/geotargeting/assets/icon-128x128.jpg?rev=1245155\";s:2:\"2x\";s:65:\"https://ps.w.org/geotargeting/assets/icon-256x256.png?rev=1040845\";s:7:\"default\";s:65:\"https://ps.w.org/geotargeting/assets/icon-256x256.png?rev=1040845\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/geotargeting/assets/banner-772x250.png?rev=1040845\";s:7:\"default\";s:67:\"https://ps.w.org/geotargeting/assets/banner-772x250.png?rev=1040845\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"lightgallery/lightgallery.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/lightgallery\";s:4:\"slug\";s:12:\"lightgallery\";s:6:\"plugin\";s:29:\"lightgallery/lightgallery.php\";s:11:\"new_version\";s:5:\"1.0.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/lightgallery/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/lightgallery.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(189, '_transient_doing_cron', '1513010093.7922790050506591796875', 'yes'),
(190, '_transient_is_multi_author', '0', 'yes'),
(191, '_transient_twentyfifteen_categories', '1', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(3, 4, '_mail', 'a:8:{s:7:\"subject\";s:25:\"scaffold \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <wordpress@craftwood.com>\";s:4:\"body\";s:164:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on scaffold (http://craftwood.com)\";s:9:\"recipient\";s:24:\"siteodessa.com@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"scaffold \"[your-subject]\"\";s:6:\"sender\";s:31:\"scaffold <wordpress@craftwood.com>\";s:4:\"body\";s:106:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on scaffold (http://craftwood.com)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:34:\"Reply-To: siteodessa.com@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 4, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(6, 4, '_additional_settings', NULL),
(7, 4, '_locale', 'ru_RU'),
(8, 5, '_email', 'siteodessa.com@gmail.com'),
(9, 5, '_name', 'Lama'),
(10, 5, '_props', 'a:2:{s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";}'),
(11, 5, '_last_contacted', '2017-11-19 14:16:46'),
(12, 6, '_email', 'wapuu@wordpress.example'),
(13, 6, '_name', 'Автор комментария'),
(14, 6, '_props', 'a:0:{}'),
(15, 6, '_last_contacted', '2017-11-19 14:16:46'),
(16, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-19 12:24:11', '2017-11-19 09:24:11', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2017-11-19 12:24:11', '2017-11-19 09:24:11', '', 0, 'http://craftwood.com/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-19 12:24:11', '2017-11-19 09:24:11', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://craftwood.com/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-19 12:24:11', '2017-11-19 09:24:11', '', 0, 'http://craftwood.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-11-19 12:24:26', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-19 12:24:26', '0000-00-00 00:00:00', '', 0, 'http://craftwood.com/?p=3', 0, 'post', '', 0),
(4, 1, '2017-11-19 14:16:45', '2017-11-19 11:16:45', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nscaffold \"[your-subject]\"\n[your-name] <wordpress@craftwood.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on scaffold (http://craftwood.com)\nsiteodessa.com@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nscaffold \"[your-subject]\"\nscaffold <wordpress@craftwood.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on scaffold (http://craftwood.com)\n[your-email]\nReply-To: siteodessa.com@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-11-19 14:16:45', '2017-11-19 11:16:45', '', 0, 'http://craftwood.com/?post_type=wpcf7_contact_form&p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2017-11-19 14:16:46', '2017-11-19 11:16:46', 'siteodessa.com@gmail.com\nLama', 'siteodessa.com@gmail.com', '', 'publish', 'closed', 'closed', '', 'siteodessa-com-gmail-com', '', '', '2017-11-19 14:16:46', '2017-11-19 11:16:46', '', 0, 'http://craftwood.com/2017/11/19/siteodessa-com-gmail-com/', 0, 'flamingo_contact', '', 0),
(6, 1, '2017-11-19 14:16:46', '2017-11-19 11:16:46', 'wapuu@wordpress.example\nАвтор комментария', 'wapuu@wordpress.example', '', 'publish', 'closed', 'closed', '', 'wapuu-wordpress-example', '', '', '2017-11-19 14:16:46', '2017-11-19 11:16:46', '', 0, 'http://craftwood.com/2017/11/19/wapuu-wordpress-example/', 0, 'flamingo_contact', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Lama'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:\"1923b156f1589d3ecd37cfd60280389d9a65518607eb7b277385cda29a9dedc7\";a:4:{s:10:\"expiration\";i:1511256264;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1511083464;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Lama', '$P$Bjyi/46g1TfxuBBPHCliW7WT9.Xxgs1', 'lama', 'siteodessa.com@gmail.com', '', '2017-11-19 09:24:11', '', 0, 'Lama');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_geot_countries`
--
ALTER TABLE `wp_geot_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iso_code` (`iso_code`,`country`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_geot_countries`
--
ALTER TABLE `wp_geot_countries`
  MODIFY `id` int(1) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
