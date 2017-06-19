-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 19, 2017 at 03:22 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.1.3-2+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mun_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `family_house`
--

CREATE TABLE `family_house` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `gen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `family_relation`
--

CREATE TABLE `family_relation` (
  `id` int(11) NOT NULL,
  `fam_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `Reln_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `tablename` varchar(30) NOT NULL,
  `field` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `eng_name` varchar(200) DEFAULT NULL,
  `nepl_name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrip` text COMMENT 'list of arrays',
  `priority` int(11) DEFAULT NULL,
  `mykeys` varchar(300) DEFAULT NULL,
  `myvalues` varchar(700) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_extra` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `tablename`, `field`, `type`, `eng_name`, `nepl_name`, `descrip`, `priority`, `mykeys`, `myvalues`, `field_extra`) VALUES
(223, 'category', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(224, 'category', 'name', 'text', 'Category Name', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(225, 'category', 'sub_type_id', 'radio', 'Sub Type', NULL, 'table=sub_type,eng=name,nepl=nepl_name', NULL, NULL, NULL, 'NULL=NO,type=number'),
(226, 'coordinates', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(227, 'coordinates', 'lat', 'text', 'Latitude', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(228, 'coordinates', 'lng', 'text', 'Longitude', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(229, 'coordinates', 'sub_struct_id', 'hidden', NULL, NULL, 'table=sub_structure,eng=eng_name,nepl=nepl_name', NULL, NULL, NULL, 'NULL=NO,type=number'),
(230, 'fields', 'id', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(231, 'fields', 'tablename', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(232, 'fields', 'field', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(233, 'fields', 'type', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(234, 'fields', 'eng_name', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(235, 'fields', 'nepl_name', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(236, 'fields', 'descrip', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=longtext'),
(237, 'fields', 'priority', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=number'),
(238, 'fields', 'mykeys', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(239, 'fields', 'myvalues', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(240, 'fields', 'field_extra', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(241, 'file', 'id', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(242, 'file', 'cur_id', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(243, 'file', 'cur_tablename', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(244, 'file', 'description', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=longtext'),
(245, 'file', 'file_type', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(246, 'file', 'file_name', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(247, 'file', 'size', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(248, 'mymenu', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(249, 'mymenu', 'nepl_name', 'text', 'Nepali Name', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(250, 'mymenu', 'eng_name', 'text', 'English Name', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(251, 'mymenu', 'parent_id', 'radio', 'Parent of the Menu', NULL, 'table=mymenu,nepl=nepl_name,eng=eng_name', NULL, NULL, NULL, 'NULL=YES,type=number'),
(252, 'mymenu', 'weight', 'text', 'Order', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(253, 'mymenu', 'icon', 'text', 'Icon', NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(254, 'mymenu', 'href', 'text', 'Href Link', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(255, 'mymenu', 'hidden_to_user', 'radio', 'Hidden User', NULL, 'table=user,nepl_name=username,eng=username', NULL, NULL, NULL, 'NULL=YES,type=text'),
(256, 'mytables', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(257, 'mytables', 'tablename', 'text', 'Name of Table', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(258, 'mytables', 'header', 'text', 'Header of Table to display', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(259, 'mytables', 'subtables', 'text', 'Sub Tables', NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(260, 'mytables', 'defaultvalues', 'text', 'Default Values', NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(261, 'mytables', 'extra_name', 'text', 'Extra Names for Tables', NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(262, 'mytables', 'file', 'text', 'Uploads?', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(263, 'mytables', 'form_type', 'text', 'Form Type', NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(264, 'reports', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(265, 'reports', 'tablename', 'radio', NULL, NULL, 'table=mytables,eng=tablename,nepl=header', NULL, NULL, NULL, 'NULL=NO,type=number'),
(266, 'reports', 'description', 'text', 'Description', NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(267, 'reports', 'linecons', 'text', 'Line Icons', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(268, 'setuptables', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(269, 'setuptables', 'tablename', 'radio', 'Table Name', NULL, 'table=mytables,eng=tablename,nepl=header', NULL, NULL, NULL, 'NULL=NO,type=number'),
(270, 'setuptables', 'icon', 'text', 'Icon Name', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(271, 'setuptables', 'nepl_name', 'text', 'Nepali Name', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(272, 'setuptables', 'panel_class', 'text', 'Panel Class', NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(273, 'structure', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(274, 'structure', 'name', 'text', 'Name of Structure', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(275, 'structure', 'description', 'text', 'Description', NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=longtext'),
(276, 'structure', 'site_url', 'text', 'Url for display', NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(277, 'structure', 'date', 'hidden', 'Date', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=date'),
(278, 'sub_structure', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(279, 'sub_structure', 'struct_id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(280, 'sub_structure', 'type', 'radio', 'Type', NULL, NULL, NULL, '1,2,3', 'Point,,Polyline,,Polygon', 'NULL=NO,type=number'),
(281, 'sub_structure', 'category_id', 'radio', 'Category Name', NULL, 'table=category,eng=name,nepl=nepl_name', NULL, NULL, NULL, 'NULL=NO,type=number'),
(282, 'sub_type', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(283, 'sub_type', 'name', 'text', 'Name of Sub Type', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(284, 'sub_type', 'type_id', 'radio', 'à¤ªà¥à¤°à¤•à¤¾à¤°', NULL, NULL, NULL, '1,2,3', 'Point,à¤µà¤¿à¤¨à¥à¤¦à¥,Polyline, à¤²à¤¾à¤ˆà¤¨,Polygon, à¤­à¥à¤œ', 'NULL=NO,type=number'),
(291, 'user', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(292, 'user', 'username', 'text', 'Username', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(293, 'user', 'pwd', 'text', 'Password', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(294, 'user', 'person_id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=number'),
(295, 'user', 'user_type', 'text', 'User Type', NULL, NULL, NULL, '1,2,3', 'Admin,à¤à¤¡à¤®à¤¿à¤¨,Main User,à¤®à¥à¤–à¥à¤¯,Normal User,à¤¸à¤¾à¤®à¤¾à¤¨à¥à¤¯,Viewer,à¤¹à¥‡à¤°à¥à¤¨à¥‡', 'NULL=NO,type=number'),
(296, 'sub_structure', 'name', 'text', 'Name ', NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(297, 'attr_geojsonfile', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(298, 'attr_geojsonfile', 'filename', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(299, 'attr_geojsonfile', 'cs', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(300, 'attr_geojsonfile', 'correc', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(301, 'attr_geojsonfile', 'layername', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(302, 'attr_geojsonfile', 'identifiername', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(303, 'attr_info', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(304, 'attr_info', 'geojsonid', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(305, 'attr_info', 'infotext', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=longtext'),
(306, 'attr_info', 'layerid', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(307, 'attr_info', 'category', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=number'),
(308, 'attrtable', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(309, 'attrtable', 'geoid', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(310, 'attrtable', 'attrname', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(311, 'attrtable', 'attrnormalizer', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(312, 'attrvalue', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(313, 'attrvalue', 'geojsonid', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(314, 'attrvalue', 'attrid', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(315, 'attrvalue', 'attrvalue', 'text', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(316, 'point_coordinates', 'id', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'point_coordinates', 'bridge_id', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'point_coordinates', 'left_right', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'point_coordinates', 'latitude', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'point_coordinates', 'longitude', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'bridge', 'BridgeName', 'text', 'Bridge Name', 'à¤ªà¥à¤²à¤•à¥‹ à¤¨à¤¾à¤®', NULL, NULL, NULL, NULL, 'NULL=NO,type=number'),
(322, 'bridge', 'Length', 'text', NULL, 'à¤²à¤®à¥à¤¬à¤¾à¤ˆ', NULL, NULL, NULL, NULL, 'NULL=NO,type=text'),
(323, 'bridge', 'Type', 'text', NULL, 'à¤•à¤¿à¤¸à¤¿à¤®', NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(324, 'bridge', 'L_Bank', 'text', NULL, 'à¤¦à¥‡à¤¬à¥à¤°à¥‡ à¤•à¤¿à¤¨à¤¾à¤°à¤¾', NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(325, 'bridge', 'R_Bank', 'text', NULL, 'à¤¦à¤¾à¤¹à¤¿à¤¨à¥‡ à¤•à¤¿à¤¨à¤¾à¤°à¤¾', NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(326, 'bridge', 'Heralu', 'text', NULL, 'à¤¹à¥‡à¤°à¤¾à¤²à¥', NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(327, 'bridge', 'VDC_sifarish', 'text', NULL, 'à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤­à¤à¤•à¥‹ à¤—à¤¾à¤µà¤¿à¤¸', NULL, NULL, NULL, NULL, 'NULL=YES,type=number'),
(328, 'bridge', 'id', 'hidden', NULL, NULL, NULL, NULL, NULL, NULL, 'NULL=YES,type=text'),
(329, 'bridge', 'state', 'radio', NULL, 'à¤…à¤¬à¤¸à¥à¤¥à¤¾', NULL, NULL, '1,2,3', 'à¤°à¤¾à¤®à¥à¤°à¥‹,,à¤œà¤¿à¤°à¥à¤£,,à¤®à¤°à¥à¤®à¤¤ à¤¹à¥à¤à¤¦à¥ˆ,', 'NULL=YES,type=number'),
(330, 'bridge', 'DCODE', 'text', NULL, 'à¤œà¤¿à¤²à¥à¤²à¤¾ à¤•à¥‹à¤¡', NULL, NULL, NULL, NULL, 'NULL=YES,type=number'),
(331, 'vdc', 'id', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'vdc', 'eng_name', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'vdc', 'nepl_name', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'vdc', 'vcode', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'vdc', 'mun', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `cur_id` int(11) NOT NULL,
  `cur_tablename` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `file_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `source` varchar(300) DEFAULT NULL,
  `type_of_income` varchar(100) DEFAULT NULL,
  `amount` float NOT NULL,
  `amount_type` int(11) NOT NULL,
  `amount_desc` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mymenu`
--

CREATE TABLE `mymenu` (
  `id` int(11) NOT NULL,
  `nepl_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eng_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `href` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `hidden_to_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mymenu`
--

INSERT INTO `mymenu` (`id`, `nepl_name`, `eng_name`, `parent_id`, `weight`, `icon`, `href`, `hidden_to_user`) VALUES
(0, 'Main Menu', 'Main Menu', NULL, 1, NULL, '#', NULL),
(2, 'Dashboard', 'Dashboard', 0, 1, 'fa fa-desktop', 'index.php', NULL),
(4, 'à¤¨à¤¯à¤¾à¤ à¤¥à¤ªà¥à¤¨à¥à¤¹à¥‹à¤¸à¥', 'Add New', 31, 1, 'fa fa-bolt', 'personform.php?tab=mymenu', NULL),
(5, 'à¤¸à¤¬à¥ˆ à¤®à¥‡à¤¨à¥', 'All Menu', 31, 1, 'fa fa-desktop', 'others.php?tab=mymenu&item=mymenu', NULL),
(7, 'à¤¨à¤¯à¤¾à¤ à¤ªà¥à¤°à¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾', 'New User', 34, 1, 'fa fa-bolt', 'personform.php?tab=user', NULL),
(8, 'à¤¸à¤¬à¥ˆ à¤ªà¥à¤°à¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾à¤¹à¤°à¥‚', 'All Users', 34, 3, 'fa fa-desktop', 'others.php?tab=user&item=user', NULL),
(31, 'à¤®à¥à¤–à¥à¤¯ à¤®à¥‡à¤¨à¥', 'Nav Menu', 0, 1, 'fa fa-ra', '#', NULL),
(34, 'à¤ªà¥à¤°à¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾', 'Users', 0, 7, 'fa fa-bolt', '#', '13');

-- --------------------------------------------------------

--
-- Table structure for table `mytables`
--

CREATE TABLE `mytables` (
  `id` int(11) NOT NULL,
  `tablename` varchar(100) NOT NULL,
  `header` varchar(100) NOT NULL,
  `subtables` varchar(300) DEFAULT NULL,
  `defaultvalues` varchar(600) DEFAULT NULL,
  `extra_name` varchar(600) DEFAULT NULL,
  `file` int(11) NOT NULL DEFAULT '2',
  `form_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytables`
--

INSERT INTO `mytables` (`id`, `tablename`, `header`, `subtables`, `defaultvalues`, `extra_name`, `file`, `form_type`) VALUES
(45, 'fields', 'fields', NULL, NULL, NULL, 0, NULL),
(46, 'file', 'file', NULL, NULL, NULL, 0, NULL),
(47, 'mymenu', 'mymenu', NULL, NULL, NULL, 0, NULL),
(48, 'mytables', 'mytables', NULL, NULL, NULL, 0, NULL),
(49, 'reports', 'reports', NULL, NULL, NULL, 0, NULL),
(50, 'setuptables', 'setuptables', NULL, NULL, NULL, 0, NULL),
(51, 'user', 'user', NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `fname` varchar(300) NOT NULL,
  `lname` varchar(300) DEFAULT NULL,
  `mname` varchar(300) DEFAULT NULL,
  `disability` int(11) NOT NULL,
  `dob` varchar(300) DEFAULT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_address`
--

CREATE TABLE `person_address` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `country` varchar(300) NOT NULL,
  `state` varchar(300) NOT NULL,
  `district` varchar(300) NOT NULL,
  `municipality` varchar(300) NOT NULL,
  `ward` int(11) NOT NULL,
  `street` varchar(300) DEFAULT NULL,
  `house` int(11) DEFAULT NULL,
  `add_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_cattle`
--

CREATE TABLE `person_cattle` (
  `id` int(11) NOT NULL,
  `family_id` int(11) NOT NULL,
  `cattle_type` varchar(100) NOT NULL,
  `cattle_name` varchar(100) NOT NULL,
  `cattle_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_citizenship`
--

CREATE TABLE `person_citizenship` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `issued_district` int(11) NOT NULL,
  `issued_office` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_contact_email`
--

CREATE TABLE `person_contact_email` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `email` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_contact_no`
--

CREATE TABLE `person_contact_no` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `contact_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_education`
--

CREATE TABLE `person_education` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `qualification_type` int(11) NOT NULL,
  `board` int(11) NOT NULL,
  `Score` int(11) DEFAULT NULL,
  `Percentage` float DEFAULT NULL,
  `institution` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_hobby`
--

CREATE TABLE `person_hobby` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `skill` varchar(300) NOT NULL,
  `averagetime` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_job_interest`
--

CREATE TABLE `person_job_interest` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `interest` int(11) NOT NULL,
  `description` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_property`
--

CREATE TABLE `person_property` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `property_type` int(11) NOT NULL,
  `property_area` int(11) DEFAULT NULL,
  `description` int(11) DEFAULT NULL,
  `productivity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_prop_business`
--

CREATE TABLE `person_prop_business` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `business` varchar(300) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `industry` varchar(300) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_prop_vehicle`
--

CREATE TABLE `person_prop_vehicle` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL,
  `vehicle_reg_no` int(11) NOT NULL,
  `vehicle_engine_no` int(11) DEFAULT NULL,
  `vehicle_color` int(11) DEFAULT NULL,
  `vehicle_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_services`
--

CREATE TABLE `person_services` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `service_type` varchar(300) NOT NULL,
  `service_code` int(11) DEFAULT NULL,
  `service_number` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `tablename` int(11) NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linecons` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setuptables`
--

CREATE TABLE `setuptables` (
  `id` int(11) NOT NULL,
  `tablename` int(11) NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nepl_name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panel_class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `pwd`, `person_id`, `user_type`) VALUES
(13, 'anupadkh', 'resort', 1, 1),
(14, 'suman', 'adkh', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `family_house`
--
ALTER TABLE `family_house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_relation`
--
ALTER TABLE `family_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mymenu`
--
ALTER TABLE `mymenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mytables`
--
ALTER TABLE `mytables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_address`
--
ALTER TABLE `person_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_cattle`
--
ALTER TABLE `person_cattle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_citizenship`
--
ALTER TABLE `person_citizenship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_contact_email`
--
ALTER TABLE `person_contact_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_contact_no`
--
ALTER TABLE `person_contact_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_hobby`
--
ALTER TABLE `person_hobby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_job_interest`
--
ALTER TABLE `person_job_interest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_property`
--
ALTER TABLE `person_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_prop_business`
--
ALTER TABLE `person_prop_business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_prop_vehicle`
--
ALTER TABLE `person_prop_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_services`
--
ALTER TABLE `person_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setuptables`
--
ALTER TABLE `setuptables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `family_house`
--
ALTER TABLE `family_house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `family_relation`
--
ALTER TABLE `family_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mymenu`
--
ALTER TABLE `mymenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `mytables`
--
ALTER TABLE `mytables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_address`
--
ALTER TABLE `person_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_cattle`
--
ALTER TABLE `person_cattle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_citizenship`
--
ALTER TABLE `person_citizenship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_contact_email`
--
ALTER TABLE `person_contact_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_contact_no`
--
ALTER TABLE `person_contact_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_hobby`
--
ALTER TABLE `person_hobby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_job_interest`
--
ALTER TABLE `person_job_interest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_property`
--
ALTER TABLE `person_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_prop_business`
--
ALTER TABLE `person_prop_business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_prop_vehicle`
--
ALTER TABLE `person_prop_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person_services`
--
ALTER TABLE `person_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setuptables`
--
ALTER TABLE `setuptables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
